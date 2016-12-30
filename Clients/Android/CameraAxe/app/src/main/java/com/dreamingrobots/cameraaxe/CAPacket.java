package com.dreamingrobots.cameraaxe;

import android.content.Context;
import android.widget.Toast;

import java.nio.charset.Charset;

/**
 * Created by oe on 12/25/2016.
 */

/**
 * Base class that manages packet construction
 */
public class CAPacket {
    public static final short STATE_PACKER = 1;
    public static final short STATE_UNPACKER = 2;

    protected static final short PID_START_SENTINEL = 0;
    protected static final short PID_MENU_HEADER = 1;
    protected static final short PID_END_SENTINEL = 24;

    private Context mContext;
    private int mBitsUsed;
    private int mBitsVal;
    private int mBytesUsed;
    private int mState;
    private byte[] mBuf;
    private int mBufSize;

    public CAPacket(Context context, short state, byte[] buf, int bufSize) {
        mContext = context;
        mState = state;
        mBuf = buf;
        mBufSize = bufSize;
    }

    public int unpackSize() {return (int) unpacker(8);}

    public short unpackType() {
        short val = (short) unpacker(8);
        if ((val <= PID_START_SENTINEL) || (val >= PID_END_SENTINEL)) {
            Toast.makeText(mContext, "Error: Invalid packet type", Toast.LENGTH_LONG);
        }
        return val;
    }

    protected long unpacker(int unpackBits) {
        if (mState != STATE_UNPACKER) {
            Toast.makeText(mContext, "Error in unpacker", Toast.LENGTH_LONG);
            return -1;
        }
        int unpackBitsLeft = unpackBits;
        long ret = 0;
        int valShift = 0;
        // This loop shifts through the number of bytes you want to unpack in the src buffer
        // and puts them into an uint32
        do {
            int bitsInCurSrcByte = 8 - mBitsUsed;
            int bitsToUnpack = Math.min(unpackBitsLeft, bitsInCurSrcByte);
            int unusedLeftBits = (unpackBitsLeft >= bitsInCurSrcByte) ?
                    0 : (bitsInCurSrcByte - unpackBitsLeft);
            int rightShift = mBitsUsed + unusedLeftBits;
            int val = mBuf[mBytesUsed] << unusedLeftBits;  // Zero out left bits
            val = val >> rightShift;      // Shift bits to right most position for this byte
            ret |= (((long)val) << valShift);
            valShift += bitsToUnpack;
            if (mBitsUsed + bitsToUnpack == 8)
            {
                mBitsUsed = 0;
                mBytesUsed++;
            }
            else
            {
                mBitsUsed += bitsToUnpack;
            }
            unpackBitsLeft -= bitsToUnpack;
        } while (unpackBitsLeft != 0);
        return ret;
    }

    protected void unpackerString(String str) {
        if (mState != STATE_UNPACKER) {
            Toast.makeText(mContext, "Error in unpackerString", Toast.LENGTH_LONG);
            return;
        }
        int len = 0;
        do {
            len++;
        } while (mBuf[mBytesUsed+len] != 0); // This do while loop includes null terminator
        String str2 = new String(mBuf, mBytesUsed, mBytesUsed+len);
        str = str2;
        mBytesUsed += len;
    }

    protected void packer( long val, int packBits) {
        if (mState != STATE_PACKER) {
            Toast.makeText(mContext, "Error in packer", Toast.LENGTH_LONG);
            return;
        }
        int packBitsLeft = packBits;
        do {
            int bitsInCurDstByte = 8 - mBitsUsed;
            int bitsToPack = Math.min(bitsInCurDstByte, packBitsLeft);
            mBitsVal |= (val << mBitsUsed);
            mBitsUsed += bitsToPack;
            val = val >> bitsToPack;
            if (mBitsUsed == 8) // When byte is full write it's value
            {
                mBuf[mBytesUsed++] = (byte)(mBitsVal & 0xFF);
                mBitsVal = 0;
                mBitsUsed = 0;
            }
            packBitsLeft -= bitsToPack;
        } while (packBitsLeft != 0);
    }

    protected void packerString(String src) {
        if (mState != STATE_PACKER) {
            Toast.makeText(mContext, "Error in packer", Toast.LENGTH_LONG);
            return;
        }
        byte[] b = src.getBytes(Charset.forName("UTF-8"));
        for(int val=0; val<src.length(); val++) {
            mBuf[mBytesUsed++] = b[val];
        }
    }

    protected void flushPacket() {
        if (mBitsUsed != 0 || mBitsVal != 0 || mBytesUsed >= mBufSize) {
            Toast.makeText(mContext, "Error detected during flush()", Toast.LENGTH_LONG);
        }
    }

    public class MenuHeader {

        private int mMajorVersion;
        private int mMinorVersion;
        private String mMenuName;

        public int getMajorVersion() {return mMajorVersion;}
        public int getMinorVersion() {return mMinorVersion;}
        public String getMenuName() {return mMenuName;}

        public void set(int majorVersion, int minorVersion, String menuName) {
            mMajorVersion = majorVersion;
            mMinorVersion = minorVersion;
            mMenuName = menuName;
        }

        public void unpack() {
            mMajorVersion = (int)unpacker(8);
            mMinorVersion = (int)unpacker(8);
            unpackerString(mMenuName);
            flushPacket();
        }

        public void pack() {
            int len = mMenuName.length();
            int packetSize = 2 + len + 1;  // 1 for the null terminator
            packer(packetSize, 8);
            packer(PID_MENU_HEADER, 8);
            packer(mMajorVersion, 8);
            packer(mMinorVersion, 8);
            packerString(mMenuName);
            flushPacket();
        }
    }
}
