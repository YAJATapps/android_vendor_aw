package com.softwinner.dragonbox.platform;

import android.content.Context;
import android.media.AudioManager;
import java.util.ArrayList;

public class AudioManagerProxy{
    public static final String AUDIO_NAME_CODEC = "AudioManagerEx.AUDIO_NAME_CODEC";
    public static final String AUDIO_NAME_HDMI = "AudioManagerEx.AUDIO_NAME_HDMI";
    public static final String AUDIO_NAME_SPDIF = "AudioManagerEx.AUDIO_NAME_SPDIF";
    public static final int STREAM_MUSIC = 4;//AudioManagerEx.STREAM_MUSIC;
    public static final String AUDIO_OUTPUT_ACTIVE = "AudioManagerEx.AUDIO_OUTPUT_ACTIVE";

    public static AudioManager getAudioManager(Context context) {
        return new AudioManager(context);
    }

    public static ArrayList<String> getActiveAudioDevices(Context context ,String devType){
        return new ArrayList<String>();
    }

    public static void setAudioDeviceActive(Context context, ArrayList<String> dev, String state){
    }
}

