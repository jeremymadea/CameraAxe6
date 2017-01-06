#ifndef __CAPACKET_H__
#define __CAPACKET_H__

#include "CATypes.h"

enum packetId  {PID_START_SENTINEL      =  0,  // Must be first
                PID_MENU_HEADER         =  1,
                PID_NEW_ROW             =  2,
                PID_NEW_CELL            =  3,
                PID_COND_START          =  4,
                PID_COND_END            =  5,
                PID_TEXT_STATIC         =  6,
                PID_TEXT_DYNAMIC        =  7,
                PID_BUTTON              =  8,
                PID_CHECK_BOX           =  9,
                PID_DROP_SELECT         = 10,
                PID_EDIT_NUMBER         = 11,
                PID_TIME_BOX            = 12,
                PID_SCRIPT_END          = 13,
                PID_ACTIVATE            = 14,
                PID_LOG                 = 15,
                PID_CAM_STATE           = 16,
                PID_CAM_SETTINGS        = 17,
                PID_INTERVALOMETER      = 18,
                PID_INTER_MODULE_LOGIC  = 19,
                PID_CONTROL_FLAGS       = 20,
                PID_END_SENTINEL        = 21, // Must be last
               };

enum packetState { STATE_PACKER=1, STATE_UNPACKER=2 };

class CAPacket
{
public:
    CAPacket(uint8 state, uint8 *buf, uint16 bufSize);
    uint8 unpackSize();
    uint8 unpackType();
    uint32 unpacker(uint8 unpackBits);
    void unpackerString(String& str);
    void packer(uint32 val, uint8 packBits);
    void packerString(const char* src);
    void flushPacket();

private:    
    uint8 mBitsUsed;
    uint8 mBitsVal;
    uint16 mBytesUsed;
    uint8 mState;
    uint8* mBuf;
    uint16 mBufSize;
};

class CAPacketMenuHeader {
public:
    CAPacketMenuHeader(CAPacket& caPacket);
    uint8 getMajorVersion() {return mMajorVersion;};
    uint8 getMinorVersion() {return mMinorVersion;};
    String getMenuName() {return mMenuName;};
    void set(uint8 majorVersion, uint8 minorVersion, String menuName);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mMajorVersion;
    uint8 mMinorVersion;
    String mMenuName;
};

class CAPacketNewRow {
public:
    CAPacketNewRow(CAPacket& caPacket);
    void set();
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
};

class CAPacketNewCell {
public:
    CAPacketNewCell(CAPacket& caPacket);
    uint8 getColumnPercentage() {return mColumnPercentage;};
    uint8 getJustification() {return mJustification;};
    void set(uint8 columnPercentage, uint8 justification);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mColumnPercentage;
    uint8 mJustification;
};

class CAPacketCondStart {
public:
    CAPacketCondStart(CAPacket& caPacket);
    uint8 getClientHostId() {return mClientHostId;};
    uint8 getModAttribute() {return mModAttribute;};
    uint8 getValue() {return mValue;};
    void set(uint8 clientHostId, uint8 modAttribute, uint8 value);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mClientHostId;
    uint8 mModAttribute;
    uint8 mValue;
};

class CAPacketCondEnd {
public:
    CAPacketCondEnd(CAPacket& caPacket);
    void set();
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
};

class CAPacketTextStatic {
public:
    CAPacketTextStatic(CAPacket& caPacket);
    String getText() {return mText;};
    void set(String text);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    String mText;
};

class CAPacketTextDynamic {
public:
    CAPacketTextDynamic(CAPacket& caPacket);
    uint8 getClientHostId() {return mClientHostId;};
    String getText() {return mText;};
    void set(uint8 clientHostId, String text);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mClientHostId;
    String mText;
};

class CAPacketButton {
public:
    CAPacketButton(CAPacket& caPacket);
    uint8 getClientHostId() {return mClientHostId;};
    uint8 getType() {return mType;};
    uint8 getValue() {return mValue;};
    String getText() {return mText;};
    void set(uint8 clientHostId, uint8 type, uint8 value, String text);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mClientHostId;
    uint8 mType;
    uint8 mValue;
    String mText;
};

class CAPacketCheckBox {
public:
    CAPacketCheckBox(CAPacket& caPacket);
    uint8 getClientHostId() {return mClientHostId;};
    uint8 getValue() {return mValue;};
    void set(uint8 clientHostId, uint8 value);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mClientHostId;
    uint8 mValue;
};

