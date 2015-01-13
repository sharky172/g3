.class final Lcom/android/server/power/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/power/DisplayPowerController$Callbacks;
    }
.end annotation


# static fields
.field private static ADAPTATION_DIM_LIMIT_MAP:[I = null

.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0x7d0L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.5f

.field private static final BRIGHTNESS_RAMP_MODE_ANIMATE:I = 0x1

.field private static final BRIGHTNESS_RAMP_MODE_IMMEDIATE:I = 0x0

.field private static final BRIGHTNESS_RAMP_RATE_ABS:I = 0x1

.field private static final BRIGHTNESS_RAMP_RATE_BRIGHTENING:I = 0x7f

.field private static final BRIGHTNESS_RAMP_RATE_DARKENING:I = 0x41

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

.field private static final BRIGHTNESS_RAMP_RATE_RECOVER:I = 0x2

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x28

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0xfa0L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.9f

.field private static DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_ABS:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final DEFALUT_SCREEN_COLOR:I = 0x2

.field private static final DEFAULT_SCREEN_SATURATION:I = 0xb

.field private static final ELECTRON_BEAM_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final ELECTRON_BEAM_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x3e8

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x1388L

.field private static final MSG_LIGHT_SENSOR_DEBOUNCED:I = 0x3

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_RECOVER_SCREEN_BRIGHTNESS:I = 0x4

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field private static final PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0xc8

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 2.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x3e8L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_ELECTRON_BEAM_ON_ANIMATION:Z

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field private static newALCConstantValueTranslationAxisX:F

.field private static newALCConstantValueTranslationAxisY:F


# instance fields
.field private final USE_AUTO_BRIGHTNESS_NO_HYSTERESIS_FEATURE:Z

.field private currentAbsLevel:I

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBrighteningLuxThreshold:F

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mDarkeningLuxThreshold:F

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayReadyLocked:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mElectronBeamFadesConfig:Z

.field private mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

.field private mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

.field private mFirstReceived:Z

.field private final mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorPendingDecrease:Z

.field private mLightSensorPendingIncrease:Z

.field private mLightSensorPendingValue:F

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLights:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private final mNotifier:Lcom/android/server/power/Notifier;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mOutDoorMaxAmbient:I

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/power/DisplayPowerState;

.field private mPrevScreenAutoBrightness:I

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field public mProximitySleepAvailable:Z

.field private mProximityThreshold:F

.field private mRateForManualMoveByAdjChange:Z

.field private mRecentLightSamples:I

.field private mRecentLongTermAverageLux:F

.field private mRecentShortTermAverageLux:F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessDimConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/RampAnimator",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field public mScreenOffAnimationMode:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnWasBlocked:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTwilight:Lcom/android/server/TwilightService;

.field private mTwilightChanged:Z

.field private final mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUsingScreenAutoBrightness:Z

.field private mWaitingForNegativeProximity:Z

.field private pm:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 77
    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    .line 80
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ABS:Z

    .line 89
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 104
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    .line 400
    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/power/DisplayPowerController;->ADAPTATION_DIM_LIMIT_MAP:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V
    .locals 12
    .parameter "looper"
    .parameter "context"
    .parameter "notifier"
    .parameter "lights"
    .parameter "twilight"
    .parameter "sensorManager"
    .parameter "displayManager"
    .parameter "displaySuspendBlocker"
    .parameter "displayBlanker"
    .parameter "callbacks"
    .parameter "callbackHandler"

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 300
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 303
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 304
    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 360
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 363
    const/high16 v9, 0x3f80

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 385
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mPrevScreenAutoBrightness:I

    .line 386
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingDecrease:Z

    .line 387
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingIncrease:Z

    .line 388
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingValue:F

    .line 389
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->USE_AUTO_BRIGHTNESS_NO_HYSTERESIS_FEATURE:Z

    .line 390
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mFirstReceived:Z

    .line 393
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySleepAvailable:Z

    .line 643
    new-instance v9, Lcom/android/server/power/DisplayPowerController$1;

    invoke-direct {v9, p0}, Lcom/android/server/power/DisplayPowerController$1;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1054
    new-instance v9, Lcom/android/server/power/DisplayPowerController$2;

    invoke-direct {v9, p0}, Lcom/android/server/power/DisplayPowerController$2;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1585
    new-instance v9, Lcom/android/server/power/DisplayPowerController$3;

    invoke-direct {v9, p0}, Lcom/android/server/power/DisplayPowerController$3;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1598
    new-instance v9, Lcom/android/server/power/DisplayPowerController$4;

    invoke-direct {v9, p0}, Lcom/android/server/power/DisplayPowerController$4;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1611
    new-instance v9, Lcom/android/server/power/DisplayPowerController$5;

    invoke-direct {v9, p0}, Lcom/android/server/power/DisplayPowerController$5;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1856
    new-instance v9, Lcom/android/server/power/DisplayPowerController$7;

    invoke-direct {v9, p0}, Lcom/android/server/power/DisplayPowerController$7;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1873
    new-instance v9, Lcom/android/server/power/DisplayPowerController$8;

    invoke-direct {v9, p0}, Lcom/android/server/power/DisplayPowerController$8;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1893
    new-instance v9, Lcom/android/server/power/DisplayPowerController$9;

    invoke-direct {v9, p0}, Lcom/android/server/power/DisplayPowerController$9;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    .line 412
    new-instance v9, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v9, p0, p1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    .line 413
    iput-object p3, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    .line 414
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 415
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    .line 416
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    .line 417
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    .line 419
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    .line 420
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    .line 421
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 422
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 424
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 426
    .local v6, resources:Landroid/content/res/Resources;
    const v9, 0x10e002d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 429
    const v9, 0x10e002a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 433
    .local v8, screenBrightnessMinimum:I
    const v9, 0x1110019

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 435
    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v9, :cond_3

    .line 436
    const v9, 0x107002a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 438
    .local v4, lux:[I
    const v9, 0x107002b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 440
    .local v7, screenBrightness:[I
    const v9, 0x20b0017

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mOutDoorMaxAmbient:I

    .line 443
    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 444
    const-string v9, "Lux.txt"

    invoke-direct {p0, v9}, Lcom/android/server/power/DisplayPowerController;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, loadedLuxStr:Ljava/lang/String;
    const-string v9, "Brightness.txt"

    invoke-direct {p0, v9}, Lcom/android/server/power/DisplayPowerController;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, loadedBrightnessStr:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->getTableSize(Ljava/lang/String;)I

    move-result v5

    .line 447
    .local v5, luxTableSize:I
    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->getTableSize(Ljava/lang/String;)I

    move-result v1

    .line 449
    .local v1, BrightnessTableSize:I
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-lez v5, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v9, v5, 0x1

    if-ne v9, v1, :cond_1

    .line 452
    const-string v9, "DisplayPowerController"

    const-string v10, "get Lux and Brightness Table from File."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->makeTableForALC(Ljava/lang/String;)[I

    move-result-object v4

    .line 454
    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->makeTableForALC(Ljava/lang/String;)[I

    move-result-object v7

    .line 456
    if-eqz v4, :cond_0

    if-nez v7, :cond_1

    .line 457
    :cond_0
    const-string v9, "DisplayPowerController"

    const-string v10, "Table ERROR: restore table from config file."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const v9, 0x107002a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 460
    const v9, 0x107002b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 466
    .end local v1           #BrightnessTableSize:I
    .end local v2           #loadedBrightnessStr:Ljava/lang/String;
    .end local v3           #loadedLuxStr:Ljava/lang/String;
    .end local v5           #luxTableSize:I
    :cond_1
    const/4 v9, 0x0

    aget v9, v7, v9

    int-to-float v9, v9

    sput v9, Lcom/android/server/power/DisplayPowerController;->newALCConstantValueTranslationAxisY:F

    .line 468
    invoke-static {v4, v7}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 469
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v9, :cond_7

    .line 470
    const-string v9, "DisplayPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "must be monotic and have exactly one more entry than "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "config_autoBrightnessLevels (size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "which must be strictly increasing.  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Auto-brightness will be disabled."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 483
    :cond_2
    :goto_0
    const v9, 0x10e002e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    .line 487
    .end local v4           #lux:[I
    .end local v7           #screenBrightness:[I
    :cond_3
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 488
    const/16 v9, 0xff

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 490
    const v9, 0x111001c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    .line 494
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 495
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v9, :cond_4

    .line 496
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v9

    const/high16 v10, 0x40a0

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    .line 501
    :cond_4
    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v9, :cond_5

    .line 503
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 506
    :cond_5
    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v9, :cond_6

    sget-boolean v9, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v9, :cond_6

    .line 507
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v9, v10, v11}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    .line 511
    :cond_6
    const-string v9, "power"

    invoke-virtual {p2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->pm:Landroid/os/PowerManager;

    .line 512
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->pm:Landroid/os/PowerManager;

    invoke-virtual {v9}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v9

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingMinimum:I

    .line 513
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->pm:Landroid/os/PowerManager;

    invoke-virtual {v9}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v9

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingMaximum:I

    .line 517
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffAnimationMode:I

    .line 520
    const v9, 0x2090007

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    sput-object v9, Lcom/android/server/power/DisplayPowerController;->ADAPTATION_DIM_LIMIT_MAP:[I

    .line 524
    return-void

    .line 478
    .restart local v4       #lux:[I
    .restart local v7       #screenBrightness:[I
    :cond_7
    const/4 v9, 0x0

    aget v9, v7, v9

    if-ge v9, v8, :cond_2

    .line 479
    const/4 v9, 0x0

    aget v8, v7, v9

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerController;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/DisplayPowerController;JF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/power/DisplayPowerController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/DisplayPowerController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->animateRecoverScreenBrightness(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method private animateRecoverScreenBrightness(I)V
    .locals 3
    .parameter "currentBrightness"

    .prologue
    const/4 v2, 0x2

    .line 1736
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1737
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    if-eqz v0, :cond_1

    .line 1741
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/power/RampAnimator;->animateRecoverScreenBrightness(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1742
    const-string v0, "DisplayPowerController"

    const-string v2, "RecoverScreenBrightness animate done..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :goto_0
    monitor-exit v1

    .line 1750
    return-void

    .line 1744
    :cond_0
    const-string v0, "DisplayPowerController"

    const-string v2, "RecoverScreenBrightness animate skip..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1749
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1747
    :cond_1
    :try_start_1
    const-string v0, "DisplayPowerController"

    const-string v2, "RecoverScreenBrightness skip..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private animateScreenBrightness(III)V
    .locals 2
    .parameter "target"
    .parameter "rate"
    .parameter "animateMode"

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    if-eqz v1, :cond_0

    .line 1040
    const/4 v0, 0x0

    .line 1041
    .local v0, changed:Z
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/RampAnimator;->animateTo(II)Z

    move-result v0

    .line 1047
    :goto_0
    if-eqz v0, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1, p1}, Lcom/android/server/power/Notifier;->onScreenBrightness(I)V

    .line 1052
    .end local v0           #changed:Z
    :cond_0
    return-void

    .line 1044
    .restart local v0       #changed:Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v1, p1}, Lcom/android/server/power/RampAnimator;->noAnimateTo(I)Z

    move-result v0

    goto :goto_0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 2
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 1220
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1221
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1222
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1223
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    .line 1238
    :goto_0
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    .line 1239
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    .line 1240
    return-void

    .line 1232
    :cond_0
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1233
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    goto :goto_0
.end method

.method private blockScreenOn()V
    .locals 2

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v0, :cond_0

    .line 986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 987
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 988
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocked screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 992
    :cond_0
    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 1024
    if-gt p0, p1, :cond_0

    .line 1030
    .end local p1
    :goto_0
    return p1

    .line 1027
    .restart local p1
    :cond_0
    if-lt p0, p2, :cond_1

    move p1, p2

    .line 1028
    goto :goto_0

    :cond_1
    move p1, p0

    .line 1030
    goto :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1020
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1016
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    .line 1133
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1134
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1135
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 1137
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .parameter "lux"
    .parameter "brightness"

    .prologue
    const/high16 v12, 0x3fa0

    .line 528
    :try_start_0
    array-length v2, p1

    .line 529
    .local v2, n:I
    new-array v5, v2, [F

    .line 530
    .local v5, x:[F
    new-array v6, v2, [F

    .line 531
    .local v6, y:[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    .line 532
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 533
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 534
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 538
    .local v3, spline:Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 539
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/high16 v4, 0x3f80

    .local v4, v:F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 541
    const-string v7, "DisplayPowerController"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    mul-float/2addr v4, v12

    goto :goto_1

    .line 545
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #spline:Landroid/util/Spline;
    .end local v4           #v:F
    .end local v5           #x:[F
    .end local v6           #y:[F
    :catch_0
    move-exception v0

    .line 546
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v7, "DisplayPowerController"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    const/4 v3, 0x0

    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private currentScreenBrightness()I
    .locals 7

    .prologue
    .line 1904
    new-instance v0, Ljava/lang/String;

    const-string v5, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1905
    .local v0, LCD_FILE:Ljava/lang/String;
    const-string v4, ""

    .line 1906
    .local v4, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1907
    .local v2, in:Ljava/io/BufferedReader;
    const/4 v1, -0x1

    .line 1909
    .local v1, currentValue:I
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1910
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1911
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1912
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v1

    .line 1916
    if-eqz v3, :cond_0

    .line 1917
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 1921
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return v1

    .line 1919
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 1920
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 1913
    :catch_1
    move-exception v5

    .line 1916
    :goto_1
    if-eqz v2, :cond_1

    .line 1917
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1919
    :catch_2
    move-exception v5

    goto :goto_0

    .line 1915
    :catchall_0
    move-exception v5

    .line 1916
    :goto_2
    if-eqz v2, :cond_2

    .line 1917
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1919
    :cond_2
    :goto_3
    throw v5

    :catch_3
    move-exception v6

    goto :goto_3

    .line 1915
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 1913
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private debounceLightSensor()V
    .locals 6

    .prologue
    .line 1399
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 1400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1401
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 1402
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1403
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_0
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1408
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .line 1410
    .end local v0           #time:J
    :cond_2
    return-void
.end method

.method private debounceLightSensorNoHysteresis()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1201
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 1202
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingDecrease:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingIncrease:Z

    if-eqz v0, :cond_1

    .line 1203
    :cond_0
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingValue:F

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1204
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingDecrease:Z

    .line 1205
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingIncrease:Z

    .line 1206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1209
    :cond_1
    return-void
.end method

.method private debounceProximitySensor()V
    .locals 7

    .prologue
    .line 1113
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 1116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1117
    .local v1, now:J
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 1119
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1120
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    .line 1121
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1130
    .end local v1           #now:J
    :cond_0
    :goto_0
    return-void

    .line 1125
    .restart local v1       #now:J
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1126
    .local v0, msg:Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1127
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 1650
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1651
    const-string v0, "Display Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentShortTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLongTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsingScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 1699
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1701
    :cond_2
    return-void
.end method

.method private getTableSize(Ljava/lang/String;)I
    .locals 2
    .parameter "file"

    .prologue
    .line 1786
    if-nez p1, :cond_0

    .line 1787
    const/4 v1, 0x0

    .line 1792
    :goto_0
    return v1

    .line 1790
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    .local v0, strtk:Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    goto :goto_0
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 9
    .parameter "now"
    .parameter "lastSunset"
    .parameter "nextSunrise"

    .prologue
    const-wide/32 v7, 0x6ddd00

    const-wide/16 v5, 0x0

    const v4, 0x4adbba00

    const/high16 v0, 0x3fc0

    const/high16 v1, 0x3f80

    .line 1558
    cmp-long v2, p2, v5

    if-ltz v2, :cond_0

    cmp-long v2, p4, v5

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1573
    :cond_1
    :goto_0
    return v0

    .line 1563
    :cond_2
    add-long v2, p2, v7

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 1564
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 1568
    :cond_3
    sub-long v2, p4, v7

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 1569
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 2
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1214
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1215
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .line 1216
    return-void
.end method

.method private handleLightSensorEventNoHysteresis(JF)V
    .locals 8
    .parameter "time"
    .parameter "lux"

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1170
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    sub-long v3, p1, v3

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1173
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingDecrease:Z

    .line 1174
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingIncrease:Z

    .line 1175
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1176
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1177
    invoke-direct {p0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1198
    :cond_1
    :goto_0
    return-void

    .line 1179
    :cond_2
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingDecrease:Z

    if-nez v0, :cond_5

    :cond_3
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingIncrease:Z

    if-nez v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-static {p3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingDecrease:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingIncrease:Z

    if-nez v0, :cond_a

    .line 1184
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1185
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingDecrease:Z

    .line 1186
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_8

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingIncrease:Z

    .line 1187
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingDecrease:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingIncrease:Z

    if-eqz v0, :cond_1

    .line 1188
    :cond_6
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingValue:F

    .line 1189
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingDecrease:Z

    if-eqz v0, :cond_9

    const-wide/16 v0, 0xfa0

    :goto_3
    add-long/2addr v0, p1

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :cond_7
    move v0, v2

    .line 1185
    goto :goto_1

    :cond_8
    move v1, v2

    .line 1186
    goto :goto_2

    .line 1189
    :cond_9
    const-wide/16 v0, 0x7d0

    goto :goto_3

    .line 1195
    :cond_a
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorPendingValue:F

    goto :goto_0
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 3
    .parameter "time"
    .parameter "positive"

    .prologue
    const/4 v2, 0x1

    .line 1085
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1086
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    .line 1096
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1097
    if-eqz p3, :cond_3

    .line 1098
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1099
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1108
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    .line 1102
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1103
    const-wide/16 v0, 0xc8

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 625
    new-instance v0, Lcom/android/server/power/DisplayPowerState;

    new-instance v1, Lcom/android/server/power/ElectronBeam;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/power/ElectronBeam;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerState;-><init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    .line 629
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    .line 631
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 632
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 634
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    .line 636
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 637
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 639
    new-instance v0, Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v2, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    .line 641
    return-void

    .line 629
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 634
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static lerp(FFF)F
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "alpha"

    .prologue
    .line 1577
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private loadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "path"

    .prologue
    .line 1753
    const/4 v0, 0x0

    .line 1754
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1756
    .local v3, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "system/etc/ALC/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1760
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1761
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1764
    .end local v4           #text:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 1765
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v5, "DisplayPowerController"

    const-string v6, "File IOException!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1769
    if-eqz v0, :cond_0

    .line 1770
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1778
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 1779
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1781
    :goto_3
    return-object v5

    .line 1769
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #text:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 1770
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v0, v1

    .line 1775
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 1772
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 1773
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "DisplayPowerController"

    const-string v6, "File IOException!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 1776
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 1772
    .end local v4           #text:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 1773
    const-string v5, "DisplayPowerController"

    const-string v6, "File IOException!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1768
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1769
    :goto_4
    if-eqz v0, :cond_3

    .line 1770
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1775
    :cond_3
    :goto_5
    throw v5

    .line 1772
    :catch_3
    move-exception v2

    .line 1773
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "DisplayPowerController"

    const-string v7, "File IOException!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 1781
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 1768
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1764
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private makeTableForALC(Ljava/lang/String;)[I
    .locals 5
    .parameter "file"

    .prologue
    .line 1796
    if-nez p1, :cond_1

    .line 1797
    const/4 v2, 0x0

    .line 1812
    :cond_0
    return-object v2

    .line 1800
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v1, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    .local v1, strtk:Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 1802
    .local v2, table:[I
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->getTableSize(Ljava/lang/String;)I

    move-result v3

    .line 1804
    .local v3, tableSize:I
    if-lez v3, :cond_0

    .line 1805
    new-array v2, v3, [I

    .line 1807
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1808
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    .line 1807
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .parameter "value"

    .prologue
    .line 1034
    invoke-static {p0}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 1704
    packed-switch p0, :pswitch_data_0

    .line 1712
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1706
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 1708
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 1710
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 1704
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private recalculateAutoBrightness()V
    .locals 18

    .prologue
    .line 1498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v16

    .line 1499
    .local v16, value:F
    const/high16 v9, 0x3f80

    .line 1500
    .local v9, gamma:F
    const/high16 v3, 0x437f

    sget v4, Lcom/android/server/power/DisplayPowerController;->newALCConstantValueTranslationAxisY:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x437f

    div-float v12, v3, v4

    .line 1502
    .local v12, newALCConstantValueTranslationAxisX:F
    sget v3, Lcom/android/server/power/DisplayPowerController;->newALCConstantValueTranslationAxisY:F

    const/high16 v4, 0x437f

    div-float v17, v3, v4

    .line 1504
    .local v17, valueAtZeroLux:F
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1506
    const/high16 v3, 0x4000

    const/high16 v4, 0x3f80

    const/high16 v5, -0x4080

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    neg-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Landroid/util/FloatMath;->pow(FF)F

    move-result v9

    .line 1509
    :cond_0
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v3, :cond_1

    .line 1510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v3}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v15

    .line 1511
    .local v15, state:Lcom/android/server/TwilightService$TwilightState;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1513
    .local v1, now:J
    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getYesterdaySunset()J

    move-result-wide v3

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunrise()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v8

    .line 1515
    .local v8, earlyGamma:F
    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunset()J

    move-result-wide v3

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTomorrowSunrise()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v11

    .line 1517
    .local v11, lateGamma:F
    mul-float v3, v8, v11

    mul-float/2addr v9, v3

    .line 1523
    .end local v1           #now:J
    .end local v8           #earlyGamma:F
    .end local v11           #lateGamma:F
    .end local v15           #state:Lcom/android/server/TwilightService$TwilightState;
    :cond_1
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    .line 1525
    const/high16 v3, 0x3f80

    sub-float v3, v3, v17

    invoke-static {v3, v9}, Landroid/util/FloatMath;->pow(FF)F

    move-result v3

    div-float v7, v12, v3

    .line 1526
    .local v7, coefficientValue:F
    sub-float v3, v16, v17

    invoke-static {v3, v9}, Landroid/util/FloatMath;->pow(FF)F

    move-result v3

    mul-float/2addr v3, v7

    add-float v13, v3, v17

    .line 1527
    .local v13, newRawValue:F
    const/high16 v3, 0x437f

    mul-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v14

    .line 1528
    .local v14, newScreenAutoBrightness:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    .line 1529
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingMinimum:I

    .line 1539
    .end local v7           #coefficientValue:F
    .end local v13           #newRawValue:F
    :cond_2
    :goto_0
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_3

    .line 1540
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mOutDoorMaxAmbient:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 1541
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingMaximum:I

    .line 1545
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v3, v14, :cond_5

    .line 1546
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 1547
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recalculateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1552
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1554
    :cond_5
    return-void

    .line 1532
    .end local v14           #newScreenAutoBrightness:I
    :cond_6
    const/high16 v3, 0x3f80

    invoke-static {v9, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_7

    .line 1533
    move/from16 v10, v16

    .line 1534
    .local v10, in:F
    move/from16 v0, v16

    invoke-static {v0, v9}, Landroid/util/FloatMath;->pow(FF)F

    move-result v16

    .line 1536
    .end local v10           #in:F
    :cond_7
    const/high16 v3, 0x437f

    mul-float v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v14

    .restart local v14       #newScreenAutoBrightness:I
    goto :goto_0
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1608
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1609
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1595
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1596
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1582
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1583
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 611
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 612
    monitor-exit v1

    .line 613
    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 616
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 617
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 618
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 619
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 620
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 622
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setAmbientLux(F)V
    .locals 2
    .parameter "lux"

    .prologue
    .line 1243
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1244
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    .line 1245
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v1, 0x3dccccd0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    .line 1246
    return-void
.end method

.method private setLightSensorEnabled(ZZ)V
    .locals 6
    .parameter "enable"
    .parameter "updateAutoBrightness"

    .prologue
    const/4 v5, 0x0

    .line 1147
    if-eqz p1, :cond_2

    .line 1148
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-nez v0, :cond_0

    .line 1149
    const/4 p2, 0x1

    .line 1150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    .line 1152
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0xf4240

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1164
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1165
    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1167
    :cond_1
    return-void

    .line 1156
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1157
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1158
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1159
    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1160
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1161
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 4
    .parameter "debounceTime"

    .prologue
    .line 1140
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1143
    :cond_0
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1144
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, -0x1

    .line 1062
    if-eqz p1, :cond_1

    .line 1063
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 1066
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1067
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1075
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1076
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1077
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1078
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1079
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0
.end method

.method public static setScreenColor()V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x2

    const-string v1, "persist.sys.display_prefer"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, currValue:I
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROPERTY_SCREEN_COLOR set, currValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v4, :cond_0

    const-string v1, "persist.sys.display_prefer"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "persist.sys.display_ce"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROPERTY_SCREEN_SATURATION set, currValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_1

    const-string v1, "persist.sys.display_ce"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setScreenOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->setScreenOn(Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOn()V

    :goto_1
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService$Injector;->setScreenOn(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOff()V

    goto :goto_1
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-eqz v0, :cond_0

    .line 996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 997
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 998
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unblocked screen on after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 13
    .parameter "time"

    .prologue
    const-wide/16 v11, 0x7d0

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 1251
    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v4, :cond_5

    .line 1252
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    add-long v2, v4, v6

    .line 1254
    .local v2, timeWhenSensorWarmedUp:J
    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    .line 1255
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1396
    .end local v2           #timeWhenSensorWarmedUp:J
    :cond_0
    :goto_0
    return-void

    .line 1259
    .restart local v2       #timeWhenSensorWarmedUp:J
    :cond_1
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1260
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1261
    iput v10, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1262
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1263
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1264
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Initializing: , mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_2
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mFirstReceived:Z

    .line 1272
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1391
    .end local v2           #timeWhenSensorWarmedUp:J
    :cond_3
    :goto_1
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_4

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 1393
    :cond_4
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    add-long v5, p1, v11

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1273
    :cond_5
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 1276
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v4, :cond_6

    .line 1277
    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1278
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1279
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 1280
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly brightened, waiting for 2000 ms: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_6
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v0, v4, v11

    .line 1289
    .local v0, debounceTime:J
    cmp-long v4, p1, v0

    if-ltz v4, :cond_8

    .line 1293
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1294
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1295
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    .line 1296
    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1305
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1310
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1311
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 1312
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Brightened: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_7
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_1

    .line 1307
    :cond_8
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1319
    .end local v0           #debounceTime:J
    :cond_9
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d

    .line 1322
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v4, :cond_a

    .line 1323
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1324
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1325
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 1326
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly darkened, waiting for 4000 ms: mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_a
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    const-wide/16 v6, 0xfa0

    add-long v0, v4, v6

    .line 1335
    .restart local v0       #debounceTime:J
    cmp-long v4, p1, v0

    if-ltz v4, :cond_c

    .line 1341
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1342
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1343
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    .line 1344
    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1353
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1360
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1361
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_b

    .line 1362
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Darkened: mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_b
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_1

    .line 1355
    :cond_c
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1369
    .end local v0           #debounceTime:J
    :cond_d
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v4, :cond_3

    .line 1371
    iput v10, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1372
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1373
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1374
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Canceled debounce: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateAutoBrightness(Z)V
    .locals 18
    .parameter "sendUpdate"

    .prologue
    .line 1413
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v3, :cond_1

    .line 1414
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/DisplayPowerController;->mRateForManualMoveByAdjChange:Z

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    if-nez p1, :cond_8

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/DisplayPowerController;->mRateForManualMoveByAdjChange:Z

    .line 1419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v16

    .line 1420
    .local v16, value:F
    const/high16 v9, 0x3f80

    .line 1421
    .local v9, gamma:F
    const/high16 v3, 0x437f

    sget v4, Lcom/android/server/power/DisplayPowerController;->newALCConstantValueTranslationAxisY:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x437f

    div-float v12, v3, v4

    .line 1423
    .local v12, newALCConstantValueTranslationAxisX:F
    sget v3, Lcom/android/server/power/DisplayPowerController;->newALCConstantValueTranslationAxisY:F

    const/high16 v4, 0x437f

    div-float v17, v3, v4

    .line 1425
    .local v17, valueAtZeroLux:F
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1427
    const/high16 v3, 0x4000

    const/high16 v4, 0x3f80

    const/high16 v5, -0x4080

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    neg-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Landroid/util/FloatMath;->pow(FF)F

    move-result v9

    .line 1428
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1429
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: gamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_2
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v3, :cond_3

    .line 1434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v3}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v15

    .line 1435
    .local v15, state:Lcom/android/server/TwilightService$TwilightState;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1437
    .local v1, now:J
    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getYesterdaySunset()J

    move-result-wide v3

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunrise()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v8

    .line 1439
    .local v8, earlyGamma:F
    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunset()J

    move-result-wide v3

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTomorrowSunrise()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v11

    .line 1441
    .local v11, lateGamma:F
    mul-float v3, v8, v11

    mul-float/2addr v9, v3

    .line 1442
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1443
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: earlyGamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lateGamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    .end local v1           #now:J
    .end local v8           #earlyGamma:F
    .end local v11           #lateGamma:F
    .end local v15           #state:Lcom/android/server/TwilightService$TwilightState;
    :cond_3
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_9

    .line 1453
    const/high16 v3, 0x3f80

    sub-float v3, v3, v17

    invoke-static {v3, v9}, Landroid/util/FloatMath;->pow(FF)F

    move-result v3

    div-float v7, v12, v3

    .line 1454
    .local v7, coefficientValue:F
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 1455
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: coefficientValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_4
    sub-float v3, v16, v17

    invoke-static {v3, v9}, Landroid/util/FloatMath;->pow(FF)F

    move-result v3

    mul-float/2addr v3, v7

    add-float v13, v3, v17

    .line 1458
    .local v13, newRawValue:F
    const/high16 v3, 0x437f

    mul-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v14

    .line 1459
    .local v14, newScreenAutoBrightness:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_5

    .line 1460
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingMinimum:I

    .line 1474
    .end local v7           #coefficientValue:F
    .end local v13           #newRawValue:F
    :cond_5
    :goto_2
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_6

    .line 1475
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mOutDoorMaxAmbient:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6

    .line 1476
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessSettingMaximum:I

    .line 1481
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v3, v14, :cond_0

    .line 1482
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 1483
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_7
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1489
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1490
    if-eqz p1, :cond_0

    .line 1491
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    goto/16 :goto_0

    .line 1417
    .end local v9           #gamma:F
    .end local v12           #newALCConstantValueTranslationAxisX:F
    .end local v14           #newScreenAutoBrightness:I
    .end local v16           #value:F
    .end local v17           #valueAtZeroLux:F
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1463
    .restart local v9       #gamma:F
    .restart local v12       #newALCConstantValueTranslationAxisX:F
    .restart local v16       #value:F
    .restart local v17       #valueAtZeroLux:F
    :cond_9
    const/high16 v3, 0x3f80

    invoke-static {v9, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_a

    .line 1464
    move/from16 v10, v16

    .line 1465
    .local v10, in:F
    move/from16 v0, v16

    invoke-static {v0, v9}, Landroid/util/FloatMath;->pow(FF)F

    move-result v16

    .line 1466
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_a

    .line 1467
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: gamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", in="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", out="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    .end local v10           #in:F
    :cond_a
    const/high16 v3, 0x437f

    mul-float v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v14

    .restart local v14       #newScreenAutoBrightness:I
    goto/16 :goto_2
.end method

.method private updatePowerState()V
    .locals 14

    .prologue
    .line 662
    const/4 v3, 0x0

    .line 663
    .local v3, mustInitialize:Z
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 664
    .local v8, updateAutoBrightness:Z
    const/4 v10, 0x0

    .line 665
    .local v10, wasDim:Z
    const/4 v9, 0x0

    .line 666
    .local v9, wasAbs:Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 668
    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 669
    const/4 v11, 0x0

    :try_start_0
    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 670
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v11, :cond_1

    .line 671
    monitor-exit v12

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v11, :cond_e

    .line 675
    new-instance v11, Lcom/android/server/power/DisplayPowerRequest;

    iget-object v13, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v11, v13}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    .line 676
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 677
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 678
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 679
    const/4 v3, 0x1

    .line 693
    :cond_2
    :goto_1
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v11, :cond_12

    const/4 v4, 0x1

    .line 694
    .local v4, mustNotify:Z
    :goto_2
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    if-eqz v3, :cond_3

    .line 698
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initialize()V

    .line 702
    :cond_3
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v11, :cond_18

    .line 703
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v11, :cond_14

    .line 705
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 706
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v11, :cond_13

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->mWakeUpInProximityPositive:Z

    if-nez v11, :cond_13

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->mWakeUpInGoToSleepReasonUser:Z

    if-nez v11, :cond_13

    .line 710
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 711
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 712
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 714
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySleepAvailable:Z

    if-eqz v11, :cond_4

    .line 715
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 716
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v11}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    .line 762
    :cond_4
    :goto_3
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_5

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    .line 764
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 765
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 772
    :cond_5
    :goto_4
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v11, :cond_6

    .line 773
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v11}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v11

    if-eqz v11, :cond_19

    const/4 v11, 0x1

    :goto_5
    invoke-direct {p0, v11, v8}, Lcom/android/server/power/DisplayPowerController;->setLightSensorEnabled(ZZ)V

    .line 778
    :cond_6
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v11}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 782
    const/16 v6, 0x28

    .line 784
    .local v6, slowRate:I
    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v11, :cond_20

    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v11, :cond_20

    .line 786
    if-eqz v8, :cond_7

    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v11, :cond_7

    .line 787
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->recalculateAutoBrightness()V

    .line 790
    :cond_7
    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 791
    .local v7, target:I
    iget-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 793
    .local v5, slow:Z
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v11, :cond_8

    .line 794
    const-string v11, "DisplayPowerController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updatePowerState: target="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mUsingScreenAutoBrightness="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", updateAutoBrightness"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mAmbientLuxValid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_8
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mRateForManualMoveByAdjChange:Z

    if-eqz v11, :cond_1a

    .line 801
    const/4 v1, 0x0

    .line 821
    .local v1, animateMode:I
    :goto_6
    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mPrevScreenAutoBrightness:I

    .line 822
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 836
    :goto_7
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->mDoABS:Z

    if-nez v11, :cond_22

    .line 837
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_21

    .line 839
    add-int/lit8 v11, v7, -0xa

    iget v12, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 841
    const/4 v5, 0x0

    .line 842
    const/4 v1, 0x1

    .line 843
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG_ABS:Z

    if-eqz v11, :cond_9

    const-string v11, "DisplayPowerController"

    const-string v12, "updatePowerState(NotABS) DIM"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_9
    :goto_8
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v12

    if-eqz v5, :cond_2b

    move v11, v6

    :goto_9
    invoke-direct {p0, v12, v11, v1}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(III)V

    .line 890
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG_ABS:Z

    if-eqz v11, :cond_a

    const-string v11, "DisplayPowerController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "State = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v13, v13, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",  target = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", slow = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", slowRate = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    .end local v1           #animateMode:I
    .end local v5           #slow:Z
    .end local v6           #slowRate:I
    .end local v7           #target:I
    :cond_a
    :goto_a
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->mWakeUpInProximityPositive:Z

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->mWakeUpInGoToSleepReasonUser:Z

    if-eqz v11, :cond_c

    .line 906
    :cond_b
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v11}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v11

    if-eqz v11, :cond_2e

    .line 911
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v11

    if-nez v11, :cond_c

    .line 915
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 917
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-eqz v11, :cond_2d

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v11}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2d

    .line 919
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->blockScreenOn()V

    .line 966
    :cond_c
    :goto_b
    if-eqz v4, :cond_0

    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Lcom/android/server/power/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 971
    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 972
    :try_start_1
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v11, :cond_d

    .line 973
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 975
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v11, :cond_d

    .line 976
    const-string v11, "DisplayPowerController"

    const-string v13, "Display ready!"

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_d
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 980
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto/16 :goto_0

    .line 680
    .end local v4           #mustNotify:Z
    :cond_e
    :try_start_2
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v11, :cond_2

    .line 681
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v13, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v13, v13, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    invoke-static {v11, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-eqz v11, :cond_f

    .line 682
    const/4 v8, 0x1

    .line 684
    :cond_f
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_10

    const/4 v10, 0x1

    .line 685
    :goto_c
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_11

    const/4 v9, 0x1

    .line 686
    :goto_d
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v13, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v11, v13}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 687
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v13, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v11, v13

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 688
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 689
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 690
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    goto/16 :goto_1

    .line 694
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 684
    :cond_10
    const/4 v10, 0x0

    goto :goto_c

    .line 685
    :cond_11
    const/4 v9, 0x0

    goto :goto_d

    .line 693
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 719
    .restart local v4       #mustNotify:Z
    :cond_13
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v11, :cond_4

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->mWakeUpInGoToSleepReasonUser:Z

    if-eqz v11, :cond_4

    .line 725
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto/16 :goto_3

    .line 728
    :cond_14
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v11, :cond_15

    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_15

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_15

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->mForceDisableProximitySensor:Z

    if-nez v11, :cond_15

    .line 733
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_3

    .line 734
    :cond_15
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensorInAsleep:Z

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-nez v11, :cond_16

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->mScreenOnByReleaseProxWakeLock:Z

    if-nez v11, :cond_16

    .line 738
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 739
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v11, :cond_4

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 741
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 742
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 743
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    goto/16 :goto_3

    .line 745
    :cond_16
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_17

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-nez v11, :cond_17

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->mScreenOnByReleaseProxWakeLock:Z

    if-nez v11, :cond_17

    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-nez v11, :cond_17

    .line 750
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensorInAsleep:Z

    if-nez v11, :cond_4

    .line 754
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 755
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto/16 :goto_3

    .line 759
    :cond_17
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 760
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_3

    .line 768
    :cond_18
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_4

    .line 773
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 802
    .restart local v5       #slow:Z
    .restart local v6       #slowRate:I
    .restart local v7       #target:I
    :cond_1a
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    if-eqz v11, :cond_1e

    .line 803
    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mPrevScreenAutoBrightness:I

    if-le v11, v7, :cond_1c

    const/16 v6, 0x41

    .line 807
    :goto_e
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mFirstReceived:Z

    if-eqz v11, :cond_1b

    .line 808
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mFirstReceived:Z

    .line 809
    mul-int/lit8 v6, v6, 0x2

    .line 812
    :cond_1b
    if-eqz v8, :cond_1d

    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v11, :cond_1d

    const/4 v1, 0x0

    .restart local v1       #animateMode:I
    :goto_f
    goto/16 :goto_6

    .line 803
    .end local v1           #animateMode:I
    :cond_1c
    const/16 v6, 0x7f

    goto :goto_e

    .line 812
    :cond_1d
    const/4 v1, 0x1

    goto :goto_f

    .line 815
    :cond_1e
    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v11, :cond_1f

    .line 816
    const/4 v1, 0x0

    .restart local v1       #animateMode:I
    goto/16 :goto_6

    .line 818
    .end local v1           #animateMode:I
    :cond_1f
    const/4 v1, 0x1

    .restart local v1       #animateMode:I
    goto/16 :goto_6

    .line 829
    .end local v1           #animateMode:I
    .end local v5           #slow:Z
    .end local v7           #target:I
    :cond_20
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v11, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 830
    .restart local v7       #target:I
    const/4 v5, 0x0

    .line 831
    .restart local v5       #slow:Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 832
    const/4 v1, 0x0

    .restart local v1       #animateMode:I
    goto/16 :goto_7

    .line 844
    :cond_21
    if-eqz v10, :cond_9

    .line 846
    const/4 v5, 0x0

    .line 847
    const/4 v1, 0x1

    .line 848
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG_ABS:Z

    if-eqz v11, :cond_9

    const-string v11, "DisplayPowerController"

    const-string v12, "updatePowerState(NotABS) wasDIM"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 852
    :cond_22
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG_ABS:Z

    if-eqz v11, :cond_23

    const-string v11, "DisplayPowerController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ABS Before target = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " and current = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->currentScreenBrightness()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_23
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_25

    .line 854
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG_ABS:Z

    if-eqz v11, :cond_24

    const-string v11, "DisplayPowerController"

    const-string v12, "updatePowerState(ABS) DIM"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_24
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->currentScreenBrightness()I

    move-result v11

    iput v11, p0, Lcom/android/server/power/DisplayPowerController;->currentAbsLevel:I

    .line 857
    add-int/lit8 v11, v7, -0xa

    iget v12, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 858
    const/4 v5, 0x0

    .line 859
    const/4 v1, 0x1

    goto/16 :goto_8

    .line 860
    :cond_25
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_29

    .line 861
    sget-object v11, Lcom/android/server/power/DisplayPowerController;->ADAPTATION_DIM_LIMIT_MAP:[I

    aget v0, v11, v7

    .line 862
    .local v0, abs_target:I
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->currentScreenBrightness()I

    move-result v2

    .line 863
    .local v2, current_level:I
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG_ABS:Z

    if-eqz v11, :cond_26

    const-string v11, "DisplayPowerController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Work ABS. target="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", current="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", abs_target="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_26
    if-lt v7, v2, :cond_28

    if-lt v7, v0, :cond_28

    if-gt v0, v2, :cond_28

    .line 865
    move v7, v0

    .line 866
    const/4 v5, 0x1

    .line 867
    const/4 v6, 0x1

    .line 868
    const/4 v1, 0x1

    .line 872
    :cond_27
    :goto_10
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG_ABS:Z

    if-eqz v11, :cond_9

    const-string v11, "DisplayPowerController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updatePowerState(ABS) ABS after Target = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 870
    :cond_28
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG_ABS:Z

    if-eqz v11, :cond_27

    const-string v11, "DisplayPowerController"

    const-string v12, "Don\'t work ABS. Follow brightness target"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 873
    .end local v0           #abs_target:I
    .end local v2           #current_level:I
    :cond_29
    if-eqz v10, :cond_2a

    .line 875
    const/4 v5, 0x0

    .line 876
    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->currentAbsLevel:I

    .line 877
    const/4 v1, 0x1

    .line 878
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG_ABS:Z

    if-eqz v11, :cond_9

    const-string v11, "DisplayPowerController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updatePowerState(ABS) wasDim = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 879
    :cond_2a
    if-eqz v9, :cond_9

    .line 881
    const/4 v5, 0x0

    .line 882
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->currentScreenBrightness()I

    move-result v7

    .line 883
    const/4 v1, 0x1

    .line 884
    sget-boolean v11, Lcom/android/server/power/DisplayPowerController;->DEBUG_ABS:Z

    if-eqz v11, :cond_9

    const-string v11, "DisplayPowerController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updatePowerState(ABS) wasABS = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 888
    :cond_2b
    const/16 v11, 0xc8

    goto/16 :goto_9

    .line 896
    .end local v1           #animateMode:I
    .end local v5           #slow:Z
    .end local v6           #slowRate:I
    .end local v7           #target:I
    :cond_2c
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 897
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->mDoABS:Z

    if-eqz v11, :cond_a

    .line 898
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->currentScreenBrightness()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/power/RampAnimator;->noAnimateTo(I)Z

    goto/16 :goto_a

    .line 921
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 936
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v12}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 937
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v11}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    goto/16 :goto_b

    .line 944
    :cond_2e
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v11

    if-nez v11, :cond_c

    .line 945
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v11

    if-nez v11, :cond_c

    .line 946
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v11}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2f

    .line 947
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 948
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    goto/16 :goto_b

    .line 949
    :cond_2f
    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    if-eqz v11, :cond_30

    const/4 v11, 0x0

    :goto_11
    invoke-virtual {v12, v11}, Lcom/android/server/power/DisplayPowerState;->prepareElectronBeam(I)Z

    move-result v11

    if-eqz v11, :cond_31

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v11}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_31

    .line 954
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_b

    .line 949
    :cond_30
    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffAnimationMode:I

    goto :goto_11

    .line 956
    :cond_31
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->end()V

    goto/16 :goto_b

    .line 979
    :catchall_1
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11
.end method

.method private static wantScreenOn(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 1717
    packed-switch p0, :pswitch_data_0

    .line 1723
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1721
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    .line 1620
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1621
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1622
    const-string v0, "Display Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1632
    const-string v0, "Display Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$6;-><init>(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1647
    return-void

    .line 1629
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Lcom/android/server/power/DisplayPowerRequest;Z)Z
    .locals 4
    .parameter "request"
    .parameter "waitForNegativeProximity"

    .prologue
    .line 574
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 575
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 580
    const/4 v0, 0x0

    .line 582
    .local v0, changed:Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    .line 584
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 585
    const/4 v0, 0x1

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_5

    .line 589
    new-instance v1, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    .line 590
    const/4 v0, 0x1

    .line 596
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 597
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 600
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_4

    .line 601
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 602
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 605
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    .line 591
    :cond_5
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 592
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 593
    const/4 v0, 0x1

    goto :goto_0

    .line 606
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestRecoverScreenBrightness(I)V
    .locals 3
    .parameter "currentBrightness"

    .prologue
    const/4 v2, 0x4

    .line 1727
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1729
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1730
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1731
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1732
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1733
    return-void
.end method
