/*
 Test code for CA6 auto-discovery
 Simply listens for announcement packets and displays the IP and MAC address of the initiator
 This code assumes local WiFI network only
 */

#include <ESP8266WiFi.h>
#include <WiFiUdp.h>
#include "NetDiscovery.h"
#include <array>


#define DEBUG 3                  // define as minimum desired debug level, or comment out to disable debug statements

#ifdef DEBUG
#define DEBUG_MSG(L, H, M)	       if ((L) <= DEBUG) {Serial.print("DEBUG> "); Serial.print(H); Serial.print(": "); Serial.println(M);}
#else
#define DEBUG_MSG(...)            ;
#endif

#define MCAST_PORT          7247
#define MCAST_ADDRESS       239, 12, 17, 87
#define CA6_ANNOUNCE_ID     "CA6ANC"                      // announcement packet ID
#define SSID                "<ssid>"
#define PASSWORD            "<password>"

NetDiscovery       discovery;
IPAddress          mcastIP(MCAST_ADDRESS);               // multicast address

void setup(void)
{
	Serial.begin(74880);
	WiFi.begin(SSID, PASSWORD);
	while ( WiFi.status() != WL_CONNECTED ){
		delay(500);
		Serial.print(".");
	}
	Serial.println();
	DEBUG_MSG(1, F("CLIENT Connected. Local IP"), WiFi.localIP());

	if ( !discovery.begin(mcastIP, MCAST_PORT) ) {       // join mcast group
		DEBUG_MSG(1, F("Cannot initialize discovery mcast group"), mcastIP);
		while ( true ) delay(1000);
	}
}

// this example just loops forever, not what a real client would do
void loop(void)
{
	ND_Packet remotePacket, localPacket;
	uint8_t   addressMAC[WL_MAC_ADDR_LENGTH];
	std::array<bool, 256> senderACK;

	DEBUG_MSG(1, F("CLIENT listening"), "");
	senderACK.fill(false);	
	while ( true ) {
		// listen for announcement packets 
		Serial.write(".");
		if ( discovery.listen(&remotePacket) == ND_ANNOUNCE ) {
			// examine payload for the ID string 
			DEBUG_MSG(2, F("Announcement from"), (IPAddress)remotePacket.addressIP);
			if ( strcmp((char *)&remotePacket.payload[0], CA6_ANNOUNCE_ID) == 0 ) {
				uint8_t senderID = remotePacket.addressIP[3];           // use the last octet in the IP address for unique identification
				// only send an ACK once
				if ( !senderACK[senderID] ) {
					DEBUG_MSG(2, F("Sending ACK"), (IPAddress)remotePacket.addressIP);
					strcpy((char *)&localPacket.payload[0], CA6_ANNOUNCE_ID);
					if ( discovery.ack(&localPacket) ) {
						Serial.print(F("Discovered device at "));
						Serial.println((IPAddress)remotePacket.addressIP);
						senderACK[senderID] = true;
						Serial.println();
					}
				} 
			}
		}
		yield();
		delay(1000);
	}
}