class CAPacketDropSelect {
public:
    CAPacketDropSelect(CAPacket& caPacket);
    uint8 getClientHostId() {return mClientHostId;};
    uint8 getValue() {return mValue;};
    String getText() {return mText;};
    void set(uint8 clientHostId, uint8 value, String text);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mClientHostId;
    uint8 mValue;
    String mText;
};

class CAPacketEditNumber {
public:
    CAPacketEditNumber(CAPacket& caPacket);
    uint8 getClientHostId() {return mClientHostId;};
    uint8 getDigitsBeforeDecimal() {return mDigitsBeforeDecimal;};
    uint8 getDigitsAfterDecimal() {return mDigitsAfterDecimal;};
    uint32 getMinValue() {return mMinValue;};
    uint32 getMaxValue() {return mMaxValue;};
    uint32 getValue() {return mValue;};
    void set(uint8 clientHostId, uint8 digitsBeforeDecimal, uint8 digitsAfterDecimal, 
                uint32 minValue, uint32 maxValue, uint32 value);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mClientHostId;
    uint8 mDigitsBeforeDecimal;
    uint8 mDigitsAfterDecimal;
    uint32 mMinValue;
    uint32 mMaxValue;
    uint32 mValue;
};

class CAPacketTimeBox {
public:
    const uint8 HOUR_MASK           = 0x01;
    const uint8 MINUTE_MASK         = 0x02;
    const uint8 SECOND_MASK         = 0x04;
    const uint8 MILLISECOND_MASK    = 0x08;
    const uint8 MICROSECOND_MASK    = 0x10;
    const uint8 NANOSECOND_MASK     = 0x20;
    CAPacketTimeBox(CAPacket& caPacket);
    uint8 getClientHostId() {return mClientHostId;};
    uint8 getEnableMask() {return mEnableMask;};
    uint16 getHours() {return mHours;};
    uint8 getMinutes() {return mMinutes;};
    uint8 getSeconds() {return mSeconds;};
    uint16 getMilliseconds() {return mMilliseconds;};
    uint16 getMicroseconds() {return mMicroseconds;};
    uint16 getNanoseconds() {return mNanoseconds;};
    void set(uint8 clientHostId, uint8 enableMask, uint16 hours, uint8 minutes, uint8 seconds,
                uint16 milliseconds, uint16 microseconds, uint16 nanoseconds);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mClientHostId;
    uint8 mEnableMask;
    uint16 mHours;
    uint8 mMinutes;
    uint8 mSeconds;
    uint16 mMilliseconds;
    uint16 mMicroseconds;
    uint16 mNanoseconds;
};

class CAPacketScriptEnd {
public:
    CAPacketScriptEnd(CAPacket& caPacket);
    void set();
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
};

class CAPacketActivate {
public:
    CAPacketActivate(CAPacket& caPacket);
    uint8 getActivate() {return mActivate;};
    void set(uint8 activate);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mActivate;
};

class CAPacketLog {
public:
    CAPacketLog(CAPacket& caPacket);
    String getLog() {return mLog;};
    void set(String log);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    String mLog;
};

class CAPacketCamState {
public:
    const uint8 CAM0    = 0x01;
    const uint8 CAM1    = 0x02;
    const uint8 CAM2    = 0x04;
    const uint8 CAM3    = 0x08;
    const uint8 CAM4    = 0x10;
    const uint8 CAM5    = 0x20;
    const uint8 CAM6    = 0x40;
    const uint8 CAM7    = 0x80;
    CAPacketCamState(CAPacket& caPacket);
    uint8 getMultiplier() {return mMultiplier;};
    uint8 getFocus() {return mFocus;};
    uint8 getShutter() {return mShutter;};
    void set(uint8 multiplier, uint8 focus, uint8 shutter);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mMultiplier;
    uint8 mFocus;
    uint8 mShutter;
};

