.class public Lcom/android/server/power/KnockOnPowerController;
.super Ljava/lang/Object;
.source "KnockOnPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;,
        Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;,
        Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;,
        Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;,
        Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;,
        Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;,
        Lcom/android/server/power/KnockOnPowerController$DriverNotifier;,
        Lcom/android/server/power/KnockOnPowerController$LPWGResult;,
        Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;,
        Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;,
        Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;,
        Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;,
        Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;,
        Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_SENSOR_TIMEOUT_MS:J = 0x2bcL

.field private static final COVERTYPE_CIRCLE:I = 0x3

.field private static final COVERTYPE_COVER:I = 0x0

.field private static final COVERTYPE_LOLLIPOP:I = 0x2

.field private static final COVERTYPE_NONE:I = 0x5

.field private static final COVERTYPE_VIEW:I = 0x1

.field public static final DBG:Z = true

.field private static FAILED_NO_MATCHED:I = 0x0

.field private static final ILLUMINANCE_DARK:I = 0x0

.field private static final ILLUMINANCE_LIGHT:I = 0x1

.field private static final KNOCKON_PROXIMITY:I = 0x1fa2649

.field private static final LPWG_DATA_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/lpwg_data"

.field public static final LPWG_DISABLED:I = 0x0

.field public static final LPWG_DISABLED_BY_SENSOR:I = 0x0

.field public static final LPWG_DOUBLE_TAP:I = 0x1

.field public static final LPWG_ENABLED_BY_SENSOR:I = 0x1

.field private static final LPWG_NOTIFY_LEGACY_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/touch_gesture"

.field private static final LPWG_NOTIFY_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/lpwg_notify"

.field public static final LPWG_PASSWORD:I = 0x2

.field public static final LPWG_SIGNATURE:I = 0x3

.field private static final LPWG_UEVENT_KEY:Ljava/lang/String; = "TOUCH_GESTURE_WAKEUP"

.field private static final LPWG_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/system/lge_touch/lge_touch0"

.field private static final MSG_LPWG:I = 0x1

.field private static final MSG_USER_REMOVED:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final NOTUSER_DEBUG:Z = false

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static SUCCESS_DUPLICATED:I = 0x0

.field private static SUCCESS_NORMAL:I = 0x0

.field public static final TAG:Ljava/lang/String; = null

.field private static final TOUCH_KNOCK_ON_TYPE_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/knock_on_type"

.field private static final UEVENT_PASSWORD:Ljava/lang/String; = "PASSWORD"

.field private static final UEVENT_SIGNATURE:Ljava/lang/String; = "SIGNATURE"

.field private static final UEVENT_WAKEUP:Ljava/lang/String; = "WAKEUP"

.field private static mIsTouchKnockOn:Z

.field private static mLightSensor:Landroid/hardware/Sensor;

.field private static mMultiUserKnockCode:Z

.field private static mRotatedKnockCode:Z

.field private static mSecurityKnockon:Z

.field private static mUsingKnockonProximitySensor:Z

.field private static mUsingLightSensor:Z


# instance fields
.field private NOTIFY_FAILED_ATTEMPTS:I

.field private WAKEUP_FAILED_ATTEMPTS:I

.field private mContext:Landroid/content/Context;

.field private mCoverOpened:Z

.field private mCoverType:I

.field private mCurrentRotation:I

.field private mDeviceLCDsize:Landroid/graphics/Point;

.field private mDisplay:Landroid/view/Display;

.field private mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

.field mHelperBoost:Lcom/lge/loader/LGContextHelper;

.field private mInit:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSame1st2ndTap:Z

.field private mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mKnockCodeChecker:Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;

.field private mKnockCodeSetting:Z

.field private mKnockCodeWaker:Ljava/lang/Runnable;

.field private mKnockOnListener:Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;

.field private mKnockOnSensor:Landroid/hardware/Sensor;

.field private mKnockOnSetting:Z

.field private mKnokOnObserver:Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;

.field mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

.field private mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

.field private mLight:I

.field private mLightSensorListener:Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;

.field private mLock:Ljava/lang/Object;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

.field private mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

.field private mOrientationListener:Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mPasswordLength:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreLight:I

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorListener:Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mRunnableCheckLight:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingUserInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportSmartCover:Z

.field private mTimeAfterSleep:J

.field private mTimeToSleep:J

.field private mTouchedPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

