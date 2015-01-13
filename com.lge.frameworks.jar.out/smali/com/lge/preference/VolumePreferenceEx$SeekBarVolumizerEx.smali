.class public Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
.super Landroid/preference/VolumePreference$SeekBarVolumizer;
.source "VolumePreferenceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/preference/VolumePreferenceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizerEx"
.end annotation


# instance fields
.field private mVolumeReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/lge/preference/VolumePreferenceEx;


# direct methods
.method public constructor <init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 69
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;-><init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "defaultUri"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    .line 73
    invoke-direct/range {p0 .. p5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 144
    new-instance v1, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;

    invoke-direct {v1, p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;-><init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    iput-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    const-string v1, "VolumePreference"

    const-string v2, "SeekBarVolumizerEx"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "lge.settings.intent.action.NOTI_RESUME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    return v0
.end method

.method static synthetic access$1400(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    return v0
.end method

.method static synthetic access$1800(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    return v0
.end method

.method static synthetic access$1900(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    return v0
.end method

.method static synthetic access$700(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    return p1
.end method

.method static synthetic access$900(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 4
    .parameter "amount"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 275
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 280
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->startSample()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->postSetVolume(I)V

    .line 283
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mVolumeBeforeMute:I

    .line 284
    return-void
.end method

.method protected initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 7
    .parameter "seekBar"
    .parameter "defaultUri"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 85
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 86
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    .line 87
    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 88
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 90
    const-string v1, "VolumePreference"

    const-string v2, "initSeekBar registerContentObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    if-nez p2, :cond_0

    .line 103
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    .line 106
    .local v0, activate_simNum:I
    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    if-ne v1, v6, :cond_4

    .line 107
    if-ne v0, v5, :cond_2

    .line 108
    sget-object p2, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

    .line 135
    .end local v0           #activate_simNum:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mRingtone:Landroid/media/Ringtone;

    .line 137
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mRingtone:Landroid/media/Ringtone;

    iget v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 141
    :cond_1
    return-void

    .line 109
    .restart local v0       #activate_simNum:I
    :cond_2
    if-ne v0, v6, :cond_3

    .line 110
    sget-object p2, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM3_URI:Landroid/net/Uri;

    goto :goto_0

    .line 112
    :cond_3
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0

    .line 114
    :cond_4
    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 115
    if-ne v0, v5, :cond_5

    .line 116
    sget-object p2, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    goto :goto_0

    .line 117
    :cond_5
    if-ne v0, v6, :cond_6

    .line 118
    sget-object p2, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM3_URI:Landroid/net/Uri;

    goto :goto_0

    .line 120
    :cond_6
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 123
    :cond_7
    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    if-ne v1, v5, :cond_8

    .line 124
    const-string v1, "file:///system/media/audio/ui/Effect_Tick.ogg"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 127
    :cond_8
    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 129
    const-string v1, "file:///system/media/audio/ui/LG_Media_volume.ogg"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 132
    :cond_9
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    iget v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 234
    :cond_0
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress:I

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->startSample()V

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress:I

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->stopSample()V

    goto :goto_0
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$2;

    invoke-direct {v1, p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$2;-><init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    const/4 v1, 0x1

    #setter for: Lcom/lge/preference/VolumePreferenceEx;->mIsActive:Z
    invoke-static {v0, v1}, Lcom/lge/preference/VolumePreferenceEx;->access$002(Lcom/lge/preference/VolumePreferenceEx;Z)Z

    .line 245
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    iget v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 246
    return-void
.end method

.method public startSample()V
    .locals 4

    .prologue
    .line 249
    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    #calls: Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    invoke-static {v2, p0}, Lcom/lge/preference/VolumePreferenceEx;->access$2000(Lcom/lge/preference/VolumePreferenceEx;Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 250
    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->stopSample()V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 260
    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_mode_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 261
    .local v1, quietModeStatus:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 269
    .end local v1           #quietModeStatus:I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->postStartSample()V

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "VolumePreference"

    const-string v3, "SettingNotFoundException - getDBQuietModeState()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 221
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    :cond_0
    return-void
.end method
