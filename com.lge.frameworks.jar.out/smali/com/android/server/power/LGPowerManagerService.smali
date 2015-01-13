.class public Lcom/android/server/power/LGPowerManagerService;
.super Lcom/android/server/power/PowerManagerService;
.source "LGPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/LGPowerManagerService$HDMIReceiver;,
        Lcom/android/server/power/LGPowerManagerService$LGUserSwitchedReceiver;,
        Lcom/android/server/power/LGPowerManagerService$LGWiseScreenReceiver;,
        Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;,
        Lcom/android/server/power/LGPowerManagerService$LGWiseScreenTimeoutTask;,
        Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;,
        Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_GET_NEXT_TIMEOUT_COMMAND:Ljava/lang/String; = "com.lge.keepscreenon.KeepScreenOnService.getNextTime"

.field private static final ACTION_REQUEST_NEXT_TIMEOUT_COMMAND:Ljava/lang/String; = "com.lge.keepscreenon.KeepScreenOnService.requestGetNextTime"

.field private static final ACTION_WISESCREEN_COMMAND:Ljava/lang/String; = "com.lge.keepscreenon.KeepScreenOnService.COMMAND"

.field private static final COVERTYPE_CIRCLE:I = 0x3

.field private static final COVERTYPE_COVER:I = 0x0

.field private static final COVERTYPE_LOLLIPOP:I = 0x2

.field private static final COVERTYPE_NONE:I = 0x5

.field private static final COVERTYPE_VIEW:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_SMART_COVER:Z = false

.field private static final DEBUG_WISE_SCREEN:Z = false

.field private static DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NOTUSER_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LGPowerManagerService"

.field private static final WISESCREEN_TIME_MS:I = 0xbb8


# instance fields
.field private isTouchControlRunning:Z

.field private mCoverOpened:Z

.field private mCoverType:I

.field private mEarlyIntentSend:Ljava/lang/Runnable;

.field private mEarlyScreenOff:Landroid/content/Intent;

.field private mHDMIConnected:Z

.field private mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

.field private mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

.field private mLGSettingsObserver:Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;

.field private mNextTimeout:J

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mSendNextTimeoutTask:Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;

.field private mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

.field mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

.field private mSupportWirelessCharging:Z

.field private mSupportWiseScreen:Z

.field private mWirelessChargingEnable:I

.field private mWiseScreenEnable:I