class CAPacketCamSettings {
public:
    const uint8 SEQ0    = 0x01;
    const uint8 SEQ1    = 0x02;
    const uint8 SEQ2    = 0x04;
    const uint8 SEQ3    = 0x08;
    const uint8 SEQ4    = 0x10;
    const uint8 SEQ5    = 0x20;
    const uint8 SEQ6    = 0x40;
    const uint8 SEQ7    = 0x80;
    CAPacketCamSettings(CAPacket& caPacket);
    uint8 getCamPortNumber() {return mCamPortNumber;};
    uint8 getMode() {return mMode;};
    uint16 getDelayHours() {return mDelayHours;};
    uint8 getDelayMinutes() {return mDelayMinutes;};
    uint8 getDelaySeconds() {return mDelaySeconds;};
    uint16 getDelayMilliseconds() {return mDelayMilliseconds;};
    uint16 getDelayMicroseconds() {return mDelayMicroseconds;};
    uint16 getDurationHours() {return mDurationHours;};
    uint8 getDurationMinutes() {return mDurationMinutes;};
    uint8 getDurationSeconds() {return mDurationSeconds;};
    uint16 getDurationMilliseconds() {return mDurationMilliseconds;};
    uint16 getDurationMicroseconds() {return mDurationMicroseconds;};
    uint8 getSequencer() {return mSequencer;};
    uint8 getApplyIntervalometer() {return mApplyIntervalometer;};
    uint8 getSmartPreview() {return mSmartPreview;};
    uint8 getMirrorLockupEnable() {return mMirrorLockupEnable;};
    uint8 getMirrorLockupMinutes() {return mMirrorLockupMinutes;};
    uint8 getMirrorLockupSeconds() {return mMirrorLockupSeconds;};
    uint16 getMirrorLockupMilliseconds() {return mMirrorLockupMilliseconds;};
    void set(uint8 camPortNumber, uint8 mode, uint16 delayHours, uint8 delayMinutes,
                uint8 delaySeconds, uint16 delayMilliseconds, uint16 delayMicroseconds,
                uint16 durationHours, uint8 durationMinutes, uint8 durationSeconds, 
                uint16 durationMilliseconds, uint16 durationMicroseconds, uint8 sequencer,
                uint8 applyIntervalometer, uint8 smartPreview, uint8 mirrorLockupEnable, 
                uint8 mirrorLockupMinutes, uint8 mirrorLockupSeconds, uint16 mirrorLockupMilliseconds);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint8 mCamPortNumber;
    uint8 mMode;
    uint16 mDelayHours;
    uint8 mDelayMinutes;
    uint8 mDelaySeconds;
    uint16 mDelayMilliseconds;
    uint16 mDelayMicroseconds;
    uint16 mDurationHours;
    uint8 mDurationMinutes;
    uint8 mDurationSeconds;
    uint16 mDurationMilliseconds;
    uint16 mDurationMicroseconds;
    uint8 mSequencer;
    uint8 mApplyIntervalometer;
    uint8 mSmartPreview;
    uint8 mMirrorLockupEnable;
    uint8 mMirrorLockupMinutes;
    uint8 mMirrorLockupSeconds;
    uint16 mMirrorLockupMilliseconds;
};

class CAPacketIntervalometer {
public:
    CAPacketIntervalometer(CAPacket& caPacket);
    uint16 getStartHours() {return mStartHours;};
    uint8 getStartMinutes() {return mStartMinutes;};
    uint8 getStartSeconds() {return mStartSeconds;};
    uint16 getStartMilliseconds() {return mStartMilliseconds;};
    uint16 getStartMicroseconds() {return mStartMicroseconds;};
    uint16 getIntervalHours() {return mIntervalHours;};
    uint8 getIntervalMinutes() {return mIntervalMinutes;};
    uint8 getIntervalSeconds() {return mIntervalSeconds;};
    uint16 getIntervalMilliseconds() {return mIntervalMilliseconds;};
    uint16 getIntervalMicroseconds() {return mIntervalMicroseconds;};
    uint16 getRepeats() {return mRepeats;};
    void set(uint16 startHours, uint8 startMinutes, uint8 startSeconds, uint16 startMilliseconds,
                uint16 startMicroseconds, uint16 intervalHours, uint8 intervalMinutes,
                uint8 intervalSeconds, uint16 intervalMilliseconds, uint16 intervalMicroseconds,
                uint16 repeats);
    void unpack();
    uint8 pack();
private:
    CAPacket* mCAP;
    uint16 mStartHours;
    uint8 mStartMinutes;
    uint8 mStartSeconds;
    uint16 mStartMilliseconds;
    uint16 mStartMicroseconds;
    uint16 mIntervalHours;
    uint8 mIntervalMinutes;
    uint8 mIntervalSeconds;
    uint16 mIntervalMilliseconds;
    uint16 mIntervalMicroseconds;
    uint16 mRepeats;
};

