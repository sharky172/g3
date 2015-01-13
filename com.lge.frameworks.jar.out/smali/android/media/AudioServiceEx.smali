.class public Landroid/media/AudioServiceEx;
.super Landroid/media/AudioService;
.source "AudioServiceEx.java"

# interfaces
.implements Landroid/media/IAudioServiceEx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioServiceEx$AudioHandlerEx;,
        Landroid/media/AudioServiceEx$AudioSystemThreadEx;,
        Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final FLAG_TOAST_ALL_VOLUME_MUTE:I = 0x4

.field private static final FLAG_TOAST_VOL_DOWN:I = 0x1

.field private static final FLAG_TOAST_VOL_TTY_MODE:I = 0x3

.field private static final FLAG_TOAST_VOL_UP:I = 0x2

.field private static MAX_STREAM_VOLUME_Ex:[I = null

.field private static final MSG_SET_RECORDCALLBACK:I = 0x1e

.field private static final MSG_SHOW_VOLUME_INFO:I = 0x1d

.field private static STREAM_NAMES_Ex:[Ljava/lang/String; = null

.field private static STREAM_VOLUME_ALIAS_Ex:[I = null

.field private static STREAM_VOLUME_ALIAS_NON_VOICE_Ex:[I = null

.field private static final TALKBACK_OVERRIDE_DELAY_MS:I = 0x1f4

.field private static mRecordState:I


# instance fields
.field MirroLinkTestKey:Z

.field private final ROTATION_0:I

.field private final ROTATION_180:I

.field private final ROTATION_270:I

.field private final ROTATION_90:I

.field private final mAudioHandlerEx:Landroid/media/AudioServiceEx$AudioHandlerEx;

.field private mCurrentUserId:I

.field private mForcedUseForMedia:I

.field private mInited:Z

.field private mIsAllSoundOff:Z

.field private mIsQuickCoverClose:Z

.field private mIsSWIrRC:Ljava/lang/String;

.field private mIsSoundException:Z

.field private mIsVolumePanelVisible:Z

.field private final mLGAudioSystemCallback:Lcom/lge/media/LGAudioSystem$RecordStateCallback;

.field private mLastRotation:I

.field private mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mSafeVoiceVolumeIndex:I

.field private mWatchingRotation:Z

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0xc

    .line 87
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/media/AudioServiceEx;->MAX_STREAM_VOLUME_Ex:[I

    .line 103
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_Ex:[I

    .line 119
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_NON_VOICE_Ex:[I

    .line 136
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "STREAM_VOICE_CALL"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "STREAM_SYSTEM"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "STREAM_RING"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "STREAM_MUSIC"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "STREAM_ALARM"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "STREAM_NOTIFICATION"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "STREAM_BLUETOOTH_SCO"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "STREAM_SYSTEM_ENFORCED"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "STREAM_DTMF"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "STREAM_TTS"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "STREAM_FM"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "STREAM_DMB"

    aput-object v3, v1, v2

    sput-object v1, Landroid/media/AudioServiceEx;->STREAM_NAMES_Ex:[Ljava/lang/String;

    .line 189
    sput v4, Landroid/media/AudioServiceEx;->mRecordState:I

    .line 272
    :try_start_0
    const-string v1, "android.media.AudioManagerEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 273
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 274
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 103
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 119
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 203
    invoke-direct {p0, p1}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    .line 57
    iput-boolean v6, p0, Landroid/media/AudioServiceEx;->mInited:Z

    .line 59
    new-instance v2, Landroid/media/AudioServiceEx$AudioHandlerEx;

    invoke-direct {v2, p0}, Landroid/media/AudioServiceEx$AudioHandlerEx;-><init>(Landroid/media/AudioServiceEx;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mAudioHandlerEx:Landroid/media/AudioServiceEx$AudioHandlerEx;

    .line 62
    iput v6, p0, Landroid/media/AudioServiceEx;->ROTATION_0:I

    .line 63
    iput v3, p0, Landroid/media/AudioServiceEx;->ROTATION_90:I

    .line 64
    iput v4, p0, Landroid/media/AudioServiceEx;->ROTATION_180:I

    .line 65
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/AudioServiceEx;->ROTATION_270:I

    .line 68
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;

    .line 69
    new-instance v2, Landroid/media/AudioServiceEx$1;

    invoke-direct {v2, p0}, Landroid/media/AudioServiceEx$1;-><init>(Landroid/media/AudioServiceEx;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 79
    iput-boolean v6, p0, Landroid/media/AudioServiceEx;->MirroLinkTestKey:Z

    .line 83
    const-string v2, ""

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mIsSWIrRC:Ljava/lang/String;

    .line 153
    new-instance v2, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioServiceEx;Landroid/media/AudioServiceEx$1;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    iput-boolean v6, p0, Landroid/media/AudioServiceEx;->mIsVolumePanelVisible:Z

    .line 162
    iput-boolean v6, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    .line 180
    iput-boolean v6, p0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    .line 184
    iput-boolean v6, p0, Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z

    .line 190
    new-instance v2, Landroid/media/AudioServiceEx$2;

    invoke-direct {v2, p0}, Landroid/media/AudioServiceEx$2;-><init>(Landroid/media/AudioServiceEx;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mLGAudioSystemCallback:Lcom/lge/media/LGAudioSystem$RecordStateCallback;

    .line 204
    sget v2, Landroid/media/AudioManager;->NUM_SOUND_EFFECTS:I

    filled-new-array {v2, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES_MAP:[[I

    .line 205
    iput v6, p0, Landroid/media/AudioServiceEx;->mForcedUseForMedia:I

    .line 206
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mLGAudioSystemCallback:Lcom/lge/media/LGAudioSystem$RecordStateCallback;

    invoke-static {v2}, Lcom/lge/media/LGAudioSystem;->setRecordStateCallback(Lcom/lge/media/LGAudioSystem$RecordStateCallback;)V

    .line 209
    const-string v2, "ro.lge.irrc.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mIsSWIrRC:Ljava/lang/String;

    .line 217
    new-instance v2, Lmiui/view/VolumePanel;

    invoke-direct {v2, p1, p0}, Lmiui/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    .line 218
    new-instance v2, Landroid/media/MediaFocusControlEx;

    iget-object v3, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v3}, Landroid/media/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    invoke-direct {v2, v3, v4, v5, p0}, Landroid/media/MediaFocusControlEx;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/VolumeController;Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    .line 223
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    .line 225
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

    .line 227
    const-string v2, "ro.config.vc_call_vol_default"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v3, v3, v6

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/media/AudioServiceEx;->mSafeVoiceVolumeIndex:I

    .line 228
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLgSafeMediaVolumeEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSafeMediaVolumeState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSafeMediaVolumeIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->readPersistedMABL()V

    .line 236
    const-string v2, "ro.lge.audio_soundexception"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    .line 239
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v2, "com.lge.mirrorlink.audio.started"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v2, "com.lge.mirrorlink.audio.stopped"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iput v6, p0, Landroid/media/AudioServiceEx;->mCurrentUserId:I

    .line 249
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v2, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iget-boolean v2, p0, Landroid/media/AudioServiceEx;->mWatchingRotation:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v2, :cond_0

    .line 258
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Landroid/media/AudioServiceEx;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v2

    iput v2, p0, Landroid/media/AudioServiceEx;->mLastRotation:I

    .line 259
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioServiceEx;->mLastRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioServiceEx;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mAudioHandlerEx:Landroid/media/AudioServiceEx$AudioHandlerEx;

    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getRingerMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioServiceEx$AudioHandlerEx;->persistRingerMode(I)V

    .line 268
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    const-string v3, "Remote exception when adding rotation watcher"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/AudioServiceEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/media/AudioServiceEx;->mLastRotation:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioServiceEx;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/media/AudioServiceEx;->mLastRotation:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioServiceEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->sendRotationParameter()V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/AudioServiceEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mWatchingRotation:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/media/AudioServiceEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/media/AudioServiceEx;->mWatchingRotation:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/media/AudioServiceEx;)Landroid/view/IWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/AudioServiceEx;)Landroid/view/IRotationWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mRotationWatcher:Landroid/view/IRotationWatcher;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 55
    sget v0, Landroid/media/AudioServiceEx;->mRecordState:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput p0, Landroid/media/AudioServiceEx;->mRecordState:I

    return p0
.end method

.method static synthetic access$402(Landroid/media/AudioServiceEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z

    return p1
.end method

.method static synthetic access$500(Landroid/media/AudioServiceEx;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/media/AudioServiceEx;->refreshVolumePanel(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/AudioServiceEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/media/AudioServiceEx;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$602(Landroid/media/AudioServiceEx;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/media/AudioServiceEx;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$700(Landroid/media/AudioServiceEx;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/media/AudioServiceEx;->onShowVolumeInfo(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/AudioServiceEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->readPersistedMABL()V

    return-void
.end method

.method static synthetic access$900(Landroid/media/AudioServiceEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    return v0
.end method

.method private isAllSoundOff()Z
    .locals 4

    .prologue
    .line 1418
    const-string v0, "com.android.settingsaccessibility/com.android.settingsaccessibility.turnoffallsounds.TurnOffAllSoundsService"

    .line 1419
    .local v0, PREFERENCE_KEY:Ljava/lang/String;
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1421
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1422
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1425
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSafeMediaVolumeDevices()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1017
    const/4 v0, 0x0

    .line 1018
    .local v0, device:I
    const/16 v1, 0xc

    .line 1019
    .local v1, devices:I
    const/4 v2, 0x0

    .line 1020
    .local v2, i:I
    :goto_0
    if-eqz v1, :cond_2

    .line 1021
    shl-int v4, v3, v2

    and-int v0, v1, v4

    .line 1022
    if-eqz v0, :cond_1

    .line 1023
    iget-object v4, p0, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1030
    :goto_1
    return v3

    .line 1026
    :cond_0
    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v1, v4

    .line 1028
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1030
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isVirtualMirrorLinkDevicedConnected(I)Z
    .locals 6
    .parameter "streamType"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 1585
    const/4 v0, 0x0

    .line 1589
    .local v0, device:I
    const-string v2, "isVirtualMirrorLinkDevice"

    invoke-static {v2}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1591
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wkcp isVirtualMirrorLinkDevicedConnected... streamType > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMode()I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1605
    :cond_0
    :goto_0
    return v1

    .line 1596
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/AudioServiceEx;->getDeviceForStream(I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1598
    const-string v1, "AudioService"

    const-string v2, "wkcp isVirtualMirrorLinkDevicedConnected... volume fixed... "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onShowVolumeInfo(I)V
    .locals 7
    .parameter "flag"

    .prologue
    const v6, 0x20d02c1

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 942
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowVolumeInfo mediavolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Landroid/media/AudioServiceEx;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 944
    invoke-virtual {p0, v3}, Landroid/media/AudioServiceEx;->getStreamVolume(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioServiceEx;->mSafeVoiceVolumeIndex:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->isSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/AudioServiceEx;->isSafeMediaVolumeDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeadsetVolumeScenario() set default call vol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget v0, p0, Landroid/media/AudioServiceEx;->mSafeVoiceVolumeIndex:I

    iget-object v1, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v3, v1}, Landroid/media/AudioServiceEx;->setStreamVolume(IIILjava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 949
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    check-cast v0, Lmiui/view/VolumePanel;

    invoke-virtual {v0, v6}, Lmiui/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 952
    :cond_0
    invoke-virtual {p0, v5}, Landroid/media/AudioServiceEx;->getStreamVolume(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    if-le v0, v1, :cond_1

    .line 953
    iget v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v3, v1}, Landroid/media/AudioServiceEx;->setStreamVolume(IIILjava/lang/String;)V

    .line 954
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMode()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 955
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    check-cast v0, Lmiui/view/VolumePanel;

    invoke-virtual {v0, v6}, Lmiui/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 967
    :cond_1
    :goto_0
    return-void

    .line 958
    :cond_2
    if-ne p1, v4, :cond_3

    .line 959
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMode()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 960
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    check-cast v0, Lmiui/view/VolumePanel;

    const v1, 0x20d02c3

    invoke-virtual {v0, v1}, Lmiui/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    goto :goto_0

    .line 962
    :cond_3
    if-ne p1, v5, :cond_4

    .line 963
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    check-cast v0, Lmiui/view/VolumePanel;

    const v1, 0x20d02c6

    invoke-virtual {v0, v1}, Lmiui/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    goto :goto_0

    .line 964
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 965
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    check-cast v0, Lmiui/view/VolumePanel;

    const v1, 0x20d0360

    invoke-virtual {v0, v1}, Lmiui/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    goto :goto_0
.end method

.method private readPersistedMABL()V
    .locals 5

    .prologue
    .line 970
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mono_audio_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 971
    .local v1, monoAudioSettingMode:I
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "balance_change_value"

    const/16 v4, 0x1f

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 972
    .local v0, balanceChangeValue:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monoAudioSettingMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", balanceChangeValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-static {v1}, Lcom/lge/media/LGAudioSystem;->setMABLEnable(I)I

    .line 974
    const/16 v2, 0x3e

    invoke-static {v0, v2}, Lcom/lge/media/LGAudioSystem;->setMABLControl(II)I

    .line 975
    return-void
.end method

.method private refreshVolumePanel(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1576
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    check-cast v0, Lmiui/view/VolumePanel;

    invoke-virtual {v0}, Lmiui/view/VolumePanel;->updateState()V

    goto :goto_0

    .line 1579
    :cond_0
    new-instance v0, Lmiui/view/VolumePanel;

    invoke-direct {v0, p1, p0}, Lmiui/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    .line 1580
    :goto_0
    return-void
.end method

.method private sendAudioModeBroadcastIntent(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 411
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAudioModeBroadcastIntent !!!!!! state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.media.AUDIOMODE_STATE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, intentState:Landroid/content/Intent;
    const-string v1, "com.lge.media.EXTRA_AUDIOMODE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const-string v1, "tablet"

    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    invoke-direct {p0, v0}, Landroid/media/AudioServiceEx;->sendBroadcastToUser(Landroid/content/Intent;)V

    .line 421
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendBroadcastToUser(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 813
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 815
    .local v0, ident:J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Landroid/media/AudioServiceEx;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 819
    return-void

    .line 817
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendRotationParameter()V
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Landroid/media/AudioServiceEx;->mLastRotation:I

    packed-switch v0, :pswitch_data_0

    .line 404
    const-string v0, "AudioService"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_0
    return-void

    .line 392
    :pswitch_0
    const-string v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :pswitch_1
    const-string v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :pswitch_2
    const-string v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 401
    :pswitch_3
    const-string v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 7
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"
    .parameter "name"

    .prologue
    .line 544
    const-string v5, "AudioService"

    const-string v6, "AudioServiceEx::adjustStreamVolume"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v5, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v4, v5, p1

    .line 546
    .local v4, streamTypeAliasEx:I
    iget-object v5, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v5, v4

    .line 547
    .local v3, streamStateEx:Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {p0, v4}, Landroid/media/AudioServiceEx;->getDeviceForStream(I)I

    move-result v1

    .line 548
    .local v1, deviceEx:I
    invoke-virtual {v3, v1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 549
    .local v0, aliasIndexEx:I
    const/16 v5, 0xa

    invoke-virtual {p0, v5, p1, v4}, Landroid/media/AudioServiceEx;->rescaleIndex(III)I

    move-result v2

    .line 551
    .local v2, stepEx:I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 556
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;)V
    .locals 14
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"
    .parameter "callingPackage"

    .prologue
    .line 437
    const-string v1, "AudioService"

    const-string v2, "AudioServiceEx::adjustSuggestedStreamVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-boolean v1, p0, Landroid/media/AudioServiceEx;->MirroLinkTestKey:Z

    if-eqz v1, :cond_0

    .line 443
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 446
    const-string v1, "AudioService"

    const-string v2, "wkcp audio volume key"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v1, "isVirtualMirrorLinkDevice"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 448
    .local v10, isConnected:Z
    if-nez v10, :cond_4

    .line 449
    const-string v1, "AudioService"

    const-string v2, "wkcp audio com.lge.mirrorlink.audio.started"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v1, "isVirtualMirrorLinkDevice=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 460
    .end local v10           #isConnected:Z
    :cond_0
    :goto_0
    iget v1, p0, Landroid/media/AudioServiceEx;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 461
    iget v12, p0, Landroid/media/AudioServiceEx;->mVolumeControlStream:I

    .line 467
    .local v12, streamTypeEx:I
    :goto_1
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioServiceEx::adjustSuggestedStreamVolume()..allSoundEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-boolean v1, p0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x1d

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 474
    :cond_1
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/media/AudioServiceEx;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    if-eq v12, v1, :cond_6

    :cond_2
    iget v1, p0, Landroid/media/AudioServiceEx;->mMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget v1, p0, Landroid/media/AudioServiceEx;->mMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    .line 477
    and-int/lit8 p3, p3, -0x2

    .line 478
    const/4 v1, 0x2

    if-ne v12, v1, :cond_6

    .line 479
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    check-cast v1, Lmiui/view/VolumePanel;

    invoke-virtual {v1}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v1

    if-nez v1, :cond_6

    .line 480
    const-string v1, "AudioService"

    const-string v2, "Volume exception eyguardLocked not showing volumepanel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_3
    :goto_2
    return-void

    .line 453
    .end local v12           #streamTypeEx:I
    .restart local v10       #isConnected:Z
    :cond_4
    const-string v1, "AudioService"

    const-string v2, "wkcp audio com.lge.mirrorlink.audio.stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v1, "isVirtualMirrorLinkDevice=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 463
    .end local v10           #isConnected:Z
    :cond_5
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/media/AudioServiceEx;->getActiveStreamType(I)I

    move-result v12

    .restart local v12       #streamTypeEx:I
    goto :goto_1

    .line 487
    :cond_6
    invoke-direct {p0, v12}, Landroid/media/AudioServiceEx;->isVirtualMirrorLinkDevicedConnected(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 489
    const-string v1, "AudioService"

    const-string v2, "Speaker the volume is fixed!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 495
    :cond_7
    const/4 v1, 0x2

    if-ne v12, v1, :cond_8

    move/from16 v0, p3

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_8

    .line 496
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_mode_status"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11

    .line 497
    .local v11, quietModeStatus:I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_8
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 502
    .end local v11           #quietModeStatus:I
    :catch_0
    move-exception v8

    .line 503
    .local v8, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "AudioService"

    const-string v2, "SettingNotFoundException - getDBQuietModeState()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v8           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_8
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMasterStreamType()I

    move-result v1

    if-ne v12, v1, :cond_b

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_b

    .line 508
    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    .line 509
    :cond_9
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    check-cast v1, Lmiui/view/VolumePanel;

    invoke-virtual {v1}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v1

    if-nez v1, :cond_b

    .line 510
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    check-cast v1, Lmiui/view/VolumePanel;

    move/from16 v0, p3

    invoke-virtual {v1, v12, v0}, Lmiui/view/VolumePanel;->postVolumeChanged(II)V

    .line 511
    iput p1, p0, Landroid/media/AudioServiceEx;->mPrevVolDirection:I

    .line 512
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/AudioServiceEx;->mIsVolumePanelVisible:Z

    .line 513
    const-string v1, "AudioService"

    const-string v2, "AudioServiceEx::justVolumePanelVisible not adjust"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 517
    :cond_a
    if-nez p1, :cond_b

    .line 518
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioServiceEx;->mIsVolumePanelVisible:Z

    .line 522
    :cond_b
    iget v1, p0, Landroid/media/AudioServiceEx;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 523
    const-string v1, "tty_mode"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 524
    .local v13, ttyMode:Ljava/lang/String;
    const-string v1, "tty_full"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "tty_hco"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "tty_vco"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 525
    :cond_c
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() Cannot adjust the volume during TTY Mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x1d

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_2

    .line 531
    .end local v13           #ttyMode:Ljava/lang/String;
    :cond_d
    invoke-super/range {p0 .. p4}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;)V

    .line 532
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 533
    const-string v1, "AudioService"

    const-string v2, "adjustSuggestedStreamVolume: Stop notification sound"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.lge.media.STOP_NOTIFICATION"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {p0, v9}, Landroid/media/AudioServiceEx;->sendBroadcastToAll(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method protected checkForRingerModeChange(III)Z
    .locals 5
    .parameter "oldIndex"
    .parameter "direction"
    .parameter "step"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1425
    const/4 v0, 0x1

    .line 1426
    .local v0, adjustVolumeIndex:Z
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getRingerMode()I

    move-result v1

    .line 1428
    .local v1, ringerMode:I
    packed-switch v1, :pswitch_data_0

    .line 1481
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/media/AudioServiceEx;->setRingerMode(I)V

    .line 1487
    iput p2, p0, Landroid/media/AudioServiceEx;->mPrevVolDirection:I

    .line 1489
    return v0

    .line 1430
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 1431
    iget-boolean v2, p0, Landroid/media/AudioServiceEx;->mHasVibrator:Z

    if-eqz v2, :cond_1

    .line 1438
    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_0

    .line 1439
    const/4 v1, 0x1

    .line 1440
    const/4 v0, 0x0

    goto :goto_0

    .line 1444
    :cond_1
    if-ge p1, p3, :cond_0

    iget v2, p0, Landroid/media/AudioServiceEx;->mPrevVolDirection:I

    if-eq v2, v3, :cond_0

    .line 1445
    const/4 v1, 0x0

    goto :goto_0

    .line 1451
    :pswitch_1
    iget-boolean v2, p0, Landroid/media/AudioServiceEx;->mHasVibrator:Z

    if-nez v2, :cond_2

    .line 1452
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1456
    :cond_2
    if-ne p2, v3, :cond_4

    .line 1457
    iget v2, p0, Landroid/media/AudioServiceEx;->mPrevVolDirection:I

    if-eq v2, v3, :cond_3

    .line 1458
    const/4 v1, 0x0

    .line 1465
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 1466
    goto :goto_0

    .line 1460
    :cond_4
    if-ne p2, v4, :cond_3

    .line 1461
    iget-boolean v2, p0, Landroid/media/AudioServiceEx;->mIsVolumePanelVisible:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/media/AudioServiceEx;->mPrevVolDirection:I

    if-eq v2, v4, :cond_3

    .line 1462
    const/4 v1, 0x2

    goto :goto_1

    .line 1468
    :pswitch_2
    if-ne p2, v4, :cond_5

    .line 1469
    iget-boolean v2, p0, Landroid/media/AudioServiceEx;->mHasVibrator:Z

    if-eqz v2, :cond_6

    .line 1470
    iget-boolean v2, p0, Landroid/media/AudioServiceEx;->mIsVolumePanelVisible:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/media/AudioServiceEx;->mPrevVolDirection:I

    if-eq v2, v4, :cond_5

    .line 1471
    const/4 v1, 0x1

    .line 1472
    const/4 p2, 0x0

    .line 1478
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 1479
    goto :goto_0

    .line 1475
    :cond_6
    const/4 v1, 0x2

    goto :goto_2

    .line 1428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createAudioSystemThread()V
    .locals 1

    .prologue
    .line 1172
    new-instance v0, Landroid/media/AudioServiceEx$AudioSystemThreadEx;

    invoke-direct {v0, p0}, Landroid/media/AudioServiceEx$AudioSystemThreadEx;-><init>(Landroid/media/AudioServiceEx;)V

    iput-object v0, p0, Landroid/media/AudioServiceEx;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 1173
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 1174
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->waitForAudioHandlerCreation()V

    .line 1175
    return-void
.end method

.method public getActiveStreamType(I)I
    .locals 9
    .parameter "suggestedStreamType"

    .prologue
    const/4 v8, 0x2

    const/high16 v7, -0x8000

    const/4 v5, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, mActiveStreamType:I
    const/16 v1, 0x1388

    .line 664
    .local v1, override_delyMs:I
    iget-boolean v2, p0, Landroid/media/AudioServiceEx;->mVoiceCapable:Z

    if-eqz v2, :cond_a

    .line 671
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->isInCommunication()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    invoke-super {p0, p1}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    :goto_0
    move p1, v0

    .line 770
    .end local p1
    :cond_0
    :goto_1
    return p1

    .line 673
    .restart local p1
    :cond_1
    if-ne p1, v7, :cond_5

    .line 676
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v2, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteStateIfActive(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 680
    const/16 v0, -0xc8

    goto :goto_0

    .line 681
    :cond_2
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0xb

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 687
    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    .line 692
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 695
    :cond_5
    if-eq p1, v8, :cond_6

    if-eq p1, v5, :cond_6

    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    .line 701
    :cond_6
    move v0, p1

    goto :goto_0

    .line 703
    :cond_7
    invoke-static {v4, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0xb

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 709
    :cond_8
    const/4 v0, 0x3

    goto :goto_0

    .line 714
    :cond_9
    move v0, p1

    goto :goto_0

    .line 718
    :cond_a
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->isInCommunication()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 719
    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v4, :cond_b

    .line 724
    const/4 p1, 0x6

    goto :goto_1

    :cond_b
    move p1, v3

    .line 729
    goto :goto_1

    .line 731
    :cond_c
    invoke-static {v5, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v8, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    move p1, v5

    .line 738
    goto :goto_1

    .line 739
    :cond_e
    if-ne p1, v7, :cond_0

    .line 740
    invoke-virtual {p0, v1}, Landroid/media/AudioServiceEx;->isAfMusicActiveRecently(I)Z

    move-result v2

    if-eqz v2, :cond_f

    move p1, v4

    .line 744
    goto :goto_1

    .line 745
    :cond_f
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v2, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteStateIfActive(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 749
    const/16 p1, -0xc8

    goto :goto_1

    .line 750
    :cond_10
    invoke-static {v4, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_11

    move p1, v4

    .line 754
    goto/16 :goto_1

    :cond_11
    move p1, v5

    .line 759
    goto/16 :goto_1
.end method

.method protected getDeviceForStream(I)I
    .locals 2
    .parameter "stream"

    .prologue
    .line 1496
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 1497
    .local v0, device:I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 1503
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1504
    const/4 v0, 0x2

    .line 1516
    :cond_0
    :goto_0
    return v0

    .line 1506
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 1507
    const/4 v0, 0x4

    goto :goto_0

    .line 1509
    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 1510
    const/16 v0, 0x8

    goto :goto_0

    .line 1513
    :cond_3
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v2, 0x2

    .line 1555
    invoke-virtual {p0, p1}, Landroid/media/AudioServiceEx;->ensureValidStreamType(I)V

    .line 1556
    invoke-virtual {p0, p1}, Landroid/media/AudioServiceEx;->getDeviceForStream(I)I

    move-result v0

    .line 1557
    .local v0, device:I
    iget v1, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    if-eq v1, v2, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    if-ne p1, v2, :cond_1

    iget-boolean v1, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v1, :cond_1

    .line 1561
    const/4 v0, 0x2

    .line 1563
    :cond_1
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMasterStreamType()I
    .locals 1

    .prologue
    .line 644
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    .line 645
    const/4 v0, 0x2

    .line 647
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getPlayerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1625
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    check-cast v0, Landroid/media/MediaFocusControlEx;

    invoke-virtual {v0}, Landroid/media/MediaFocusControlEx;->getPlayerList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerPlayBackState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1617
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    check-cast v0, Landroid/media/MediaFocusControlEx;

    invoke-virtual {v0}, Landroid/media/MediaFocusControlEx;->getPlayerPlayBackState()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStreamVolume(I)I
    .locals 2
    .parameter "streamType"

    .prologue
    const/4 v1, 0x2

    .line 1546
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 1548
    const/4 v0, 0x0

    .line 1550
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method public isSpeakerOnForMedia()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 808
    iget v1, p0, Landroid/media/AudioServiceEx;->mForcedUseForMedia:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 2
    .parameter "streamType"

    .prologue
    const/4 v1, 0x2

    .line 1537
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 1539
    const/4 v0, 0x1

    .line 1541
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected loadTouchSoundAssets()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 616
    const-string v0, "AudioService"

    const-string v1, "loadTouchSoundAssets::start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-super {p0}, Landroid/media/AudioService;->loadTouchSoundAssets()V

    .line 618
    sget-object v0, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v1, "switchon.ogg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    sget-object v0, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v1, "switchoff.ogg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, p0, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES_MAP:[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    sget-object v1, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "switchon.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aput v1, v0, v3

    .line 621
    iget-object v0, p0, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES_MAP:[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    sget-object v1, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "switchoff.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aput v1, v0, v3

    .line 622
    const-string v0, "AudioService"

    const-string v1, "loadTouchSoundAssets::end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void
.end method

.method protected onConfigureSafeVolume(Z)V
    .locals 10
    .parameter "force"

    .prologue
    const/4 v2, 0x2

    .line 980
    iget-object v9, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 981
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    .line 982
    .local v7, mcc:I
    iget v0, p0, Landroid/media/AudioServiceEx;->mMcc:I

    if-ne v0, v7, :cond_0

    iget v0, p0, Landroid/media/AudioServiceEx;->mMcc:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 983
    :cond_0
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    .line 988
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 993
    .local v8, safeMediaVolumeEnabled:Z
    if-eqz v8, :cond_3

    .line 994
    const/4 v3, 0x3

    .line 995
    .local v3, persistedState:I
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 996
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 997
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->enforceSafeMediaVolume()V

    .line 1003
    :cond_1
    :goto_0
    iput v7, p0, Landroid/media/AudioServiceEx;->mMcc:I

    .line 1004
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1012
    .end local v3           #persistedState:I
    .end local v8           #safeMediaVolumeEnabled:Z
    :cond_2
    monitor-exit v9

    .line 1013
    return-void

    .line 1000
    .restart local v8       #safeMediaVolumeEnabled:Z
    :cond_3
    const/4 v3, 0x1

    .line 1001
    .restart local v3       #persistedState:I
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_0

    .line 1012
    .end local v3           #persistedState:I
    .end local v7           #mcc:I
    .end local v8           #safeMediaVolumeEnabled:Z
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSetStreamVolume(IIII)V
    .locals 5
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 1368
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMasterStreamType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1371
    :cond_0
    if-nez p2, :cond_4

    .line 1372
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getRingerMode()I

    move-result v1

    .line 1373
    .local v1, ringerMode:I
    const/4 v3, 0x2

    if-ne v3, v1, :cond_3

    .line 1374
    iget-boolean v3, p0, Landroid/media/AudioServiceEx;->mHasVibrator:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 1384
    .end local v1           #ringerMode:I
    .local v0, newRingerMode:I
    :goto_0
    and-int/lit16 v3, p3, 0x100

    if-nez v3, :cond_1

    .line 1385
    invoke-virtual {p0, v0}, Landroid/media/AudioServiceEx;->setRingerMode(I)V

    .line 1388
    .end local v0           #newRingerMode:I
    :cond_1
    iget-object v3, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    invoke-virtual {p0, v3, p2, p4, v2}, Landroid/media/AudioServiceEx;->setStreamVolumeInt(IIIZ)V

    .line 1390
    return-void

    .restart local v1       #ringerMode:I
    :cond_2
    move v0, v2

    .line 1374
    goto :goto_0

    .line 1378
    :cond_3
    move v0, v1

    .restart local v0       #newRingerMode:I
    goto :goto_0

    .line 1381
    .end local v0           #newRingerMode:I
    .end local v1           #ringerMode:I
    :cond_4
    const/4 v0, 0x2

    .restart local v0       #newRingerMode:I
    goto :goto_0
.end method

.method protected onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 12
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v11, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 875
    iget-object v10, p0, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v10

    .line 876
    if-nez p2, :cond_1

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_1

    .line 878
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/AudioServiceEx;->setBluetoothA2dpOnInt(Z)V

    .line 880
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    check-cast v0, Lmiui/view/VolumePanel;

    const/4 v2, -0x1

    .line 887
    :cond_1
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_AUDIO_HEADSET_TYPE:Z

    if-eqz v0, :cond_2

    .line 889
    const-string v0, "h2w"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 890
    if-ne p2, v9, :cond_b

    const-string v7, "HeadsetState=1"

    .line 892
    .local v7, HeadsetState:Ljava/lang/String;
    :goto_0
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 907
    .end local v7           #HeadsetState:Ljava/lang/String;
    :cond_2
    :goto_1
    and-int/lit16 v0, p1, 0x6000

    if-eqz v0, :cond_11

    move v8, v9

    .line 908
    .local v8, isUsb:Z
    :goto_2
    if-nez v8, :cond_3

    if-ne p2, v9, :cond_3

    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMode()I

    move-result v0

    if-ne v0, v11, :cond_3

    const-string v0, "AudioService"

    const-string v2, "onSetWiredDeviceConnectionState() Change intent order: Intent First"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioServiceEx;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    :cond_3
    if-ne p2, v9, :cond_4

    move v1, v9

    :cond_4
    if-eqz v8, :cond_12

    move-object v0, p3

    :goto_3
    invoke-virtual {p0, v1, p1, v0}, Landroid/media/AudioServiceEx;->handleDeviceConnection(ZILjava/lang/String;)Z

    .line 909
    if-eqz p2, :cond_8

    .line 910
    if-eq p1, v3, :cond_5

    if-ne p1, v4, :cond_6

    .line 912
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioServiceEx;->setBluetoothA2dpOnInt(Z)V

    .line 914
    :cond_6
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_8

    .line 915
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 916
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x1d

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 925
    :cond_7
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 934
    :cond_8
    if-nez v8, :cond_a

    if-ne p2, v9, :cond_9

    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMode()I

    move-result v0

    if-eq v0, v11, :cond_a

    .line 935
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioServiceEx;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 937
    :cond_a
    monitor-exit v10

    .line 938
    return-void

    .line 890
    .end local v8           #isUsb:Z
    :cond_b
    const-string v7, "HeadsetState=0"

    goto :goto_0

    .line 893
    :cond_c
    const-string v0, "h2w_advanced"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 894
    if-ne p2, v9, :cond_d

    const-string v7, "HeadsetState=2"

    .line 896
    .restart local v7       #HeadsetState:Ljava/lang/String;
    :goto_4
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    .line 937
    .end local v7           #HeadsetState:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 894
    :cond_d
    :try_start_1
    const-string v7, "HeadsetState=0"

    goto :goto_4

    .line 897
    :cond_e
    const-string v0, "h2w_aux"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 898
    if-ne p2, v9, :cond_f

    const-string v7, "HeadsetState=3"

    .line 900
    .restart local v7       #HeadsetState:Ljava/lang/String;
    :goto_5
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 898
    .end local v7           #HeadsetState:Ljava/lang/String;
    :cond_f
    const-string v7, "HeadsetState=0"

    goto :goto_5

    .line 902
    :cond_10
    const-string v0, "AudioService"

    const-string v2, "Unknown device name!!."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_11
    move v8, v1

    .line 907
    goto/16 :goto_2

    .restart local v8       #isUsb:Z
    :cond_12
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1257
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/IAudioServiceEx$Stub;->onTransasct(Landroid/media/IAudioServiceEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1258
    .local v0, handled:Z
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playSoundEffectVolume(IF)V
    .locals 6
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 822
    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 823
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 825
    .local v0, oldIdent:J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_0

    .line 827
    const-string v2, "AudioService"

    const-string v3, "Prevent sound effect caused by Current User setting."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    .end local v0           #oldIdent:J
    :goto_0
    return-void

    .line 832
    .restart local v0       #oldIdent:J
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 835
    .end local v0           #oldIdent:J
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/media/AudioService;->playSoundEffectVolume(IF)V

    goto :goto_0

    .line 832
    .restart local v0       #oldIdent:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected readPersistedSettings()V
    .locals 1

    .prologue
    .line 1263
    invoke-super {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1265
    iget v0, p0, Landroid/media/AudioServiceEx;->mMuteAffectedStreams:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/media/AudioServiceEx;->mMuteAffectedStreams:I

    .line 1267
    return-void
.end method

.method protected sendVolumeUpdate(IIII)V
    .locals 8
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    .line 841
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mVoiceCapable:Z

    if-nez v0, :cond_0

    if-ne p1, v2, :cond_0

    .line 842
    const/4 p1, 0x5

    .line 845
    :cond_0
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    check-cast v0, Lmiui/view/VolumePanel;

    invoke-virtual {v0, p1, p4}, Lmiui/view/VolumePanel;->postVolumeChanged(II)V

    .line 847
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 851
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", oldIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", newIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mSafeMediaVolumeIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS:[I

    aget v0, v0, p1

    if-ne v0, v6, :cond_2

    iget v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    if-gt p2, v0, :cond_2

    iget v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    if-le p3, v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 857
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x1d

    const/4 v5, 0x0

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 861
    :cond_2
    and-int/lit8 v0, p4, 0x20

    if-nez v0, :cond_3

    .line 862
    add-int/lit8 v0, p2, 0x5

    div-int/lit8 p2, v0, 0xa

    .line 863
    add-int/lit8 v0, p3, 0x5

    div-int/lit8 p3, v0, 0xa

    .line 864
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 866
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v7, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 867
    const-string v0, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v7, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 868
    invoke-virtual {p0, v7}, Landroid/media/AudioServiceEx;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 870
    .end local v7           #intent:Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public setMasterMute(ZILandroid/os/IBinder;)V
    .locals 3
    .parameter "state"
    .parameter "flags"
    .parameter "cb"

    .prologue
    .line 1394
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    .line 1406
    :goto_0
    return-void

    .line 1398
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMasterMute() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callingPID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->isAllSoundOff()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1400
    const-string v0, "TurnOffAllSound=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1405
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/media/AudioService;->setMasterMute(ZILandroid/os/IBinder;)V

    goto :goto_0

    .line 1402
    :cond_1
    const-string v0, "TurnOffAllSound=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setModeInt(ILandroid/os/IBinder;I)I
    .locals 15
    .parameter "mode"
    .parameter "cb"
    .parameter "pid"

    .prologue
    .line 279
    const/4 v8, 0x0

    .line 280
    .local v8, newModeOwnerPid:I
    if-nez p2, :cond_0

    .line 281
    const-string v12, "AudioService"

    const-string v13, "setModeInt() called with null binder"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 385
    .end local v8           #newModeOwnerPid:I
    .local v9, newModeOwnerPid:I
    :goto_0
    return v9

    .line 285
    .end local v9           #newModeOwnerPid:I
    .restart local v8       #newModeOwnerPid:I
    :cond_0
    const/4 v5, 0x0

    .line 286
    .local v5, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    iget-object v12, p0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 287
    .local v7, iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 288
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$SetModeDeathHandler;

    .line 289
    .local v4, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v4}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v12

    move/from16 v0, p3

    if-ne v12, v0, :cond_1

    .line 290
    move-object v5, v4

    .line 292
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 293
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v5, v13}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 297
    .end local v4           #h:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_2
    const/4 v10, 0x0

    .line 298
    .local v10, status:I
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setModeInt().. mode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_3
    if-nez p1, :cond_c

    .line 302
    iget-object v12, p0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 303
    iget-object v12, p0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v5, Landroid/media/AudioService$SetModeDeathHandler;

    .line 304
    .restart local v5       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 305
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 332
    :cond_4
    :goto_1
    iget v12, p0, Landroid/media/AudioServiceEx;->mMode:I

    move/from16 v0, p1

    if-eq v0, v12, :cond_11

    .line 333
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v10

    .line 335
    if-nez v10, :cond_f

    .line 337
    iget-object v12, p0, Landroid/media/AudioServiceEx;->mIsSWIrRC:Ljava/lang/String;

    if-eqz v12, :cond_6

    iget-object v12, p0, Landroid/media/AudioServiceEx;->mIsSWIrRC:Ljava/lang/String;

    const-string v13, "sw"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 338
    const/4 v12, 0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_5

    const/4 v12, 0x2

    move/from16 v0, p1

    if-eq v0, v12, :cond_5

    const/4 v12, 0x3

    move/from16 v0, p1

    if-eq v0, v12, :cond_5

    if-nez p1, :cond_6

    iget v12, p0, Landroid/media/AudioServiceEx;->mMode:I

    if-eqz v12, :cond_6

    .line 342
    :cond_5
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioServiceEx;->sendAudioModeBroadcastIntent(I)V

    .line 346
    :cond_6
    move/from16 v0, p1

    iput v0, p0, Landroid/media/AudioServiceEx;->mMode:I

    .line 364
    :cond_7
    :goto_2
    if-eqz v10, :cond_8

    iget-object v12, p0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 366
    :cond_8
    if-nez v10, :cond_b

    .line 367
    if-eqz p1, :cond_9

    .line 368
    iget-object v12, p0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 369
    const-string v12, "AudioService"

    const-string v13, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_9
    :goto_3
    const/high16 v12, -0x8000

    invoke-virtual {p0, v12}, Landroid/media/AudioServiceEx;->getActiveStreamType(I)I

    move-result v11

    .line 375
    .local v11, streamType:I
    const/16 v12, -0xc8

    if-ne v11, v12, :cond_a

    .line 377
    const/4 v11, 0x3

    .line 379
    :cond_a
    invoke-virtual {p0, v11}, Landroid/media/AudioServiceEx;->getDeviceForStream(I)I

    move-result v2

    .line 380
    .local v2, device:I
    iget-object v12, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v13, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v13, v13, v11

    aget-object v12, v12, v13

    invoke-virtual {v12, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 381
    .local v6, index:I
    iget-object v12, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v12, v12, v11

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v6, v2, v13}, Landroid/media/AudioServiceEx;->setStreamVolumeInt(IIIZ)V

    .line 383
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Landroid/media/AudioServiceEx;->updateStreamVolumeAlias(Z)V

    .end local v2           #device:I
    .end local v6           #index:I
    .end local v11           #streamType:I
    :cond_b
    move v9, v8

    .line 385
    .end local v8           #newModeOwnerPid:I
    .restart local v9       #newModeOwnerPid:I
    goto/16 :goto_0

    .line 309
    .end local v9           #newModeOwnerPid:I
    .restart local v8       #newModeOwnerPid:I
    :cond_c
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_d

    iget v12, p0, Landroid/media/AudioServiceEx;->mMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_d

    .line 310
    const-string v12, "AudioService"

    const-string v13, "setModeInt() Set ringtone mode when commnunication mode, so don\'t call setPhoneState."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    move/from16 v0, p1

    iput v0, p0, Landroid/media/AudioServiceEx;->mMode:I

    .line 312
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 315
    :cond_d
    if-nez v5, :cond_e

    .line 316
    new-instance v5, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v5           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, p0, v0, v1}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 320
    .restart local v5       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_e
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_4
    iget-object v12, p0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 329
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_1

    .line 321
    :catch_0
    move-exception v3

    .line 323
    .local v3, e:Landroid/os/RemoteException;
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setMode() could not link to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " binder death"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 348
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_f
    if-eqz v5, :cond_10

    .line 349
    iget-object v12, p0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 353
    :cond_10
    const/16 p1, 0x0

    .line 355
    if-nez p1, :cond_7

    iget v12, p0, Landroid/media/AudioServiceEx;->mMode:I

    if-eqz v12, :cond_7

    .line 356
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioServiceEx;->sendAudioModeBroadcastIntent(I)V

    goto/16 :goto_2

    .line 362
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 371
    :cond_12
    iget-object v12, p0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v12}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v8

    goto/16 :goto_3
.end method

.method protected setRingerModeInt(IZ)V
    .locals 1
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    .line 1568
    invoke-super {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1569
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v0, :cond_0

    .line 1571
    iget v0, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    invoke-static {v0}, Lcom/lge/media/LGAudioSystem;->setRingerMode(I)I

    .line 1573
    :cond_0
    return-void
.end method

.method public setSpeakerOnForMedia(Z)V
    .locals 7
    .parameter "on"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 796
    const-string v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioServiceEx;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    const-string v0, "AudioService"

    const-string v1, "setSpeakerOnForMedia() permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :goto_0
    return-void

    .line 801
    :cond_0
    if-eqz p1, :cond_1

    move v0, v3

    :goto_1
    iput v0, p0, Landroid/media/AudioServiceEx;->mForcedUseForMedia:I

    .line 802
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    iget v4, p0, Landroid/media/AudioServiceEx;->mForcedUseForMedia:I

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    move v0, v6

    .line 801
    goto :goto_1
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 17
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"
    .parameter "callingPackage"

    .prologue
    .line 1273
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioServiceEx;->isVirtualMirrorLinkDevicedConnected(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1275
    const-string v4, "AudioService"

    const-string v5, "Speaker volume is fixed!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x100

    if-nez v4, :cond_2

    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_2

    .line 1283
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quiet_mode_status"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v13

    .line 1284
    .local v13, quietModeStatus:I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1289
    .end local v13           #quietModeStatus:I
    :catch_0
    move-exception v11

    .line 1290
    .local v11, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "AudioService"

    const-string v5, "SettingNotFoundException - getDBQuietModeState()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    .end local v11           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/AudioServiceEx;->mUseFixedVolume:Z

    if-nez v4, :cond_0

    .line 1298
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    if-eqz v4, :cond_3

    .line 1299
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioServiceEx::setStreamVolume()..allSoundEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x1d

    invoke-virtual {v4, v5}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1301
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x1d

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1306
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/media/AudioServiceEx;->ensureValidStreamType(I)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v15, v4, p1

    .line 1308
    .local v15, streamTypeAlias:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v14, v4, v15

    .line 1310
    .local v14, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual/range {p0 .. p1}, Landroid/media/AudioServiceEx;->getDeviceForStream(I)I

    move-result v9

    .line 1312
    .local v9, device:I
    move/from16 v16, p2

    .line 1314
    .local v16, volumeIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioServiceEx;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v5, Landroid/media/AudioServiceEx;->STEAM_VOLUME_OPS:[I

    aget v5, v5, v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v6, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1319
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v10

    .line 1321
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioServiceEx;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1323
    invoke-virtual {v14, v9}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 1325
    .local v12, oldIndex:I
    mul-int/lit8 v4, p2, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1, v15}, Landroid/media/AudioServiceEx;->rescaleIndex(III)I

    move-result p2

    .line 1327
    const/4 v4, 0x3

    if-ne v15, v4, :cond_5

    and-int/lit16 v4, v9, 0x380

    if-eqz v4, :cond_5

    and-int/lit8 v4, p3, 0x40

    if-nez v4, :cond_5

    .line 1330
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioServiceEx;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1331
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioServiceEx;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/AudioServiceEx;->mAvrcpAbsVolSupported:Z

    if-eqz v4, :cond_4

    .line 1332
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioServiceEx;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 1334
    :cond_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1337
    :cond_5
    and-int/lit8 p3, p3, -0x21

    .line 1338
    const/4 v4, 0x3

    if-ne v15, v4, :cond_6

    and-int/lit8 v4, v9, 0x0

    if-eqz v4, :cond_6

    .line 1340
    or-int/lit8 p3, p3, 0x20

    .line 1343
    if-eqz p2, :cond_6

    .line 1344
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    and-int/lit8 v4, v9, 0xc

    if-eqz v4, :cond_7

    .line 1346
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    move/from16 p2, v0

    .line 1353
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v9}, Landroid/media/AudioServiceEx;->checkSafeMediaVolume(III)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1354
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioServiceEx;->mVolumePanel:Lmiui/view/VolumePanel;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lmiui/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 1355
    new-instance v4, Landroid/media/AudioService$StreamVolumeCommand;

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioService$StreamVolumeCommand;-><init>(Landroid/media/AudioService;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioServiceEx;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1361
    :goto_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1362
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/media/AudioServiceEx;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 1334
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 1361
    .end local v12           #oldIndex:I
    :catchall_1
    move-exception v4

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 1348
    .restart local v12       #oldIndex:I
    :cond_7
    :try_start_6
    invoke-virtual {v14}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_1

    .line 1358
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/media/AudioServiceEx;->onSetStreamVolume(IIII)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    invoke-virtual {v4, v9}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result p2

    goto :goto_2
.end method

.method public setStreamVolumeAll(III)V
    .locals 7
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v6, 0x1

    .line 775
    invoke-virtual {p0, p1}, Landroid/media/AudioServiceEx;->ensureValidStreamType(I)V

    .line 776
    iget-object v4, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v5, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v5, v5, p1

    aget-object v3, v4, v5

    .line 777
    .local v3, streamState:Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x2

    .line 779
    .local v0, device:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_4

    .line 780
    if-nez v1, :cond_1

    .line 781
    const/4 v0, 0x2

    .line 789
    :cond_0
    :goto_1
    mul-int/lit8 v4, p2, 0xa

    iget-object v5, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v5, v5, p1

    invoke-virtual {p0, v4, p1, v5}, Landroid/media/AudioServiceEx;->rescaleIndex(III)I

    move-result v2

    .line 790
    .local v2, indexTemp:I
    iget-object v4, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v4, v4, p1

    invoke-super {p0, v4, v2, v0, v6}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 779
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    .end local v2           #indexTemp:I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 783
    const/4 v0, 0x4

    goto :goto_1

    .line 784
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 785
    const/16 v0, 0x8

    goto :goto_1

    .line 786
    :cond_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 787
    const/4 v0, 0x1

    goto :goto_1

    .line 792
    :cond_4
    return-void
.end method

.method protected setStreamVolumeInt(IIIZ)V
    .locals 3
    .parameter "streamType"
    .parameter "index"
    .parameter "device"
    .parameter "force"

    .prologue
    const/4 v1, 0x2

    .line 1525
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    if-eq v0, v1, :cond_0

    if-nez p2, :cond_0

    if-ne p1, v1, :cond_0

    .line 1527
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreamVolumeInt(), mRingerMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :goto_0
    return-void

    .line 1532
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    goto :goto_0
.end method

.method updateRingerModeAffectedStreams()Z
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 563
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 570
    .local v0, ringerModeAffectedStreams:I
    or-int/lit8 v0, v0, 0x26

    .line 576
    and-int/lit8 v0, v0, -0x9

    .line 582
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 583
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    and-int/lit16 v0, v0, -0x81

    .line 588
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 590
    or-int/lit16 v0, v0, 0x100

    .line 596
    :goto_1
    iget-boolean v1, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v1, :cond_0

    .line 597
    and-int/lit8 v0, v0, -0x5

    .line 600
    :cond_0
    iget v1, p0, Landroid/media/AudioServiceEx;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_3

    .line 601
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 605
    iput v0, p0, Landroid/media/AudioServiceEx;->mRingerModeAffectedStreams:I

    .line 606
    const/4 v1, 0x1

    .line 608
    :goto_2
    return v1

    .line 586
    :cond_1
    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 592
    :cond_2
    and-int/lit16 v0, v0, -0x101

    goto :goto_1

    .line 608
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected updateStreamVolumeAlias(Z)V
    .locals 4
    .parameter "updateVolumes"

    .prologue
    const/4 v3, 0x0

    .line 628
    sget-object v0, Landroid/media/AudioServiceEx;->MAX_STREAM_VOLUME_Ex:[I

    const-string v1, "ro.config.vc_call_vol_steps"

    sget-object v2, Landroid/media/AudioServiceEx;->MAX_STREAM_VOLUME_Ex:[I

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v3

    .line 631
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mInited:Z

    if-nez v0, :cond_0

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioServiceEx;->mInited:Z

    .line 633
    sget-object v0, Landroid/media/AudioServiceEx;->MAX_STREAM_VOLUME_Ex:[I

    sput-object v0, Landroid/media/AudioServiceEx;->MAX_STREAM_VOLUME:[I

    .line 634
    sget-object v0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_Ex:[I

    iput-object v0, p0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS:[I

    .line 635
    sget-object v0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_NON_VOICE_Ex:[I

    iput-object v0, p0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    .line 636
    sget-object v0, Landroid/media/AudioServiceEx;->STREAM_NAMES_Ex:[Ljava/lang/String;

    iput-object v0, p0, Landroid/media/AudioServiceEx;->STREAM_NAMES:[Ljava/lang/String;

    .line 638
    :cond_0
    invoke-super {p0, p1}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 639
    return-void
.end method