.field private final mWiseScreenTimeoutTask:Lcom/android/server/power/LGPowerManagerService$LGWiseScreenTimeoutTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/LGPowerManagerService;->NOTUSER_DEBUG:Z

    .line 66
    sget-boolean v0, Lcom/android/server/power/LGPowerManagerService;->NOTUSER_DEBUG:Z

    sput-boolean v0, Lcom/android/server/power/LGPowerManagerService;->DEBUG_SMART_COVER:Z

    .line 98
    const/16 v0, 0xfa0

    sput v0, Lcom/android/server/power/LGPowerManagerService;->DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;-><init>()V

    .line 81
    iput-boolean v2, p0, Lcom/android/server/power/LGPowerManagerService;->mSupportWiseScreen:Z

    .line 82
    iput v2, p0, Lcom/android/server/power/LGPowerManagerService;->mWiseScreenEnable:I

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/LGPowerManagerService;->mNextTimeout:J

    .line 84
    new-instance v0, Lcom/android/server/power/LGPowerManagerService$LGWiseScreenTimeoutTask;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/LGPowerManagerService$LGWiseScreenTimeoutTask;-><init>(Lcom/android/server/power/LGPowerManagerService;Lcom/android/server/power/LGPowerManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mWiseScreenTimeoutTask:Lcom/android/server/power/LGPowerManagerService$LGWiseScreenTimeoutTask;

    .line 85
    new-instance v0, Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;-><init>(Lcom/android/server/power/LGPowerManagerService;Lcom/android/server/power/LGPowerManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mSendNextTimeoutTask:Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z

    .line 97
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    .line 99
    iput-boolean v2, p0, Lcom/android/server/power/LGPowerManagerService;->mHDMIConnected:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/server/power/LGPowerManagerService;->isTouchControlRunning:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/server/power/LGPowerManagerService;->mSupportWirelessCharging:Z

    .line 105
    iput v2, p0, Lcom/android/server/power/LGPowerManagerService;->mWirelessChargingEnable:I

    .line 617
    new-instance v0, Lcom/android/server/power/LGPowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/LGPowerManagerService$1;-><init>(Lcom/android/server/power/LGPowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    .line 706
    new-instance v0, Lcom/android/server/power/LGPowerManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/LGPowerManagerService$2;-><init>(Lcom/android/server/power/LGPowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 717
    new-instance v0, Lcom/android/server/power/LGPowerManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/LGPowerManagerService$3;-><init>(Lcom/android/server/power/LGPowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mEarlyIntentSend:Ljava/lang/Runnable;

    .line 111
    return-void
.end method

.method private LGHandleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/android/server/power/LGPowerManagerService;->LGUpdateSettingsUpdateLocked()V

    .line 465
    return-void
.end method

.method private LGReadConfigurationLocked()V
    .locals 4

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 426
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x2060063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/LGPowerManagerService;->mSupportWiseScreen:Z

    .line 427
    const v1, 0x2060065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/LGPowerManagerService;->mSupportWirelessCharging:Z

    .line 428
    const v1, 0x206004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    const/16 v1, 0x1770

    sput v1, Lcom/android/server/power/LGPowerManagerService;->DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I

    .line 431
    :cond_0
    const-string v1, "LGPowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WiseScreen] mSupportWiseScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/LGPowerManagerService;->mSupportWiseScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v1, "LGPowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSupportWirelessCharging = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/LGPowerManagerService;->mSupportWirelessCharging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method private LGSystemReadyInternalLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 437
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 438
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 439
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 440
    const-string v2, "com.lge.keepscreenon.KeepScreenOnService.requestGetNextTime"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/LGPowerManagerService$LGWiseScreenReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/power/LGPowerManagerService$LGWiseScreenReceiver;-><init>(Lcom/android/server/power/LGPowerManagerService;Lcom/android/server/power/LGPowerManagerService$1;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v0, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 443
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/LGPowerManagerService$LGUserSwitchedReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/power/LGPowerManagerService$LGUserSwitchedReceiver;-><init>(Lcom/android/server/power/LGPowerManagerService;Lcom/android/server/power/LGPowerManagerService$1;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v0, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 447
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 448
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 449
    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/LGPowerManagerService$HDMIReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/power/LGPowerManagerService$HDMIReceiver;-><init>(Lcom/android/server/power/LGPowerManagerService;Lcom/android/server/power/LGPowerManagerService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 451
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 452
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;

    iget-object v3, p0, Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;-><init>(Lcom/android/server/power/LGPowerManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/power/LGPowerManagerService;->mLGSettingsObserver:Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;

    .line 453
    const-string v2, "keep_screen_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LGPowerManagerService;->mLGSettingsObserver:Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 454
    const-string v2, "gesture_trun_screen_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LGPowerManagerService;->mLGSettingsObserver:Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 456
    const-string v2, "KNOCKON_LOCK_SET"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LGPowerManagerService;->mLGSettingsObserver:Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 457
    const-string v2, "KNOCKON_LENGTH_KEY"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LGPowerManagerService;->mLGSettingsObserver:Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 458
    const-string v2, "KNOCKON_SAME_KEY"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LGPowerManagerService;->mLGSettingsObserver:Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 459
    const-string v2, "power_save_wireless_charge"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LGPowerManagerService;->mLGSettingsObserver:Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 461
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private LGUpdateSettingsUpdateLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 468
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 470
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "keep_screen_on"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/LGPowerManagerService;->mWiseScreenEnable:I

    .line 471
    const-string v1, "LGPowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WiseScreen] mWiseScreenEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/LGPowerManagerService;->mWiseScreenEnable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v1, "power_save_wireless_charge"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/LGPowerManagerService;->mWirelessChargingEnable:I

    .line 474
    const-string v1, "LGPowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WiseScreen] mWirelessChargingEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/LGPowerManagerService;->mWirelessChargingEnable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-boolean v1, p0, Lcom/android/server/power/LGPowerManagerService;->mSupportWirelessCharging:Z

    if-eqz v1, :cond_0

    .line 477
    iget v1, p0, Lcom/android/server/power/LGPowerManagerService;->mWirelessChargingEnable:I

    if-ne v1, v6, :cond_3

    .line 478
    invoke-direct {p0, v6}, Lcom/android/server/power/LGPowerManagerService;->setWirelessCharging(I)V

    .line 483
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService;->mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService;->mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

    invoke-virtual {v1}, Lcom/android/server/power/KnockOnPowerController;->updateSettings()V

    .line 486
    :cond_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 487
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 489
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_2
    return-void

    .line 480
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/power/LGPowerManagerService;->setWirelessCharging(I)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/power/LGPowerManagerService;)Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/power/LGPowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/power/LGPowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/power/LGPowerManagerService;->updateCoverStateLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/power/LGPowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/power/LGPowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/power/LGPowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/server/power/LGPowerManagerService;->mHDMIConnected:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/power/LGPowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/server/power/LGPowerManagerService;->mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/power/LGPowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/power/LGPowerManagerService;->setQuickCharging(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/power/LGPowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mEarlyScreenOff:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/LGPowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/power/LGPowerManagerService;->LGHandleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/LGPowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/server/power/LGPowerManagerService;->mWiseScreenEnable:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/LGPowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/server/power/LGPowerManagerService;->mNextTimeout:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/power/LGPowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/server/power/LGPowerManagerService;->mSupportWiseScreen:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/LGPowerManagerService;)Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mSendNextTimeoutTask:Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;

    return-object v0
.end method

.method private getKeyguardServiceDelegate()Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
    .locals 1

    .prologue
    .line 150
    const-string v0, "mKeyguardDelegate"

    invoke-direct {p0, v0}, Lcom/android/server/power/LGPowerManagerService;->getWindowPolicyField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 612
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getWindowPolicyField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "name"

    .prologue
    .line 154
    const/4 v5, 0x0

    .line 155
    .local v5, value:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v4, Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 156
    .local v4, pwm:Lcom/android/internal/policy/impl/PhoneWindowManager;
    const/4 v3, 0x0

    .line 159
    .local v3, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 167
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 168
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 169
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v6, Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 182
    .end local v5           #value:Ljava/lang/Object;
    :goto_1
    return-object v5

    .line 160
    .restart local v5       #value:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/lang/NoSuchFieldException;
    const-string v6, "LGPowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no such field and so try again to find it !"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 163
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    goto :goto_0

    .line 171
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :cond_1
    const-string v6, "LGPowerManagerService"

    const-string v7, "can\'t get field"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 173
    :catch_1
    move-exception v2

    .line 174
    .local v2, ex:Ljava/lang/NoSuchFieldException;
    const-string v6, "LGPowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "there is no such field!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    .end local v2           #ex:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 176
    .local v2, ex:Ljava/lang/IllegalAccessException;
    const-string v6, "LGPowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "there is no such field:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    .end local v2           #ex:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 178
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    const-string v6, "LGPowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 179
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 180
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "LGPowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t get keyguardservice"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private isOffhook()Z
    .locals 5

    .prologue
    .line 599
    const/4 v1, 0x0

    .line 600
    .local v1, result:Z
    invoke-static {}, Lcom/android/server/power/LGPowerManagerService;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 601
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 603
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 608
    :cond_0
    :goto_0
    return v1

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "LGPowerManagerService"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setFilteringTouch(I)V
    .locals 8
    .parameter "value"

    .prologue
    .line 647
    const-string v3, "/sys/devices/virtual/input/lge_touch/quick_cover_status"

    .line 648
    .local v3, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 650
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/devices/virtual/input/lge_touch/quick_cover_status"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 651
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 652
    const-string v4, "LGPowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFilteringTouch, Mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 660
    if-eqz v2, :cond_0

    .line 662
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v1, v2

    .line 668
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-boolean v4, Lcom/android/server/power/LGPowerManagerService;->NOTUSER_DEBUG:Z

    if-eqz v4, :cond_2

    .line 655
    const-string v4, "LGPowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFilteringTouch, : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 660
    :cond_2
    if-eqz v1, :cond_1

    .line 662
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 663
    :catch_1
    move-exception v0

    .line 664
    .local v0, e:Ljava/io/IOException;
    const-string v4, "LGPowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFilteringTouch, close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 657
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 658
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v4, "LGPowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFilteringTouch, write : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 660
    if-eqz v1, :cond_1

    .line 662
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 663
    :catch_3
    move-exception v0

    .line 664
    .local v0, e:Ljava/io/IOException;
    const-string v4, "LGPowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFilteringTouch, close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 660
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v1, :cond_3

    .line 662
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 660
    :cond_3
    :goto_6
    throw v4

    .line 663
    :catch_4
    move-exception v0

    .line 664
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "LGPowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setFilteringTouch, close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 663
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v0

    .line 664
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "LGPowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFilteringTouch, close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 660
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 657
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 653
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto/16 :goto_2
.end method

.method private setQuickCharging(I)V
    .locals 9
    .parameter "value"

    .prologue
    .line 730
    const-string v3, "/sys/module/qpnp_charger/parameters/quick_charging_state"

    .line 731
    .local v3, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 733
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/module/qpnp_charger/parameters/quick_charging_state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 734
    .local v4, pathFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 735
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const-string v6, "/sys/module/qpnp_charger/parameters/quick_charging_state"

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 737
    const-string v5, "LGPowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setQuickCharging Mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v1, v2

    .line 742
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_0
    if-eqz v1, :cond_1

    .line 744
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 750
    .end local v4           #pathFile:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "LGPowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setQuickCharging write : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 742
    if-eqz v1, :cond_1

    .line 744
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 745
    :catch_1
    move-exception v0

    .line 746
    .local v0, e:Ljava/io/IOException;
    const-string v5, "LGPowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setQuickCharging close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 742
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_2

    .line 744
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 742
    :cond_2
    :goto_4
    throw v5

    .line 745
    :catch_2
    move-exception v0

    .line 746
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "LGPowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setQuickCharging close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 745
    .end local v0           #e:Ljava/io/IOException;
    .restart local v4       #pathFile:Ljava/io/File;
    :catch_3
    move-exception v0

    .line 746
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "LGPowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setQuickCharging close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 742
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 739
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private setWirelessCharging(I)V
    .locals 8
    .parameter "value"

    .prologue
    .line 671
    const-string v3, "/sys/class/power_supply/wireless/enabled"

    .line 672
    .local v3, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 674
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/class/power_supply/wireless/enabled"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 676
    const-string v4, "LGPowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, Mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 680
    if-eqz v2, :cond_0

    .line 682
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v1, v2

    .line 688
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v4, "LGPowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, write : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 680
    if-eqz v1, :cond_1

    .line 682
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 683
    :catch_1
    move-exception v0

    .line 684
    .local v0, e:Ljava/io/IOException;
    const-string v4, "LGPowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 680
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    .line 682
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 680
    :cond_2
    :goto_4
    throw v4

    .line 683
    :catch_2
    move-exception v0

    .line 684
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "LGPowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWirelessCharging, close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 683
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v0

    .line 684
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "LGPowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 677
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method private updateCoverStateLocked()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    sget-boolean v0, Lcom/android/server/power/LGPowerManagerService;->DEBUG_SMART_COVER:Z

    if-eqz v0, :cond_2

    .line 317
    const-string v0, "LGPowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCoverStateLocked(), mCoverType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCoverOpened="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_2
    iget v0, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 321
    iget-boolean v0, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z

    if-eqz v0, :cond_3

    .line 322
    invoke-direct {p0, v3}, Lcom/android/server/power/LGPowerManagerService;->setFilteringTouch(I)V

    .line 330
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z

    if-eqz v0, :cond_5

    .line 331
    iget v0, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    packed-switch v0, :pswitch_data_0

    .line 340
    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 343
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/LGPowerManagerService;->wakeUp(J)V

    .line 371
    :goto_3
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

    iget-boolean v1, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z

    iget v2, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/KnockOnPowerController;->updateCoverState(ZI)V

    goto :goto_0

    .line 324
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/power/LGPowerManagerService;->setFilteringTouch(I)V

    goto :goto_1

    .line 327
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/power/LGPowerManagerService;->setFilteringTouch(I)V

    goto :goto_1

    .line 336
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_effect_set"

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/android/server/power/DisplayPowerController;->mScreenOffAnimationMode:I

    goto :goto_2

    .line 346
    :cond_5
    iget v0, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 348
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/power/LGPowerManagerService;->goToSleep(JI)V

    goto :goto_3

    .line 352
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    iput v3, v0, Lcom/android/server/power/DisplayPowerController;->mScreenOffAnimationMode:I

    .line 353
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v0, v4, :cond_6

    .line 355
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 357
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0}, Lcom/android/server/dreams/DreamManagerService;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/LGPowerManagerService;->wakeUpNoUpdateLocked(J)Z

    .line 365
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->setKeyLed(Z)V

    .line 367
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_3

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 346
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateWiseScreenLocked(JI)V
    .locals 11
    .parameter "now"
    .parameter "dirty"

    .prologue
    const-wide/16 v9, 0xbb8

    const/4 v7, 0x1

    .line 381
    and-int/lit8 v5, p3, 0x26

    if-eqz v5, :cond_3

    .line 382
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v5, :cond_3

    .line 383
    iget-object v5, p0, Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    iget-object v6, p0, Lcom/android/server/power/LGPowerManagerService;->mWiseScreenTimeoutTask:Lcom/android/server/power/LGPowerManagerService$LGWiseScreenTimeoutTask;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 384
    iget v5, p0, Lcom/android/server/power/LGPowerManagerService;->mWiseScreenEnable:I

    if-ne v5, v7, :cond_3

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eq v5, v7, :cond_0

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 386
    :cond_0
    const-wide/16 v0, 0x0

    .line 387
    .local v0, nextTimeout:J
    const/4 v4, 0x0

    .line 388
    .local v4, validNextTimeout:Z
    invoke-virtual {p0}, Lcom/android/server/power/LGPowerManagerService;->getScreenOffTimeoutLocked()I

    move-result v3

    .line 389
    .local v3, screenOffTimeout:I
    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v2

    .line 391
    .local v2, screenDimDuration:I
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 392
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    int-to-long v7, v2

    sub-long v0, v5, v7

    .line 393
    cmp-long v5, p1, v0

    if-gez v5, :cond_4

    .line 394
    const/4 v4, 0x1

    .line 395
    iput-wide v0, p0, Lcom/android/server/power/LGPowerManagerService;->mNextTimeout:J

    .line 404
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 405
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v7, v3

    add-long v0, v5, v7

    .line 406
    iput-wide v0, p0, Lcom/android/server/power/LGPowerManagerService;->mNextTimeout:J

    .line 413
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v7, v0, v9

    cmp-long v5, v5, v7

    if-ltz v5, :cond_5

    .line 414
    iget-object v5, p0, Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    iget-object v6, p0, Lcom/android/server/power/LGPowerManagerService;->mWiseScreenTimeoutTask:Lcom/android/server/power/LGPowerManagerService$LGWiseScreenTimeoutTask;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x64

    add-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 421
    .end local v0           #nextTimeout:J
    .end local v2           #screenDimDuration:I
    .end local v3           #screenOffTimeout:I
    .end local v4           #validNextTimeout:Z
    :cond_3
    :goto_1
    return-void

    .line 397
    .restart local v0       #nextTimeout:J
    .restart local v2       #screenDimDuration:I
    .restart local v3       #screenOffTimeout:I
    .restart local v4       #validNextTimeout:Z
    :cond_4
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v7, v3

    add-long v0, v5, v7

    .line 398
    cmp-long v5, p1, v0

    if-gez v5, :cond_1

    .line 399
    const/4 v4, 0x1

    goto :goto_0

    .line 416
    :cond_5
    iget-object v5, p0, Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    iget-object v6, p0, Lcom/android/server/power/LGPowerManagerService;->mWiseScreenTimeoutTask:Lcom/android/server/power/LGPowerManagerService$LGWiseScreenTimeoutTask;

    sub-long v7, v0, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method


# virtual methods
.method protected getScreenOffTimeoutLocked()I
    .locals 5

    .prologue
    .line 565
    iget-boolean v1, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 566
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 567
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    long-to-int v0, v1

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 570
    :cond_1
    sget v0, Lcom/android/server/power/LGPowerManagerService;->DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I

    .line 572
    .local v0, timeout:I
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_0

    .line 574
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 579
    .end local v0           #timeout:I
    :cond_2
    invoke-super {p0}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked()I

    move-result v0

    goto :goto_0
.end method

.method public goToSleep(JI)V
    .locals 3
    .parameter "eventTime"
    .parameter "reason"

    .prologue
    .line 592
    sget-boolean v0, Lcom/android/server/power/LGPowerManagerService;->NOTUSER_DEBUG:Z

    if-eqz v0, :cond_0

    .line 593
    const-string v0, "LGPowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToSleep by PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleep(JI)V

    .line 596
    return-void
.end method

.method protected goToSleepNoUpdateLocked(JI)Z
    .locals 3
    .parameter "eventTime"
    .parameter "reason"

    .prologue
    .line 249
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    move-result v0

    .line 250
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    iget-object v2, p0, Lcom/android/server/power/LGPowerManagerService;->mEarlyIntentSend:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    iget-object v2, p0, Lcom/android/server/power/LGPowerManagerService;->mEarlyIntentSend:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService;->mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService;->mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/power/KnockOnPowerController;->updateScreenState(Z)V

    .line 259
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/LGPowerManagerService;->mSupportWiseScreen:Z

    if-eqz v1, :cond_2

    .line 260
    if-eqz v0, :cond_2

    .line 261
    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    iget-object v2, p0, Lcom/android/server/power/LGPowerManagerService;->mWiseScreenTimeoutTask:Lcom/android/server/power/LGPowerManagerService$LGWiseScreenTimeoutTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 265
    :cond_2
    if-eqz v0, :cond_3

    .line 266
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/power/LGPowerManagerService;->setQuickCharging(I)V

    .line 269
    :cond_3
    return v0
.end method

.method protected handleBootCompletedLocked()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/server/power/PowerManagerService;->handleBootCompletedLocked()V

    .line 298
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v1, "smartcover"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/SmartCoverManager;

    check-cast v0, Lcom/lge/systemservice/core/SmartCoverManager;

    iput-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    .line 299
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService;->mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/SmartCoverManager;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    sget-boolean v0, Lcom/android/server/power/LGPowerManagerService;->DEBUG_SMART_COVER:Z

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "LGPowerManagerService"

    const-string v1, "register CoverCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    sget-boolean v0, Lcom/android/server/power/LGPowerManagerService;->DEBUG_SMART_COVER:Z

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "LGPowerManagerService"

    const-string v1, "Can\'t register CoverCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V
    .locals 2
    .parameter "context"
    .parameter "ls"
    .parameter "am"
    .parameter "bs"
    .parameter "bss"
    .parameter "os"
    .parameter "dm"

    .prologue
    .line 115
    invoke-super/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;-><init>(Lcom/android/server/power/LGPowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.EARLY_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mEarlyScreenOff:Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService;->mEarlyScreenOff:Landroid/content/Intent;

    const/high16 v1, 0x5000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected shouldNapAtBedTimeLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 235
    iget v2, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    if-ne v2, v1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z

    if-nez v2, :cond_1

    .line 236
    sget-boolean v1, Lcom/android/server/power/LGPowerManagerService;->DEBUG_SMART_COVER:Z

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "LGPowerManagerService"

    const-string v2, "window cover closed.. ignore request for napping.."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected shouldUseProximitySensorLocked()Z
    .locals 2

    .prologue
    .line 284
    iget v0, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z

    if-nez v0, :cond_1

    .line 285
    sget-boolean v0, Lcom/android/server/power/LGPowerManagerService;->DEBUG_SMART_COVER:Z

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "LGPowerManagerService"

    const-string v1, "window cover closed.. ignore proximity sensor.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v0

    goto :goto_0
.end method

.method protected shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 2
    .parameter "wasPowered"
    .parameter "oldPlugType"
    .parameter "dockedOnWirelessCharger"

    .prologue
    .line 222
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 224
    :cond_0
    const-string v0, "ro.factorytest"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    .locals 6
    .parameter "twilight"
    .parameter "dreamManager"

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 127
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V

    .line 129
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 130
    .local v0, sensorManager:Landroid/hardware/SensorManager;
    new-instance v2, Lcom/android/server/power/KnockOnPowerController;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v4, v5, v0}, Lcom/android/server/power/KnockOnPowerController;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/SensorManager;)V

    iput-object v2, p0, Lcom/android/server/power/LGPowerManagerService;->mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

    .line 132
    invoke-direct {p0}, Lcom/android/server/power/LGPowerManagerService;->LGReadConfigurationLocked()V

    .line 133
    invoke-direct {p0}, Lcom/android/server/power/LGPowerManagerService;->LGSystemReadyInternalLocked()V

    .line 134
    invoke-direct {p0}, Lcom/android/server/power/LGPowerManagerService;->LGUpdateSettingsUpdateLocked()V

    .line 136
    invoke-direct {p0}, Lcom/android/server/power/LGPowerManagerService;->getKeyguardServiceDelegate()Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/LGPowerManagerService;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 137
    iget-object v2, p0, Lcom/android/server/power/LGPowerManagerService;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v2, :cond_1

    .line 138
    const-string v2, "LGPowerManagerService"

    const-string v4, "can\'t get keyguardservice!"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 145
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/power/LGPowerManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 146
    monitor-exit v3

    .line 147
    return-void

    .line 140
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/LGPowerManagerService;->mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/server/power/LGPowerManagerService;->mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

    iget-object v4, p0, Lcom/android/server/power/LGPowerManagerService;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v4}, Lcom/android/server/power/KnockOnPowerController;->setKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    goto :goto_0

    .line 146
    .end local v0           #sensorManager:Landroid/hardware/SensorManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected updateUserActivitySummaryLocked(JI)V
    .locals 1
    .parameter "now"
    .parameter "dirty"

    .prologue
    .line 274
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 276
    iget-boolean v0, p0, Lcom/android/server/power/LGPowerManagerService;->mSupportWiseScreen:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/LGPowerManagerService;->updateWiseScreenLocked(JI)V

    .line 279
    :cond_0
    return-void
.end method

.method public wakeUp(J)V
    .locals 3
    .parameter "eventTime"

    .prologue
    .line 584
    sget-boolean v0, Lcom/android/server/power/LGPowerManagerService;->NOTUSER_DEBUG:Z

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "LGPowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeUp by PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUp(J)V

    .line 588
    return-void
.end method

.method protected wakeUpNoUpdateLocked(J)Z
    .locals 4
    .parameter "eventTime"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 188
    iget v3, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z

    if-nez v3, :cond_1

    .line 189
    sget-boolean v2, Lcom/android/server/power/LGPowerManagerService;->DEBUG_SMART_COVER:Z

    if-eqz v2, :cond_0

    .line 190
    const-string v2, "LGPowerManagerService"

    const-string v3, "quick cover closed.. ignore request for waking up"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    :goto_0
    return v1

    .line 195
    :cond_1
    iget v3, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverType:I

    if-ne v3, v2, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z

    if-nez v3, :cond_2

    .line 196
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    .line 198
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_2

    .line 199
    sget-boolean v2, Lcom/android/server/power/LGPowerManagerService;->DEBUG_SMART_COVER:Z

    if-eqz v2, :cond_0

    .line 200
    const-string v2, "LGPowerManagerService"

    const-string v3, "window cover closed.. ignore waking up by proxmity positive"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    move-result v0

    .line 208
    .local v0, ret:Z
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService;->mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

    if-eqz v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService;->mKnockOnPowerController:Lcom/android/server/power/KnockOnPowerController;

    invoke-virtual {v1, v2}, Lcom/android/server/power/KnockOnPowerController;->updateScreenState(Z)V

    .line 212
    :cond_3
    if-eqz v0, :cond_4

    .line 213
    invoke-direct {p0, v2}, Lcom/android/server/power/LGPowerManagerService;->setQuickCharging(I)V

    :cond_4
    move v1, v2

    .line 216
    goto :goto_0
.end method