/*
typedef struct {
    uint8 client_host_id;
    uint8 mod_attribute    : 4;
    uint8 value            : 4;
} PacketCondStart;

typedef struct {
    uint8 client_host_id;
    uint8 digits_before_decimal : 4;
    uint8 digits_after_decimal  : 4;
    uint32 min_value;
    uint32 max_value;
    uint32 value;
} PacketEditNumber;

typedef struct {
    uint8 client_host_id;
    uint8 enable_hours         : 1;
    uint8 enable_minutes       : 1;
    uint8 enable_seconds       : 1;
    uint8 enable_milliseconds  : 1;
    uint8 enable_microseconds  : 1;
    uint8 enable_nanoseconds   : 1;
    uint8 unused0              : 2;
    uint16 hours               : 10;
    uint16 minutes             : 6;
    uint16 seconds             : 6;
    uint16 milliseconds        : 10;
    uint16 microseconds;       // 10
    uint16 nanoseconds;        // 10
} PacketTimeBox;

typedef struct {
    uint8 active;
} PacketActivate;

typedef struct {
    char* log_string;
} PacketLog;

typedef struct {
    uint8 cam_multiplier;
    uint8 cam0_focus    : 1;
    uint8 cam0_shutter  : 1;
    uint8 cam1_focus    : 1;
    uint8 cam1_shutter  : 1;
    uint8 cam2_focus    : 1;
    uint8 cam2_shutter  : 1;
    uint8 cam3_focus    : 1;
    uint8 cam3_shutter  : 1;
    uint8 cam4_focus    : 1;
    uint8 cam4_shutter  : 1;
    uint8 cam5_focus    : 1;
    uint8 cam5_shutter  : 1;
    uint8 cam6_focus    : 1;
    uint8 cam6_shutter  : 1;
    uint8 cam7_focus    : 1;
    uint8 cam7_shutter  : 1;
} PacketCamState;

typedef struct {
    uint32 cam_port_number   : 5;
    uint32 mode              : 2;
    uint32 delay_hours       : 10;
    uint32 delay_minutes     : 6;
    uint32 delay_seconds     : 6;
    uint32 unused0           : 3;
    uint32 delay_milliseconds : 10;
    uint32 delay_microseconds : 10;
    uint32 duration_hours     : 10;
    uint32 unused1            : 2;
    uint32 duration_minutes      : 6;
    uint32 duration_seconds      : 6;
    uint32 duration_milliseconds : 10;
    uint32 duration_microseconds : 10;
    uint32 sequencer0             : 1;
    uint32 sequencer1             : 1;
    uint32 sequencer2             : 1;
    uint32 sequencer3             : 1;
    uint32 sequencer4             : 1;
    uint32 sequencer5             : 1;
    uint32 sequencer6             : 1;
    uint32 sequencer7             : 1;
    uint32 unused2                : 4;
    uint32 apply_intervalometer   : 1;
    uint32 smart_preview          : 6;
    uint32 mirror_lockup_enable   : 1;
    uint32 mirror_lockup_minutes  : 6;
    uint32 mirror_lockup_seconds  : 6;
    uint16 mirror_lockup_milliseconds; //10
} PacketCamSettings;

typedef struct {
    uint16 start_hours             : 10;
    uint16 start_minutes           : 6;
    uint16 start_seconds           : 6;
    uint16 start_milliseconds      : 10;
    uint16 start_microseconds;     // 10
    uint16 interval_hours          : 10;
    uint16 interval_minutes        : 6;
    uint16 interval_seconds        : 6;
    uint16 interval_milliseconds   : 10;
    uint16 interval_microseconds;  // 10
    uint16 repeats;
} PacketIntervalometer;

enum interModuleLogic {IML_OR, IML_AND, IML_OR_AND_OR, IML_AND_OR_AND};
typedef struct {
    uint8  enable_latch : 1;
    uint8  logic        : 4;
    uint8  unused       : 3;
} PacketInterModuleLogic;

typedef struct {
    uint8 enable_slave_mode     : 1;
    uint8 enable_extra_messages : 1;
    uint8 unused                : 6;
} PacketControlFlags;
*/

#endif // __CAPACKET_H__