.field private mWakeupReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const-class v0, Lcom/android/server/power/KnockOnPowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    .line 76
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/KnockOnPowerController;->NOTUSER_DEBUG:Z

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/KnockOnPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 98
    const/4 v0, 0x2

    sput v0, Lcom/android/server/power/KnockOnPowerController;->SUCCESS_DUPLICATED:I

    .line 99
    sput v1, Lcom/android/server/power/KnockOnPowerController;->SUCCESS_NORMAL:I

    .line 100
    sput v2, Lcom/android/server/power/KnockOnPowerController;->FAILED_NO_MATCHED:I

    .line 133
    sput-boolean v2, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z

    .line 135
    sput-boolean v2, Lcom/android/server/power/KnockOnPowerController;->mSecurityKnockon:Z

    .line 136
    sput-boolean v2, Lcom/android/server/power/KnockOnPowerController;->mRotatedKnockCode:Z

    .line 137
    sput-boolean v2, Lcom/android/server/power/KnockOnPowerController;->mMultiUserKnockCode:Z

    .line 138
    sput-boolean v2, Lcom/android/server/power/KnockOnPowerController;->mUsingLightSensor:Z

    .line 139
    sput-boolean v2, Lcom/android/server/power/KnockOnPowerController;->mUsingKnockonProximitySensor:Z

    return-void

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/SensorManager;)V
    .locals 7
    .parameter "context"
    .parameter "looper"
    .parameter "sensorManager"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSensor:Landroid/hardware/Sensor;

    .line 80
    iput-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 81
    iput-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 87
    iput-boolean v3, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeSetting:Z

    .line 93
    iput-boolean v3, p0, Lcom/android/server/power/KnockOnPowerController;->mInit:Z

    .line 96
    iput-boolean v5, p0, Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z

    .line 108
    iput-boolean v3, p0, Lcom/android/server/power/KnockOnPowerController;->mSupportSmartCover:Z

    .line 109
    iput v6, p0, Lcom/android/server/power/KnockOnPowerController;->mCoverType:I

    .line 115
    iput v4, p0, Lcom/android/server/power/KnockOnPowerController;->mProximity:I

    .line 140
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mLock:Ljava/lang/Object;

    .line 165
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/power/KnockOnPowerController;->WAKEUP_FAILED_ATTEMPTS:I

    .line 167
    iput v6, p0, Lcom/android/server/power/KnockOnPowerController;->NOTIFY_FAILED_ATTEMPTS:I

    .line 168
    iput-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    .line 169
    iput-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 174
    iput v4, p0, Lcom/android/server/power/KnockOnPowerController;->mPreLight:I

    .line 175
    iput v3, p0, Lcom/android/server/power/KnockOnPowerController;->mLight:I

    .line 178
    iput v4, p0, Lcom/android/server/power/KnockOnPowerController;->mCurrentRotation:I

    .line 179
    new-instance v1, Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;-><init>(Lcom/android/server/power/KnockOnPowerController;Lcom/android/server/power/KnockOnPowerController$1;)V

    iput-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mSettingUserInfo:Ljava/util/ArrayList;

    .line 185
    iput v5, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    .line 369
    new-instance v1, Lcom/android/server/power/KnockOnPowerController$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/KnockOnPowerController$2;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 642
    new-instance v1, Lcom/android/server/power/KnockOnPowerController$3;

    invoke-direct {v1, p0}, Lcom/android/server/power/KnockOnPowerController$3;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mRunnableCheckLight:Ljava/lang/Runnable;

    .line 710
    new-instance v1, Lcom/android/server/power/KnockOnPowerController$4;

    invoke-direct {v1, p0}, Lcom/android/server/power/KnockOnPowerController$4;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mRunnable:Ljava/lang/Runnable;

    .line 1149
    new-instance v1, Lcom/android/server/power/KnockOnPowerController$6;

    invoke-direct {v1, p0}, Lcom/android/server/power/KnockOnPowerController$6;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeWaker:Ljava/lang/Runnable;

    .line 189
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    .line 190
    iput-object p3, p0, Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 191
    new-instance v1, Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    invoke-direct {v1, p0, p2}, Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;-><init>(Lcom/android/server/power/KnockOnPowerController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->init()V

    .line 197
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/KnockOnPowerController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/server/power/KnockOnPowerController;->mTimeToSleep:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/KnockOnPowerController;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/KnockOnPowerController;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/KnockOnPowerController;->sendIntent(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/power/KnockOnPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mUsingLightSensor:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/KnockOnPowerController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/KnockOnPowerController;->setLightSensorEnabled(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/power/KnockOnPowerController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/KnockOnPowerController;->setProximitySensorEnabled(Z)V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mUsingKnockonProximitySensor:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/KnockOnPowerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/power/KnockOnPowerController;->mProximity:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/power/KnockOnPowerController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/server/power/KnockOnPowerController;->mProximity:I

    return p1
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/power/KnockOnPowerController;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/KnockOnPowerController;->verifyFailedAttempts(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/KnockOnPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/KnockOnPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeSetting:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mRunnableCheckLight:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$DriverNotifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/KnockOnPowerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLight:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/power/KnockOnPowerController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/server/power/KnockOnPowerController;->mLight:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/power/KnockOnPowerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/power/KnockOnPowerController;->mPreLight:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/power/KnockOnPowerController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/server/power/KnockOnPowerController;->mPreLight:I

    return p1
.end method

.method static synthetic access$2900()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/KnockOnPowerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mOrientationSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/power/KnockOnPowerController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/power/KnockOnPowerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/power/KnockOnPowerController;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeWaker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/power/KnockOnPowerController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/KnockOnPowerController;->switchUser(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mOrientationListener:Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/power/KnockOnPowerController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mTouchedPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/power/KnockOnPowerController;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/KnockOnPowerController;->wakeUpByKnockCodeLocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/power/KnockOnPowerController;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mDeviceLCDsize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/KnockOnPowerController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/KnockOnPowerController;->reportSuccessfulPasswordAttempt(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/power/KnockOnPowerController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/power/KnockOnPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mSupportSmartCover:Z

    return v0
.end method

.method static synthetic access$4200()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/android/server/power/KnockOnPowerController;->FAILED_NO_MATCHED:I

    return v0
.end method

.method static synthetic access$4300()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mMultiUserKnockCode:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/power/KnockOnPowerController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mSettingUserInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4500()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/android/server/power/KnockOnPowerController;->SUCCESS_DUPLICATED:I

    return v0
.end method

.method static synthetic access$4600()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/android/server/power/KnockOnPowerController;->SUCCESS_NORMAL:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/power/KnockOnPowerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->registerUserSwitchObserver()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->reportSuccessfulPasswordAttempt()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->keyguardDone()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->unregisterUserSwitchObserver()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/KnockOnPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mInit:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/power/KnockOnPowerController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/server/power/KnockOnPowerController;->mInit:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/power/KnockOnPowerController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/server/power/KnockOnPowerController;->mTimeAfterSleep:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/server/power/KnockOnPowerController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/server/power/KnockOnPowerController;->mTimeAfterSleep:J

    return-wide p1
.end method

.method private getCurrentUserId()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1692
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1693
    .local v1, ui:Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1695
    .end local v1           #ui:Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    return v2

    .line 1694
    :catch_0
    move-exception v0

    .line 1695
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getFailedAttempts()I
    .locals 2

    .prologue
    .line 1282
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->getCurrentUserId()I

    move-result v0

    .line 1283
    .local v0, userId:I
    invoke-direct {p0, v0}, Lcom/android/server/power/KnockOnPowerController;->getFailedAttempts(I)I

    move-result v1

    return v1
.end method

.method private getFailedAttempts(I)I
    .locals 3
    .parameter "userId"

    .prologue
    .line 1287
    const/4 v0, 0x0

    .line 1288
    .local v0, attempts:I
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v2, :cond_0

    .line 1289
    sget-boolean v2, Lcom/android/server/power/KnockOnPowerController;->mMultiUserKnockCode:Z

    if-eqz v2, :cond_1

    .line 1290
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 1298
    :cond_0
    :goto_0
    return v0

    .line 1292
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtilsEx;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 1293
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 1294
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    goto :goto_0
.end method

.method private getFirstUserHasKnockCode()I
    .locals 6

    .prologue
    .line 1207
    const/4 v2, -0x1

    .line 1208
    .local v2, userId:I
    const/4 v1, 0x0

    .line 1209
    .local v1, id:I
    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 1210
    .local v3, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_0

    .line 1211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1212
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v1, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1213
    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockScreenType(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 1215
    move v2, v1

    .line 1220
    .end local v0           #i:I
    :cond_0
    return v2

    .line 1211
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTouchedPosition()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1658
    const-string v3, ""

    .line 1659
    .local v3, line:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1660
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    .local v5, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/devices/virtual/input/lge_touch/lpwg_data"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1664
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 1665
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1666
    .local v6, st:Ljava/util/StringTokenizer;
    new-instance v4, Landroid/graphics/Point;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 1667
    .local v4, p:Landroid/graphics/Point;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Landroid/graphics/Point;->x:I

    .line 1668
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Landroid/graphics/Point;->y:I

    .line 1669
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1671
    sget-object v7, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v8, "error : mal-formatted touch position"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    .end local v4           #p:Landroid/graphics/Point;
    .end local v6           #st:Ljava/util/StringTokenizer;
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1681
    if-eqz v1, :cond_2

    .line 1682
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v0, v1

    .line 1686
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_3
    :goto_0
    return-object v5

    .line 1684
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    move-object v0, v1

    .line 1685
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 1677
    :catch_1
    move-exception v2

    .line 1678
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v7, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception in getTouchPosition "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1681
    if-eqz v0, :cond_3

    .line 1682
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1684
    :catch_2
    move-exception v7

    goto :goto_0

    .line 1680
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1681
    :goto_2
    if-eqz v0, :cond_4

    .line 1682
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1684
    :cond_4
    :goto_3
    throw v7

    :catch_3
    move-exception v8

    goto :goto_3

    .line 1680
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 1677
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getUsersHaveKnockCode()I
    .locals 6

    .prologue
    .line 1227
    const/4 v1, 0x0

    .line 1228
    .local v1, num:I
    iget-object v3, p0, Lcom/android/server/power/KnockOnPowerController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1229
    .local v2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v2, :cond_1

    .line 1230
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1231
    iget-object v3, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v3, :cond_0

    sget-object v4, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockScreenType(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    move-result-object v3

    if-ne v4, v3, :cond_0

    .line 1233
    add-int/lit8 v1, v1, 0x1

    .line 1230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    .end local v0           #i:I
    :cond_1
    return v1
.end method

.method private hasCurrentUserKnockCode()Z
    .locals 4

    .prologue
    .line 1244
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->getCurrentUserId()I

    move-result v0

    .line 1245
    .local v0, id:I
    sget-object v2, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    iget-object v3, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockScreenType(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1246
    .local v1, ret:Z
    :goto_0
    return v1

    .line 1245
    .end local v1           #ret:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 200
    sget-object v11, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v12, "KnockOnService init ..."

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 203
    .local v6, resources:Landroid/content/res/Resources;
    iput-boolean v9, p0, Lcom/android/server/power/KnockOnPowerController;->mInit:Z

    .line 204
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/power/KnockOnPowerController;->mTimeToSleep:J

    iput-wide v11, p0, Lcom/android/server/power/KnockOnPowerController;->mTimeAfterSleep:J

    .line 209
    :try_start_0
    const-string v11, "/sys/devices/virtual/input/lge_touch/knock_on_type"

    invoke-direct {p0, v11}, Lcom/android/server/power/KnockOnPowerController;->readValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 210
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    sget-object v11, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mIsTouchKnockOn = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const v11, 0x206004d

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/power/KnockOnPowerController;->mSecurityKnockon:Z

    .line 221
    const v11, 0x2060057

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/power/KnockOnPowerController;->mRotatedKnockCode:Z

    .line 222
    const v11, 0x2060058

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/power/KnockOnPowerController;->mMultiUserKnockCode:Z

    .line 223
    const v11, 0x206005a

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/power/KnockOnPowerController;->mUsingLightSensor:Z

    .line 224
    const v11, 0x206005c

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/power/KnockOnPowerController;->mUsingKnockonProximitySensor:Z

    .line 226
    sget-boolean v11, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z

    if-nez v11, :cond_0

    .line 227
    iget-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v12, 0x19

    invoke-virtual {v11, v12}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSensor:Landroid/hardware/Sensor;

    .line 230
    :cond_0
    iget-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.hardware.sensor.proximity"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 231
    iget-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 236
    :goto_1
    sget-boolean v11, Lcom/android/server/power/KnockOnPowerController;->mUsingKnockonProximitySensor:Z

    if-eqz v11, :cond_1

    .line 237
    iget-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const v12, 0x1fa2649

    invoke-virtual {v11, v12}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 238
    .local v5, knockOnProximitySensor:Landroid/hardware/Sensor;
    if-eqz v5, :cond_e

    .line 239
    iput-object v5, p0, Lcom/android/server/power/KnockOnPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 240
    sput-boolean v10, Lcom/android/server/power/KnockOnPowerController;->mUsingLightSensor:Z

    .line 241
    sget-object v11, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v12, "this device support knock on proximity sensor!"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v5           #knockOnProximitySensor:Landroid/hardware/Sensor;
    :cond_1
    :goto_2
    sget-boolean v11, Lcom/android/server/power/KnockOnPowerController;->mUsingLightSensor:Z

    if-eqz v11, :cond_2

    .line 248
    iget-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.hardware.sensor.light"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 249
    iget-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v11

    sput-object v11, Lcom/android/server/power/KnockOnPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 254
    :cond_2
    :goto_3
    sget-boolean v11, Lcom/android/server/power/KnockOnPowerController;->mRotatedKnockCode:Z

    if-eqz v11, :cond_3

    .line 255
    iget-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v11, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 257
    :cond_3
    const v11, 0x2060017

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_4

    const v11, 0x2060015

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_4

    const v11, 0x2060016

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_4

    const v11, 0x206004f

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_4
    :goto_4
    iput-boolean v9, p0, Lcom/android/server/power/KnockOnPowerController;->mSupportSmartCover:Z

    .line 262
    new-instance v9, Lcom/android/server/power/KnockOnPowerController$1;

    invoke-direct {v9, p0}, Lcom/android/server/power/KnockOnPowerController$1;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    .line 281
    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mUserManager:Landroid/os/UserManager;

    .line 282
    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    const-string v11, "power"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mPowerManager:Landroid/os/PowerManager;

    .line 285
    :try_start_1
    new-instance v9, Lcom/lge/loader/LGContextHelper;

    iget-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 286
    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    if-eqz v9, :cond_5

    .line 287
    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v11, "lgpowermanagerhelper"

    invoke-virtual {v9, v11}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    :cond_5
    :goto_5
    const/4 v7, 0x0

    .line 296
    .local v7, wakeUpFailedAttempts:I
    const v9, 0x20b001a

    :try_start_2
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 300
    :goto_6
    if-eqz v7, :cond_6

    .line 301
    iput v7, p0, Lcom/android/server/power/KnockOnPowerController;->WAKEUP_FAILED_ATTEMPTS:I

    .line 304
    :cond_6
    new-instance v9, Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;

    invoke-direct {v9, p0}, Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mKnokOnObserver:Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;

    .line 305
    new-instance v9, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    invoke-direct {v9, p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    .line 306
    new-instance v9, Lcom/android/internal/widget/LockPatternUtilsEx;

    iget-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Lcom/android/internal/widget/LockPatternUtilsEx;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    .line 307
    new-instance v9, Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;

    invoke-direct {v9, p0}, Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeChecker:Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;

    .line 308
    new-instance v4, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;

    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeChecker:Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;

    invoke-direct {v4, p0, v9}, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;-><init>(Lcom/android/server/power/KnockOnPowerController;Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;)V

    .line 309
    .local v4, kidsModeKnockCode:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    new-instance v0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;

    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeChecker:Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;

    invoke-direct {v0, p0, v9}, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;-><init>(Lcom/android/server/power/KnockOnPowerController;Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;)V

    .line 312
    .local v0, defaultKnockCode:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    sget-boolean v9, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z

    if-nez v9, :cond_7

    .line 313
    new-instance v9, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;

    invoke-direct {v9, p0}, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnListener:Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;

    .line 315
    :cond_7
    sget-boolean v9, Lcom/android/server/power/KnockOnPowerController;->mUsingLightSensor:Z

    if-eqz v9, :cond_8

    .line 316
    new-instance v9, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;

    invoke-direct {v9, p0}, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mLightSensorListener:Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;

    .line 318
    :cond_8
    new-instance v9, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;

    invoke-direct {v9, p0}, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mProximitySensorListener:Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;

    .line 319
    sget-boolean v9, Lcom/android/server/power/KnockOnPowerController;->mRotatedKnockCode:Z

    if-eqz v9, :cond_9

    .line 320
    new-instance v9, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;

    invoke-direct {v9, p0}, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mOrientationListener:Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;

    .line 323
    :cond_9
    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 324
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 325
    .local v1, display:Landroid/view/Display;
    if-nez v1, :cond_a

    .line 326
    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    const-string v11, "display"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 327
    .local v2, dm:Landroid/hardware/display/DisplayManager;
    invoke-virtual {v2, v10}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 329
    .end local v2           #dm:Landroid/hardware/display/DisplayManager;
    :cond_a
    iput-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mDisplay:Landroid/view/Display;

    .line 330
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iput-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mDeviceLCDsize:Landroid/graphics/Point;

    .line 331
    if-eqz v1, :cond_11

    .line 332
    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mDeviceLCDsize:Landroid/graphics/Point;

    invoke-virtual {v1, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 337
    :goto_7
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/server/power/KnockOnPowerController;->mDeviceLCDsize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/server/power/KnockOnPowerController;->mDeviceLCDsize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10, v11}, Lcom/android/server/power/PasswordConverter;->setDisplay(III)V

    .line 339
    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v9, :cond_12

    .line 340
    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    invoke-virtual {v9}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->init()V

    .line 345
    :goto_8
    sget-boolean v9, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mKnokOnObserver:Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;

    if-eqz v9, :cond_b

    .line 346
    sget-object v9, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v10, "knockon startObserving"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController;->mKnokOnObserver:Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;

    const-string v10, "DEVPATH=/devices/system/lge_touch/lge_touch0"

    invoke-virtual {v9, v10}, Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;->startObserving(Ljava/lang/String;)V

    .line 349
    :cond_b
    return-void

    .line 212
    .end local v0           #defaultKnockCode:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    .end local v1           #display:Landroid/view/Display;
    .end local v4           #kidsModeKnockCode:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    .end local v7           #wakeUpFailedAttempts:I
    .end local v8           #wm:Landroid/view/WindowManager;
    :cond_c
    const v11, 0x2060044

    :try_start_3
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 214
    :catch_0
    move-exception v3

    .line 215
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v11, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can\'t find resource"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 233
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_d
    sget-object v11, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v12, "this device does\'nt support proximity sensor!"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 243
    .restart local v5       #knockOnProximitySensor:Landroid/hardware/Sensor;
    :cond_e
    sget-object v11, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v12, "this device does\'nt support knock on proximity sensor!"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 251
    .end local v5           #knockOnProximitySensor:Landroid/hardware/Sensor;
    :cond_f
    sget-object v11, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v12, "this device does\'nt support light sensor!"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_10
    move v9, v10

    .line 257
    goto/16 :goto_4

    .line 289
    :catch_1
    move-exception v3

    .line 290
    .local v3, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v11, "can\'t get boost loader!"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 297
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v7       #wakeUpFailedAttempts:I
    :catch_2
    move-exception v3

    .line 298
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v9, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can\'t find resource"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 334
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #defaultKnockCode:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    .restart local v1       #display:Landroid/view/Display;
    .restart local v4       #kidsModeKnockCode:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    .restart local v8       #wm:Landroid/view/WindowManager;
    :cond_11
    sget-object v9, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v10, "can\'t get default display"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 342
    :cond_12
    sget-object v9, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v10, "warning : driver not be set init value!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method private isSimPinSecure()Z
    .locals 3

    .prologue
    .line 1751
    const/4 v0, 0x0

    .line 1752
    .local v0, secured:Z
    const-string v1, "simpin_secure"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1753
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v2, "SimPin secured"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/4 v0, 0x1

    .line 1756
    :cond_0
    return v0
.end method

.method private isVerifyFailedAttempts()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1270
    const/4 v1, 0x0

    .line 1271
    .local v1, verified:Z
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->getUsersHaveKnockCode()I

    move-result v0

    .line 1272
    .local v0, num:I
    sget-boolean v2, Lcom/android/server/power/KnockOnPowerController;->mMultiUserKnockCode:Z

    if-eqz v2, :cond_1

    if-gt v0, v3, :cond_0

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->hasCurrentUserKnockCode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1273
    :cond_0
    sget-object v2, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v3, "bypass verifying failed attempts"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/4 v1, 0x1

    .line 1278
    :goto_0
    return v1

    .line 1276
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->verifyFailedAttempts()Z

    move-result v1

    goto :goto_0
.end method

.method private keyguardDone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1171
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 1176
    :goto_0
    return-void

    .line 1174
    :cond_0
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v1, "error : while getting keyguardservice!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    .line 946
    const-string v3, ""

    .line 947
    .local v3, value:Ljava/lang/String;
    const/4 v1, 0x0

    .line 949
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 950
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 951
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 961
    if-eqz v2, :cond_0

    .line 962
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 964
    :cond_0
    const/4 v1, 0x0

    .line 969
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_0
    if-nez v3, :cond_1

    .line 970
    const-string v3, ""

    .line 972
    :cond_1
    return-object v3

    .line 965
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 966
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 968
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 952
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 953
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

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

    .line 961
    if-eqz v1, :cond_2

    .line 962
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 964
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 965
    :catch_2
    move-exception v0

    .line 966
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 957
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 958
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot read file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 961
    if-eqz v1, :cond_3

    .line 962
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 964
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 965
    :catch_4
    move-exception v0

    .line 966
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 960
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 961
    :goto_3
    if-eqz v1, :cond_4

    .line 962
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 964
    :cond_4
    const/4 v1, 0x0

    .line 967
    :goto_4
    throw v4

    .line 965
    :catch_5
    move-exception v0

    .line 966
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v6, "I/O exception on close after exception"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 960
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_3

    .line 957
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 952
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private registerUserSwitchObserver()V
    .locals 3

    .prologue
    .line 1701
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1705
    :goto_0
    return-void

    .line 1702
    :catch_0
    move-exception v0

    .line 1703
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t register user switch observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reportFailedPasswordAttempt()V
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v0, :cond_0

    .line 1194
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mMultiUserKnockCode:Z

    if-eqz v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtilsEx;->reportFailedPasswordAttempt(I)V

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->reportFailedPasswordAttempt()V

    goto :goto_0
.end method

.method private reportSuccessfulPasswordAttempt()V
    .locals 1

    .prologue
    .line 1179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/KnockOnPowerController;->reportSuccessfulPasswordAttempt(I)V

    .line 1180
    return-void
.end method

.method private reportSuccessfulPasswordAttempt(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v0, :cond_0

    .line 1184
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mMultiUserKnockCode:Z

    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->reportSuccessfulPasswordAttempt(I)V

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->reportSuccessfulPasswordAttempt()V

    goto :goto_0
.end method

.method private sendIntent(IZ)V
    .locals 2
    .parameter "mode"
    .parameter "result"

    .prologue
    .line 887
    const/4 v0, 0x1

    .line 888
    .local v0, wakeupReason:I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 889
    const/16 v0, 0x100

    .line 891
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/power/KnockOnPowerController;->sendIntent(IZZI)V

    .line 892
    return-void
.end method

.method private sendIntent(IZZI)V
    .locals 6
    .parameter "mode"
    .parameter "result"
    .parameter "notify"
    .parameter "wakeupReason"

    .prologue
    .line 895
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/KnockOnPowerController;->sendIntent(IZZILjava/util/ArrayList;)V

    .line 896
    return-void
.end method

.method private sendIntent(IZZILjava/util/ArrayList;)V
    .locals 3
    .parameter "mode"
    .parameter "result"
    .parameter "notify"
    .parameter "wakeupReason"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 900
    .local p5, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.ACTION_KNOCK_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .local v0, knockOnIntent:Landroid/content/Intent;
    const/high16 v1, 0x5000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 903
    const-string v1, "com.lge.intent.extra.LPWG_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 904
    const-string v1, "com.lge.intent.extra.LPWG_RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 905
    const-string v1, "com.lge.intent.extra.LPWG_FAILED_ATTEMPTS"

    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->getFailedAttempts()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 906
    const-string v1, "com.lge.intent.extra.LPWG_NOTIFY_USER"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 907
    const-string v1, "com.lge.intent.extra.LPWG_WAKEUP_REASON"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    const-string v1, "com.lge.intent.extra.LPWG_MATCHED_USES"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 910
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 911
    return-void
.end method

.method private setLightSensorEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLightSensorListener:Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;

    if-eqz v0, :cond_0

    .line 542
    if-eqz p1, :cond_1

    .line 543
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLightSensorListener:Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;

    invoke-virtual {v0}, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->enable()V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLightSensorListener:Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;

    invoke-virtual {v0}, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->disable()V

    goto :goto_0
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mProximitySensorListener:Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;

    if-eqz v0, :cond_0

    .line 532
    if-eqz p1, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mProximitySensorListener:Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;

    invoke-virtual {v0}, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->enable()V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mProximitySensorListener:Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;

    invoke-virtual {v0}, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->disable()V

    goto :goto_0
.end method

.method private switchUser(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 1716
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchUser:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    :goto_0
    return-void

    .line 1719
    :catch_0
    move-exception v0

    .line 1720
    .local v0, re:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t switch user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterUserSwitchObserver()V
    .locals 3

    .prologue
    .line 1709
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    :goto_0
    return-void

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t unregister user switch observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private verifyFailedAttempts()Z
    .locals 1

    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->getCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/power/KnockOnPowerController;->verifyFailedAttempts(I)Z

    move-result v0

    return v0
.end method

.method private verifyFailedAttempts(I)Z
    .locals 5
    .parameter "userId"

    .prologue
    .line 1257
    const/4 v1, 0x0

    .line 1258
    .local v1, verified:Z
    invoke-direct {p0, p1}, Lcom/android/server/power/KnockOnPowerController;->getFailedAttempts(I)I

    move-result v0

    .line 1259
    .local v0, failedAttempts:I
    iget v2, p0, Lcom/android/server/power/KnockOnPowerController;->WAKEUP_FAILED_ATTEMPTS:I

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    .line 1260
    :goto_0
    sget-object v2, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verity failed attempts ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return v1

    .line 1259
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private wakeUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1139
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1143
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/power/KnockOnPowerController;->setProximitySensorEnabled(Z)V

    .line 1144
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mUsingLightSensor:Z

    if-eqz v0, :cond_1

    .line 1145
    invoke-direct {p0, v3}, Lcom/android/server/power/KnockOnPowerController;->setLightSensorEnabled(Z)V

    .line 1147
    :cond_1
    return-void
.end method

.method private wakeUpByKnockCode(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p1, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mRotatedKnockCode:Z

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeWaker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1048
    :goto_0
    return-void

    .line 1046
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/KnockOnPowerController;->wakeUpByKnockCodeLocked(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private wakeUpByKnockCodeFailedLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1083
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->hasCurrentUserKnockCode()Z

    move-result v1

    .line 1084
    .local v1, hasThisUserKnockCode:Z
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->getUsersHaveKnockCode()I

    move-result v4

    .line 1085
    .local v4, num:I
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->verifyFailedAttempts()Z

    move-result v5

    .line 1086
    .local v5, verified:Z
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    .line 1087
    sget-boolean v7, Lcom/android/server/power/KnockOnPowerController;->mMultiUserKnockCode:Z

    if-eqz v7, :cond_5

    if-eqz v1, :cond_0

    if-nez v5, :cond_5

    .line 1088
    :cond_0
    if-nez v1, :cond_1

    .line 1089
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    .line 1091
    :cond_1
    if-nez v5, :cond_2

    .line 1092
    iput v9, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    .line 1095
    :cond_2
    iget v7, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    invoke-direct {p0, v9, v8, v8, v7}, Lcom/android/server/power/KnockOnPowerController;->sendIntent(IZZI)V

    .line 1096
    if-nez v1, :cond_3

    .line 1097
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->getFirstUserHasKnockCode()I

    move-result v2

    .line 1098
    .local v2, id:I
    const/4 v7, -0x1

    if-eq v7, v2, :cond_3

    .line 1099
    iget-object v7, p0, Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    new-instance v8, Lcom/android/server/power/KnockOnPowerController$5;

    invoke-direct {v8, p0, v2}, Lcom/android/server/power/KnockOnPowerController$5;-><init>(Lcom/android/server/power/KnockOnPowerController;I)V

    invoke-virtual {v7, v8}, Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1107
    .end local v2           #id:I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->wakeUp()V

    .line 1133
    :cond_4
    :goto_0
    return-void

    .line 1109
    :cond_5
    iget-object v7, p0, Lcom/android/server/power/KnockOnPowerController;->mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    invoke-virtual {v7}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->setDelay()V

    .line 1110
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->reportFailedPasswordAttempt()V

    .line 1111
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->getFailedAttempts()I

    move-result v0

    .line 1114
    .local v0, failedAttempts:I
    const/4 v3, 0x0

    .line 1115
    .local v3, notify:Z
    const/4 v6, 0x0

    .line 1116
    .local v6, wakeup:Z
    iget v7, p0, Lcom/android/server/power/KnockOnPowerController;->NOTIFY_FAILED_ATTEMPTS:I

    rem-int v7, v0, v7

    if-nez v7, :cond_6

    .line 1117
    const/4 v3, 0x1

    .line 1119
    :cond_6
    iput v8, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    .line 1121
    rem-int/lit8 v7, v0, 0x5

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/android/server/power/KnockOnPowerController;->NOTIFY_FAILED_ATTEMPTS:I

    if-eq v7, v0, :cond_7

    iget v7, p0, Lcom/android/server/power/KnockOnPowerController;->WAKEUP_FAILED_ATTEMPTS:I

    if-ne v7, v0, :cond_8

    .line 1124
    :cond_7
    iput v9, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    .line 1125
    const/4 v6, 0x1

    .line 1127
    :cond_8
    iget v7, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    invoke-direct {p0, v9, v8, v3, v7}, Lcom/android/server/power/KnockOnPowerController;->sendIntent(IZZI)V

    .line 1128
    if-eqz v6, :cond_4

    .line 1129
    iget-object v7, p0, Lcom/android/server/power/KnockOnPowerController;->mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->setDelay(J)V

    .line 1130
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->wakeUp()V

    goto :goto_0
.end method

.method private wakeUpByKnockCodeLocked(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 1051
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->reset()V

    .line 1052
    invoke-static {p1}, Lcom/android/server/power/PasswordConverter;->convertPositionToPassword(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 1053
    .local v6, passwords:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1054
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->isVerifyFailedAttempts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeChecker:Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;

    invoke-virtual {v0, v6}, Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;->check(Ljava/lang/String;)Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;

    move-result-object v7

    .line 1056
    .local v7, verifiedResult:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    if-eqz v7, :cond_0

    .line 1057
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v2, "success to check passwords"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    .line 1059
    invoke-interface {v7}, Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;->getMatchedUsers()Ljava/util/ArrayList;

    move-result-object v5

    .line 1060
    .local v5, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;->launch()V

    .line 1061
    const/4 v2, 0x1

    iget v4, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/KnockOnPowerController;->sendIntent(IZZILjava/util/ArrayList;)V

    .line 1062
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->wakeUp()V

    .line 1063
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->success()V

    .line 1076
    .end local v5           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v7           #verifiedResult:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->send()V

    .line 1077
    return-void

    .line 1065
    .restart local v7       #verifiedResult:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    :cond_0
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v1, "fail to check passwords"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->wakeUpByKnockCodeFailedLocked()V

    goto :goto_0

    .line 1069
    .end local v7           #verifiedResult:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    :cond_1
    iput v1, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    .line 1070
    iget v0, p0, Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/android/server/power/KnockOnPowerController;->sendIntent(IZZI)V

    .line 1071
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->wakeUp()V

    goto :goto_0

    .line 1074
    :cond_2
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v1, "converted password is null "

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wakeUpByKnockOn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1028
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->reset()V

    .line 1029
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/KnockOnPowerController;->mTimeToSleep:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/KnockOnPowerController;->mTimeAfterSleep:J

    .line 1031
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LPWG WAKEUP isScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TimeAfterSleep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/KnockOnPowerController;->mTimeAfterSleep:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/KnockOnPowerController;->mTimeAfterSleep:J

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1035
    invoke-direct {p0, v4, v4}, Lcom/android/server/power/KnockOnPowerController;->sendIntent(IZ)V

    .line 1036
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->wakeUp()V

    .line 1037
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->success()V

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->send()V

    .line 1040
    return-void
.end method

.method private writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "path"
    .parameter "value"

    .prologue
    .line 914
    const/4 v3, 0x0

    .line 915
    .local v3, result:Z
    const/4 v0, 0x0

    .line 917
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

    .line 918
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .local v1, bw:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 920
    const/4 v3, 0x1

    .line 932
    if-eqz v1, :cond_0

    .line 933
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 935
    :cond_0
    const/4 v0, 0x0

    .line 942
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    :goto_0
    return v3

    .line 936
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 937
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    .line 938
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 941
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 921
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 922
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v3, 0x0

    .line 923
    :try_start_3
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

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

    .line 932
    if-eqz v0, :cond_1

    .line 933
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 935
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 936
    :catch_2
    move-exception v2

    .line 937
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    .line 938
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 927
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 928
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    const/4 v3, 0x0

    .line 929
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 932
    if-eqz v0, :cond_2

    .line 933
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 935
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 936
    :catch_4
    move-exception v2

    .line 937
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    .line 938
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 931
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 932
    :goto_3
    if-eqz v0, :cond_3

    .line 933
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 935
    :cond_3
    const/4 v0, 0x0

    .line 940
    :goto_4
    throw v4

    .line 936
    :catch_5
    move-exception v2

    .line 937
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v3, 0x0

    .line 938
    sget-object v5, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v6, "I/O exception on close after exception"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 931
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 927
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 921
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
.method handleLPWG(Ljava/lang/String;)V
    .locals 3
    .parameter "uev"

    .prologue
    .line 996
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-eqz v1, :cond_1

    .line 997
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I

    .line 1001
    :goto_0
    if-eqz p1, :cond_0

    .line 1002
    const-string v1, "WAKEUP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1003
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->wakeUpByKnockOn()V

    .line 1025
    :cond_0
    :goto_1
    return-void

    .line 999
    :cond_1
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v2, "can\'t boost in wakeup by knockon"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1004
    :cond_2
    const-string v1, "PASSWORD"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1005
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v2, "LPWG PASSWORD"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1007
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->wakeUp()V

    .line 1008
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    invoke-virtual {v1}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->send()V

    goto :goto_1

    .line 1011
    :cond_3
    sget-boolean v1, Lcom/android/server/power/KnockOnPowerController;->mRotatedKnockCode:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mOrientationListener:Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;

    if-eqz v1, :cond_4

    .line 1012
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mOrientationListener:Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;

    invoke-virtual {v1}, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->enable()V

    .line 1014
    :cond_4
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController;->getTouchedPosition()Ljava/util/ArrayList;

    move-result-object v0

    .line 1015
    .local v0, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1016
    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mTouchedPoints:Ljava/util/ArrayList;

    .line 1017
    invoke-direct {p0, v0}, Lcom/android/server/power/KnockOnPowerController;->wakeUpByKnockCode(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1019
    :cond_5
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v2, "no touched position!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mLPWGResult:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    invoke-virtual {v1}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->send()V

    goto :goto_1

    .line 1022
    .end local v0           #points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    :cond_6
    const-string v1, "SIGNATURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public hasBootCompletedIntentPosted()Z
    .locals 3

    .prologue
    .line 1725
    const/4 v0, 0x0

    .line 1726
    .local v0, ret:Z
    const-string v1, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1727
    return v0
.end method

.method public isEnabledKidsModeSetting()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1731
    const/4 v3, 0x0

    .line 1732
    .local v3, ret:Z
    const/4 v1, 0x0

    .line 1733
    .local v1, other:Landroid/content/Context;
    const/4 v2, 0x0

    .line 1735
    .local v2, pref:Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    const-string v5, "com.lge.launcher2"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 1736
    if-eqz v1, :cond_0

    .line 1737
    const-string v4, "show_the_kids_guide"

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1744
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1745
    const-string v4, "plushome_mode_enable"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1747
    :cond_1
    return v3

    .line 1740
    :catch_0
    move-exception v0

    .line 1741
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot find package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 0
    .parameter "keyguard"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 353
    return-void
.end method

.method public updateCoverState(ZI)V
    .locals 5
    .parameter "state"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 503
    iput-boolean p1, p0, Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z

    .line 504
    iput p2, p0, Lcom/android/server/power/KnockOnPowerController;->mCoverType:I

    .line 505
    iget v1, p0, Lcom/android/server/power/KnockOnPowerController;->mCoverType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z

    .line 509
    :cond_0
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateCoverState] state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-boolean v1, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z

    if-nez v1, :cond_2

    .line 512
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v2, "cover closed, stop prroximity sensor."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    sget-boolean v1, Lcom/android/server/power/KnockOnPowerController;->mUsingLightSensor:Z

    if-eqz v1, :cond_1

    .line 514
    invoke-direct {p0, v4}, Lcom/android/server/power/KnockOnPowerController;->setLightSensorEnabled(Z)V

    .line 516
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/power/KnockOnPowerController;->setProximitySensorEnabled(Z)V

    .line 518
    const-wide/16 v1, 0x46

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/KnockOnPowerController;->mSupportSmartCover:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    if-eqz v1, :cond_3

    .line 526
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->updateCoverStateChangedLocked(ZI)V

    .line 528
    :cond_3
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCoverState Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateScreenState(Z)V
    .locals 4
    .parameter "screenOn"

    .prologue
    const/4 v3, 0x0

    .line 469
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateScreenState] screen on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-eqz p1, :cond_3

    .line 471
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z

    if-eqz v0, :cond_1

    .line 472
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mUsingLightSensor:Z

    if-eqz v0, :cond_0

    .line 473
    invoke-direct {p0, v3}, Lcom/android/server/power/KnockOnPowerController;->setLightSensorEnabled(Z)V

    .line 475
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/power/KnockOnPowerController;->setProximitySensorEnabled(Z)V

    .line 497
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->updateScreenState(Z)V

    .line 500
    :cond_2
    return-void

    .line 478
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/KnockOnPowerController;->mTimeToSleep:J

    .line 479
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mUsingLightSensor:Z

    if-eqz v0, :cond_4

    .line 480
    invoke-direct {p0, v3}, Lcom/android/server/power/KnockOnPowerController;->setLightSensorEnabled(Z)V

    .line 482
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/power/KnockOnPowerController;->setProximitySensorEnabled(Z)V

    .line 483
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeSetting:Z

    if-eqz v0, :cond_1

    .line 484
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/KnockOnPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 15

    .prologue
    .line 381
    const/4 v9, 0x0

    .line 382
    .local v9, knockOnSetting:Z
    const/4 v8, 0x0

    .line 383
    .local v8, knockCodeSetting:Z
    const/4 v11, 0x0

    .line 384
    .local v11, passwordLength:I
    const/4 v10, 0x0

    .line 385
    .local v10, owerLength:I
    const/4 v7, 0x0

    .line 387
    .local v7, isSame1st2ndTap:Z
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mMultiUserKnockCode:Z

    if-eqz v0, :cond_6

    .line 388
    const/4 v5, 0x0

    .line 389
    .local v5, len:I
    const/4 v3, 0x0

    .line 390
    .local v3, on:Z
    const/4 v4, 0x0

    .line 391
    .local v4, code:Z
    const/4 v2, 0x0

    .line 392
    .local v2, currentId:I
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 394
    .local v12, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mSettingUserInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 395
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_trun_screen_on"

    const/4 v13, 0x0

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-static {v0, v1, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v9, 0x1

    .line 397
    :goto_0
    if-eqz v12, :cond_7

    .line 398
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 399
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    .line 400
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_trun_screen_on"

    const/4 v13, 0x0

    invoke-static {v0, v1, v13, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v3, 0x1

    .line 402
    :goto_2
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOCKON_LOCK_SET"

    const/4 v13, 0x0

    invoke-static {v0, v1, v13, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v4, 0x1

    .line 404
    :goto_3
    or-int/2addr v8, v4

    .line 405
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOCKON_LENGTH_KEY"

    const/4 v13, 0x0

    invoke-static {v0, v1, v13, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 407
    if-nez v2, :cond_0

    .line 408
    move v10, v5

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOCKON_SAME_KEY"

    const/4 v13, 0x0

    invoke-static {v0, v1, v13, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_4
    or-int/2addr v7, v0

    .line 413
    if-ge v11, v5, :cond_1

    .line 414
    move v11, v5

    .line 415
    const/4 v0, 0x2

    if-lt v10, v0, :cond_1

    if-ge v10, v11, :cond_1

    .line 416
    move v11, v10

    .line 419
    :cond_1
    iget-object v13, p0, Lcom/android/server/power/KnockOnPowerController;->mSettingUserInfo:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;-><init>(Lcom/android/server/power/KnockOnPowerController;IZZI)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 395
    .end local v6           #i:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 400
    .restart local v6       #i:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 402
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 410
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 423
    .end local v2           #currentId:I
    .end local v3           #on:Z
    .end local v4           #code:Z
    .end local v5           #len:I
    .end local v6           #i:I
    .end local v12           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_trun_screen_on"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v0, v1, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const/4 v9, 0x1

    .line 425
    :goto_5
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOCKON_LOCK_SET"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v0, v1, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v8, 0x1

    .line 427
    :goto_6
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOCKON_LENGTH_KEY"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v0, v1, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 429
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOCKON_SAME_KEY"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v0, v1, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 v7, 0x1

    .line 433
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    if-eqz v0, :cond_b

    .line 434
    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeSetting:Z

    if-ne v8, v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z

    if-eq v9, v0, :cond_9

    .line 435
    :cond_8
    iput-boolean v8, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeSetting:Z

    .line 436
    iput-boolean v9, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z

    .line 437
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    iget-boolean v1, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeSetting:Z

    invoke-virtual {v0, v1}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->updateSettingsLocked(Z)V

    .line 439
    :cond_9
    iget v0, p0, Lcom/android/server/power/KnockOnPowerController;->mPasswordLength:I

    if-eq v11, v0, :cond_a

    .line 440
    iput v11, p0, Lcom/android/server/power/KnockOnPowerController;->mPasswordLength:I

    .line 441
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    iget v1, p0, Lcom/android/server/power/KnockOnPowerController;->mPasswordLength:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->updatePasswordLength(I)V

    .line 443
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mIsSame1st2ndTap:Z

    if-eq v7, v0, :cond_b

    .line 444
    iput-boolean v7, p0, Lcom/android/server/power/KnockOnPowerController;->mIsSame1st2ndTap:Z

    .line 445
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    iget-boolean v1, p0, Lcom/android/server/power/KnockOnPowerController;->mIsSame1st2ndTap:Z

    invoke-virtual {v0, v1}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->update1st2ndTap(Z)V

    .line 449
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z

    if-eq v9, v0, :cond_c

    .line 450
    iput-boolean v9, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z

    .line 451
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->mIsTouchKnockOn:Z

    if-nez v0, :cond_c

    .line 452
    iget-boolean v0, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z

    if-eqz v0, :cond_10

    .line 453
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnListener:Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;

    iget-object v13, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSensor:Landroid/hardware/Sensor;

    const/4 v14, 0x3

    invoke-virtual {v0, v1, v13, v14}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 462
    :cond_c
    :goto_8
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[updateSettings] mKnockOnSetting = "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v13, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, ", mKnockCodeSetting = "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v13, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockCodeSetting:Z

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, ", tapcount = "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v13, p0, Lcom/android/server/power/KnockOnPowerController;->mPasswordLength:I

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, ", mIsSame1st2ndTap ="

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v13, p0, Lcom/android/server/power/KnockOnPowerController;->mIsSame1st2ndTap:Z

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void

    .line 423
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 425
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 429
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 456
    :cond_10
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController;->mKnockOnListener:Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_8
.end method
