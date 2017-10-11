#ifndef MENU_DATA_H
#define MENU_DATA_H

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// The Menu*Data structures are all the data a menu needs to track.  It is not possible to just put this data
// in a global because there can be multiple instances of each menu (for example you could have 2 sound modules
// connected and each of those would have a sound menu with seperate data.  So in the g_ctx an array of the
// of all the Menu*Data is stored.  The g_ctx stores data for each module connected.  To know how much memory
// needed to store the Menu*Data for each module there is union of all the Menu*Data to fine the worst case size.
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Test Menu
extern const char* dev_Name();
extern void dev_MenuInit();
extern void dev_PhotoInit();
extern void dev_MenuRun();
extern void dev_PhotoRun();

// Sound Menu
extern const char* sound_Name();
extern void sound_MenuInit();
extern void sound_PhotoInit();
extern void sound_MenuRun();
extern void sound_PhotoRun();

// Vibration Menu
extern const char* vibration_Name();
extern void vibration_MenuInit();
extern void vibration_PhotoInit();
extern void vibration_MenuRun();
extern void vibration_PhotoRun();

// Valve Menu
extern const char* valve_Name();
extern void valve_MenuInit();
extern void valve_PhotoInit();
extern void valve_MenuRun();
extern void valve_PhotoRun();

// Add your new function declarations above 
//  Note - These declarations are needed because these go in the proc table and the Arduino IDE doesn't do it's 
//         declaration magic on header files.

#endif // MENU_DATA_H

