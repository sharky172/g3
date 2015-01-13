.class public Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "PhoneWindowManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;,
        Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;,
        Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeHandler;
    }
.end annotation


# static fields
.field public static final ACTION_QUICK_BUTTON_SETTING:Ljava/lang/String; = "com.lge.phone.action.QUICK_BUTTON_SETTING"

.field private static final ACTION_TOGGLE_QUICKCLIP:Ljava/lang/String; = "com.lge.QuickClip.action.TOGGLE_QUICKCLIP"

#the value of this static final field might be set in the static constructor
.field private static final CAPP_TOUCHCONTROL:Z = false

.field private static final COVERTYPE_CIRCLE:I = 0x3

.field private static final COVERTYPE_COVER:I = 0x0

.field private static final COVERTYPE_LOLLIPOP:I = 0x2

.field private static final COVERTYPE_NONE:I = 0x5

.field private static final COVERTYPE_VIEW:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEBUG_112APP:Z = false

.field private static final DEBUG_EASY_ACCESS:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_INPUT:Z = false

.field private static final DEBUG_KEY_EXCEPTION:Z = false

.field private static final DEBUG_QUICKMEMO:Z = false

.field private static final DEBUG_SENSOR:Z = false

.field public static final EXTRA_QUICK_BUTTON_SETTING_VALUE:Ljava/lang/String; = "com.lge.phone.extra.QUICK_BUTTON_SETTING_VALUE"

.field private static final G3_GPUBOOST_MDP_PATH:Ljava/lang/String; = "/sys/class/graphics/fb0/mdp/vfps_boost"

.field private static final G3_GPUBOOST_OFF_PATH:Ljava/lang/String; = "/sys/class/devfreq/g3-display.0/polling_interval"

.field private static final G3_GPUBOOST_SET_PATH:Ljava/lang/String; = "/sys/class/devfreq/g3-display.0/cur_freq"

.field private static final HOME_DOUBLE_INITIATE_INTERVAL_MILLIS:J = 0x12cL

.field private static final LAUNCH_QMEMO_WAKELOCK_DELAY_MILLIS:J = 0x7d0L

.field private static final MATCHING_APPS_THEME_PACKAGE:Ljava/lang/String; = "com.lge.systemui.theme.trans"

.field private static final MSG_DISABLE_LIGHT_SENSOR:I = 0x72

.field private static final MSG_DISABLE_MSG_ENABLE_LGE_INPUTEVENT_MONITOR:I = 0x6a

.field private static final MSG_DISABLE_PROXIMITY_SENSOR:I = 0x70

.field private static final MSG_ENABLE_LGE_INPUTEVENT_MONITOR:I = 0x69

.field private static final MSG_ENABLE_LIGHT_SENSOR:I = 0x71

.field private static final MSG_ENABLE_PROXIMITY_SENSOR:I = 0x6f

#the value of this static final field might be set in the static constructor
.field private static final NOTUSER_DEBUG:Z = false

.field private static final POLICE_112APP_CHORD_DEBOUNCE_DELAY_MILLIS:I = 0x3e8

.field private static final POLICE_112APP_RUN_DELAY_MILLIS:I = 0xbb8

.field private static final QUICKCLIP_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final SHAKE_VIBRATE_TIME:I = 0x12c

.field private static SPC_ERR_FREEZE:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneWindowManagerEx"

.field private static final TOUCH_CONTROL_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final VOLUME_KEY_LONG_PRESS_DELAY_MILLIS:J = 0x3e8L

.field private static final VOL_LONG_CANCEL_BY_112APP:I = 0x6

.field private static final VOL_LONG_CANCEL_BY_INCALL:I = 0x4

.field private static final VOL_LONG_CANCEL_BY_KEYUP:I = 0x1

.field private static final VOL_LONG_CANCEL_BY_MUSIC:I = 0x2

.field private static final VOL_LONG_CANCEL_BY_RINGING:I = 0x3

.field private static final VOL_LONG_CANCEL_BY_SCREENSHOT:I = 0x5

.field private static final VOL_LONG_CANCEL_BY_SENSOR:I = 0x7

.field private static final VOL_LONG_NO_CANCEL:I

.field private static mBasicGestureSensor:Landroid/hardware/Sensor;

.field private static mIsAnimating:Z

.field private static mLightSensor:Landroid/hardware/Sensor;

.field private static mProximitySensor:Landroid/hardware/Sensor;

.field private static mTransit:I

.field private static mUsingKnockonProximitySensor:Z


# instance fields
.field INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field INSECURE_COVER_CAMERA_INTENT:Landroid/content/Intent;

.field SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private currId:I

.field private final endCallByPowerKey:Ljava/lang/Runnable;

.field private isUseSpc:Z

.field m112AppAvailable:Z

.field private final m112AppChordLongPress:Ljava/lang/Runnable;

.field private mAccelSensorNotSupported:Z

.field private mAnsweredCall:Z

.field private final mBasicGestureSensorListener:Landroid/hardware/SensorEventListener;

.field private mBlackThemeAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

.field mDayDreamWakeByKey:Z

.field private mEasyAccessEnabled:Z

.field private final mEasyAccessEntry:Ljava/lang/Runnable;

.field private mEccMode:Z

.field mForcedGoToSleep:Ljava/lang/Runnable;

.field private mForcedGoToSleepEnable:Z

.field mFourthKeySharing:Z

.field mGoHomeDialog:Landroid/app/AlertDialog;

.field mGoHomeDialog2:Landroid/app/AlertDialog;

.field private mGoHomeFromSetupWizard:Z

.field private mGoHomeValue:I

.field private mHWKeyControlMode:Z

.field private mHasEmotionalLed:Z

.field mHelperBoost:Lcom/lge/loader/LGContextHelper;

.field private mHomeDoubleTapped:Z

.field private mHomeDownKeyTimeByTouchControl:J

.field mHomeKeyExceptionInECMMode:Z

.field private final mHomeKeyUpRunnable:Ljava/lang/Runnable;

.field private mHomePressedByTouchControl:Z

.field mHotKeyCustomizing:Z

.field mHotKeyLongPressEnabled:Z

.field private mHotKeyLongWakeLock:Landroid/os/PowerManager$WakeLock;

.field mHotKeyPressed:Z

.field private mIfBoost:Z

.field mInjectMenuKeyHandled:Z

.field private mIsAllowedVerticalTranslucentNavigation:Z

.field private mIsExpandedNotificationPanel:Z

.field private mIsLcdOled:Z

.field private mIsTripleHomeCheckMode:Z

.field mKeyException:Z

.field mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

.field mKnockCodeReceiver:Landroid/content/BroadcastReceiver;

.field mLGPowerManager:Lcom/lge/loader/power/ILGPowerManagerLoader;

.field private mLastHomeKeyUpTime:J

.field mLgeHandler:Landroid/os/Handler;

.field mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;

.field private mLightCovered:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field mMenuLongPressEnabled:Z

.field private mNavigationBarRes:I

.field mOffPowerLong:Z

.field private mPackageName:Ljava/lang/String;

.field private final mPower8SecLongPress:Ljava/lang/Runnable;

.field private mPowerKeyScreenOnInCalling:Z

.field private mPowerKeyTimeBy112App:J

.field private mPowerKeyTriggeredBy112App:Z

.field private mPowerKeyTriggeredByOffPowerLong:Z

.field mPowerLongPressTime:Z

.field mPowerRestartAction:Z

.field mPowerVolumeCombi:Z

.field private mProximityNear:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mQButtonDialog:Landroid/app/AlertDialog;

.field mQucikBTNAnswerSettingReceiver:Landroid/content/BroadcastReceiver;

.field private mQuickBTNAnswserMode:I

.field private final mQuickClipChordLongPress:Ljava/lang/Runnable;

.field mQuickClipLongPress:Ljava/lang/Runnable;

.field mQuickClipVolumeKeyCombo:Z

.field private mQuickclipPressed:Z

.field mRearSideKeyEnable:Z

.field mRecentKeyLongpressEnabled:Z

.field mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

.field private mRotationModeIsLand:Z

.field mScreenOffKey:Z

.field mScreenOffKeyIntent:Landroid/content/Intent;

.field mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;

.field private mShakingClass:Ljava/lang/String;

.field private mShakingEnabled:Z

.field mShakingGesture:Z

.field private mShakingMode:I

.field private mShakingPkg:Ljava/lang/String;

.field private mShortcutKeyStatus:I

.field mSilenceRinger:Z

.field mSimSwitchLongPress:Ljava/lang/Runnable;

.field private mSimSwitchPressed:Z

.field mSimSwitchingKey:Z

.field private mSmartCoverReceiver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;

.field final mSpecialKeysLock:Ljava/lang/Object;

.field mSpecialKeysMessenger:Landroid/os/Messenger;

.field private mSplitWindowDisabled:Z

.field mSplitWindowDisabledReceiver:Landroid/content/BroadcastReceiver;

.field mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

.field mStatusBarReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarRes:I

.field private mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;

.field private mSupportSmartCover:Z

.field private final mSystemUiBackgroundChangedRunnable:Ljava/lang/Runnable;

.field mToastBlockSimSwitch:Ljava/lang/Runnable;

.field mToastIsMiniviewOn:Ljava/lang/Runnable;

.field mToastIsRinging:Ljava/lang/Runnable;

.field private mToastIsVMwareRunning:Ljava/lang/Runnable;

.field private mTouchControlEnabled:Z

.field private mTouchControlReady:Z

.field private mTouchControlService:Landroid/content/Intent;

.field private mTouchControlServiceRunning:Z

.field private mTouchCrackMode:I

.field private mTouchCrackModeObserver:Landroid/os/UEventObserver;

.field private mTouchSlopX:I

.field private mTouchSlopY:I

.field private mUseProxLightForVolLongKey:Z

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field mVSyncBoostReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeDownKeyConsumedByLongPress:Z

.field private mVolumeDownKeyConsumedByQuickClipChord:Z

.field private mVolumeDownKeyTimeByQuickClip:J

.field private mVolumeDownKeyTimeByTouchControl:J

.field private mVolumeDownKeyTriggeredByHWKeyControlMode:Z

.field private mVolumeDownKeyTriggeredByLongPress:Z

.field private mVolumeDownKeyTriggeredByQuickClip:Z

.field private mVolumeDownLongKeyCancelReason:I

.field private final mVolumeDownLongPress:Ljava/lang/Runnable;

.field private mVolumeDownTime:J

.field private mVolumeDownToScreenOn:Z

.field private mVolumeDownTriggeredByTouchControl:Z

.field private mVolumeKeyLongPressEnabled:Z

.field private mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mVolumeUpKeyConsumedByLongPress:Z

.field private mVolumeUpKeyConsumedByQuickClipChord:Z

.field private mVolumeUpKeyTimeBy112App:J

.field private mVolumeUpKeyTimeByQuickClip:J

.field private mVolumeUpKeyTriggeredBy112App:Z

.field private mVolumeUpKeyTriggeredByHWKeyControlMode:Z

.field private mVolumeUpKeyTriggeredByLongPress:Z

.field private mVolumeUpKeyTriggeredByQuickClip:Z

.field private mVolumeUpLongKeyCancelReason:I

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

.field private mVsyncBoost:Z

.field private mVsyncBoostDownX:I

.field private mVsyncBoostDownY:I

.field private mVsyncDistance:I

.field private mWakedByHomeKey:Z

.field private msysFSWrite:Z

.field nExptToast:Landroid/widget/Toast;

.field sShortKeyClass:Ljava/lang/String;

.field sShortKeyPkg:Ljava/lang/String;

