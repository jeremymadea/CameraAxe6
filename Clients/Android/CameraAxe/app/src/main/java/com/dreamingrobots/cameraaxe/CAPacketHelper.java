package com.dreamingrobots.cameraaxe;

import android.util.Log;

/**
 * CAPacketHelper class makes processing incoming packets and sending them easier
 */

public class CAPacketHelper {
    private static final int mDataSize = 256;
    private byte[] mData = new byte[mDataSize];
    private CAPacket mPacker = new CAPacket(CAPacket.STATE_PACKER, mData, mDataSize);

    public byte[] getData() {
        return mData;
    }

    public CAPacket.PacketElement processIncomingPacket(byte[] buf, int bufSize) {
        CAPacket unpacker = new CAPacket(CAPacket.STATE_UNPACKER, buf, bufSize);
        int packetSize = unpacker.unpackSize();
        short packetType = unpacker.unpackType();
        CAPacket.PacketElement ret;

        switch (packetType) {
            case CAPacket.PID_MENU_HEADER: {
                CAPacket.MenuHeader unpack = unpacker.new MenuHeader();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_NEW_ROW: {
                CAPacket.NewRow unpack = unpacker.new NewRow();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_NEW_CELL: {
                CAPacket.NewCell unpack = unpacker.new NewCell();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_COND_START: {
                CAPacket.CondStart unpack = unpacker.new CondStart();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_COND_END: {
                CAPacket.CondEnd unpack = unpacker.new CondEnd();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_TEXT_STATIC: {
                CAPacket.TextStatic unpack = unpacker.new TextStatic();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_TEXT_DYNAMIC: {
                CAPacket.TextDynamic unpack = unpacker.new TextDynamic();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_BUTTON: {
                CAPacket.Button unpack = unpacker.new Button();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_CHECK_BOX: {
                CAPacket.CheckBox unpack = unpacker.new CheckBox();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_DROP_SELECT: {
                CAPacket.DropSelect unpack = unpacker.new DropSelect();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_EDIT_NUMBER: {
                CAPacket.EditNumber unpack = unpacker.new EditNumber();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_TIME_BOX: {
                CAPacket.TimeBox unpack = unpacker.new TimeBox();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_SCRIPT_END: {
                CAPacket.ScriptEnd unpack = unpacker.new ScriptEnd();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_MENU_SELECT: {
                CAPacket.MenuSelect unpack = unpacker.new MenuSelect();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_LOGGER: {
                CAPacket.Logger unpack = unpacker.new Logger();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_CAM_STATE: {
                CAPacket.CamState unpack = unpacker.new CamState();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_CAM_SETTINGS: {
                CAPacket.CamSettings unpack = unpacker.new CamSettings();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_INTERVALOMETER: {
                CAPacket.Intervalometer unpack = unpacker.new Intervalometer();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_INTER_MODULE_LOGIC: {
                CAPacket.InterModuleLogic unpack = unpacker.new InterModuleLogic();
                unpack.unpack();
                ret = unpack;
            } break;
            case CAPacket.PID_CONTROL_FLAGS: {
                CAPacket.ControlFlags unpack = unpacker.new ControlFlags();
                unpack.unpack();
                ret = unpack;
            } break;
            default: {
                ret = null;
            } break;
        }

        return ret;
    }

    public int writePacketMenuSelect(int mode, int menuNumber) {
        CAPacket.MenuSelect pack0 = mPacker.new MenuSelect();
        pack0.set(1, 1);
        int packSize = pack0.pack();
        mPacker.resetBuffer();
        return packSize;
    }

    public void testPackets() {
        CAPacket pack0 = new CAPacket(CAPacket.STATE_PACKER, mData, mDataSize);
        CAPacket unpack0 = new CAPacket(CAPacket.STATE_UNPACKER, mData, mDataSize);

        {   // MenuHeader Packet Test
            CAPacket.MenuHeader pack1 = pack0.new MenuHeader();                 // Update per type
            CAPacket.MenuHeader unpack1 = unpack0.new MenuHeader();             // Update per type
            pack1.set(2, 3, "hello world");                                     // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_MENU_HEADER ||                     // Update per type
                    unpack1.getMajorVersion() != 2 ||
                    unpack1.getMinorVersion() != 3 ||
                    unpack1.getMenuName().equals("hello world") != true) {
                Log.e("CA6", "Packet Test Error - MENU_HEADER test failed");
            }
        }
        {   // NewRow Packet Test
            CAPacket.NewRow pack1 = pack0.new NewRow();                         // Update per type
            CAPacket.NewRow unpack1 = unpack0.new NewRow();                     // Update per type
            //pack1.set();                                                      // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            //unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_NEW_ROW) {                        // Update per type
                Log.e("CA6", "Packet Test Error - NEW_ROW test failed");
            }
        }
        {   // NewCell Packet Test
            CAPacket.NewCell pack1 = pack0.new NewCell();                       // Update per type
            CAPacket.NewCell unpack1 = unpack0.new NewCell();                   // Update per type
            pack1.set(100, 1);                                                  // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_NEW_CELL ||                        // Update per type
                    unpack1.getColumnPercentage() != 100 ||
                    unpack1.getJustification() != 1) {
                Log.e("CA6", "Packet Test Error - NEW_CELL test failed");
            }
        }
        {   // CondStart Packet Test
            CAPacket.CondStart pack1 = pack0.new CondStart();                   // Update per type
            CAPacket.CondStart unpack1 = unpack0.new CondStart();               // Update per type
            pack1.set(2, 1, 1);                                                 // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_COND_START ||                      // Update per type
                    unpack1.getClientHostId() != 2 ||
                    unpack1.getModAttribute() != 1 ||
                    unpack1.getValue() != 1) {
                Log.e("CA6", "Packet Test Error - COND_START test failed");
            }
        }
        {   // CondEnd Packet Test
            CAPacket.CondEnd pack1 = pack0.new CondEnd();                       // Update per type
            CAPacket.CondEnd unpack1 = unpack0.new CondEnd();                   // Update per type
            //pack1.set();                                                      // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            //unpack1.unpack();
            if (packSize != unpackSize ||
                packType != CAPacket.PID_COND_END) {                            // Update per type
                Log.e("CA6", "Packet Test Error - COND_END test failed");
            }
        }
        {   // TextStatic Packet Test
            CAPacket.TextStatic pack1 = pack0.new TextStatic();                 // Update per type
            CAPacket.TextStatic unpack1 = unpack0.new TextStatic();             // Update per type
            pack1.set("static");                                                // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_TEXT_STATIC ||                     // Update per type
                    unpack1.getText().equals("static") != true) {
                Log.e("CA6", "Packet Test Error - TEXT_STATIC test failed");
            }
        }
        {   // TextDynamic Packet Test
            CAPacket.TextDynamic pack1 = pack0.new TextDynamic();               // Update per type
            CAPacket.TextDynamic unpack1 = unpack0.new TextDynamic();           // Update per type
            pack1.set(245, "Dynamic");                                          // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_TEXT_DYNAMIC ||                    // Update per type
                    unpack1.getClientHostId() != 245 ||
                    unpack1.getText().equals("Dynamic") != true) {
                Log.e("CA6", "Packet Test Error - TEXT_DYNAMIC test failed");
            }
        }
        {   // Button Packet Test
            CAPacket.Button pack1 = pack0.new Button();                         // Update per type
            CAPacket.Button unpack1 = unpack0.new Button();                     // Update per type
            pack1.set(23, 1, 1, "Button1");                                     // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_BUTTON ||                          // Update per type
                    unpack1.getClientHostId() != 23 ||
                    unpack1.getType() != 1 ||
                    unpack1.getValue() != 1 ||
                    unpack1.getText().equals("Button1") != true) {
                Log.e("CA6", "Packet Test Error - BUTTON test failed");
            }
        }
        {   // CheckBox Packet Test
            CAPacket.CheckBox pack1 = pack0.new CheckBox();                     // Update per type
            CAPacket.CheckBox unpack1 = unpack0.new CheckBox();                 // Update per type
            pack1.set(234, 1);                                                  // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_CHECK_BOX ||                       // Update per type
                    unpack1.getClientHostId() != 234 ||
                    unpack1.getValue() != 1) {
                Log.e("CA6", "Packet Test Error - CHECK_BOX test failed");
            }
        }
        {   // DropSelect Packet Test
            CAPacket.DropSelect pack1 = pack0.new DropSelect();                 // Update per type
            CAPacket.DropSelect unpack1 = unpack0.new DropSelect();             // Update per type
            pack1.set(7, 1, "no|yes");                                          // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_DROP_SELECT ||                     // Update per type
                    unpack1.getClientHostId() != 7 ||
                    unpack1.getValue() != 1 ||
                    unpack1.getText().equals("no|yes") != true) {
                Log.e("CA6", "Packet Test Error - DROP_SELECT test failed");
            }
        }
        {   // EditNumber Packet Test
            CAPacket.EditNumber pack1 = pack0.new EditNumber();                 // Update per type
            CAPacket.EditNumber unpack1 = unpack0.new EditNumber();             // Update per type
            pack1.set(32, 2, 6, 0, 99999999, 12345678);                         // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_EDIT_NUMBER ||                     // Update per type
                    unpack1.getClientHostId() != 32 ||
                    unpack1.getDigitsBeforeDecimal() != 2 ||
                    unpack1.getDigitsAfterDecimal() != 6 ||
                    unpack1.getMinValue() != 0 ||
                    unpack1.getMaxValue() != 99999999 ||
                    unpack1.getValue() != 12345678) {
                Log.e("CA6", "Packet Test Error - EDIT_NUMBER test failed");
            }
        }
        {   // TimeBox Packet Test
            CAPacket.TimeBox pack1 = pack0.new TimeBox();                       // Update per type
            CAPacket.TimeBox unpack1 = unpack0.new TimeBox();                   // Update per type
            pack1.set(17, 0x3F, 999, 59, 58, 998, 997, 996);                    // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_TIME_BOX ||                        // Update per type
                    unpack1.getClientHostId() != 17 ||
                    unpack1.getEnableMask() != 0x3F ||
                    unpack1.getHours() != 999 ||
                    unpack1.getMinutes() != 59 ||
                    unpack1.getSeconds() != 58 ||
                    unpack1.getMilliseconds() != 998 ||
                    unpack1.getMicroseconds() != 997 ||
                    unpack1.getNanoseconds() != 996) {
                Log.e("CA6", "Packet Test Error - TIME_BOX test failed");
            }
        }
        {   // ScriptEnd Packet Test
            CAPacket.ScriptEnd pack1 = pack0.new ScriptEnd();                   // Update per type
            CAPacket.ScriptEnd unpack1 = unpack0.new ScriptEnd();               // Update per type
            //pack1.set();                                                      // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            //unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_SCRIPT_END) {                     // Update per type
                Log.e("CA6", "Packet Test Error - SCRIPT_END test failed");
            }
        }
        {   // MenuSelect Packet Test
            CAPacket.MenuSelect pack1 = pack0.new MenuSelect();                 // Update per type
            CAPacket.MenuSelect unpack1 = unpack0.new MenuSelect();             // Update per type
            pack1.set(1, 44);                                                   // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_MENU_SELECT ||                     // Update per type
                    unpack1.getMode() != 1 ||
                    unpack1.getMenuNumber() != 44) {
                Log.e("CA6", "Packet Test Error - MENU_SELECT test failed");
            }
        }
        {   // Logger Packet Test
            CAPacket.Logger pack1 = pack0.new Logger();                         // Update per type
            CAPacket.Logger unpack1 = unpack0.new Logger();                     // Update per type
            pack1.set("Log123");                                                // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_LOGGER ||                          // Update per type
                    unpack1.getLog().equals("Log123") != true) {
                Log.e("CA6", "Packet Test Error - LOG test failed");
            }
        }
        {   // CamState Packet Test
            CAPacket.CamState pack1 = pack0.new CamState();                     // Update per type
            CAPacket.CamState unpack1 = unpack0.new CamState();                 // Update per type
            pack1.set(3, 0xbe, 0xef);                                           // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_CAM_STATE ||                       // Update per type
                    unpack1.getMultiplier() != 3 ||
                    unpack1.getFocus() != 0xbe ||
                    unpack1.getShutter() != 0xef) {
                Log.e("CA6", "Packet Test Error - CAM_STATE test failed");
            }
        }
        {   // CamSettings Packet Test
            CAPacket.CamSettings pack1 = pack0.new CamSettings();               // Update per type
            CAPacket.CamSettings unpack1 = unpack0.new CamSettings();           // Update per type
            pack1.set(50, 1, 999, 59, 58, 998, 997, 996, 57, 56, 995, 994,
                    0xbe, 1, 5, 1, 40, 41, 900);                            // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_CAM_SETTINGS ||                    // Update per type
                    unpack1.getCamPortNumber() != 50 ||
                    unpack1.getMode() != 1 ||
                    unpack1.getDelayHours() != 999 ||
                    unpack1.getDelayMinutes() != 59 ||
                    unpack1.getDelaySeconds() != 58 ||
                    unpack1.getDelayMilliseconds() != 998 ||
                    unpack1.getDelayMicroseconds() != 997 ||
                    unpack1.getDurationHours() != 996 ||
                    unpack1.getDurationMinutes() != 57 ||
                    unpack1.getDurationSeconds() != 56 ||
                    unpack1.getDurationMilliseconds() != 995 ||
                    unpack1.getDurationMicroseconds() != 994 ||
                    unpack1.getSequencer() != 0xbe ||
                    unpack1.getApplyIntervalometer() != 1 ||
                    unpack1.getSmartPreview() != 5 ||
                    unpack1.getMirrorLockupEnable() != 1 ||
                    unpack1.getMirrorLockupMinutes() != 40 ||
                    unpack1.getMirrorLockupSeconds() != 41 ||
                    unpack1.getMirrorLockupMilliseconds() != 900) {
                Log.e("CA6", "Packet Test Error - CAM_SETTINGS test failed");
            }
        }
        {   // Intervalometer Packet Test
            CAPacket.Intervalometer pack1 = pack0.new Intervalometer();     // Update per type
            CAPacket.Intervalometer unpack1 = unpack0.new Intervalometer(); // Update per type
            pack1.set(900, 50, 51, 901, 902, 903, 52, 53, 904, 905, 9999);  // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_INTERVALOMETER ||              // Update per type
                    unpack1.getStartHours() != 900 ||
                    unpack1.getStartMinutes() != 50 ||
                    unpack1.getStartSeconds() != 51 ||
                    unpack1.getStartMilliseconds() != 901 ||
                    unpack1.getStartMicroseconds() != 902 ||
                    unpack1.getIntervalHours() != 903 ||
                    unpack1.getIntervalMinutes() != 52 ||
                    unpack1.getIntervalSeconds() != 53 ||
                    unpack1.getIntervalMilliseconds() != 904 ||
                    unpack1.getIntervalMicroseconds() != 905 ||
                    unpack1.getRepeats() != 9999) {
                Log.e("CA6", "Packet Test Error - INTERVALOMETER test failed");
            }
        }
        {   // InterModuleLogic Packet Test
            CAPacket.InterModuleLogic pack1 = pack0.new InterModuleLogic();     // Update per type
            CAPacket.InterModuleLogic unpack1 = unpack0.new InterModuleLogic(); // Update per type
            pack1.set(1, 2);                                                    // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_INTER_MODULE_LOGIC ||              // Update per type
                    unpack1.getLatchEnable() != 1 ||
                    unpack1.getLogic() != 2) {
                Log.e("CA6", "Packet Test Error - INTER_MODULE_LOGIC test failed");
            }
        }
        {   // ControlFlags Packet Test
            CAPacket.ControlFlags pack1 = pack0.new ControlFlags();             // Update per type
            CAPacket.ControlFlags unpack1 = unpack0.new ControlFlags();         // Update per type
            pack1.set(1, 1);                                                    // Update per type
            int packSize = pack1.pack();
            int unpackSize = unpack0.unpackSize();
            short packType = unpack0.unpackType();
            unpack1.unpack();
            if (packSize != unpackSize ||
                    packType != CAPacket.PID_CONTROL_FLAGS ||                   // Update per type
                    unpack1.getSlaveModeEnable() != 1 ||
                    unpack1.getExtraMessagesEnable() != 1) {
                Log.e("CA6", "Packet Test Error - CONTROL_FLAGS test failed");
            }
        }
    }
}