.field spcErrReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 146
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->NOTUSER_DEBUG:Z

    .line 150
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->NOTUSER_DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->DEBUG_INPUT:Z

    .line 210
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCHCONTROL:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->CAPP_TOUCHCONTROL:Z

    .line 330
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->SPC_ERR_FREEZE:Z

    .line 367
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUsingKnockonProximitySensor:Z

    .line 3878
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsAnimating:Z

    .line 3879
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTransit:I

    return-void

    :cond_0
    move v0, v1

    .line 146
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 156
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerLongPressTime:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerRestartAction:Z

    .line 160
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    .line 163
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mOffPowerLong:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByOffPowerLong:Z

    .line 166
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipVolumeKeyCombo:Z

    .line 167
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRearSideKeyEnable:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->m112AppAvailable:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerVolumeCombi:Z

    .line 171
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mDayDreamWakeByKey:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyCustomizing:Z

    .line 176
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyLongPressEnabled:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyPressed:Z

    .line 178
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->nExptToast:Landroid/widget/Toast;

    .line 179
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchingKey:Z

    .line 180
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFourthKeySharing:Z

    .line 184
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenOffKey:Z

    .line 187
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyException:Z

    .line 188
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 190
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeKeyExceptionInECMMode:Z

    .line 195
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEasyAccessEnabled:Z

    .line 196
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsTripleHomeCheckMode:Z

    .line 197
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapped:Z

    .line 202
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlEnabled:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    .line 204
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlReady:Z

    .line 212
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->currId:I

    .line 232
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownLongKeyCancelReason:I

    .line 233
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpLongKeyCancelReason:I

    .line 237
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeKeyLongPressEnabled:Z

    .line 244
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchPressed:Z

    .line 246
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mMenuLongPressEnabled:Z

    .line 249
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRecentKeyLongpressEnabled:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mInjectMenuKeyHandled:Z

    .line 255
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximityNear:Z

    .line 257
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightCovered:Z

    .line 259
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingGesture:Z

    .line 261
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingPkg:Ljava/lang/String;

    .line 262
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingClass:Ljava/lang/String;

    .line 263
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingEnabled:Z

    .line 264
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingMode:I

    .line 273
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mForcedGoToSleepEnable:Z

    .line 278
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsLcdOled:Z

    .line 280
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsExpandedNotificationPanel:Z

    .line 281
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsAllowedVerticalTranslucentNavigation:Z

    .line 283
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;

    .line 286
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHWKeyControlMode:Z

    .line 287
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEccMode:Z

    .line 288
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackMode:I

    .line 290
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByHWKeyControlMode:Z

    .line 291
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByHWKeyControlMode:Z

    .line 294
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeFromSetupWizard:Z

    .line 295
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeValue:I

    .line 299
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickBTNAnswserMode:I

    .line 303
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManager:Lcom/lge/loader/power/ILGPowerManagerLoader;

    .line 304
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.STILL_IMAGE_CAMERA_COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->INSECURE_COVER_CAMERA_INTENT:Landroid/content/Intent;

    .line 324
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSupportSmartCover:Z

    .line 326
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;

    .line 327
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    .line 329
    const-string v0, "ro.lge.spccheck"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isUseSpc:Z

    .line 334
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSilenceRinger:Z

    .line 336
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWakedByHomeKey:Z

    .line 338
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyScreenOnInCalling:Z

    .line 340
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mAnsweredCall:Z

    .line 341
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUseProxLightForVolLongKey:Z

    .line 343
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSpecialKeysLock:Ljava/lang/Object;

    .line 347
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mAccelSensorNotSupported:Z

    .line 348
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRotationModeIsLand:Z

    .line 351
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHasEmotionalLed:Z

    .line 353
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownToScreenOn:Z

    .line 356
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoost:Z

    .line 361
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIfBoost:Z

    .line 362
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->msysFSWrite:Z

    .line 366
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncDistance:I

    .line 646
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVSyncBoostReceiver:Landroid/content/BroadcastReceiver;

    .line 2097
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarReceiver:Landroid/content/BroadcastReceiver;

    .line 2117
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 2222
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPower8SecLongPress:Ljava/lang/Runnable;

    .line 2432
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEasyAccessEntry:Ljava/lang/Runnable;

    .line 2439
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    .line 2462
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByQuickClip:Z

    .line 2463
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByQuickClip:Z

    .line 2464
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 2465
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByQuickClipChord:Z

    .line 2499
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipChordLongPress:Ljava/lang/Runnable;

    .line 2514
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickclipPressed:Z

    .line 2530
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mToastIsMiniviewOn:Ljava/lang/Runnable;

    .line 2541
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mToastIsRinging:Ljava/lang/Runnable;

    .line 2555
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->sShortKeyPkg:Ljava/lang/String;

    .line 2556
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->sShortKeyClass:Ljava/lang/String;

    .line 2744
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipLongPress:Ljava/lang/Runnable;

    .line 2763
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mToastBlockSimSwitch:Ljava/lang/Runnable;

    .line 2779
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchLongPress:Ljava/lang/Runnable;

    .line 2830
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$16;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 2887
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredBy112App:Z

    .line 2888
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredBy112App:Z

    .line 2929
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$17;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->m112AppChordLongPress:Ljava/lang/Runnable;

    .line 2997
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$18;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->spcErrReceiver:Landroid/content/BroadcastReceiver;

    .line 3198
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$19;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpLongPress:Ljava/lang/Runnable;

    .line 3230
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownLongPress:Ljava/lang/Runnable;

    .line 3362
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$21;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackModeObserver:Landroid/os/UEventObserver;

    .line 3385
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$22;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQucikBTNAnswerSettingReceiver:Landroid/content/BroadcastReceiver;

    .line 3597
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$26;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->endCallByPowerKey:Ljava/lang/Runnable;

    .line 3691
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$27;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mForcedGoToSleep:Ljava/lang/Runnable;

    .line 3705
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$28;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$28;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 3727
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$29;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$29;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 3749
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBasicGestureSensorListener:Landroid/hardware/SensorEventListener;

    .line 3778
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$31;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$31;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 3808
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowDisabled:Z

    .line 3810
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$32;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$32;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowDisabledReceiver:Landroid/content/BroadcastReceiver;

    .line 3823
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKnockCodeReceiver:Landroid/content/BroadcastReceiver;

    .line 3860
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarRes:I

    .line 3861
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mNavigationBarRes:I

    .line 3862
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPackageName:Ljava/lang/String;

    .line 3864
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$34;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$34;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSystemUiBackgroundChangedRunnable:Ljava/lang/Runnable;

    .line 4109
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$35;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$35;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mToastIsVMwareRunning:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->enableLgeInputEventMonitor()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->disableLgeInputEventMonitor()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsExpandedNotificationPanel:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeFromSetupWizard:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSupportSmartCover:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeKeyLongPressEnabled:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsTripleHomeCheckMode:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapped:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickclipPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoost:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptHotKeyLong(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoost:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->excuteQuickMemoHotKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->toggleQuickClipFromHotKey()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->excuteQuickVoice()V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchPressed:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->currId:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->currId:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredBy112App:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredBy112App:Z

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    sput-boolean p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->SPC_ERR_FREEZE:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEccMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoostDownX:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setSensorEnabled(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoostDownX:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximityNear:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximityNear:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightCovered:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightCovered:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingVolumeLongKeyAction(II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->launchVolumeUpLongPressAction()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->launchVolumeDownLongPressAction()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackMode:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackMode:I

    return p1
.end method

.method static synthetic access$3802(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHWKeyControlMode:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickBTNAnswserMode:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickBTNAnswserMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoostDownY:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoostDownY:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$4200()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$4400()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingEnabled:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingMode:I

    return v0
.end method

.method static synthetic access$4700()Z
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->NOTUSER_DEBUG:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setBasicSensorEnabled(Z)V

    return-void
.end method

.method static synthetic access$5102(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowDisabled:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHasEmotionalLed:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Lcom/android/server/IStatusBarServiceEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getStatusBarServiceEx()Lcom/android/server/IStatusBarServiceEx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarRes:I

    return v0
.end method

.method static synthetic access$5600(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mNavigationBarRes:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Lcom/android/server/IStatusBarServiceEx;)Lcom/android/server/IStatusBarServiceEx;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQButtonDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQButtonDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIfBoost:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIfBoost:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->msysFSWrite:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->msysFSWrite:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchSlopY:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchSlopX:I

    return v0
.end method

.method private cancelPending112AppChordAction()V
    .locals 2

    .prologue
    .line 2926
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->m112AppChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2927
    return-void
.end method

.method private cancelPendingQuickClipChordAction()V
    .locals 2

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2498
    return-void
.end method

.method private cancelPendingVolumeLongKeyAction(II)V
    .locals 4
    .parameter "keycode"
    .parameter "cancelReason"

    .prologue
    const/4 v3, 0x0

    .line 3005
    const-string v0, "PhoneWindowManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPendingVolumeLongKeyAction:cancelReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    packed-switch p1, :pswitch_data_0

    .line 3027
    :cond_0
    :goto_0
    return-void

    .line 3009
    :pswitch_0
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownLongKeyCancelReason:I

    .line 3010
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3011
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setSensorEnabled(Z)V

    .line 3012
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3013
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 3017
    :pswitch_1
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpLongKeyCancelReason:I

    .line 3018
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3019
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setSensorEnabled(Z)V

    .line 3020
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3021
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 3007
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private disableLgeInputEventMonitor()V
    .locals 2

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;

    if-eqz v0, :cond_0

    .line 2425
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;

    .line 2429
    :cond_0
    return-void
.end method

.method private dismissKeyguardOnNextActivity()V
    .locals 3

    .prologue
    .line 3192
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3196
    :goto_0
    return-void

    .line 3193
    :catch_0
    move-exception v0

    .line 3194
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneWindowManagerEx"

    const-string v2, "can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableLgeInputEventMonitor()V
    .locals 2

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;

    if-nez v0, :cond_0

    .line 2418
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;

    .line 2419
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2421
    :cond_0
    return-void
.end method

.method private excuteQuickMemoHotKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "PkgName"
    .parameter "PkgClass"

    .prologue
    const/high16 v11, 0x3020

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 2562
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "first_q_button"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    move v5, v4

    .line 2564
    .local v5, isFirstQButton:Z
    :goto_0
    if-eqz p1, :cond_0

    const-string v8, "none"

    invoke-virtual {p1, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2565
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mAccelSensorNotSupported:Z

    if-eqz v8, :cond_3

    const-string v8, "rotate_switch"

    invoke-virtual {p1, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2566
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->switchRotationMode()V

    .line 2628
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 2629
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->showQButtonGuideDialog()V

    .line 2631
    :cond_1
    return-void

    .end local v5           #isFirstQButton:Z
    :cond_2
    move v5, v7

    .line 2562
    goto :goto_0

    .line 2567
    .restart local v5       #isFirstQButton:Z
    :cond_3
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFourthKeySharing:Z

    if-eqz v8, :cond_5

    const-string v8, "sim_switch"

    invoke-virtual {p1, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2568
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    .line 2570
    .local v4, isAirplaneMode:Z
    :goto_2
    if-nez v4, :cond_0

    .line 2571
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->excuteSimSwitchKey()V

    goto :goto_1

    .end local v4           #isAirplaneMode:Z
    :cond_4
    move v4, v7

    .line 2568
    goto :goto_2

    .line 2573
    :cond_5
    const-string v7, "com.lge.QuickClip"

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2574
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->toggleQuickClipFromHotKey()V

    goto :goto_1

    .line 2575
    :cond_6
    const-string v7, "com.lge.pa"

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2576
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->excuteQuickVoice()V

    goto :goto_1

    .line 2577
    :cond_7
    const-string v7, "com.android.settings"

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "com.lge.settings.HOTKEY_SETTINGS"

    invoke-virtual {p2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "com.android.settings.Settings"

    invoke-virtual {p2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2579
    :cond_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2580
    .local v2, hotkey_settings:Landroid/content/Intent;
    const-string v7, "com.lge.settings.HOTKEY_SETTINGS"

    invoke-virtual {p2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2581
    const-string v7, "com.lge.settings.HOTKEY_SETTINGS"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2586
    :cond_9
    :goto_3
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2589
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    .line 2590
    .local v6, statusBar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v6, :cond_a

    .line 2591
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2597
    .end local v6           #statusBar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_a
    :goto_4
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2598
    :catch_0
    move-exception v1

    .line 2599
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v7, "PhoneWindowManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping application Settings launch because the activity to which it is registered was not found: , package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2582
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_b
    const-string v7, "com.android.settings.Settings"

    invoke-virtual {p2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2583
    const-string v7, "android.settings.SETTINGS"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 2593
    :catch_1
    move-exception v1

    .line 2595
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v7, 0x0

    :try_start_2
    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 2604
    .end local v1           #ex:Landroid/os/RemoteException;
    .end local v2           #hotkey_settings:Landroid/content/Intent;
    :cond_c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2605
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2606
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2607
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2608
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2612
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    .line 2613
    .restart local v6       #statusBar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v6, :cond_d

    .line 2614
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2620
    .end local v6           #statusBar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_d
    :goto_5
    :try_start_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 2621
    :catch_2
    move-exception v1

    .line 2622
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v7, "PhoneWindowManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping application QuickMemo key launch because the activity to which it is registered was not found: , package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2616
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v1

    .line 2618
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v7, 0x0

    :try_start_5
    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5
.end method

.method private excuteQuickVoice()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2634
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyException:Z

    if-eqz v5, :cond_1

    .line 2635
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2636
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v0, :cond_1

    .line 2637
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2638
    .local v1, key_exception:I
    const/high16 v5, 0x1000

    and-int/2addr v5, v1

    if-eqz v5, :cond_1

    .line 2667
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #key_exception:I
    :goto_1
    return-void

    :cond_0
    move-object v0, v4

    .line 2635
    goto :goto_0

    .line 2644
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 2645
    .local v2, mediaState:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2646
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20d0035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2647
    .local v3, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->nExptToast:Landroid/widget/Toast;

    if-nez v4, :cond_2

    .line 2648
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->nExptToast:Landroid/widget/Toast;

    .line 2652
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->nExptToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2650
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->nExptToast:Landroid/widget/Toast;

    invoke-virtual {v4, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2655
    .end local v3           #msg:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2656
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->dismissKeyguardLw()V

    .line 2658
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2660
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$11;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private excuteSimSwitchKey()V
    .locals 2

    .prologue
    .line 2671
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2672
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "excuteSimSwitchKey : sendBroadcast ACTION_DUAL_SIM_SWITCHING_KEY_PRESSED"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$12;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2682
    :cond_0
    return-void
.end method

.method static getPowerManager()Landroid/os/IPowerManager;
    .locals 3

    .prologue
    .line 4047
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 4048
    .local v0, powerManager:Landroid/os/IPowerManager;
    if-nez v0, :cond_0

    .line 4049
    const-string v1, "PhoneWindowManagerEx"

    const-string v2, "Unable to find IPowerManager interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    :cond_0
    return-object v0
.end method

.method private getStatusBarServiceEx()Lcom/android/server/IStatusBarServiceEx;
    .locals 2

    .prologue
    .line 3950
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3951
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;

    if-nez v0, :cond_0

    .line 3952
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/IStatusBarServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/IStatusBarServiceEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;

    .line 3955
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;

    monitor-exit v1

    return-object v0

    .line 3956
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "keyEvent"

    .prologue
    .line 1376
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1377
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 1379
    :try_start_0
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-interface {v0, v2}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :goto_0
    return-void

    .line 1380
    :catch_0
    move-exception v1

    .line 1381
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "PhoneWindowManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1384
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "PhoneWindowManagerEx"

    const-string v3, "Unable to find IAudioService for media key event."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private intercept112AppChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 2898
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredBy112App:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredBy112App:Z

    if-eqz v2, :cond_1

    .line 2899
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2907
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTimeBy112App:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTimeBy112App:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 2909
    const-string v2, "PhoneWindowManagerEx"

    const-string v3, "112APP_KEY triggered: VolumeUp + Power Key Pressed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->is112AppInstalledProperly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2913
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingPowerKeyAction()V

    .line 2915
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeKeyLongPressEnabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShortcutKeyStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2916
    const/16 v2, 0x18

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingVolumeLongKeyAction(II)V

    .line 2919
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->m112AppChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2923
    .end local v0           #now:J
    :cond_1
    return-void
.end method

.method private interceptCallendPowerkey()V
    .locals 4

    .prologue
    .line 3586
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_0

    .line 3587
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->endCallByPowerKey:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3589
    :cond_0
    return-void
.end method

.method private interceptHotKeyLong(Z)V
    .locals 3
    .parameter "isScreenOn"

    .prologue
    .line 2863
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByLongPress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByLongPress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mViewCoverClosed:Z

    if-nez v0, :cond_1

    .line 2865
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2867
    if-nez p1, :cond_0

    .line 2869
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2873
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->launchHotKeyLongPressAction()V

    .line 2875
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyLongWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2876
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyLongWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2879
    :cond_1
    return-void

    .line 2870
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private interceptQuickClipChord()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-wide/16 v7, 0x96

    .line 2468
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByQuickClip:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByQuickClip:Z

    if-eqz v5, :cond_1

    .line 2469
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2470
    .local v3, now:J
    iget-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTimeByQuickClip:J

    add-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    iget-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTimeByQuickClip:J

    add-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    .line 2472
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 2473
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByQuickClipChord:Z

    .line 2475
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyException:Z

    if-eqz v5, :cond_3

    .line 2476
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2477
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v0, :cond_3

    .line 2478
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2479
    .local v2, key_exception:I
    const/high16 v5, 0x2000

    and-int/2addr v5, v2

    if-eqz v5, :cond_3

    .line 2480
    const-string v5, "PhoneWindowManagerEx"

    const-string v6, "Quick Clip Ignored"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyCustomizing:Z

    if-nez v5, :cond_1

    .line 2482
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.systemui.qmemo"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2483
    .local v1, blockQuickClipIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2495
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #blockQuickClipIntent:Landroid/content/Intent;
    .end local v2           #key_exception:I
    .end local v3           #now:J
    :cond_1
    :goto_1
    return-void

    .line 2476
    .restart local v3       #now:J
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2490
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardOn()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2491
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private interceptTouchControlEntry()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2816
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlReady:Z

    if-nez v6, :cond_0

    .line 2817
    const-string v6, "Touch Control"

    const-string v7, "interceptScreenControlEctry called"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2819
    .local v2, now:J
    iget-wide v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTimeByTouchControl:J

    add-long/2addr v6, v8

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1

    move v0, v4

    .line 2820
    .local v0, mHomeValid:Z
    :goto_0
    iget-wide v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDownKeyTimeByTouchControl:J

    add-long/2addr v6, v8

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    move v1, v4

    .line 2821
    .local v1, mVolumeValid:Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2822
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlReady:Z

    .line 2824
    const-string v4, "Touch Control"

    const-string v5, "will launchScreenControl()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->launchTouchControl()V

    .line 2828
    .end local v0           #mHomeValid:Z
    .end local v1           #mVolumeValid:Z
    .end local v2           #now:J
    :cond_0
    return-void

    .restart local v2       #now:J
    :cond_1
    move v0, v5

    .line 2819
    goto :goto_0

    .restart local v0       #mHomeValid:Z
    :cond_2
    move v1, v5

    .line 2820
    goto :goto_1
.end method

.method private interceptVolumeDownLongKey(Z)V
    .locals 4
    .parameter "isScreenOn"

    .prologue
    const/4 v3, 0x1

    .line 3041
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByLongPress:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByLongPress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isVolumeLongKeyAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3044
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/cappuccino/IMdm;->getLockoutNow(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3046
    const-string v0, "MDM"

    const-string v1, "PhoneWindowManagerEx: VolumeDownLongKey ignore by lock-out Policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_0
    :goto_0
    return-void

    .line 3051
    :cond_1
    const-string v0, "true"

    const-string v1, "gsm.lge.ota_is_running"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "true"

    const-string v1, "gsm.lge.ota_ignoreKey"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3053
    :cond_2
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "OTA key ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3057
    :cond_3
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "interceptVolumeDownLongKey"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3059
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByLongPress:Z

    .line 3062
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRearSideKeyEnable:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mViewCoverClosed:Z

    if-nez v0, :cond_4

    .line 3066
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setSensorEnabled(Z)V

    .line 3069
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptVolumeUpLongKey(Z)V
    .locals 4
    .parameter "isScreenOn"

    .prologue
    const/4 v3, 0x1

    .line 3074
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByLongPress:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByLongPress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isVolumeLongKeyAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mViewCoverClosed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRearSideKeyEnable:Z

    if-nez v0, :cond_1

    .line 3077
    :cond_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/cappuccino/IMdm;->getLockoutNow(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3079
    const-string v0, "MDM"

    const-string v1, "PhoneWindowManagerEx: VolumeUpLongKey ignore by lock-out Policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    :cond_1
    :goto_0
    return-void

    .line 3084
    :cond_2
    const-string v0, "true"

    const-string v1, "gsm.lge.ota_is_running"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "true"

    const-string v1, "gsm.lge.ota_ignoreKey"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3086
    :cond_3
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "OTA key ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3090
    :cond_4
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "interceptVolumeUpLongKey:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3092
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByLongPress:Z

    .line 3095
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRearSideKeyEnable:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mViewCoverClosed:Z

    if-nez v0, :cond_5

    .line 3099
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setSensorEnabled(Z)V

    .line 3102
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private is112AppAgreedByCustomer()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2977
    const-string v0, "content://go.police.provider.report/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2978
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "customer_agreement"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2980
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2982
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2983
    const-string v0, "PhoneWindowManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "112APP_KEY : cursor.getString(0) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2990
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2994
    :cond_0
    return v7

    .line 2985
    :cond_1
    :try_start_1
    const-string v0, "PhoneWindowManagerEx"

    const-string v2, "112APP_KEY : User has not been agreed to install 112 app."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2990
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private is112AppInstalled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2967
    const/4 v0, 0x0

    .line 2969
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "go.police.report"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2973
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 2970
    :catch_0
    move-exception v1

    .line 2971
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PhoneWindowManagerEx"

    const-string v4, "112APP_KEY : 112 go.police.report is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private is112AppInstalledProperly()Z
    .locals 1

    .prologue
    .line 2963
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->is112AppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->is112AppAgreedByCustomer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFMActive()Z
    .locals 2

    .prologue
    .line 3187
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method private isFilteredByMvp(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1422
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSpecialKeysLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1423
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSpecialKeysMessenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1426
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1427
    .local v1, keyMessage:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1429
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSpecialKeysMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1430
    const/4 v2, 0x1

    :try_start_2
    monitor-exit v3

    .line 1437
    .end local v1           #keyMessage:Landroid/os/Message;
    :goto_0
    return v2

    .line 1431
    :catch_0
    move-exception v0

    .line 1432
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PhoneWindowManagerEx"

    const-string v5, "Cannot acknowledge the request"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSpecialKeysMessenger:Landroid/os/Messenger;

    .line 1437
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    monitor-exit v3

    goto :goto_0

    .line 1438
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private isPossibleWindowLayout(I)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 2171
    if-lt p1, v0, :cond_2

    const/16 v1, 0x63

    if-gt p1, v1, :cond_2

    .line 2174
    .local v0, applyWindow:Z
    :goto_0
    const/16 v1, 0x7e7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7df

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7d9

    if-ne p1, v1, :cond_1

    .line 2175
    :cond_0
    const/4 v0, 0x1

    .line 2178
    :cond_1
    return v0

    .line 2171
    .end local v0           #applyWindow:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimPinSecure()Z
    .locals 2

    .prologue
    .line 3179
    const-string v0, "simpin_secure"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3180
    const/4 v0, 0x1

    .line 3183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpecialKeysFilterSet()Z
    .locals 2

    .prologue
    .line 1442
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSpecialKeysLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1443
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSpecialKeysMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isVTRingingOrDiaing()Z
    .locals 5

    .prologue
    .line 1390
    const/4 v0, 0x0

    .line 1392
    .local v0, bCallState:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1393
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1394
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1400
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const/16 v3, 0x64

    if-eq v0, v3, :cond_1

    const/16 v3, 0x65

    if-ne v0, v3, :cond_2

    .line 1401
    :cond_1
    const-string v3, "PhoneWindowManagerEx"

    const-string v4, "Ignoring LongPress HOME; there\'s a ringing incoming call."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const/4 v3, 0x1

    .line 1404
    :goto_1
    return v3

    .line 1396
    :catch_0
    move-exception v1

    .line 1397
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "PhoneWindowManagerEx"

    const-string v4, "RemoteException from getPhoneInterface()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1404
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isVolumeLongKeyAvailable(Z)Z
    .locals 3
    .parameter "isScreenOn"

    .prologue
    .line 3030
    const/4 v0, 0x0

    .line 3031
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isFMActive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isVVMActive()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d4

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isSimPinSecure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3035
    const/4 v0, 0x1

    .line 3037
    :cond_1
    return v0
.end method

.method private launchHotKeyLongPressAction()V
    .locals 4

    .prologue
    .line 3159
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/cappuccino/IMdm;->getLockoutNow(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3161
    const-string v1, "MDM"

    const-string v2, "PhoneWindowManagerEx: launchHotKeyLongPressAction ignore by lock-out Policy"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    :goto_0
    return-void

    .line 3167
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setBoost()V

    .line 3168
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.Q_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3171
    .local v0, quickclipIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3172
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3173
    const-string v1, "com.lge.intent.extra.Q_BUTTON_PATH"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3174
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->dismissKeyguardOnNextActivity()V

    .line 3175
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.lge.permission.QUICKMODE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private launchSplitWindowUI(I)V
    .locals 5
    .parameter "keycode"

    .prologue
    .line 3846
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3847
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.lge.splitwindow"

    const-string v4, "com.lge.splitwindow.SplitService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3848
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3849
    const-string v3, "com.lge.android.intent.action.SPLIT_WINDOW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3850
    const-string v3, "com.lge.intent.extra.SPLIT_WITH_DRAWER"

    const/16 v4, 0x65

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3851
    const-string v3, "com.lge.intent.extra.SPLIT_WINDOW_STARTKEY"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3852
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3855
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3856
    .local v2, intentPopup:Landroid/content/Intent;
    const-string v3, "com.lge.splitwindow.DISMISS_POPUP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3857
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3858
    return-void
.end method

.method private launchTouchControl()V
    .locals 4

    .prologue
    .line 2846
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    if-nez v0, :cond_0

    .line 2847
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.TOUCH_CONTROL_AREAS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlService:Landroid/content/Intent;

    .line 2848
    const-string v0, "Touch Control"

    const-string v1, "launchScreenControl() - !mTouchControlServiceRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlService:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2859
    :goto_0
    return-void

    .line 2853
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlService:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 2854
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlService:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    goto :goto_0

    .line 2856
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_touch_control_areas_service_enable"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private launchVolumeDownLongPressAction()V
    .locals 3

    .prologue
    .line 3123
    const/4 v0, 0x0

    .line 3124
    .local v0, cameraIntent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setBoost()V

    .line 3125
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3126
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 3134
    :goto_0
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3137
    const-string v1, "com.lge.camera.launchingPath"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->dismissKeyguardOnNextActivity()V

    .line 3140
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverClosed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 3141
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3144
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3145
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3147
    :cond_2
    return-void

    .line 3128
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mViewCoverClosed:Z

    if-eqz v1, :cond_4

    .line 3129
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->INSECURE_COVER_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0

    .line 3131
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchVolumeUpLongPressAction()V
    .locals 1

    .prologue
    .line 3150
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRearSideKeyEnable:Z

    if-eqz v0, :cond_0

    .line 3151
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->launchHotKeyLongPressAction()V

    .line 3155
    :goto_0
    return-void

    .line 3153
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->launchVolumeDownLongPressAction()V

    goto :goto_0
.end method

.method private loadAppsList()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 4027
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.lge.systemui.theme.trans"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 4028
    .local v5, res:Landroid/content/res/Resources;
    const-string v8, "black_theme_app_list"

    const-string v9, "array"

    const-string v10, "com.lge.systemui.theme.trans"

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 4029
    .local v6, resId:I
    if-nez v6, :cond_0

    .line 4038
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #resId:I
    :goto_0
    return v7

    .line 4032
    .restart local v5       #res:Landroid/content/res/Resources;
    .restart local v6       #resId:I
    :cond_0
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 4033
    .local v0, app:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBlackThemeAppList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4032
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4035
    .end local v0           #app:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 4036
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #resId:I
    :catch_0
    move-exception v2

    .line 4037
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private removeEndCallByPowerKey()V
    .locals 2

    .prologue
    .line 3593
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->endCallByPowerKey:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3594
    return-void
.end method

.method private setBasicSensorEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 3679
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingGesture:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBasicGestureSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 3680
    if-eqz p1, :cond_1

    .line 3681
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBasicGestureSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3682
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3683
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBasicGestureSensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBasicGestureSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 3689
    :cond_0
    :goto_0
    return-void

    .line 3686
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBasicGestureSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private setBoost()V
    .locals 3

    .prologue
    .line 3108
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    if-nez v1, :cond_0

    .line 3109
    new-instance v1, Lcom/lge/loader/LGContextHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 3111
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManager:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-nez v1, :cond_1

    .line 3112
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v2, "lgpowermanagerhelper"

    invoke-virtual {v1, v2}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManager:Lcom/lge/loader/power/ILGPowerManagerLoader;

    .line 3120
    :goto_0
    return-void

    .line 3115
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManager:Lcom/lge/loader/power/ILGPowerManagerLoader;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManager:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3117
    :catch_0
    move-exception v0

    .line 3118
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSensorEnabled(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 3652
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUseProxLightForVolLongKey:Z

    if-eqz v0, :cond_1

    .line 3653
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 3654
    if-eqz p1, :cond_2

    .line 3656
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximityNear:Z

    .line 3657
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3658
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 3664
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 3665
    if-eqz p1, :cond_3

    .line 3667
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightCovered:Z

    .line 3668
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3669
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 3676
    :cond_1
    :goto_1
    return-void

    .line 3661
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 3672
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1
.end method

.method private setSmartCoverSetting(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    .line 4068
    const/4 v3, 0x0

    .line 4069
    .local v3, writer:Ljava/io/FileWriter;
    const-string v2, "/sys/devices/virtual/input/lge_touch/use_quick_window"

    .line 4070
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4072
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4073
    const-string v5, "PhoneWindowManagerEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmartCoverSetting("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): file does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    :cond_0
    :goto_0
    return-void

    .line 4077
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4079
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    if-eqz v4, :cond_2

    .line 4080
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4081
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 4087
    :cond_2
    if-eqz v4, :cond_3

    .line 4088
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v3, v4

    .line 4091
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_0

    .line 4090
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 4092
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_0

    .line 4083
    :catch_1
    move-exception v0

    .line 4084
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "PhoneWindowManagerEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmartCoverSetting("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): exception occurs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4087
    if-eqz v3, :cond_0

    .line 4088
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 4090
    :catch_2
    move-exception v5

    goto :goto_0

    .line 4086
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 4087
    :goto_2
    if-eqz v3, :cond_4

    .line 4088
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 4091
    :cond_4
    :goto_3
    throw v5

    .line 4090
    :catch_3
    move-exception v6

    goto :goto_3

    .line 4086
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_2

    .line 4083
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_1
.end method

.method private switchRotationMode()V
    .locals 3

    .prologue
    .line 4154
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    .line 4155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.SWITCH_ROTATION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4156
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRotationModeIsLand:Z

    if-eqz v1, :cond_1

    .line 4157
    const-string v1, "com.lge.intent.extra.ROTATION_MODE"

    const-string v2, "port"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4158
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 4159
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRotationModeIsLand:Z

    .line 4165
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4170
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 4161
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "com.lge.intent.extra.ROTATION_MODE"

    const-string v2, "land"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4162
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 4163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRotationModeIsLand:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4167
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 4168
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private toggleQuickClipFromHotKey()V
    .locals 2

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2527
    return-void
.end method

.method private writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "path"
    .parameter "value"

    .prologue
    .line 386
    const/4 v3, 0x0

    .line 387
    .local v3, result:Z
    const/4 v0, 0x0

    .line 389
    .local v0, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 390
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .local v1, bw:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 392
    const/4 v3, 0x1

    .line 404
    if-eqz v1, :cond_0

    .line 405
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 407
    :cond_0
    const/4 v0, 0x0

    .line 414
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    :goto_0
    return v3

    .line 408
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 409
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    .line 410
    const-string v4, "PhoneWindowManagerEx"

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 413
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 393
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 394
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v3, 0x0

    .line 395
    :try_start_3
    const-string v4, "PhoneWindowManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot find file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    if-eqz v0, :cond_1

    .line 405
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 407
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 408
    :catch_2
    move-exception v2

    .line 409
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    .line 410
    const-string v4, "PhoneWindowManagerEx"

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 399
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 400
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    const/4 v3, 0x0

    .line 401
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 404
    if-eqz v0, :cond_2

    .line 405
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 407
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 408
    :catch_4
    move-exception v2

    .line 409
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    .line 410
    const-string v4, "PhoneWindowManagerEx"

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 403
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 404
    :goto_3
    if-eqz v0, :cond_3

    .line 405
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 407
    :cond_3
    const/4 v0, 0x0

    .line 412
    :goto_4
    throw v4

    .line 408
    :catch_5
    move-exception v2

    .line 409
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v3, 0x0

    .line 410
    const-string v5, "PhoneWindowManagerEx"

    const-string v6, "I/O exception on close after exception"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 403
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 399
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 393
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_1
.end method


# virtual methods
.method SplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    .locals 1

    .prologue
    .line 2120
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-nez v0, :cond_0

    .line 2121
    const/4 v0, 0x0

    .line 2129
    :goto_0
    return-object v0

    .line 2124
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v0, :cond_1

    .line 2125
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    goto :goto_0

    .line 2128
    :cond_1
    invoke-static {}, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->getPolicyService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 2129
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    goto :goto_0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 2137
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 2139
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyException:Z

    if-eqz v2, :cond_0

    .line 2146
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isPossibleWindowLayout(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v2, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "PointerLocation"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2149
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2157
    :cond_0
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mForceStatusBar:Z

    if-eqz v2, :cond_1

    .line 2158
    const/4 v0, 0x0

    .line 2160
    .local v0, isSplitModeWithViewCovered:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->SplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mViewCoverClosed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 2164
    :goto_0
    if-eqz v0, :cond_1

    .line 2165
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mForceStatusBar:Z

    .line 2168
    .end local v0           #isSplitModeWithViewCovered:Z
    :cond_1
    return-void

    .restart local v0       #isSplitModeWithViewCovered:Z
    :cond_2
    move v0, v1

    .line 2160
    goto :goto_0

    .line 2162
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2161
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 1
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    .line 2112
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->beginPostLayoutPolicyLw(II)V

    .line 2113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2114
    return-void
.end method

.method protected canHideNavigationBar()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dismissRestartActionDialog()V
    .locals 1

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    if-eqz v0, :cond_0

    .line 3323
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RestartAction;->dismissDialog()V

    .line 3325
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2183
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2185
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2186
    const-string v0, " mQuickClipVolumeKeyCombo="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2187
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipVolumeKeyCombo:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2189
    const-string v0, " mHotKeyCustomizing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2190
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyCustomizing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2191
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2192
    const-string v0, " m112AppAvailable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2193
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->m112AppAvailable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2195
    const-string v0, " mKeyException="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2196
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyException:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2197
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    const-string v0, " mScreenOffKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2199
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenOffKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2201
    const-string v0, " mPowerLongPressTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerLongPressTime:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2204
    const-string v0, " mPowerRestartAction="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2205
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerRestartAction:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2206
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2207
    const-string v0, " mOffPowerLong="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2208
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mOffPowerLong:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2210
    const-string v0, " mSimSwitchingKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2211
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchingKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2212
    const-string v0, " mFourthKeySharing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2213
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFourthKeySharing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2214
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2215
    const-string v0, " mMenuLongPressEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2216
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mMenuLongPressEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2217
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2218
    const-string v0, " mAccelSensorNotSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2219
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mAccelSensorNotSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2220
    return-void
.end method

.method handleVolumeKey(II)V
    .locals 5
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 3521
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3522
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 3549
    :goto_0
    return-void

    .line 3530
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3533
    if-nez p1, :cond_1

    invoke-interface {v0}, Landroid/media/IAudioService;->isBluetoothScoOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3534
    const/4 p1, 0x6

    .line 3538
    :cond_1
    const/16 v2, 0x18

    if-ne p2, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v2, v3, v4}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3547
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 3538
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 3544
    :catch_0
    move-exception v1

    .line 3545
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "PhoneWindowManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3547
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 11
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    .line 468
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 471
    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeHandler;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLgeHandler:Landroid/os/Handler;

    .line 475
    const-string v7, "ro.boot.lge.lcdbreak_mode"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHWKeyControlMode:Z

    .line 476
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHWKeyControlMode:Z

    if-eqz v7, :cond_c

    .line 477
    const-string v7, "sys.lge.touchcrack_mode"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackMode:I

    .line 484
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackModeObserver:Landroid/os/UEventObserver;

    const-string v8, "DEVPATH=/devices/system/lge_touch/lge_touch0"

    invoke-virtual {v7, v8}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 487
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyCustomizing:Z

    .line 489
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyLongPressEnabled:Z

    .line 491
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipVolumeKeyCombo:Z

    .line 493
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->m112AppAvailable:Z

    .line 495
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206000e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mOffPowerLong:Z

    .line 497
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerRestartAction:Z

    .line 500
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRearSideKeyEnable:Z

    .line 502
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060041

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerVolumeCombi:Z

    .line 504
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mMenuLongPressEnabled:Z

    .line 506
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060059

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRecentKeyLongpressEnabled:Z

    .line 508
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206004c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyScreenOnInCalling:Z

    .line 511
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060051

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeKeyExceptionInECMMode:Z

    .line 514
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206005b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownToScreenOn:Z

    .line 517
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUsingKnockonProximitySensor:Z

    .line 520
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRearSideKeyEnable:Z

    if-eqz v7, :cond_0

    .line 521
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mForcedGoToSleepEnable:Z

    .line 524
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060055

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingGesture:Z

    .line 528
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeKeyLongPressEnabled:Z

    .line 530
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeKeyLongPressEnabled:Z

    if-eqz v7, :cond_1

    .line 531
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    const/4 v8, 0x1

    const-string v9, "PhoneWindowManagerEx.mVolumeLongKeyWakeLock"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 535
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeFromSetupWizard:Z

    .line 537
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060040

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchingKey:Z

    .line 539
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFourthKeySharing:Z

    .line 543
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206004f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSupportSmartCover:Z

    .line 549
    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;

    .line 550
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->observe()V

    .line 551
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyLongPressEnabled:Z

    if-eqz v7, :cond_3

    .line 552
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    const/4 v8, 0x1

    const-string v9, "PhoneWindowManagerEx.mHotKeyLongWakeLock"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyLongWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 556
    :cond_3
    new-instance v7, Lcom/lge/systemservice/core/LGContext;

    invoke-direct {v7, p1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v8, "volumevibrator"

    invoke-virtual {v7, v8}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/systemservice/core/VolumeVibratorManager;

    check-cast v7, Lcom/lge/systemservice/core/VolumeVibratorManager;

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    .line 558
    new-instance v7, Lcom/lge/systemservice/core/LGContext;

    invoke-direct {v7, p1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v8, "cliptray"

    invoke-virtual {v7, v8}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/systemservice/core/CliptrayManager;

    check-cast v7, Lcom/lge/systemservice/core/CliptrayManager;

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    .line 559
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenOffKey:Z

    if-eqz v7, :cond_4

    .line 560
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.lge.android.intent.action.SCREEN_OFF_KEY_EVENT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenOffKeyIntent:Landroid/content/Intent;

    .line 563
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accessibility_touch_control_areas_service_enable"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    .line 564
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    if-eqz v7, :cond_5

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accessibility_touch_control_areas_service_enable"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 567
    :cond_5
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 568
    .local v4, userSwitchFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 572
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110044

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 573
    .local v3, hasNavigationBar:Z
    if-eqz v3, :cond_6

    .line 574
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 575
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "com.lge.statusbar.expanded"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    const-string v7, "com.lge.statusbar.collapsed"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 580
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x206000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsAllowedVerticalTranslucentNavigation:Z

    .line 582
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060037

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsLcdOled:Z

    .line 584
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsLcdOled:Z

    if-eqz v7, :cond_7

    .line 585
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBlackThemeAppList:Ljava/util/ArrayList;

    .line 586
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->loadAppsList()Z

    .line 590
    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQucikBTNAnswerSettingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.lge.phone.action.QUICK_BUTTON_SETTING"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 593
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isUseSpc:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 594
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "com.lge.android.intent.action.EXCESS_SPC_FAIL_EVENT"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 595
    .restart local v2       #filter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->spcErrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 601
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_8
    :try_start_0
    new-instance v7, Lcom/lge/loader/LGContextHelper;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 602
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v8, "lgpowermanagerhelper"

    invoke-virtual {v7, v8}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManager:Lcom/lge/loader/power/ILGPowerManagerLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_3
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v7, :cond_9

    .line 609
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 610
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v7, "com.lge.android.intent.action.MINIVIEW_SETTINGS_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowDisabledReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 615
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_9
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 616
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v7, "com.lge.android.intent.action.ACTION_KNOCK_ON"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 617
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKnockCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 620
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.sensor.accelerometer"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    :goto_4
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mAccelSensorNotSupported:Z

    .line 622
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.lge.software.emotionalled"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHasEmotionalLed:Z

    .line 623
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingGesture:Z

    if-eqz v7, :cond_a

    .line 624
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 625
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 632
    :cond_a
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 633
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v7, "com.lge.android.intent.action.VSYNC_BOOST"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVSyncBoostReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 637
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoost:Z

    if-eqz v7, :cond_b

    .line 638
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v5, v7

    .line 639
    .local v5, xdpi:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int v6, v7

    .line 640
    .local v6, ydpi:I
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncDistance:I

    int-to-float v7, v7

    const/high16 v8, 0x4120

    div-float v0, v7, v8

    .line 641
    .local v0, distance:F
    int-to-double v7, v5

    const-wide v9, 0x4039666666666666L

    div-double/2addr v7, v9

    float-to-double v9, v0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchSlopX:I

    .line 642
    int-to-double v7, v6

    const-wide v9, 0x4039666666666666L

    div-double/2addr v7, v9

    float-to-double v9, v0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchSlopY:I

    .line 644
    .end local v0           #distance:F
    .end local v5           #xdpi:I
    .end local v6           #ydpi:I
    :cond_b
    return-void

    .line 480
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #hasNavigationBar:Z
    .end local v4           #userSwitchFilter:Landroid/content/IntentFilter;
    :cond_c
    const-string v7, "sys.lge.touchcrack_mode"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackMode:I

    goto/16 :goto_0

    .line 543
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 563
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 603
    .restart local v3       #hasNavigationBar:Z
    .restart local v4       #userSwitchFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 604
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 620
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :cond_f
    const/4 v7, 0x1

    goto/16 :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 46
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardOn()Z

    move-result v31

    .line 1454
    .local v31, keyguardOn:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v29

    .line 1455
    .local v29, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v32

    .line 1457
    .local v32, repeatCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    .line 1458
    .local v21, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v18, 0x1

    .line 1459
    .local v18, down:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v17

    .line 1461
    .local v17, canceled:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyException:Z

    if-eqz v2, :cond_7

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 1463
    .local v16, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_1
    if-eqz v16, :cond_6

    .line 1464
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v30, v0

    .line 1466
    .local v30, key_exception:I
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_3

    const/high16 v2, -0x8000

    and-int v2, v2, v30

    if-eqz v2, :cond_3

    .line 1468
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "HOME KEY is passed to app. not launching home Activity,"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    const-wide/16 v34, 0x0

    .line 2094
    .end local v16           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v30           #key_exception:I
    :cond_0
    :goto_2
    return-wide v34

    .line 1458
    .end local v17           #canceled:Z
    .end local v18           #down:Z
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 1462
    .restart local v17       #canceled:Z
    .restart local v18       #down:Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 1470
    .restart local v16       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v30       #key_exception:I
    :cond_3
    const/16 v2, 0x53

    move/from16 v0, v29

    if-ne v0, v2, :cond_4

    const/high16 v2, 0x100

    and-int v2, v2, v30

    if-eqz v2, :cond_4

    .line 1472
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "NOTIFICATION KEY is bypassed,"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const-wide/16 v34, 0x0

    goto :goto_2

    .line 1474
    :cond_4
    const/16 v2, 0xa5

    move/from16 v0, v29

    if-ne v0, v2, :cond_5

    const/high16 v2, 0x2000

    and-int v2, v2, v30

    if-eqz v2, :cond_5

    .line 1476
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "HOT KEY is bypassed,"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const-wide/16 v34, 0x0

    goto :goto_2

    .line 1478
    :cond_5
    const/16 v2, 0xbb

    move/from16 v0, v29

    if-ne v0, v2, :cond_6

    const/high16 v2, 0x80

    and-int v2, v2, v30

    if-eqz v2, :cond_6

    .line 1480
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "APP SWITCH KEY is bypassed,"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    const-wide/16 v34, 0x0

    goto :goto_2

    .line 1485
    .end local v30           #key_exception:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeKeyExceptionInECMMode:Z

    if-eqz v2, :cond_7

    .line 1486
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_7

    const-string v2, "true"

    const-string v5, "ril.cdma.inecmmode"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1488
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "Emergency callback mode, HOME KEY is passed to app"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const-wide/16 v34, 0x0

    goto :goto_2

    .line 1494
    .end local v16           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_7
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->CAPP_TOUCHCONTROL:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlEnabled:Z

    if-eqz v2, :cond_d

    .line 1495
    const/16 v2, 0x19

    move/from16 v0, v29

    if-ne v0, v2, :cond_9

    .line 1496
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTriggeredByTouchControl:Z

    if-eqz v2, :cond_8

    if-nez v18, :cond_8

    .line 1497
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTriggeredByTouchControl:Z

    .line 1498
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    if-eqz v2, :cond_8

    .line 1499
    const-wide/16 v34, 0x0

    goto/16 :goto_2

    .line 1502
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTriggeredByTouchControl:Z

    if-eqz v2, :cond_9

    if-eqz v18, :cond_9

    .line 1503
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    if-eqz v2, :cond_9

    .line 1504
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptTouchControlEntry()V

    .line 1505
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1509
    :cond_9
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_b

    .line 1510
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    if-eqz v2, :cond_a

    if-nez v18, :cond_a

    .line 1511
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    .line 1512
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTriggeredByTouchControl:Z

    if-eqz v2, :cond_a

    .line 1513
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1516
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTriggeredByTouchControl:Z

    if-eqz v2, :cond_b

    .line 1517
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptTouchControlEntry()V

    .line 1518
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1521
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    if-eqz v2, :cond_d

    .line 1522
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v5, 0x18

    if-eq v2, v5, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v5, 0x19

    if-eq v2, v5, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v5, 0xbb

    if-eq v2, v5, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v5, 0x52

    if-eq v2, v5, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v5, 0x53

    if-eq v2, v5, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v5, 0xa5

    if-eq v2, v5, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v5, 0xa7

    if-eq v2, v5, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v5, 0xac

    if-ne v2, v5, :cond_d

    .line 1531
    :cond_c
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1537
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mDayDreamWakeByKey:Z

    if-eqz v2, :cond_f

    .line 1538
    if-eqz v18, :cond_f

    if-nez v32, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShowingDream:Z

    if-eqz v2, :cond_f

    .line 1539
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_e

    .line 1540
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressed:Z

    .line 1541
    const-wide/16 v34, 0x0

    goto/16 :goto_2

    .line 1542
    :cond_e
    const/16 v2, 0xa5

    move/from16 v0, v29

    if-ne v0, v2, :cond_f

    .line 1543
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickclipPressed:Z

    .line 1544
    const-wide/16 v34, 0x0

    goto/16 :goto_2

    .line 1550
    :cond_f
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_10

    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_11

    :cond_10
    const/16 v2, 0xa5

    move/from16 v0, v29

    if-ne v0, v2, :cond_16

    .line 1551
    :cond_11
    const-string v2, "persist.radio.keyBlockByCall"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1552
    .local v28, keyBlockByCall:Ljava/lang/String;
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_12

    const-string v2, "1"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    const/16 v2, 0xa5

    move/from16 v0, v29

    if-ne v0, v2, :cond_14

    const-string v2, "2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1554
    :cond_13
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v38

    .line 1555
    .local v38, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v38, :cond_14

    .line 1557
    :try_start_0
    invoke-interface/range {v38 .. v38}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1558
    if-eqz v18, :cond_14

    .line 1559
    const-string v2, "PhoneWindowManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "answerRingingCall : Call popup result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mAnsweredCall:Z

    .line 1561
    invoke-interface/range {v38 .. v38}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1565
    :catch_0
    move-exception v20

    .line 1566
    .local v20, ex:Landroid/os/RemoteException;
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1570
    .end local v20           #ex:Landroid/os/RemoteException;
    .end local v38           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mAnsweredCall:Z

    if-eqz v2, :cond_16

    .line 1571
    if-nez v18, :cond_15

    .line 1572
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mAnsweredCall:Z

    .line 1574
    :cond_15
    const-string v2, "PhoneWindowManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home key return:down="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAnsweredCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mAnsweredCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1580
    .end local v28           #keyBlockByCall:Ljava/lang/String;
    :cond_16
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_30

    .line 1581
    const-string v2, "kids"

    const-string v5, "service.plushome.currenthome"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 1582
    .local v22, guestModeOn:Z
    const/16 v38, 0x0

    .line 1583
    .restart local v38       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v27, 0x0

    .line 1585
    .local v27, isRinging:Z
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_18

    .line 1586
    const-string v2, "true"

    const-string v5, "gsm.lge.ota_is_running"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "true"

    const-string v5, "gsm.lge.ota_ignoreKey"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1588
    :cond_17
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "OTA key ignore!"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1593
    :cond_18
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v38

    .line 1594
    if-eqz v38, :cond_19

    .line 1595
    invoke-interface/range {v38 .. v38}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v27

    .line 1601
    :cond_19
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isVTRingingOrDiaing()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1602
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x100

    if-nez v2, :cond_1a

    .line 1603
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "bypass HOME to phone apk: current VT incoming or dialing"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const-wide/16 v34, 0x0

    goto/16 :goto_2

    .line 1596
    :catch_1
    move-exception v20

    .line 1597
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v20

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1606
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_1a
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "Ignoring HOME; current VT incoming or dialing"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1612
    :cond_1b
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMERALDUI:Z

    if-nez v2, :cond_1c

    if-eqz v18, :cond_1c

    if-nez v32, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapPending:Z

    if-nez v2, :cond_1c

    .line 1614
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->preloadRecentApps()V

    .line 1617
    :cond_1c
    if-nez v22, :cond_1d

    if-nez v27, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isSpecialKeysFilterSet()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1622
    :cond_1d
    if-nez v18, :cond_23

    .line 1623
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPreloadRecentApps()V

    .line 1625
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressed:Z

    .line 1626
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeConsumed:Z

    if-eqz v2, :cond_1e

    .line 1627
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeConsumed:Z

    .line 1628
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1631
    :cond_1e
    if-eqz v17, :cond_1f

    .line 1632
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "Ignoring HOME; event canceled."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1636
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isSpecialKeysFilterSet()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1637
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isFilteredByMvp(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isFilteredByMvp(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1639
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->awakenDreams()V

    .line 1641
    const-string v2, "homekey"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1642
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1647
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mDoubleTapOnHomeBehavior:I

    if-eqz v2, :cond_21

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1649
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapPending:Z

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1652
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1656
    :cond_21
    if-eqz v22, :cond_22

    .line 1657
    const-string v2, "homekey"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1659
    :try_start_2
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 1660
    .local v24, intent:Landroid/content/Intent;
    const-string v2, "com.lge.launcher2"

    const-string v5, "com.lge.launcher2.plushome.kidshome.LGKidsHome"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1661
    const/high16 v2, 0x1400

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1669
    .end local v24           #intent:Landroid/content/Intent;
    :goto_4
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1663
    :catch_2
    move-exception v19

    .line 1664
    .local v19, e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v2, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 1667
    .end local v19           #e:Landroid/content/ActivityNotFoundException;
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->launchHomeFromHotKey()V

    goto :goto_4

    .line 1674
    :cond_23
    if-eqz p1, :cond_25

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 1675
    .restart local v16       #attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_5
    if-eqz v16, :cond_28

    .line 1676
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v43, v0

    .line 1677
    .local v43, type:I
    const/16 v2, 0x7d4

    move/from16 v0, v43

    if-eq v0, v2, :cond_24

    const/16 v2, 0x7ed

    move/from16 v0, v43

    if-eq v0, v2, :cond_24

    const/16 v2, 0x7d9

    move/from16 v0, v43

    if-ne v0, v2, :cond_26

    .line 1681
    :cond_24
    const-wide/16 v34, 0x0

    goto/16 :goto_2

    .line 1674
    .end local v16           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v43           #type:I
    :cond_25
    const/16 v16, 0x0

    goto :goto_5

    .line 1683
    .restart local v16       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v43       #type:I
    :cond_26
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v2

    move/from16 v44, v0

    .line 1684
    .local v44, typeCount:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, v44

    if-ge v0, v1, :cond_28

    .line 1685
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v2, v2, v23

    move/from16 v0, v43

    if-ne v0, v2, :cond_27

    .line 1687
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1684
    :cond_27
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 1692
    .end local v23           #i:I
    .end local v43           #type:I
    .end local v44           #typeCount:I
    :cond_28
    if-nez v32, :cond_2d

    .line 1693
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressed:Z

    .line 1695
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isSpecialKeysFilterSet()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1696
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1699
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapPending:Z

    if-eqz v2, :cond_2b

    .line 1700
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapPending:Z

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1702
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleDoubleTapOnHome()V

    .line 1722
    :cond_2a
    :goto_7
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1703
    :cond_2b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLongPressOnHomeBehavior:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mDoubleTapOnHomeBehavior:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2a

    .line 1705
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->preloadRecentApps()V

    goto :goto_7

    .line 1707
    :cond_2d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2a

    .line 1709
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isSpecialKeysFilterSet()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1710
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1713
    :cond_2e
    if-nez v31, :cond_2a

    .line 1715
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isVTRingingOrDiaing()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1716
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1719
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleLongPressOnHome()V

    goto :goto_7

    .line 1725
    .end local v16           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v22           #guestModeOn:Z
    .end local v27           #isRinging:Z
    .end local v38           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mMenuLongPressEnabled:Z

    if-eqz v2, :cond_31

    .line 1726
    const/16 v2, 0x52

    move/from16 v0, v29

    if-ne v0, v2, :cond_31

    .line 1727
    if-eqz v18, :cond_32

    if-nez v32, :cond_32

    .line 1728
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->preloadRecentApps()V

    .line 1746
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeFromSetupWizard:Z

    if-eqz v2, :cond_36

    .line 1747
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeConsumed:Z

    if-nez v2, :cond_36

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressed:Z

    if-eqz v2, :cond_36

    if-nez v18, :cond_36

    .line 1748
    if-nez v17, :cond_36

    .line 1749
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeValue:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_36

    .line 1750
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->showGoHomeDialog()V

    .line 1751
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressed:Z

    .line 1752
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1729
    :cond_32
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_31

    .line 1730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 1732
    .restart local v16       #attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_8
    if-eqz v16, :cond_34

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, -0x8000

    and-int/2addr v2, v5

    if-eqz v2, :cond_34

    .line 1733
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "recent app(menu) doesn\'t launch because of key exception."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const-wide/16 v34, 0x0

    goto/16 :goto_2

    .line 1730
    .end local v16           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_33
    const/16 v16, 0x0

    goto :goto_8

    .line 1737
    .restart local v16       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardOn()Z

    move-result v2

    if-nez v2, :cond_35

    .line 1738
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->toggleRecentApps()V

    .line 1741
    :cond_35
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1758
    .end local v16           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_36
    const/16 v2, 0xbb

    move/from16 v0, v29

    if-ne v0, v2, :cond_3f

    .line 1759
    if-nez v31, :cond_37

    if-eqz v17, :cond_37

    .line 1760
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1763
    :cond_37
    const-string v2, "true"

    const-string v5, "gsm.lge.ota_is_running"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "true"

    const-string v5, "gsm.lge.ota_ignoreKey"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1765
    :cond_38
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "OTA key ignore!"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1770
    :cond_39
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRecentKeyLongpressEnabled:Z

    if-eqz v2, :cond_3e

    .line 1771
    if-eqz v18, :cond_3a

    if-nez v32, :cond_3a

    .line 1772
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mInjectMenuKeyHandled:Z

    .line 1774
    :cond_3a
    if-nez v31, :cond_3b

    if-nez v17, :cond_3c

    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mInjectMenuKeyHandled:Z

    if-eqz v2, :cond_3d

    if-nez v18, :cond_3d

    .line 1775
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPreloadRecentApps()V

    .line 1776
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1778
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3e

    .line 1779
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mInjectMenuKeyHandled:Z

    .line 1780
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1781
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1782
    .local v3, now:J
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v45

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x52

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x101

    move-wide v5, v3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v2, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1784
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v45

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    const/16 v8, 0x52

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x101

    move-wide v5, v3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v2, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1789
    .end local v3           #now:J
    :cond_3e
    if-nez v17, :cond_3f

    if-nez v18, :cond_3f

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isSpecialKeysFilterSet()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1790
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isFilteredByMvp(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isFilteredByMvp(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1792
    const-string v2, "recentapps"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1793
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1802
    :cond_3f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_41

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_41

    .line 1803
    const/16 v2, 0x19

    move/from16 v0, v29

    if-ne v0, v2, :cond_41

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v2, :cond_41

    .line 1805
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRearSideKeyEnable:Z

    if-eqz v2, :cond_41

    .line 1806
    const/16 v26, 0x0

    .line 1807
    .local v26, isOffhook:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v38

    .line 1808
    .restart local v38       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v38, :cond_40

    .line 1810
    :try_start_3
    invoke-interface/range {v38 .. v38}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v26

    .line 1816
    :cond_40
    :goto_9
    if-eqz v26, :cond_41

    .line 1817
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1818
    .restart local v3       #now:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTime:J

    const-wide/16 v7, 0x12c

    add-long v39, v5, v7

    .line 1819
    .local v39, timeoutTime:J
    cmp-long v2, v3, v39

    if-gez v2, :cond_43

    .line 1820
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    if-nez v2, :cond_42

    .line 1821
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1833
    .end local v3           #now:J
    .end local v26           #isOffhook:Z
    .end local v38           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v39           #timeoutTime:J
    :cond_41
    :goto_a
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v34

    .line 1835
    .local v34, result:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipVolumeKeyCombo:Z

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShortcutKeyStatus:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_49

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_49

    .line 1837
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByQuickClip:Z

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByQuickClip:Z

    if-nez v2, :cond_44

    .line 1838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1839
    .restart local v3       #now:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTimeByQuickClip:J

    const-wide/16 v7, 0x96

    add-long v39, v5, v7

    .line 1840
    .restart local v39       #timeoutTime:J
    cmp-long v2, v3, v39

    if-gez v2, :cond_44

    .line 1841
    sub-long v34, v39, v3

    goto/16 :goto_2

    .line 1811
    .end local v3           #now:J
    .end local v34           #result:J
    .end local v39           #timeoutTime:J
    .restart local v26       #isOffhook:Z
    .restart local v38       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_3
    move-exception v20

    .line 1812
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1823
    .end local v20           #ex:Landroid/os/RemoteException;
    .restart local v3       #now:J
    .restart local v39       #timeoutTime:J
    :cond_42
    sub-long v34, v39, v3

    goto/16 :goto_2

    .line 1825
    :cond_43
    const-wide/16 v5, 0x96

    add-long v5, v5, v39

    cmp-long v2, v3, v5

    if-gez v2, :cond_41

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    if-nez v2, :cond_41

    .line 1827
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByScreenshotChord:Z

    goto :goto_a

    .line 1844
    .end local v3           #now:J
    .end local v26           #isOffhook:Z
    .end local v38           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v39           #timeoutTime:J
    .restart local v34       #result:J
    :cond_44
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByQuickClip:Z

    if-eqz v2, :cond_45

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByQuickClip:Z

    if-nez v2, :cond_45

    .line 1845
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1846
    .restart local v3       #now:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTimeByQuickClip:J

    const-wide/16 v7, 0x96

    add-long v39, v5, v7

    .line 1847
    .restart local v39       #timeoutTime:J
    cmp-long v2, v3, v39

    if-gez v2, :cond_45

    .line 1848
    sub-long v34, v39, v3

    goto/16 :goto_2

    .line 1851
    .end local v3           #now:J
    .end local v39           #timeoutTime:J
    :cond_45
    const/16 v2, 0x19

    move/from16 v0, v29

    if-ne v0, v2, :cond_47

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByQuickClipChord:Z

    if-eqz v2, :cond_47

    .line 1853
    if-nez v18, :cond_46

    .line 1854
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 1856
    :cond_46
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1858
    :cond_47
    const/16 v2, 0x18

    move/from16 v0, v29

    if-ne v0, v2, :cond_49

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByQuickClipChord:Z

    if-eqz v2, :cond_49

    .line 1860
    if-nez v18, :cond_48

    .line 1861
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByQuickClipChord:Z

    .line 1863
    :cond_48
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1867
    :cond_49
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeKeyLongPressEnabled:Z

    if-eqz v2, :cond_4f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShortcutKeyStatus:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4f

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_4f

    .line 1869
    const/16 v2, 0x19

    move/from16 v0, v29

    if-ne v0, v2, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByLongPress:Z

    if-eqz v2, :cond_4c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownLongKeyCancelReason:I

    if-eqz v2, :cond_4a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownLongKeyCancelReason:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4c

    .line 1871
    :cond_4a
    if-nez v18, :cond_4b

    .line 1872
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByLongPress:Z

    .line 1874
    :cond_4b
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1876
    :cond_4c
    const/16 v2, 0x18

    move/from16 v0, v29

    if-ne v0, v2, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByLongPress:Z

    if-eqz v2, :cond_4f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpLongKeyCancelReason:I

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpLongKeyCancelReason:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4f

    .line 1878
    :cond_4d
    if-nez v18, :cond_4e

    .line 1879
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByLongPress:Z

    .line 1881
    :cond_4e
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1885
    :cond_4f
    const/16 v2, 0xa5

    move/from16 v0, v29

    if-ne v0, v2, :cond_5a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyCustomizing:Z

    if-nez v2, :cond_50

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHasNavigationBar:Z

    if-eqz v2, :cond_5a

    .line 1887
    :cond_50
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v38

    .line 1888
    .restart local v38       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v38, :cond_52

    .line 1890
    :try_start_4
    invoke-interface/range {v38 .. v38}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1891
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickBTNAnswserMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_51

    .line 1892
    invoke-interface/range {v38 .. v38}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 1893
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1895
    :cond_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mToastIsRinging:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1896
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1898
    :catch_4
    move-exception v20

    .line 1899
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "ITelephony threw RemoteeXception"

    move-object/from16 v0, v20

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1902
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_52
    if-nez v18, :cond_53

    if-eqz v17, :cond_53

    .line 1903
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "Ignoring KEYCODE_HOT_KEY : event canceled."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1906
    :cond_53
    if-eqz v18, :cond_56

    if-nez v32, :cond_56

    .line 1907
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyCustomizing:Z

    if-eqz v2, :cond_54

    .line 1908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1910
    :cond_54
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickclipPressed:Z

    .line 1926
    :cond_55
    :goto_b
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1911
    :cond_56
    if-nez v18, :cond_55

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickclipPressed:Z

    if-eqz v2, :cond_55

    .line 1912
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickclipPressed:Z

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1915
    if-nez v31, :cond_57

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_57

    if-nez v17, :cond_57

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mViewCoverClosed:Z

    if-eqz v2, :cond_58

    .line 1916
    :cond_57
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1919
    :cond_58
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyCustomizing:Z

    if-eqz v2, :cond_59

    .line 1920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->sShortKeyPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->sShortKeyClass:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->excuteQuickMemoHotKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1923
    :cond_59
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->toggleQuickClipFromHotKey()V

    goto :goto_b

    .line 1927
    .end local v38           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_5a
    const/16 v2, 0x53

    move/from16 v0, v29

    if-ne v0, v2, :cond_5f

    .line 1928
    if-nez v18, :cond_5d

    .line 1929
    if-eqz v17, :cond_5b

    .line 1930
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1933
    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v36

    .line 1934
    .local v36, sbs:Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v36, :cond_5c

    .line 1935
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "StatusBarService is null."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1940
    :cond_5c
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsExpandedNotificationPanel:Z

    if-eqz v2, :cond_5e

    .line 1941
    invoke-interface/range {v36 .. v36}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1978
    .end local v36           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_5d
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchingKey:Z

    if-eqz v2, :cond_6e

    .line 1979
    const/16 v2, 0xa6

    move/from16 v0, v29

    if-ne v0, v2, :cond_6e

    .line 1980
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyException:Z

    if-eqz v2, :cond_68

    .line 1981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_67

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 1982
    .restart local v16       #attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_d
    if-eqz v16, :cond_68

    .line 1983
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v30, v0

    .line 1984
    .restart local v30       #key_exception:I
    const/high16 v2, 0x400

    and-int v2, v2, v30

    if-eqz v2, :cond_68

    .line 1985
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "SIM Switching Key is bypassed,"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const-wide/16 v34, 0x0

    goto/16 :goto_2

    .line 1943
    .end local v16           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v30           #key_exception:I
    .restart local v36       #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_5e
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1944
    invoke-interface/range {v36 .. v36}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_c

    .line 1946
    :catch_5
    move-exception v19

    .line 1947
    .local v19, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1950
    .end local v19           #e:Landroid/os/RemoteException;
    .end local v36           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_5f
    const/16 v2, 0xa7

    move/from16 v0, v29

    if-ne v0, v2, :cond_5d

    .line 1951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_60

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 1952
    .restart local v16       #attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_e
    if-eqz v16, :cond_61

    .line 1953
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, -0x8000

    and-int/2addr v2, v5

    if-eqz v2, :cond_61

    .line 1954
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "qslide  doesn\'t launch because of key exception."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    const-wide/16 v34, 0x0

    goto/16 :goto_2

    .line 1951
    .end local v16           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_60
    const/16 v16, 0x0

    goto :goto_e

    .line 1959
    .restart local v16       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_61
    if-eqz v17, :cond_62

    .line 1960
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "Ignoring KEYCODE_QSLIDE_KEY : QSlide tray will not be shown"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1964
    :cond_62
    if-eqz v18, :cond_64

    if-nez v32, :cond_64

    .line 1974
    :cond_63
    :goto_f
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1965
    :cond_64
    if-nez v18, :cond_63

    .line 1966
    if-nez v31, :cond_65

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_66

    .line 1967
    :cond_65
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1970
    :cond_66
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.lge.qslide.TOGGLE_QSLIDE_TRAY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v41

    .line 1972
    .local v41, toggleIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_f

    .line 1981
    .end local v16           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v41           #toggleIntent:Landroid/content/Intent;
    :cond_67
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 1991
    :cond_68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6a

    const/16 v25, 0x1

    .line 1993
    .local v25, isAirplaneMode:Z
    :goto_10
    const-string v2, "kids"

    const-string v5, "service.plushome.currenthome"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 1995
    .restart local v22       #guestModeOn:Z
    if-eqz v22, :cond_6b

    .line 1996
    if-eqz v18, :cond_69

    if-nez v32, :cond_69

    .line 1997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mToastBlockSimSwitch:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2012
    :cond_69
    :goto_11
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 1991
    .end local v22           #guestModeOn:Z
    .end local v25           #isAirplaneMode:Z
    :cond_6a
    const/16 v25, 0x0

    goto :goto_10

    .line 1999
    .restart local v22       #guestModeOn:Z
    .restart local v25       #isAirplaneMode:Z
    :cond_6b
    if-nez v31, :cond_69

    if-nez v25, :cond_69

    .line 2000
    if-eqz v18, :cond_6c

    if-nez v32, :cond_6c

    .line 2001
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchPressed:Z

    .line 2002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    .line 2003
    :cond_6c
    if-nez v18, :cond_69

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchPressed:Z

    if-eqz v2, :cond_69

    .line 2004
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchPressed:Z

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2006
    if-eqz v17, :cond_6d

    .line 2007
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 2009
    :cond_6d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->excuteSimSwitchKey()V

    goto :goto_11

    .line 2017
    .end local v22           #guestModeOn:Z
    .end local v25           #isAirplaneMode:Z
    :cond_6e
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_80

    .line 2018
    const/4 v2, 0x4

    move/from16 v0, v29

    if-ne v0, v2, :cond_6f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_6f

    if-nez v18, :cond_70

    :cond_6f
    const/16 v2, 0xac

    move/from16 v0, v29

    if-ne v0, v2, :cond_80

    if-nez v18, :cond_80

    if-nez v17, :cond_80

    .line 2021
    :cond_70
    const-string v2, "true"

    const-string v5, "gsm.lge.ota_is_running"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "true"

    const-string v5, "gsm.lge.ota_ignoreKey"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2023
    :cond_71
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "OTA key ignore!"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 2027
    :cond_72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_73

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 2028
    .restart local v16       #attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_12
    if-eqz v16, :cond_74

    .line 2029
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, -0x8000

    and-int/2addr v2, v5

    if-eqz v2, :cond_74

    .line 2030
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "Dual Window doesn\'t launch because of key exception."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 2027
    .end local v16           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_73
    const/16 v16, 0x0

    goto :goto_12

    .line 2036
    .restart local v16       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_74
    const-string v2, "ro.factorytest"

    const-string v5, "0"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    const-string v2, "sys.allautotest.run"

    const-string v5, "false"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2038
    :cond_75
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 2042
    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager;

    .line 2043
    .local v15, am:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v37

    .line 2044
    .local v37, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v37, :cond_78

    const/4 v2, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v42

    .line 2045
    .local v42, topPackage:Ljava/lang/String;
    :goto_13
    const-string v2, "com.lge.hiddenmenu"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    const-string v2, "com.lge.eltest"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    const-string v2, "com.lge.camera"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    const-string v2, "com.wsandroid.suite.lge"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 2047
    :cond_77
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 2044
    .end local v42           #topPackage:Ljava/lang/String;
    :cond_78
    const-string v42, ""

    goto :goto_13

    .line 2051
    .restart local v42       #topPackage:Ljava/lang/String;
    :cond_79
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardOn()Z

    move-result v2

    if-nez v2, :cond_7a

    const-string v2, "kids"

    const-string v5, "service.plushome.currenthome"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 2052
    :cond_7a
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 2056
    :cond_7b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowDisabled:Z

    if-eqz v2, :cond_7c

    .line 2057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mToastIsMiniviewOn:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2058
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 2061
    :cond_7c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    .line 2062
    .local v33, resolver:Landroid/content/ContentResolver;
    if-eqz v33, :cond_7e

    .line 2063
    const-string v2, "dual_window"

    const/4 v5, 0x0

    const/4 v6, -0x2

    move-object/from16 v0, v33

    invoke-static {v0, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7f

    .line 2064
    const/4 v2, 0x4

    move/from16 v0, v29

    if-ne v0, v2, :cond_7d

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7d

    .line 2065
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2067
    :cond_7d
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->launchSplitWindowUI(I)V

    .line 2072
    :cond_7e
    :goto_14
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 2069
    :cond_7f
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "Dual Window doens\'t launch."

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2077
    .end local v15           #am:Landroid/app/ActivityManager;
    .end local v16           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v33           #resolver:Landroid/content/ContentResolver;
    .end local v37           #tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v42           #topPackage:Ljava/lang/String;
    :cond_80
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mAccelSensorNotSupported:Z

    if-eqz v2, :cond_82

    .line 2078
    const/16 v2, 0xaa

    move/from16 v0, v29

    if-ne v0, v2, :cond_82

    .line 2079
    if-eqz v18, :cond_81

    .line 2080
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->switchRotationMode()V

    .line 2082
    :cond_81
    const-wide/16 v34, -0x1

    goto/16 :goto_2

    .line 2087
    :cond_82
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isUseSpc:Z

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 2088
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->SPC_ERR_FREEZE:Z

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 2089
    const-wide/16 v34, 0x0

    goto/16 :goto_2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 24
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 667
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSystemBooted:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 669
    const/16 v18, 0x0

    .line 1372
    :cond_0
    :goto_0
    return v18

    .line 672
    :cond_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isShutdownStarted()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 673
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "BeforeQueueing, Shutdown Started, All Key is blocked"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/16 v18, 0x0

    goto :goto_0

    .line 677
    :cond_2
    const/16 v18, 0x1

    .line 678
    .local v18, result:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_8

    const/4 v7, 0x1

    .line 680
    .local v7, down:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 684
    .local v12, keyCode:I
    if-eqz v7, :cond_5

    const/16 v20, 0x19

    move/from16 v0, v20

    if-eq v12, v0, :cond_3

    const/16 v20, 0x18

    move/from16 v0, v20

    if-eq v12, v0, :cond_3

    const/16 v20, 0xa4

    move/from16 v0, v20

    if-eq v12, v0, :cond_3

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_5

    .line 685
    :cond_3
    const/16 v20, 0x5

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 686
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "interceptKeyBeforeQueueing: Stop notification sound"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_4
    new-instance v10, Landroid/content/Intent;

    const-string v20, "com.lge.media.STOP_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 694
    .end local v10           #intent:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverClosed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 695
    :cond_6
    const/16 v20, 0x52

    move/from16 v0, v20

    if-eq v12, v0, :cond_7

    const/16 v20, 0x4

    move/from16 v0, v20

    if-eq v12, v0, :cond_7

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v12, v0, :cond_9

    .line 696
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 678
    .end local v7           #down:Z
    .end local v12           #keyCode:I
    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    .line 698
    .restart local v7       #down:Z
    .restart local v12       #keyCode:I
    :cond_9
    const/16 v20, 0xa5

    move/from16 v0, v20

    if-ne v12, v0, :cond_a

    .line 699
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickBTNAnswserMode:I

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 700
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 706
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverClosed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 707
    const/16 v20, 0xa5

    move/from16 v0, v20

    if-ne v12, v0, :cond_b

    .line 708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickBTNAnswserMode:I

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 709
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 714
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->m112AppAvailable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 715
    const/16 v20, 0x18

    move/from16 v0, v20

    if-ne v12, v0, :cond_12

    .line 716
    if-eqz v7, :cond_11

    .line 717
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredBy112App:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 718
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredBy112App:Z

    .line 719
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTimeBy112App:J

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingPowerKeyAction()V

    .line 722
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->intercept112AppChord()V

    .line 741
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHWKeyControlMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    .line 742
    const-string v20, "PhoneWindowManagerEx"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mHWKeyControlMode(ro.boot.lge.lcdbreak_mode) = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHWKeyControlMode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/16 v20, 0x19

    move/from16 v0, v20

    if-ne v12, v0, :cond_15

    .line 745
    if-eqz v7, :cond_14

    .line 746
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByHWKeyControlMode:Z

    .line 747
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByHWKeyControlMode:Z

    move/from16 v20, v0

    if-nez v20, :cond_d

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTime:J

    .line 765
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEccMode:Z

    move/from16 v20, v0

    if-nez v20, :cond_e

    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByHWKeyControlMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByHWKeyControlMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 766
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    const-wide/16 v22, 0x1ea

    cmp-long v20, v20, v22

    if-gtz v20, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_e

    .line 767
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEccMode:Z

    .line 770
    :cond_e
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 771
    .local v19, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_18

    .line 773
    :try_start_0
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_20

    .line 774
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEccMode:Z

    .line 775
    const/16 v20, 0x19

    move/from16 v0, v20

    if-eq v12, v0, :cond_f

    const/16 v20, 0x18

    move/from16 v0, v20

    if-ne v12, v0, :cond_18

    .line 776
    :cond_f
    if-eqz v7, :cond_10

    .line 777
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByHWKeyControlMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByHWKeyControlMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_17

    .line 778
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :cond_10
    :goto_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 725
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_11
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredBy112App:Z

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPending112AppChordAction()V

    goto/16 :goto_2

    .line 728
    :cond_12
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_c

    .line 729
    if-eqz v7, :cond_13

    .line 730
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredBy112App:Z

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTimeBy112App:J

    .line 732
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->intercept112AppChord()V

    goto/16 :goto_2

    .line 734
    :cond_13
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredBy112App:Z

    .line 735
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPending112AppChordAction()V

    goto/16 :goto_2

    .line 751
    :cond_14
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByHWKeyControlMode:Z

    .line 752
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEccMode:Z

    goto/16 :goto_3

    .line 754
    :cond_15
    const/16 v20, 0x18

    move/from16 v0, v20

    if-ne v12, v0, :cond_d

    .line 755
    if-eqz v7, :cond_16

    .line 756
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByHWKeyControlMode:Z

    .line 757
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByHWKeyControlMode:Z

    move/from16 v20, v0

    if-nez v20, :cond_d

    .line 758
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTime:J

    goto/16 :goto_3

    .line 761
    :cond_16
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByHWKeyControlMode:Z

    .line 762
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEccMode:Z

    goto/16 :goto_3

    .line 780
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_17
    :try_start_1
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 794
    :catch_0
    move-exception v8

    .line 795
    .local v8, ex:Landroid/os/RemoteException;
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEccMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    .line 799
    new-instance v10, Landroid/content/Intent;

    const-string v20, "com.lge.action.LCD_CRASHED_EMERGENCYCALL"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    .restart local v10       #intent:Landroid/content/Intent;
    const/high16 v20, 0x3000

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardOn()Z

    move-result v20

    if-eqz v20, :cond_19

    .line 802
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->dismissKeyguardOnNextActivity()V

    .line 804
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 805
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEccMode:Z

    .line 811
    .end local v10           #intent:Landroid/content/Intent;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerVolumeCombi:Z

    move/from16 v20, v0

    if-eqz v20, :cond_25

    .line 812
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_23

    .line 813
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 814
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getAudioService()Landroid/media/IAudioService;

    move-result-object v6

    .line 815
    .local v6, audioService:Landroid/media/IAudioService;
    const/4 v9, 0x0

    .line 816
    .local v9, hungUp:Z
    if-eqz v19, :cond_23

    if-eqz v6, :cond_23

    .line 818
    const-string v20, "PhoneWindowManagerEx"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Power key -> [endCall()] : mIncallPowerBehavior = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIncallPowerBehavior:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " LcdOn = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mCoverType = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mSmartCoverClosed = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverClosed:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIncallPowerBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_23

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v20

    if-eqz v20, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v20

    if-nez v20, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    move/from16 v20, v0

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_23

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverClosed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_23

    .line 828
    :cond_1c
    if-eqz v7, :cond_23

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLastSystemUiFlags:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isImmersiveMode(I)Z

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, p3

    move-wide/from16 v2, v21

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)V

    .line 831
    if-eqz p3, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_1d

    .line 833
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTime:J

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptScreenshotChord()V

    .line 837
    :cond_1d
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isHeadsetPlugged()Z

    move-result v20

    if-nez v20, :cond_1e

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isBluetoothAudioOn()Z

    move-result v20

    if-nez v20, :cond_1e

    invoke-interface {v6}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z

    move-result v20

    if-nez v20, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_1e

    .line 842
    const-string v20, "PhoneWindowManagerEx"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Power key -> [endCall()] : mIncallPowerBehavior ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIncallPowerBehavior:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " LcdOn = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPendingPowerKeyUpCanceled:Z

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptCallendPowerkey()V

    .line 846
    :cond_1e
    if-eqz p3, :cond_1f

    if-nez v9, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggered:Z

    move/from16 v20, v0

    if-eqz v20, :cond_22

    :cond_1f
    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptPowerKeyDown(Z)V

    .line 849
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "power_key policy when volume_key is aready pressed state"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 850
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 785
    .end local v6           #audioService:Landroid/media/IAudioService;
    .end local v9           #hungUp:Z
    :cond_20
    :try_start_3
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 786
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEccMode:Z

    .line 787
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_18

    .line 788
    if-eqz v7, :cond_21

    .line 789
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 791
    :cond_21
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 846
    .restart local v6       #audioService:Landroid/media/IAudioService;
    .restart local v9       #hungUp:Z
    :cond_22
    const/16 v20, 0x0

    goto :goto_5

    .line 853
    :catch_1
    move-exception v8

    .line 854
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    .end local v6           #audioService:Landroid/media/IAudioService;
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v9           #hungUp:Z
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_23
    const/16 v20, 0x19

    move/from16 v0, v20

    if-ne v12, v0, :cond_24

    .line 860
    if-eqz v7, :cond_24

    .line 861
    if-eqz p3, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_24

    .line 863
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->removeEndCallByPowerKey()V

    .line 868
    :cond_24
    const/16 v20, 0x18

    move/from16 v0, v20

    if-ne v12, v0, :cond_25

    .line 869
    if-eqz v7, :cond_25

    .line 870
    if-eqz p3, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_25

    .line 872
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->removeEndCallByPowerKey()V

    .line 878
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v20, v0

    if-nez v20, :cond_27

    const/4 v14, 0x0

    .line 883
    .local v14, keyguardActive:Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenOffKey:Z

    move/from16 v20, v0

    if-eqz v20, :cond_26

    .line 884
    if-nez p3, :cond_26

    if-eqz v7, :cond_26

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 895
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWakedByHomeKey:Z

    move/from16 v20, v0

    if-eqz v20, :cond_29

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v12, v0, :cond_29

    if-nez v7, :cond_29

    .line 896
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWakedByHomeKey:Z

    .line 897
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 878
    .end local v14           #keyguardActive:Z
    :cond_27
    if-eqz p3, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v14

    goto :goto_6

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v14

    goto :goto_6

    .line 901
    .restart local v14       #keyguardActive:Z
    :cond_29
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v20

    if-eqz v20, :cond_2d

    .line 903
    const/16 v20, 0xbb

    move/from16 v0, v20

    if-eq v12, v0, :cond_2a

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v12, v0, :cond_2b

    .line 904
    :cond_2a
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/lge/cappuccino/IMdm;->getEnforcePasswordChange()Z

    move-result v20

    if-eqz v20, :cond_2b

    .line 905
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "LGMDM:switch or home key is locked by server policy!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 910
    :cond_2b
    const/16 v20, 0x3

    move/from16 v0, v20

    if-eq v12, v0, :cond_2c

    const/16 v20, 0x4

    move/from16 v0, v20

    if-eq v12, v0, :cond_2c

    const/16 v20, 0x52

    move/from16 v0, v20

    if-eq v12, v0, :cond_2c

    const/16 v20, 0xbb

    move/from16 v0, v20

    if-ne v12, v0, :cond_2d

    .line 912
    :cond_2c
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v0, v12, v1}, Lcom/lge/cappuccino/IMdm;->getAllowSpecificKey(II)Z

    move-result v20

    if-nez v20, :cond_2d

    .line 914
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "LGMDM:Navigation key is locked by server policy!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 921
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyException:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2f

    .line 922
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_2f

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 924
    .local v5, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_7
    if-eqz v5, :cond_2f

    .line 925
    iget v13, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 926
    .local v13, key_exception:I
    const/high16 v20, 0x4000

    and-int v20, v20, v13

    if-eqz v20, :cond_2f

    .line 927
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "PowerKey bypassed,"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    or-int/lit8 v18, v18, 0x3

    goto/16 :goto_0

    .line 923
    .end local v5           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v13           #key_exception:I
    :cond_2e
    const/4 v5, 0x0

    goto :goto_7

    .line 934
    :cond_2f
    sget-boolean v20, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->CAPP_TOUCHCONTROL:Z

    if-eqz v20, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3b

    .line 935
    const/16 v20, 0x19

    move/from16 v0, v20

    if-ne v12, v0, :cond_35

    .line 936
    if-eqz v7, :cond_31

    .line 937
    if-eqz p3, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTriggeredByTouchControl:Z

    move/from16 v20, v0

    if-nez v20, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_35

    .line 938
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTriggeredByTouchControl:Z

    .line 939
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTimeByTouchControl:J

    .line 940
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    move/from16 v20, v0

    if-nez v20, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    move/from16 v20, v0

    if-eqz v20, :cond_35

    .line 941
    :cond_30
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 945
    :cond_31
    if-nez v7, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTriggeredByTouchControl:Z

    move/from16 v20, v0

    if-eqz v20, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_35

    .line 946
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTriggeredByTouchControl:Z

    .line 947
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 948
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    move/from16 v20, v0

    if-eqz v20, :cond_32

    .line 949
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 951
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    move/from16 v20, v0

    if-nez v20, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlReady:Z

    move/from16 v20, v0

    if-eqz v20, :cond_35

    .line 952
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    move/from16 v20, v0

    if-nez v20, :cond_34

    .line 953
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlReady:Z

    .line 955
    :cond_34
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 960
    :cond_35
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v12, v0, :cond_39

    .line 961
    if-nez v7, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    move/from16 v20, v0

    if-eqz v20, :cond_38

    .line 962
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    .line 963
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    move/from16 v20, v0

    if-nez v20, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlReady:Z

    move/from16 v20, v0

    if-eqz v20, :cond_38

    .line 964
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownTriggeredByTouchControl:Z

    move/from16 v20, v0

    if-nez v20, :cond_37

    .line 965
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlReady:Z

    .line 967
    :cond_37
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 970
    :cond_38
    if-eqz v7, :cond_39

    .line 971
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    move/from16 v20, v0

    if-nez v20, :cond_39

    .line 972
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressedByTouchControl:Z

    .line 973
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDownKeyTimeByTouchControl:J

    .line 977
    :cond_39
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3b

    .line 978
    const/16 v20, 0x4

    move/from16 v0, v20

    if-eq v12, v0, :cond_3a

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-eq v12, v0, :cond_3a

    const/16 v20, 0xbb

    move/from16 v0, v20

    if-eq v12, v0, :cond_3a

    const/16 v20, 0x52

    move/from16 v0, v20

    if-eq v12, v0, :cond_3a

    const/16 v20, 0x18

    move/from16 v0, v20

    if-eq v12, v0, :cond_3a

    const/16 v20, 0x19

    move/from16 v0, v20

    if-eq v12, v0, :cond_3a

    const/16 v20, 0x53

    move/from16 v0, v20

    if-eq v12, v0, :cond_3a

    const/16 v20, 0xa5

    move/from16 v0, v20

    if-eq v12, v0, :cond_3a

    const/16 v20, 0xa7

    move/from16 v0, v20

    if-eq v12, v0, :cond_3a

    const/16 v20, 0xac

    move/from16 v0, v20

    if-ne v12, v0, :cond_3b

    .line 988
    :cond_3a
    and-int/lit8 v18, v18, -0x2

    .line 989
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "Touch control areas is on, InterceptKeyBeforeQueuing pending hardkey action"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 995
    :cond_3b
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v18

    .line 998
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownToScreenOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3d

    .line 999
    const/16 v20, 0x19

    move/from16 v0, v20

    if-ne v12, v0, :cond_3d

    if-nez p3, :cond_3d

    .line 1000
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 1001
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v11, 0x0

    .line 1002
    .local v11, isOffHook:Z
    if-eqz v19, :cond_3c

    .line 1004
    :try_start_4
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v11

    .line 1010
    :cond_3c
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isMusicActive()Z

    move-result v20

    if-nez v20, :cond_3d

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isFMActive()Z

    move-result v20

    if-nez v20, :cond_3d

    if-nez v11, :cond_3d

    .line 1011
    if-nez v7, :cond_3d

    .line 1013
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "ACTION_WAKE_UP by volume down key"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    or-int/lit8 v18, v18, 0x2

    .line 1020
    .end local v11           #isOffHook:Z
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_3d
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v12, v0, :cond_3e

    and-int/lit8 v20, v18, 0x2

    if-eqz v20, :cond_3e

    if-nez p3, :cond_3e

    if-eqz v7, :cond_3e

    .line 1021
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWakedByHomeKey:Z

    .line 1024
    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyScreenOnInCalling:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3f

    .line 1025
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_3f

    .line 1026
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getPowerManager()Landroid/os/IPowerManager;

    move-result-object v17

    .line 1027
    .local v17, powerManager:Landroid/os/IPowerManager;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 1028
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v17, :cond_3f

    if-eqz v19, :cond_3f

    .line 1030
    if-eqz v7, :cond_47

    .line 1031
    :try_start_5
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v20

    if-eqz v20, :cond_3f

    if-nez p3, :cond_3f

    .line 1032
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setPowerKeyWhenCalling(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1046
    .end local v17           #powerManager:Landroid/os/IPowerManager;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_3f
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyException:Z

    move/from16 v20, v0

    if-eqz v20, :cond_40

    .line 1047
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_40

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1049
    .restart local v5       #attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_a
    if-eqz v5, :cond_40

    .line 1050
    iget v13, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1051
    .restart local v13       #key_exception:I
    const/high16 v20, 0x200

    and-int v20, v20, v13

    if-eqz v20, :cond_40

    .line 1052
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "POWER KEY is working as normal. but do not go to sleep."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    and-int/lit8 v18, v18, -0x5

    .line 1059
    .end local v5           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v13           #key_exception:I
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mForcedGoToSleepEnable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_41

    .line 1060
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRearSideKeyEnable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_41

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_41

    if-eqz v7, :cond_41

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mViewCoverClosed:Z

    move/from16 v20, v0

    if-nez v20, :cond_41

    .line 1061
    const-string v20, "sys.allautotest.run"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_41

    .line 1062
    if-nez p3, :cond_41

    .line 1065
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyScreenOnInCalling:Z

    move/from16 v20, v0

    if-eqz v20, :cond_49

    .line 1066
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getPowerManager()Landroid/os/IPowerManager;

    move-result-object v17

    .line 1068
    .restart local v17       #powerManager:Landroid/os/IPowerManager;
    if-eqz v17, :cond_41

    :try_start_6
    invoke-interface/range {v17 .. v17}, Landroid/os/IPowerManager;->getPowerKeyWhenCalling()Z

    move-result v20

    if-nez v20, :cond_41

    .line 1069
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setSensorEnabled(Z)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mForcedGoToSleep:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x384

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1084
    .end local v17           #powerManager:Landroid/os/IPowerManager;
    :cond_41
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerLongPressTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_43

    .line 1085
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_43

    .line 1086
    if-eqz v7, :cond_43

    .line 1087
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyHandled:Z

    move/from16 v20, v0

    if-nez v20, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverClosed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    move/from16 v20, v0

    if-eqz v20, :cond_43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_43

    .line 1088
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x5dc

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1095
    :cond_43
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerRestartAction:Z

    move/from16 v20, v0

    if-eqz v20, :cond_44

    .line 1096
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_44

    .line 1097
    if-eqz v7, :cond_4a

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPower8SecLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xfa0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1106
    :cond_44
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mOffPowerLong:Z

    move/from16 v20, v0

    if-eqz v20, :cond_46

    .line 1107
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_46

    .line 1108
    and-int/lit8 v18, v18, -0x2

    .line 1109
    if-eqz v7, :cond_4b

    .line 1110
    if-nez p3, :cond_46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByOffPowerLong:Z

    move/from16 v20, v0

    if-nez v20, :cond_46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverClosed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    move/from16 v20, v0

    if-eqz v20, :cond_46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_46

    .line 1111
    :cond_45
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByOffPowerLong:Z

    .line 1112
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyHandled:Z

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x5dc

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1127
    :cond_46
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEasyAccessEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4f

    .line 1128
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v12, v0, :cond_4f

    .line 1129
    if-nez v7, :cond_4f

    .line 1130
    if-eqz p3, :cond_4f

    if-nez v14, :cond_4f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_4f

    .line 1134
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsTripleHomeCheckMode:Z

    move/from16 v20, v0

    if-nez v20, :cond_4c

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x12c

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1136
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsTripleHomeCheckMode:Z

    .line 1137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLastHomeKeyUpTime:J

    .line 1138
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1005
    .restart local v11       #isOffHook:Z
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_2
    move-exception v8

    .line 1006
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1035
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v11           #isOffHook:Z
    .restart local v17       #powerManager:Landroid/os/IPowerManager;
    :cond_47
    :try_start_7
    invoke-interface/range {v17 .. v17}, Landroid/os/IPowerManager;->getPowerKeyWhenCalling()Z

    move-result v20

    if-eqz v20, :cond_3f

    .line 1036
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setPowerKeyWhenCalling(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_9

    .line 1039
    :catch_3
    move-exception v8

    .line 1040
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "RemoteException thrown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 1048
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v17           #powerManager:Landroid/os/IPowerManager;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_48
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 1072
    .restart local v17       #powerManager:Landroid/os/IPowerManager;
    :catch_4
    move-exception v8

    .line 1073
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "RemoteException thrown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 1076
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v17           #powerManager:Landroid/os/IPowerManager;
    :cond_49
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setSensorEnabled(Z)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mForcedGoToSleep:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x384

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b

    .line 1100
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPower8SecLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->dismissRestartActionDialog()V

    goto/16 :goto_c

    .line 1116
    :cond_4b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByOffPowerLong:Z

    move/from16 v20, v0

    if-eqz v20, :cond_46

    .line 1117
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByOffPowerLong:Z

    .line 1118
    and-int/lit8 v18, v18, -0x5

    .line 1119
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyHandled:Z

    move/from16 v20, v0

    if-nez v20, :cond_46

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_d

    .line 1140
    :cond_4c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 1142
    .local v15, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLastHomeKeyUpTime:J

    move-wide/from16 v20, v0

    sub-long v20, v15, v20

    const-wide/16 v22, 0x12c

    cmp-long v20, v20, v22

    if-gez v20, :cond_4e

    .line 1143
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapped:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4d

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEasyAccessEntry:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xa

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1149
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsTripleHomeCheckMode:Z

    .line 1150
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapped:Z

    .line 1159
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLastHomeKeyUpTime:J

    .line 1160
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1155
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x12c

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1157
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapped:Z

    goto :goto_e

    .line 1162
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1163
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsTripleHomeCheckMode:Z

    .line 1164
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapped:Z

    .line 1173
    .end local v15           #now:J
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyLongPressEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_50

    .line 1174
    const/16 v20, 0xa5

    move/from16 v0, v20

    if-ne v12, v0, :cond_50

    .line 1175
    if-eqz v7, :cond_5b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyPressed:Z

    move/from16 v20, v0

    if-nez v20, :cond_5b

    .line 1176
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyPressed:Z

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyLongWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1178
    if-nez p3, :cond_50

    .line 1179
    or-int/lit8 v18, v18, 0x1

    .line 1194
    :cond_50
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipVolumeKeyCombo:Z

    move/from16 v20, v0

    if-eqz v20, :cond_51

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShortcutKeyStatus:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_51

    .line 1195
    const/16 v20, 0x19

    move/from16 v0, v20

    if-ne v12, v0, :cond_5e

    .line 1196
    if-eqz v7, :cond_5d

    .line 1197
    if-eqz p3, :cond_51

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByQuickClip:Z

    move/from16 v20, v0

    if-nez v20, :cond_51

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_51

    .line 1199
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "BeforeQueueing ==> KEYCODE_VOLUME_DOWN"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByQuickClip:Z

    .line 1201
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTimeByQuickClip:J

    .line 1202
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 1203
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptQuickClipChord()V

    .line 1226
    :cond_51
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeKeyLongPressEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_58

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShortcutKeyStatus:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_58

    .line 1227
    const/16 v20, 0x19

    move/from16 v0, v20

    if-eq v12, v0, :cond_52

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_53

    :cond_52
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_53

    .line 1229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByScreenshotChord:Z

    move/from16 v20, v0

    if-eqz v20, :cond_53

    .line 1230
    const/16 v20, 0x19

    const/16 v21, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingVolumeLongKeyAction(II)V

    .line 1234
    :cond_53
    const/16 v20, 0x19

    move/from16 v0, v20

    if-ne v12, v0, :cond_61

    .line 1235
    if-eqz v7, :cond_60

    .line 1236
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_54

    .line 1237
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByLongPress:Z

    .line 1238
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByLongPress:Z

    .line 1239
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownLongKeyCancelReason:I

    .line 1240
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptVolumeDownLongKey(Z)V

    .line 1260
    :cond_54
    :goto_11
    const/16 v20, 0x19

    move/from16 v0, v20

    if-eq v12, v0, :cond_55

    const/16 v20, 0x18

    move/from16 v0, v20

    if-ne v12, v0, :cond_58

    .line 1261
    :cond_55
    if-eqz v7, :cond_58

    .line 1262
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 1263
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_56

    .line 1265
    :try_start_8
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_63

    .line 1266
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingVolumeLongKeyAction(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1274
    :cond_56
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isMusicActive()Z

    move-result v20

    if-nez v20, :cond_57

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isFMActive()Z

    move-result v20

    if-eqz v20, :cond_64

    .line 1275
    :cond_57
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingVolumeLongKeyAction(II)V

    .line 1284
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_58
    :goto_13
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v12, v0, :cond_5a

    .line 1285
    if-eqz v7, :cond_5a

    .line 1286
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 1287
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_5a

    .line 1289
    if-eqz p3, :cond_5a

    :try_start_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIncallPowerBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_5a

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v20

    const/16 v21, 0x66

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_59

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v20

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5a

    :cond_59
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_5a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_5a

    .line 1292
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1301
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_5a
    :goto_14
    sget-boolean v20, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    if-eqz v20, :cond_66

    .line 1302
    if-eqz v7, :cond_65

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v12, v0, :cond_65

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/systemservice/core/CliptrayManager;->getVisibility()I

    move-result v20

    if-nez v20, :cond_65

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/systemservice/core/CliptrayManager;->hideCliptrayIfNeeded()V

    .line 1305
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1182
    :cond_5b
    if-nez v7, :cond_50

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyPressed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_50

    .line 1183
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyPressed:Z

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyLongWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v20

    if-eqz v20, :cond_5c

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyLongWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1187
    :cond_5c
    if-nez p3, :cond_50

    .line 1188
    or-int/lit8 v18, v18, 0x1

    goto/16 :goto_f

    .line 1206
    :cond_5d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByQuickClip:Z

    .line 1207
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingQuickClipChordAction()V

    goto/16 :goto_10

    .line 1209
    :cond_5e
    const/16 v20, 0x18

    move/from16 v0, v20

    if-ne v12, v0, :cond_51

    .line 1210
    if-eqz v7, :cond_5f

    .line 1211
    if-eqz p3, :cond_51

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByQuickClip:Z

    move/from16 v20, v0

    if-nez v20, :cond_51

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_51

    .line 1213
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "BeforeQueueing ==> KEYCODE_VOLUME_UP"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByQuickClip:Z

    .line 1215
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTimeByQuickClip:J

    .line 1216
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByQuickClipChord:Z

    .line 1217
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptQuickClipChord()V

    goto/16 :goto_10

    .line 1220
    :cond_5f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByQuickClip:Z

    .line 1221
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingQuickClipChordAction()V

    goto/16 :goto_10

    .line 1243
    :cond_60
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByLongPress:Z

    .line 1244
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingVolumeLongKeyAction(II)V

    goto/16 :goto_11

    .line 1246
    :cond_61
    const/16 v20, 0x18

    move/from16 v0, v20

    if-ne v12, v0, :cond_54

    .line 1247
    if-eqz v7, :cond_62

    .line 1248
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_54

    .line 1249
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByLongPress:Z

    .line 1250
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByLongPress:Z

    .line 1251
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpLongKeyCancelReason:I

    .line 1252
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptVolumeUpLongKey(Z)V

    goto/16 :goto_11

    .line 1255
    :cond_62
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByLongPress:Z

    .line 1256
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingVolumeLongKeyAction(II)V

    goto/16 :goto_11

    .line 1267
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_63
    :try_start_a
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v20

    if-eqz v20, :cond_56

    and-int/lit8 v20, v18, 0x1

    if-nez v20, :cond_56

    .line 1268
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingVolumeLongKeyAction(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_12

    .line 1270
    :catch_5
    move-exception v8

    .line 1271
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 1276
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isVVMActive()Z

    move-result v20

    if-eqz v20, :cond_58

    .line 1277
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingVolumeLongKeyAction(II)V

    goto/16 :goto_13

    .line 1294
    :catch_6
    move-exception v8

    .line 1295
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 1308
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_65
    if-eqz v7, :cond_66

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v12, v0, :cond_66

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/systemservice/core/CliptrayManager;->getVisibility()I

    move-result v20

    if-nez v20, :cond_66

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/systemservice/core/CliptrayManager;->hideCliptray()V

    .line 1316
    :cond_66
    const/16 v20, 0x19

    move/from16 v0, v20

    if-eq v12, v0, :cond_67

    const/16 v20, 0x18

    move/from16 v0, v20

    if-eq v12, v0, :cond_67

    const/16 v20, 0xa4

    move/from16 v0, v20

    if-ne v12, v0, :cond_6a

    .line 1319
    :cond_67
    if-eqz v7, :cond_6c

    .line 1320
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 1321
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_69

    .line 1323
    :try_start_b
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_68

    .line 1324
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSilenceRinger:Z

    .line 1327
    :cond_68
    const-string v20, "ro.build.target_operator"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "KDDI"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_69

    .line 1328
    if-nez p3, :cond_69

    const/16 v20, 0x19

    move/from16 v0, v20

    if-ne v12, v0, :cond_69

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    move-result v20

    if-eqz v20, :cond_69

    .line 1329
    or-int/lit8 v18, v18, 0x2

    .line 1337
    :cond_69
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isVVMActive()Z

    move-result v20

    if-eqz v20, :cond_6a

    and-int/lit8 v20, v18, 0x1

    if-nez v20, :cond_6a

    .line 1338
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleVolumeKey(II)V

    .line 1350
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_6a
    :goto_16
    const/16 v20, 0x4f

    move/from16 v0, v20

    if-ne v12, v0, :cond_6b

    .line 1351
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 1352
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_6b

    .line 1354
    :try_start_c
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_6b

    .line 1355
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_8

    .line 1356
    and-int/lit8 v18, v18, -0x2

    .line 1365
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_6b
    :goto_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isUseSpc:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1366
    sget-boolean v20, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->SPC_ERR_FREEZE:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1367
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1333
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_7
    move-exception v8

    .line 1334
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 1341
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_6c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSilenceRinger:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6a

    .line 1342
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSilenceRinger:Z

    .line 1343
    and-int/lit8 v18, v18, -0x2

    goto :goto_16

    .line 1358
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_8
    move-exception v8

    .line 1359
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "PhoneWindowManagerEx"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public isBlackThemeApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 4043
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBlackThemeAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVVMActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4061
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 4062
    .local v0, isVvmActive:Z
    const-string v1, "PhoneWindowManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVVMActive in AuioManager ==========> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    return v0
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 11
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 2693
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "haptic_feedback_enabled"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x1

    .line 2695
    .local v0, hapticsDisabled:Z
    :goto_0
    if-nez p3, :cond_2

    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2696
    :cond_0
    const/4 v7, 0x0

    .line 2740
    :goto_1
    return v7

    .line 2693
    .end local v0           #hapticsDisabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2698
    .restart local v0       #hapticsDisabled:Z
    :cond_2
    const/4 v4, 0x0

    .line 2699
    .local v4, pattern:[J
    sparse-switch p2, :sswitch_data_0

    .line 2716
    const/4 v7, 0x0

    goto :goto_1

    .line 2701
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLongPressVibePattern:[J

    .line 2720
    :goto_2
    if-eqz p1, :cond_3

    .line 2721
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v3

    .line 2722
    .local v3, owningUid:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    .line 2727
    .local v2, owningPackage:Ljava/lang/String;
    :goto_3
    array-length v7, v4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 2729
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v5

    .line 2730
    .local v5, vibVolume:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    const/4 v8, 0x0

    aget-wide v8, v4, v8

    invoke-virtual {v7, v8, v9, v5}, Lcom/lge/systemservice/core/VolumeVibratorManager;->vibrate(JI)V

    .line 2740
    :goto_4
    const/4 v7, 0x1

    goto :goto_1

    .line 2704
    .end local v2           #owningPackage:Ljava/lang/String;
    .end local v3           #owningUid:I
    .end local v5           #vibVolume:I
    :sswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVirtualKeyVibePattern:[J

    .line 2705
    goto :goto_2

    .line 2707
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyboardTapVibePattern:[J

    .line 2708
    goto :goto_2

    .line 2710
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSafeModeDisabledVibePattern:[J

    .line 2711
    goto :goto_2

    .line 2713
    :sswitch_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSafeModeEnabledVibePattern:[J

    .line 2714
    goto :goto_2

    .line 2724
    :cond_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 2725
    .restart local v3       #owningUid:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #owningPackage:Ljava/lang/String;
    goto :goto_3

    .line 2733
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v5

    .line 2734
    .restart local v5       #vibVolume:I
    array-length v7, v4

    new-array v6, v7, [I

    .line 2735
    .local v6, volumeIndex:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v7, v6

    if-ge v1, v7, :cond_5

    .line 2736
    aput v5, v6, v1

    .line 2735
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2738
    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    const/4 v8, -0x1

    invoke-virtual {v7, v4, v8, v6}, Lcom/lge/systemservice/core/VolumeVibratorManager;->vibrate([JI[I)V

    goto :goto_4

    .line 2699
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
    .end sparse-switch
.end method

.method protected requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1
    .parameter "swipeTarget"

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3330
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3332
    :cond_1
    return-void
.end method

.method public rotationForOrientationLw(II)I
    .locals 6
    .parameter "orientation"
    .parameter "lastRotation"

    .prologue
    const/4 v5, 0x1

    .line 3336
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->rotationForOrientationLw(II)I

    move-result v1

    .line 3337
    .local v1, result:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3339
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHdmiPlugged:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mDemoHdmiRotationLock:Z

    if-eqz v3, :cond_3

    .line 3340
    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-eq p1, v5, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUserRotationMode:I

    if-ne v3, v5, :cond_1

    .line 3346
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPortraitRotation:I

    .line 3354
    .local v0, preferredRotation:I
    :goto_0
    monitor-exit v4

    .line 3357
    .end local v0           #preferredRotation:I
    :goto_1
    return v0

    .line 3348
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v2

    .line 3349
    .local v2, sensorRotation:I
    if-gez v2, :cond_2

    .line 3350
    move v2, p2

    .line 3352
    :cond_2
    move v0, v2

    .restart local v0       #preferredRotation:I
    goto :goto_0

    .line 3356
    .end local v0           #preferredRotation:I
    .end local v2           #sensorRotation:I
    :cond_3
    monitor-exit v4

    move v0, v1

    .line 3357
    goto :goto_1

    .line 3356
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setRotationLw(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 3794
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    if-nez v1, :cond_0

    .line 3795
    new-instance v1, Lcom/lge/loader/LGContextHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 3797
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManager:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-nez v1, :cond_1

    .line 3798
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v2, "lgpowermanagerhelper"

    invoke-virtual {v1, v2}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManager:Lcom/lge/loader/power/ILGPowerManagerLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3804
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setRotationLw(I)V

    .line 3805
    return-void

    .line 3800
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManager:Lcom/lge/loader/power/ILGPowerManagerLoader;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManager:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3801
    :catch_0
    move-exception v0

    .line 3802
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSpecialKeysFilter(Landroid/os/IBinder;)V
    .locals 2
    .parameter "binder"

    .prologue
    .line 1411
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSpecialKeysLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1412
    if-eqz p1, :cond_0

    .line 1413
    :try_start_0
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSpecialKeysMessenger:Landroid/os/Messenger;

    .line 1417
    :goto_0
    monitor-exit v1

    .line 1418
    return-void

    .line 1415
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSpecialKeysMessenger:Landroid/os/Messenger;

    goto :goto_0

    .line 1417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method showGlobalActionsDialog()V
    .locals 2

    .prologue
    .line 3554
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mViewCoverClosed:Z

    if-eqz v0, :cond_0

    .line 3555
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 3559
    :goto_0
    return-void

    .line 3557
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsDialog()V

    goto :goto_0
.end method

.method showGoHomeDialog()V
    .locals 2

    .prologue
    .line 3398
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3442
    return-void
.end method

.method showGoHomeDialog2()V
    .locals 3

    .prologue
    .line 3444
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog2:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 3445
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3447
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x20d0316

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3448
    const v1, 0x20d0319

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3449
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3450
    const v1, 0x104000a

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$24;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3507
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$25;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3513
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog2:Landroid/app/AlertDialog;

    .line 3514
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 3516
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3517
    return-void
.end method

.method showQButtonGuideDialog()V
    .locals 2

    .prologue
    .line 4124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4150
    return-void
.end method

.method showRestartActionDialog()V
    .locals 4

    .prologue
    .line 3303
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    if-nez v1, :cond_0

    .line 3304
    new-instance v1, Lcom/android/internal/policy/impl/RestartAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/RestartAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    .line 3307
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardIsShowingTq()Z

    move-result v0

    .line 3309
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/RestartAction;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3310
    const-string v1, "PhoneWindowManagerEx"

    const-string v2, "RestartActionDialog is showing. Ignore showRestartActionDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    :cond_1
    :goto_0
    return-void

    .line 3314
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/RestartAction;->showDialog(Z)V

    .line 3316
    if-eqz v0, :cond_1

    .line 3317
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 2386
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2388
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUsingKnockonProximitySensor:Z

    if-eqz v0, :cond_5

    .line 2389
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2649

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensor:Landroid/hardware/Sensor;

    .line 2394
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensor:Landroid/hardware/Sensor;

    .line 2396
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingGesture:Z

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2638

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBasicGestureSensor:Landroid/hardware/Sensor;

    .line 2398
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBasicGestureSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 2399
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "HW_SENSOR : Don\'t Use BasicGesture Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 2404
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "HW_SENSOR : Don\'t Use Proximity Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 2407
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "HW_SENSOR : Don\'t Use Light Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_4

    .line 2410
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUseProxLightForVolLongKey:Z

    .line 2412
    :cond_4
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V

    .line 2413
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->updateSettingsEx()V

    .line 2414
    return-void

    .line 2391
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensor:Landroid/hardware/Sensor;

    goto :goto_0
.end method

.method protected takeScreenshot()V
    .locals 4

    .prologue
    .line 4100
    invoke-static {}, Lcom/lge/vmware/VMwareUtils;->get()Lcom/lge/vmware/VMwareUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lge/vmware/VMwareUtils;->isVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4101
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mToastIsVMwareRunning:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4106
    :goto_0
    return-void

    .line 4105
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V

    goto :goto_0
.end method

.method public updateSettingsEx()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v8, -0x2

    const/4 v4, 0x0

    .line 2292
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2293
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyCustomizing:Z

    if-eqz v2, :cond_0

    .line 2294
    const-string v2, "hotkey_short_package"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->sShortKeyPkg:Ljava/lang/String;

    .line 2295
    const-string v2, "hotkey_short_class"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->sShortKeyClass:Ljava/lang/String;

    .line 2298
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeFromSetupWizard:Z

    if-eqz v2, :cond_1

    .line 2299
    const-string v2, "go_home"

    invoke-static {v1, v2, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeValue:I

    .line 2303
    :cond_1
    const-string v2, "accessibility_easy_access_enabled_category"

    invoke-static {v1, v2, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEasyAccessEnabled:Z

    .line 2305
    const-string v2, "accessibility_touch_control_areas_enable"

    invoke-static {v1, v2, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlEnabled:Z

    .line 2306
    const-string v2, "accessibility_touch_control_areas_service_enable"

    invoke-static {v1, v2, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    .line 2307
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlEnabled:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlServiceRunning:Z

    if-eqz v2, :cond_2

    .line 2308
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->launchTouchControl()V

    .line 2312
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSystemReady:Z

    if-eqz v2, :cond_3

    .line 2313
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLgeHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoost:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x69

    :goto_3
    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2317
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSupportSmartCover:Z

    if-eqz v2, :cond_4

    .line 2318
    const-string v2, "cover_type"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2320
    .local v0, mSetCoverType:I
    packed-switch v0, :pswitch_data_0

    .line 2341
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    .line 2344
    :goto_4
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    if-ne v2, v6, :cond_e

    .line 2345
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;

    if-eqz v2, :cond_4

    .line 2346
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;

    invoke-virtual {v2, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2347
    iput-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;

    .line 2348
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mViewCoverClosed:Z

    .line 2350
    const-string v2, "0"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setSmartCoverSetting(Ljava/lang/String;)V

    .line 2365
    .end local v0           #mSetCoverType:I
    :cond_4
    :goto_5
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingGesture:Z

    if-eqz v2, :cond_5

    .line 2366
    const-string v2, "isai_enabled"

    invoke-static {v1, v2, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingEnabled:Z

    .line 2367
    const-string v2, "isai_mode_select"

    invoke-static {v1, v2, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingMode:I

    .line 2368
    const-string v2, "isai_shortcut_package"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingPkg:Ljava/lang/String;

    .line 2369
    const-string v2, "isai_shortcut_class"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingClass:Ljava/lang/String;

    .line 2371
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingEnabled:Z

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingMode:I

    if-ne v2, v3, :cond_11

    .line 2372
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setBasicSensorEnabled(Z)V

    .line 2379
    :cond_5
    :goto_7
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeKeyLongPressEnabled:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipVolumeKeyCombo:Z

    if-eqz v2, :cond_7

    .line 2380
    :cond_6
    const-string v2, "shortcut_key_status"

    invoke-static {v1, v2, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShortcutKeyStatus:I

    .line 2382
    :cond_7
    return-void

    :cond_8
    move v2, v4

    .line 2303
    goto/16 :goto_0

    :cond_9
    move v2, v4

    .line 2305
    goto/16 :goto_1

    :cond_a
    move v2, v4

    .line 2306
    goto/16 :goto_2

    .line 2313
    :cond_b
    const/16 v2, 0x6a

    goto :goto_3

    .line 2322
    .restart local v0       #mSetCoverType:I
    :pswitch_0
    const-string v2, "quick_cover_enable"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    .line 2323
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    goto :goto_4

    .line 2325
    :cond_c
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    goto :goto_4

    .line 2330
    :pswitch_1
    const-string v2, "quick_view_enable"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_d

    .line 2331
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    goto :goto_4

    .line 2333
    :cond_d
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    goto/16 :goto_4

    .line 2337
    :pswitch_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCoverType:I

    goto/16 :goto_4

    .line 2354
    :cond_e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;

    if-nez v2, :cond_f

    .line 2355
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;

    invoke-direct {v2, p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;

    .line 2356
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2360
    :cond_f
    const-string v2, "1"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setSmartCoverSetting(Ljava/lang/String;)V

    goto/16 :goto_5

    .end local v0           #mSetCoverType:I
    :cond_10
    move v2, v4

    .line 2366
    goto/16 :goto_6

    .line 2374
    :cond_11
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setBasicSensorEnabled(Z)V

    goto :goto_7

    .line 2320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 11
    .parameter "win"
    .parameter "oldVis"
    .parameter "vis"

    .prologue
    const v10, 0x7fffffff

    const/4 v9, 0x1

    const/high16 v7, -0x8000

    .line 3962
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v1

    .line 3964
    .local v1, newVis:I
    const-string v5, "com.lge.camera"

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Starting"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMERALDUI:Z

    if-ne v5, v9, :cond_0

    .line 3965
    or-int/lit16 p3, p3, 0x202

    .line 3966
    or-int/2addr v1, v7

    .line 3968
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHideLockScreen:Z

    if-nez v5, :cond_8

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3972
    .local v4, transWin:Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-nez v4, :cond_9

    move v3, p2

    .line 3973
    .local v3, transVis:I
    :goto_1
    and-int/lit8 v5, v1, -0x11

    and-int/lit8 v6, v3, 0x10

    or-int v1, v5, v6

    .line 3976
    and-int/lit8 v1, v1, -0x9

    .line 3977
    if-eqz v4, :cond_a

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    .line 3978
    .local v2, packageName:Ljava/lang/String;
    :goto_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsAllowedVerticalTranslucentNavigation:Z

    if-eqz v5, :cond_1

    const-string v5, "com.lge.launcher2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    and-int v5, v1, v7

    if-eqz v5, :cond_1

    .line 3981
    or-int/lit8 v1, v1, 0x8

    .line 3984
    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_3

    .line 3985
    const v0, 0x3bfe0d0

    .line 3988
    .local v0, flags:I
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsAllowedVerticalTranslucentNavigation:Z

    if-eqz v5, :cond_2

    .line 3989
    or-int/lit8 v0, v0, 0x8

    .line 3991
    :cond_2
    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v1

    and-int v6, p2, v0

    or-int v1, v5, v6

    .line 3994
    .end local v0           #flags:I
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsLcdOled:Z

    if-eqz v5, :cond_5

    const-string v5, "com.lge.systemui.theme.trans"

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "navigation_bar_theme"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4000
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mForcingShowNavBarInputMethod:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShowingDream:Z

    if-nez v5, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isBlackThemeApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4001
    :cond_4
    or-int/lit8 v1, v1, 0x10

    .line 4005
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsLcdOled:Z

    if-nez v5, :cond_6

    const-string v5, "com.lge.launcher2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mForcingShowNavBarInputMethod:Z

    if-eqz v5, :cond_6

    .line 4008
    and-int/2addr v1, v10

    .line 4012
    :cond_6
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMERALDUI:Z

    if-ne v5, v9, :cond_7

    const-string v5, "SKT"

    const-string v6, "ro.build.target_operator"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "KR"

    const-string v6, "ro.build.target_country"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4015
    if-eqz p1, :cond_7

    const-string v5, "com.lge.findlostphone"

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4016
    and-int/2addr v1, v10

    .line 4021
    :cond_7
    return v1

    .line 3968
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #transVis:I
    .end local v4           #transWin:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_0

    .line 3972
    .restart local v4       #transWin:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_9
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v3

    goto/16 :goto_1

    .line 3977
    .restart local v3       #transVis:I
    :cond_a
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method

.method protected updateSystemUiVisibilityLw()I
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 3883
    const/4 v3, 0x0

    .line 3885
    .local v3, immediatelySystemUiBackgroundChanged:Z
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v10}, Landroid/view/IWindowManager;->getPendingAppTransition()I

    move-result v1

    .line 3886
    .local v1, curTransit:I
    if-eq v1, v13, :cond_0

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTransit:I

    if-eq v1, v10, :cond_0

    .line 3888
    sput v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTransit:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3893
    .end local v1           #curTransit:I
    :cond_0
    :goto_0
    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTransit:I

    sparse-switch v10, :sswitch_data_0

    .line 3904
    const/4 v3, 0x1

    .line 3908
    :goto_1
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v2

    .line 3909
    .local v2, diff:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3910
    .local v9, win:Landroid/view/WindowManagerPolicy$WindowState;
    if-nez v9, :cond_1

    .line 3946
    :goto_2
    return v2

    .line 3897
    .end local v2           #diff:I
    .end local v9           #win:Landroid/view/WindowManagerPolicy$WindowState;
    :sswitch_0
    const/4 v3, 0x1

    .line 3898
    goto :goto_1

    .line 3901
    :sswitch_1
    const/4 v3, 0x0

    .line 3902
    goto :goto_1

    .line 3912
    .restart local v2       #diff:I
    .restart local v9       #win:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v4

    .line 3913
    .local v4, isCurAnimating:Z
    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTransit:I

    const/16 v11, 0x100a

    if-eq v10, v11, :cond_2

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTransit:I

    const/16 v11, 0x1008

    if-ne v10, v11, :cond_3

    :cond_2
    if-nez v4, :cond_3

    .line 3915
    const/4 v3, 0x1

    .line 3918
    :cond_3
    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3919
    .local v0, attr:Landroid/view/WindowManager$LayoutParams;
    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    .line 3920
    .local v6, packageName:Ljava/lang/String;
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->statusBarBackgroundRes:I

    .line 3921
    .local v7, sRes:I
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->navigationBarBackgroundRes:I

    .line 3924
    .local v5, nRes:I
    if-nez v3, :cond_4

    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsAnimating:Z

    if-eqz v10, :cond_7

    if-nez v4, :cond_7

    .line 3925
    :cond_4
    const/4 v8, 0x0

    .line 3926
    .local v8, systemUiBackgroundChanged:Z
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarRes:I

    if-eq v10, v7, :cond_5

    .line 3927
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarRes:I

    .line 3928
    const/4 v8, 0x1

    .line 3930
    :cond_5
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mNavigationBarRes:I

    if-eq v10, v5, :cond_6

    .line 3931
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mNavigationBarRes:I

    .line 3932
    const/4 v8, 0x1

    .line 3935
    :cond_6
    if-eqz v8, :cond_7

    .line 3936
    const-string v10, "PhoneWindowManagerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "systemUiBackgroundChanged(post)="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsAnimating:Z

    .line 3938
    sput v13, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTransit:I

    .line 3939
    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPackageName:Ljava/lang/String;

    .line 3940
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSystemUiBackgroundChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3941
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSystemUiBackgroundChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3944
    .end local v8           #systemUiBackgroundChanged:Z
    :cond_7
    sput-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsAnimating:Z

    goto :goto_2

    .line 3890
    .end local v0           #attr:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #diff:I
    .end local v4           #isCurAnimating:Z
    .end local v5           #nRes:I
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #sRes:I
    .end local v9           #win:Landroid/view/WindowManagerPolicy$WindowState;
    :catch_0
    move-exception v10

    goto :goto_0

    .line 3893
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_1
        0x100a -> :sswitch_1
        0x2007 -> :sswitch_0
        0x2009 -> :sswitch_0
    .end sparse-switch
.end method
