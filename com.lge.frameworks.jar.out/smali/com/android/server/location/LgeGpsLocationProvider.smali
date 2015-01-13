.class public Lcom/android/server/location/LgeGpsLocationProvider;
.super Lcom/android/server/location/GpsLocationProvider;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsUpdateLockModeThread;,
        Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;,
        Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;
    }
.end annotation


# static fields
.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final CMCC_AGPS_SET_ALL:I = 0x2

.field private static final CMCC_AGPS_SET_HOMENETWORK:I = 0x1

.field private static final CMCC_AGPS_SET_OFF:I = 0x0

.field private static final DEBUG:Z = true

.field private static final GNSS_LOCK:I = 0x1

.field private static final GNSS_LOCK_NOT_SET:I = 0x2

.field private static final GNSS_UNLOCK:I = 0x0

.field public static final GPS_DISABLED:I = 0x1

.field public static final GPS_ENABLED:I = 0x0

.field public static final GPS_FORCED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final LGE_GNSS_CONF_FILE:Ljava/lang/String; = "/data/ext_gps.conf"

.field private static final LGE_GNSS_DCM_CONF_FILE:Ljava/lang/String; = "/data/dcm_gnss.conf"

.field private static final MESSAGE_ASSISTED_GPS_ENABLE:I = 0x2

.field private static final MESSAGE_GPS_PROVIDER_ENABLE:I = 0x1

.field private static final MESSAGE_REQUEST_CERT:I = 0x3

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final STATE_CERT_DONTTRY:I = 0x3

.field private static final STATE_CERT_IDLE:I = 0x2

.field private static final STATE_CERT_INJECTING:I = 0x1

.field private static final STATE_CERT_PENDING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LgeGpsLocationProvider"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LgeGpsLocationProvider"

.field private static integratedSW:Ljava/lang/String;

.field private static mLgeSuplServerHost:Ljava/lang/String;

.field private static mSettingGpsEnable:Z

.field private static mVendorName:Ljava/lang/String;

.field private static targetCountry:Ljava/lang/String;

.field private static targetOperator:Ljava/lang/String;


# instance fields
.field private isGpsRecorveryMode:Z

.field private mAssistedEnable:I

.field private mCMCCAGPS_SessionID_num:I

.field private mCMCCAGPS_Set_Cur:I

.field private mExtProperties:Ljava/util/Properties;

.field private mGPSSettingObserver:Landroid/database/ContentObserver;

.field private mGlonassEnable:I

.field mGpsConst:Lcom/android/server/location/LgeGpsConstants;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectCertPending:I

.field private final mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private final mLgeContext:Landroid/content/Context;

.field private mLgeHandler:Landroid/os/Handler;

.field private mLgeSuplServerPort:I

.field private mLgeSuplType:I

.field private mLgeTlsMode:I

.field private mLocationPrivacyObserver:Landroid/database/ContentObserver;

.field mMapGpsState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigating:Z

.field private mNotificationObserver:Landroid/database/ContentObserver;

.field private final mThread:Ljava/lang/Thread;

.field mToastText:Ljava/lang/CharSequence;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private oldGnssLockMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->targetOperator:Ljava/lang/String;

    .line 116
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->targetCountry:Ljava/lang/String;

    .line 117
    const-string v0, "ro.build.sbp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->integratedSW:Ljava/lang/String;

    .line 145
    const-string v0, ""

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    .line 1469
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1470
    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->lge_class_init_native()V

    .line 1471
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .locals 10
    .parameter "context"
    .parameter "locationManager"
    .parameter "looper"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 277
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V

    .line 133
    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->oldGnssLockMode:I

    .line 141
    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    .line 163
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 176
    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    .line 181
    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 198
    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mAssistedEnable:I

    .line 199
    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGlonassEnable:I

    .line 202
    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z

    .line 203
    new-instance v5, Lcom/android/server/location/LgeGpsConstants;

    invoke-direct {v5}, Lcom/android/server/location/LgeGpsConstants;-><init>()V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    .line 205
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mMapGpsState:Ljava/util/HashMap;

    .line 214
    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    .line 217
    new-instance v5, Lcom/android/server/location/LgeGpsLocationProvider$1;

    invoke-direct {v5, p0}, Lcom/android/server/location/LgeGpsLocationProvider$1;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 926
    new-instance v5, Lcom/android/server/location/LgeGpsLocationProvider$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/server/location/LgeGpsLocationProvider$2;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLocationPrivacyObserver:Landroid/database/ContentObserver;

    .line 1271
    new-instance v5, Lcom/android/server/location/LgeGpsLocationProvider$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/server/location/LgeGpsLocationProvider$3;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingObserver:Landroid/database/ContentObserver;

    .line 1301
    new-instance v5, Lcom/android/server/location/LgeGpsLocationProvider$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/server/location/LgeGpsLocationProvider$4;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 279
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "LgeGpsLocationProvider"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->getConfig()V

    .line 283
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    .line 284
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-static {p1}, Lcom/android/server/location/LgeGpsConstants;->setContext(Landroid/content/Context;)V

    .line 289
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 290
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v5, "LgeGpsLocationProvider"

    invoke-virtual {v3, v9, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 291
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 293
    const-string v5, "SKT"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 294
    const-string v5, "com.skt.intent.action.AGPS_ON"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v5, "com.skt.intent.action.AGPS_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v5, "com.skt.intent.action.GPS_TURN_ON"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v5, "com.skt.intent.action.GPS_TURN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    :cond_0
    const-string v5, "LGU"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 301
    const-string v5, "com.android.lge.action_at_timeout_uplus"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    :cond_1
    const-string v5, "ATT"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "AIO"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    :cond_2
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    :cond_3
    const-string v5, "VDF"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "SFR"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "1"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->integratedSW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 310
    :cond_4
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    :cond_5
    const-string v5, "DCM"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 315
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v5, "com.android.settings.gpsnotification.CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    :try_start_0
    sget-object v5, Lcom/lge/loader/RuntimeLibraryLoader;->VOLUME_MANAGER:Ljava/lang/String;

    invoke-static {v5}, Lcom/lge/loader/RuntimeLibraryLoader;->getCreator(Ljava/lang/String;)Lcom/lge/loader/InstanceCreator;

    move-result-object v1

    .line 321
    .local v1, ic:Lcom/lge/loader/InstanceCreator;
    if-eqz v1, :cond_a

    .line 322
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v1}, Lcom/lge/loader/InstanceCreator;->getDefaultInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    iput-object v5, v6, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    .end local v1           #ic:Lcom/lge/loader/InstanceCreator;
    :goto_0
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, v6, Lcom/android/server/location/LgeGpsConstants;->nm:Landroid/app/NotificationManager;

    .line 336
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lge_notification_light_pulse"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 338
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emotional_led_gps"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 340
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_providers_allowed"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 344
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->loadDcmConfig()V

    .line 348
    :cond_6
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->native_init()Z

    move-result v5

    if-nez v5, :cond_7

    .line 352
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "native_init() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_7
    new-instance v5, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;

    invoke-direct {v5, p0}, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 357
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 365
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v6, 0x3e8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 373
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_init()Z

    .line 376
    const-string v5, "VZW"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "VZW_TABLET"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "CDMA_TRF"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "CRK"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "SPR"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "USC"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "ACG"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "ATT"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "TMO"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "AIO"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "CCA"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 379
    :cond_8
    new-instance v4, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsUpdateLockModeThread;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsUpdateLockModeThread;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;Lcom/android/server/location/LgeGpsLocationProvider$1;)V

    .line 380
    .local v4, updateLockModeThread:Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsUpdateLockModeThread;
    invoke-virtual {v4}, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsUpdateLockModeThread;->start()V

    .line 381
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_providers_allowed"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLocationPrivacyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 384
    .end local v4           #updateLockModeThread:Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsUpdateLockModeThread;
    :cond_9
    return-void

    .line 325
    .restart local v1       #ic:Lcom/lge/loader/InstanceCreator;
    :cond_a
    :try_start_2
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "cannot get VOLUME_MANAGER from RuntimeLibraryLoader"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 328
    .end local v1           #ic:Lcom/lge/loader/InstanceCreator;
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 330
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 368
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 369
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_1
.end method

.method private CMCC_AGPS_Change_XTRA()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1392
    const/4 v0, -0x1

    .line 1394
    .local v0, agps_cmcc_set:I
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled_for_cmcc"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1396
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC_AGPS_SettingControl ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    if-eqz v0, :cond_0

    .line 1399
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 1402
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 1405
    :cond_0
    return-void
.end method

.method private CMCC_AGPS_SettingControl()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1358
    const/4 v0, -0x1

    .line 1360
    .local v0, agps_cmcc_set:I
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled_for_cmcc"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1362
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC_AGPS_SettingControl ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    if-nez v0, :cond_1

    .line 1364
    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_Set_Cur:I

    .line 1365
    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1366
    :cond_1
    if-ne v0, v4, :cond_3

    .line 1367
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_Set_Cur:I

    .line 1369
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1370
    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 1372
    :cond_2
    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    if-nez v1, :cond_0

    .line 1373
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 1376
    :cond_3
    if-ne v0, v6, :cond_4

    .line 1377
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_Set_Cur:I

    .line 1378
    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    if-nez v1, :cond_0

    .line 1379
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 1382
    :cond_4
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_Set_Cur:I

    .line 1384
    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    if-nez v1, :cond_0

    .line 1385
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0
.end method

.method private LM_getGpsState()I
    .locals 4

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps_device_managerment_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1012
    .local v0, gpsState:I
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LM_getGpsState return GPS State as"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return v0
.end method

.method private LM_setGpsState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1032
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LM_setGpsState sets GPS State to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    packed-switch p1, :pswitch_data_0

    .line 1072
    :goto_0
    return-void

    .line 1042
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1047
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1050
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1053
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1064
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1067
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1035
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private LgeSendMessage(IILjava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 816
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 817
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 818
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 819
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 820
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 821
    return-void
.end method

.method private UpdateGnssLockMode()V
    .locals 7

    .prologue
    .line 864
    const/4 v3, 0x1

    .line 865
    .local v3, ret:Z
    const/4 v0, 0x0

    .line 868
    .local v0, GnssLockMode:I
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_providers_allowed"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, loc_provider:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 871
    .local v1, gpsEnable:Z
    if-nez v2, :cond_1

    .line 873
    const-string v4, "LgeGpsLocationProvider"

    const-string v5, "loc_provider is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    const-string v4, "VZW"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "CDMA_TRF"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "CRK"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "SPR"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "USC"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ACG"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 880
    :cond_2
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLocationPrivacyObserver. , Loc_Provider ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    const-string v5, "SPR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    .line 883
    :cond_3
    const/4 v0, 0x1

    .line 886
    :cond_4
    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->oldGnssLockMode:I

    if-eq v0, v4, :cond_5

    .line 887
    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    .line 888
    const-string v4, "lge.gps.extracmd.raw.setgnss_lock.enable"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "lge.gps.extracmd.raw.setgnss_lock.enable"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v3

    .line 893
    :goto_1
    if-nez v3, :cond_5

    .line 894
    const-string v4, "LgeGpsLocationProvider"

    const-string v5, "lgeGnssLockMode fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_5
    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->oldGnssLockMode:I

    goto/16 :goto_0

    .line 890
    :cond_6
    const-string v4, "lge.gps.extracmd.raw.setgnss_lock.disable"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "lge.gps.extracmd.raw.setgnss_lock.disable"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v3

    goto :goto_1

    .line 901
    :cond_7
    const-string v4, "VZW_TABLET"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "ATT"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "TMO"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "AIO"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "CCA"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 902
    :cond_8
    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->oldGnssLockMode:I

    if-eq v0, v4, :cond_0

    .line 903
    const-string v4, "LgeGpsLocationProvider"

    const-string v5, "GNSS is unlocked(= GNSS was turned on( by GPS1_LOCK nv is 0))."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v4, "lge.gps.extracmd.raw.setgnss_lock.disable"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "lge.gps.extracmd.raw.setgnss_lock.disable"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v3

    .line 906
    if-nez v3, :cond_9

    .line 907
    const-string v4, "LgeGpsLocationProvider"

    const-string v5, "lgeGnssLockMode fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_9
    const/4 v0, 0x0

    .line 911
    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->oldGnssLockMode:I

    goto/16 :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    sput-boolean p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/location/LgeGpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->UpdateGnssLockMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/LgeGpsLocationProvider;->LgeSendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->gpsRilRecovery()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->integratedSW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/LgeGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/location/LgeGpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/location/LgeGpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/location/LgeGpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->handleCertRequest()V

    return-void
.end method

.method private getConfig()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "LgeSuplServerHost"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadStrConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 587
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "VendorName"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadStrConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "PositionMode"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 590
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "LgeSuplServerPort"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 591
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "LgeTlsMode"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 592
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "LgeSuplType"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    .line 593
    return-void
.end method

.method private getListenerPackageName(I)Ljava/lang/String;
    .locals 6
    .parameter "uid"

    .prologue
    .line 445
    const/4 v1, 0x0

    .line 447
    .local v1, packagesName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 448
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 449
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getListenerPackageName() packages = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getListenerPackageName() packages e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private gpsRilRecovery()V
    .locals 4

    .prologue
    .line 841
    const-string v1, "1"

    const-string v2, "ril.reset_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 843
    .local v0, isRilReset:Z
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRilReset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    if-eqz v0, :cond_0

    .line 846
    const-string v1, "20"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "20"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 848
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    if-nez v1, :cond_1

    .line 849
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "CP is resetting. Set isGpsRecorveryMode flag is TRUE ......"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 853
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    if-eqz v1, :cond_2

    .line 854
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "CP is resetting. Network is available after CP Reset, and then GPS Recorvery Mode Start ...... "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 856
    invoke-super {p0}, Lcom/android/server/location/GpsLocationProvider;->enable()V

    .line 859
    :cond_2
    return-void
.end method

.method private handleCertRequest()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1443
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "handleCertRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1448
    new-instance v0, Lcom/android/server/location/LgeGpsCert;

    invoke-direct {v0}, Lcom/android/server/location/LgeGpsCert;-><init>()V

    .line 1449
    .local v0, cert:Lcom/android/server/location/LgeGpsCert;
    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/location/LgeGpsCert;->getCertFromAndroid(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1450
    .local v1, certData:[B
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1452
    if-nez v1, :cond_0

    .line 1453
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "cert not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    .line 1466
    :goto_0
    return-void

    .line 1459
    :cond_0
    const/16 v2, 0x9

    array-length v3, v1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_inject_cert(I[BI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1460
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    goto :goto_0

    .line 1462
    :cond_1
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "failed to inject cert into CP"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    goto :goto_0
.end method

.method private handleGpsXTRAEnable(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 935
    if-ne p1, v2, :cond_0

    .line 936
    const-string v0, "lge.gps.extracmd.raw.xtra.enable"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "lge.gps.extracmd.raw.xtra.enable"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 945
    :goto_0
    return v2

    .line 940
    :cond_0
    const-string v0, "lge.gps.extracmd.raw.xtra.disable"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "lge.gps.extracmd.raw.xtra.disable"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    goto :goto_0
.end method

.method private isCertInjectSupported()Z
    .locals 9

    .prologue
    .line 1425
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "supl.google.com"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "supl.vodafone.com"

    aput-object v7, v0, v6

    .line 1430
    .local v0, CERT_INJECT_SUPPORT_SERVER:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1431
    .local v5, supportCertInject:Z
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 1432
    .local v4, server:Ljava/lang/String;
    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1433
    const-string v6, "LgeGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "support cert injection for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const/4 v5, 0x1

    .line 1439
    .end local v4           #server:Ljava/lang/String;
    :cond_0
    return v5

    .line 1431
    .restart local v4       #server:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private ktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 633
    const/4 v5, 0x0

    .line 635
    .local v5, result:Z
    const-string v7, "activateGPS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "deactivateGPS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 636
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 637
    .local v3, mGpsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v7, "activateGPS"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v7, "deactivateGPS"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 641
    .local v6, state:Ljava/lang/Integer;
    if-nez v6, :cond_2

    move v7, v8

    :goto_0
    const/4 v9, 0x0

    invoke-direct {p0, v8, v7, v9}, Lcom/android/server/location/LgeGpsLocationProvider;->LgeSendMessage(IILjava/lang/Object;)V

    .line 697
    .end local v3           #mGpsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6           #state:Ljava/lang/Integer;
    :cond_1
    :goto_1
    return v8

    .line 641
    .restart local v3       #mGpsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6       #state:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    .line 644
    .end local v3           #mGpsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6           #state:Ljava/lang/Integer;
    :cond_3
    const-string v7, "activateAGPS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "deactivateAGPS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 647
    const-string v7, "setNativeServer"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 648
    const-string v7, "LgeGpsLocationProvider"

    const-string v9, "KT_setNativeServer()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 651
    .local v2, LgeExtras:Landroid/os/Bundle;
    const-string v7, "time"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 652
    const-string v7, "delete_aiding_data"

    invoke-super {p0, v7, v2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 653
    const-string v7, "supl.google.com"

    const/16 v9, 0x1c6c

    invoke-virtual {p0, v8, v7, v9}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 654
    iput v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 655
    const/4 v5, 0x1

    .line 658
    .end local v2           #LgeExtras:Landroid/os/Bundle;
    :cond_4
    if-eqz p2, :cond_6

    .line 659
    const-string v7, "setOllehServer"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 661
    const-string v7, "host"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, KTSuplServerHost:Ljava/lang/String;
    const-string v7, "port"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 664
    .local v1, KTSuplServerPort:I
    const-string v7, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KT_setOllehServer() -SUPL_HOST: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "SUPL_PORT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-eqz v0, :cond_5

    if-lez v1, :cond_5

    .line 668
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 669
    .restart local v2       #LgeExtras:Landroid/os/Bundle;
    const-string v7, "time"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 670
    const-string v7, "delete_aiding_data"

    invoke-super {p0, v7, v2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 671
    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 672
    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 673
    invoke-virtual {p0, v8, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 675
    .end local v2           #LgeExtras:Landroid/os/Bundle;
    :cond_5
    const/4 v5, 0x1

    .end local v0           #KTSuplServerHost:Ljava/lang/String;
    .end local v1           #KTSuplServerPort:I
    :cond_6
    :goto_2
    move v8, v5

    .line 697
    goto/16 :goto_1

    .line 678
    :cond_7
    const-string v7, "setMode"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 680
    const-string v7, "mode"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 682
    .local v4, mode:I
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KT_setMode() mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 684
    const/4 v5, 0x1

    .line 685
    goto :goto_2

    .line 686
    .end local v4           #mode:I
    :cond_8
    const-string v7, "getMode"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 688
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KT_getMode() mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v7, "mode"

    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 690
    const/4 v5, 0x1

    goto :goto_2

    .line 694
    :cond_9
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ktHandleExtraCmd: unknown command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 12
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 517
    const/4 v9, 0x1

    .line 519
    .local v9, ret:Z
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGE Framework Extra Command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v0, "lge.gps.extracmd.fmw.setgnss_settinginfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 522
    const-string v0, "supl_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    .line 523
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    if-eqz v0, :cond_4

    .line 525
    const-string v0, "pos_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 527
    const-string v0, "supl_host"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 528
    .local v10, supl_host:Ljava/lang/String;
    const-string v0, "supl_port"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 529
    .local v11, supl_port:I
    if-eqz v10, :cond_0

    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    if-eq v11, v0, :cond_2

    .line 532
    :cond_1
    sput-object v10, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 533
    iput v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 535
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 537
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed supl addr, after host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 541
    :cond_2
    const-string v0, "tls_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    if-eq v0, v1, :cond_3

    .line 543
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed tls mode, before mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v0, "tls_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 546
    const-string v0, "lge.gps.extracmd.raw.tls.mode#%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 547
    .local v8, LgeTlsMode:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v9

    .line 549
    .end local v8           #LgeTlsMode:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/LgeGpsConstants;->lgeSaveGnssConfig(IILjava/lang/String;II)V

    .line 582
    .end local v10           #supl_host:Ljava/lang/String;
    .end local v11           #supl_port:I
    :goto_0
    return v9

    .line 553
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v0}, Lcom/android/server/location/LgeGpsConstants;->lgeDefaultGnssConfig()V

    .line 554
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->getConfig()V

    goto :goto_0

    .line 557
    :cond_5
    const-string v0, "lge.gps.extracmd.fmw.getgnss_settinginfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 558
    const-string v0, "supl_type"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    const-string v0, "supl_host"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v0, "supl_port"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    const-string v0, "tls_mode"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    const-string v0, "pos_mode"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 564
    :cond_6
    const-string v0, "lge.gps.extracmd.fmw.dns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 566
    const-string v0, "isDnsEnabled"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 568
    .local v7, DNS_enable:Z
    if-ne v7, v4, :cond_7

    .line 569
    const-string v0, "lge.gps.extracmd.raw.dns.enable"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 575
    .local v6, DNSMode:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v9

    .line 576
    goto :goto_0

    .line 572
    .end local v6           #DNSMode:Ljava/lang/String;
    :cond_7
    const-string v0, "lge.gps.extracmd.raw.dns.disable"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #DNSMode:Ljava/lang/String;
    goto :goto_1

    .line 579
    .end local v6           #DNSMode:Ljava/lang/String;
    .end local v7           #DNS_enable:Z
    :cond_8
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid LGE Framework Extra Command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private static native lge_class_init_native()V
.end method

.method private lguHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, result:Z
    const-string v1, "delete_aiding_data"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 713
    :goto_1
    return v1

    .line 706
    :cond_0
    const-string v1, "request_xtra_download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    const-string v1, "force_xtra_injection"

    const/4 v2, 0x0

    invoke-super {p0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 710
    :cond_1
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lguHandleExtraCmd: unknown command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private loadDcmConfig()V
    .locals 3

    .prologue
    .line 1293
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/dcm_gnss.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v1, "PositionMode"

    invoke-static {v1}, Lcom/android/server/location/LgeGpsConstants;->loadDcmIntConfig(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 1297
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v1, "MsAssisted"

    invoke-static {v1}, Lcom/android/server/location/LgeGpsConstants;->loadDcmIntConfig(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mAssistedEnable:I

    .line 1298
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v1, "GlonassEnable"

    invoke-static {v1}, Lcom/android/server/location/LgeGpsConstants;->loadDcmIntConfig(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGlonassEnable:I

    .line 1300
    :cond_0
    return-void
.end method

.method private native native_lge_gnss_command([BI)Z
.end method

.method private native native_lge_init()Z
.end method

.method private native native_lge_inject_cert(I[BI)Z
.end method

.method private requestCert()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1409
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "requestCert called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->isCertInjectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support cert injection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :goto_0
    return-void

    .line 1416
    :cond_0
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1418
    :cond_1
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "ignore cert request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1421
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->LgeSendMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method private sktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v7, 0x1

    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, result:Z
    if-eqz p2, :cond_1

    .line 598
    const-string v4, "opType"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 599
    .local v3, str_opType:Ljava/lang/String;
    const-string v4, "cmdType"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, str_cmdType:Ljava/lang/String;
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.skt.intent.action.AGPS :cmdType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", opType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v4, "on"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 604
    const-string v4, "msBased"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 607
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 608
    .local v0, LgeExtras:Landroid/os/Bundle;
    const-string v4, "time"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 609
    const-string v4, "delete_aiding_data"

    invoke-super {p0, v4, v0}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 611
    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 616
    .end local v0           #LgeExtras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 629
    .end local v2           #str_cmdType:Ljava/lang/String;
    .end local v3           #str_opType:Ljava/lang/String;
    :cond_1
    :goto_1
    return v1

    .line 613
    .restart local v2       #str_cmdType:Ljava/lang/String;
    .restart local v3       #str_opType:Ljava/lang/String;
    :cond_2
    const-string v4, "msAssisted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 614
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 618
    :cond_3
    const-string v4, "off"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 619
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 620
    const/4 v1, 0x1

    goto :goto_1

    .line 624
    :cond_4
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid sktHandleExtraCmd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sprHandleCarrierAppExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 950
    const/4 v0, 0x1

    .line 952
    .local v0, ret:Z
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPR Framework Carrier App Extra Command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string v1, "spr.gps.extracmd.fmw.dm_set_gps_state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "dm_set_gps_state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v1, "mode"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->LM_setGpsState(I)V

    .line 968
    :goto_0
    return v0

    .line 958
    :cond_0
    const-string v1, "spr.gps.extracmd.fmw.dm_get_gps_state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "dm_get_gps_state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const-string v1, "mode"

    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->LM_getGpsState()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 964
    :cond_1
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid SPR Framework Extra Command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cmccHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1309
    const-string v6, "LgeGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cmccHandleExtraCmd= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const-string v6, "lge.gps.extracmd.cmcc.get_agpssessionid"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1311
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMCC get AGPSsessionID : extras = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const-string v5, "agps_session_id"

    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1353
    :goto_0
    return v4

    .line 1318
    :cond_0
    const-string v6, "cmcc_dm_set_agps_addr"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1320
    const-string v6, "slp"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1321
    .local v3, slp:Ljava/lang/String;
    const-string v6, "addr"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1322
    .local v0, addr:Ljava/lang/String;
    const-string v6, "port"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1323
    .local v2, port:I
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    if-ltz v2, :cond_1

    .line 1324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1325
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1326
    .local v1, param:Landroid/os/Bundle;
    const-string v5, "supl_type"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1327
    const-string v4, "supl_host"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v4, "supl_port"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1329
    const-string v4, "pos_mode"

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1330
    const-string v4, "tls_mode"

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1331
    const-string v4, "lge.gps.extracmd.fmw.setgnss_settinginfo"

    invoke-direct {p0, v4, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    goto :goto_0

    .end local v1           #param:Landroid/os/Bundle;
    :cond_1
    move v4, v5

    .line 1335
    goto :goto_0

    .line 1338
    .end local v0           #addr:Ljava/lang/String;
    .end local v2           #port:I
    .end local v3           #slp:Ljava/lang/String;
    :cond_2
    const-string v6, "cmcc_dm_get_agps_addr"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1340
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1341
    .restart local v1       #param:Landroid/os/Bundle;
    const-string v6, "lge.gps.extracmd.fmw.getgnss_settinginfo"

    invoke-direct {p0, v6, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1343
    const-string v5, "supl_host"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1344
    .restart local v0       #addr:Ljava/lang/String;
    const-string v5, "supl_port"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1345
    .restart local v2       #port:I
    const-string v5, "slp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v5, "addr"

    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string v5, "port"

    invoke-virtual {p2, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v0           #addr:Ljava/lang/String;
    .end local v2           #port:I
    :cond_3
    move v4, v5

    .line 1350
    goto/16 :goto_0

    .end local v1           #param:Landroid/os/Bundle;
    :cond_4
    move v4, v5

    .line 1353
    goto/16 :goto_0
.end method

.method public dcmHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 12
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 717
    const/4 v3, 0x0

    .line 719
    .local v3, result:Z
    const-string v8, "com.lge.extraCommand.AGPS"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 720
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agpsTestSetting() : extras = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    if-eqz p2, :cond_2

    .line 724
    const-string v8, "supl_address"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 725
    .local v4, str_supl_address:Ljava/lang/String;
    const-string v8, "supl_Port"

    invoke-virtual {p2, v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 727
    .local v5, supl_port:I
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    if-eqz v5, :cond_0

    .line 728
    sput-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 729
    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 731
    sget-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 732
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set supl address = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agpsTestSetting() : mSuplServerHost = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Host Port ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    .end local v4           #str_supl_address:Ljava/lang/String;
    .end local v5           #supl_port:I
    :goto_0
    return v7

    .line 740
    :cond_1
    const-string v8, "com.lge.extraCommand.dcm.agpsSetting"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 742
    const-string v8, "agpsSetting"

    invoke-virtual {p2, v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 743
    .local v0, nAgpsSetting:I
    const-string v8, "glonassEnable"

    invoke-virtual {p2, v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 745
    .local v1, nGlonassEnable:I
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agpsSetting() : agpsSetting = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agpsSetting() : glonassEnable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v8, v0, v1}, Lcom/android/server/location/LgeGpsConstants;->saveDcmConfig(II)Z

    move-result v3

    .line 750
    const-string v8, "lge.gps.extracmd.raw.glonass.enable_%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v11

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 751
    .local v6, tmpStr:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 753
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #nAgpsSetting:I
    .end local v1           #nGlonassEnable:I
    .end local v6           #tmpStr:Ljava/lang/String;
    :cond_2
    :goto_1
    move v7, v3

    .line 778
    goto :goto_0

    .line 755
    :cond_3
    const-string v7, "com.lge.extraCommand.dcm.getAGPSProtocol"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 756
    const/4 v2, 0x0

    .line 758
    .local v2, nResult:I
    iget v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    if-nez v7, :cond_4

    .line 759
    const/4 v2, 0x0

    .line 770
    :goto_2
    if-eqz p2, :cond_2

    .line 771
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "agpsSetting() nResult = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  mGlonassEnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGlonassEnable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v7, "agpsSetting"

    invoke-virtual {p2, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 773
    const-string v7, "glonassEnable"

    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGlonassEnable:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    const/4 v3, 0x1

    goto :goto_1

    .line 762
    :cond_4
    iget v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mAssistedEnable:I

    if-nez v7, :cond_5

    .line 763
    const/4 v2, 0x1

    goto :goto_2

    .line 766
    :cond_5
    const/4 v2, 0x2

    goto :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1475
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1478
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, " integratedSW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->integratedSW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    const-string v1, " targetOperator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->targetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    const-string v1, " targetCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->targetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    const-string v1, " mLgeSuplServerHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    const-string v1, " mLgeSuplServerPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    const-string v1, " mLgeTlsMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    const-string v1, " mLgeSuplType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    const-string v1, " mVendorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    const-string v1, " mPositionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1491
    return-void
.end method

.method public handleEnable()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 390
    invoke-super {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    .line 392
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 393
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 394
    const-string v1, "lge.gps.extracmd.raw.tls.mode#%d"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, LgeTlsMode:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 398
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEnable :native_set_agps_server ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", TlsMode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v0           #LgeTlsMode:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public lgeSetSlpFromSim(II)V
    .locals 7
    .parameter "mcc_i"
    .parameter "mnc_i"

    .prologue
    const/16 v6, 0x1c6b

    const/16 v5, 0xd6

    const/4 v4, 0x2

    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 1128
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    if-ne v0, v2, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 1130
    :cond_0
    if-ne p1, v2, :cond_1

    if-eq p2, v2, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-ne p2, v4, :cond_3

    .line 1132
    :cond_2
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "Spirent SIM inserted, ignore Slp setting from SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1136
    :cond_3
    const-string v0, "VDF"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1137
    const/16 v0, 0x106

    if-ne p1, v0, :cond_4

    if-eq p2, v4, :cond_e

    :cond_4
    if-ne p1, v5, :cond_5

    if-eq p2, v2, :cond_e

    :cond_5
    if-ne p1, v5, :cond_6

    const/4 v0, 0x6

    if-eq p2, v0, :cond_e

    :cond_6
    const/16 v0, 0xde

    if-ne p1, v0, :cond_7

    if-eq p2, v3, :cond_e

    :cond_7
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p2, v0, :cond_e

    :cond_8
    const/16 v0, 0x10c

    if-ne p1, v0, :cond_9

    if-eq p2, v2, :cond_e

    :cond_9
    const/16 v0, 0xe2

    if-ne p1, v0, :cond_a

    if-eq p2, v2, :cond_e

    :cond_a
    const/16 v0, 0xca

    if-ne p1, v0, :cond_b

    const/4 v0, 0x5

    if-eq p2, v0, :cond_e

    :cond_b
    const/16 v0, 0x1f9

    if-ne p1, v0, :cond_c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_e

    :cond_c
    const/16 v0, 0x114

    if-ne p1, v0, :cond_d

    if-eq p2, v4, :cond_e

    :cond_d
    const/16 v0, 0xea

    if-ne p1, v0, :cond_14

    const/16 v0, 0xf

    if-ne p2, v0, :cond_14

    .line 1149
    :cond_e
    const-string v0, "supl.vodafone.com"

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1150
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1151
    iput v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1154
    const/16 v0, 0x106

    if-ne p1, v0, :cond_f

    if-eq p2, v4, :cond_12

    :cond_f
    if-ne p1, v5, :cond_10

    if-eq p2, v2, :cond_12

    :cond_10
    if-ne p1, v5, :cond_11

    const/4 v0, 0x6

    if-eq p2, v0, :cond_12

    :cond_11
    const/16 v0, 0xde

    if-ne p1, v0, :cond_13

    if-ne p2, v3, :cond_13

    .line 1155
    :cond_12
    const-string v0, "0x20000"

    invoke-virtual {p0, v0}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetSuplVer(Ljava/lang/String;)V

    .line 1156
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, " SUPL Ver= 0x20000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_13
    :goto_1
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1183
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetTlsMode()V

    .line 1185
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPositionMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SUPL_HOST ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SUPL_PORT ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TLS_MODE ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",VendorName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->targetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1160
    :cond_14
    const/16 v0, 0xd0

    if-ne p1, v0, :cond_15

    if-eq p2, v3, :cond_16

    :cond_15
    const/16 v0, 0x287

    if-ne p1, v0, :cond_17

    if-ne p2, v3, :cond_17

    .line 1162
    :cond_16
    const-string v0, "supl.google.com"

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1163
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1164
    iput v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    goto :goto_1

    .line 1167
    :cond_17
    const-string v0, "supl.google.com"

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1168
    const/16 v0, 0x1c6c

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    goto :goto_1

    .line 1172
    :cond_18
    const-string v0, "SFR"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1173
    const/16 v0, 0xd0

    if-ne p1, v0, :cond_13

    if-ne p2, v3, :cond_13

    .line 1175
    const-string v0, "supl.google.com"

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1176
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1177
    iput v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    goto/16 :goto_1
.end method

.method public lgeSetSlpFromSimGlobal(II)V
    .locals 9
    .parameter "mcc_i"
    .parameter "mnc_i"

    .prologue
    const/4 v8, 0x1

    .line 1190
    const-string v6, "LgeGpsLocationProvider"

    const-string v7, "lgeSetSlpFromSimGlobal called!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    if-ne v6, v8, :cond_0

    .line 1247
    :goto_0
    return-void

    .line 1194
    :cond_0
    if-ne p1, v8, :cond_1

    if-eq p2, v8, :cond_2

    :cond_1
    if-ne p1, v8, :cond_3

    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    .line 1196
    :cond_2
    const-string v6, "LgeGpsLocationProvider"

    const-string v7, "Spirent SIM inserted, ignore Slp setting from SIM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1200
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1201
    .local v4, mcc:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1202
    .local v5, mnc:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1203
    .local v3, mLgeSuplVersion:Ljava/lang/String;
    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->targetOperator:Ljava/lang/String;

    .line 1205
    .local v2, Vendor_Name:Ljava/lang/String;
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1206
    .local v0, LgeGlobalProperties:Ljava/util/Properties;
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v6, "/etc/gps.conf"

    invoke-static {v0, v6}, Lcom/android/server/location/LgeGpsConstants;->readFile(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1207
    const-string v6, "VDF"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "SFR"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1208
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SUPL_HOST_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1209
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SUPL_PORT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1210
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LGE_TLS_MODE_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SUPL_VER_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1229
    :cond_5
    :goto_1
    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    if-eq v6, v8, :cond_6

    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    if-nez v6, :cond_7

    .line 1230
    :cond_6
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v6, "LgeSuplServerHost"

    invoke-static {v6}, Lcom/android/server/location/LgeGpsConstants;->loadStrConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1231
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v6, "LgeSuplServerPort"

    invoke-static {v6}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1232
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v6, "LgeTlsMode"

    invoke-static {v6}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1237
    :cond_7
    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v8, v6, v7}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1244
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetTlsMode()V

    .line 1245
    invoke-virtual {p0, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetSuplVer(Ljava/lang/String;)V

    .line 1246
    const-string v6, "LgeGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gps.conf - mPositionMode ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", SUPL_HOST ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", SUPL_PORT ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", TLS_MODE ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",VendorName ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",SUPL Ver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1212
    :cond_9
    const-string v6, "UNF"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1213
    const-string v6, "SUPL_HOST_UNF"

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1214
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v6, "SUPL_PORT_UNF"

    invoke-static {v0, v6}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1215
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v6, "LGE_TLS_MODE_UNF"

    invoke-static {v0, v6}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1216
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v6, "LGE_GPS_POSITION_MODE_UNF"

    invoke-static {v0, v6}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto/16 :goto_1

    .line 1218
    :cond_a
    const-string v6, "OPEN"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "AME"

    sget-object v7, Lcom/android/server/location/LgeGpsLocationProvider;->targetCountry:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SUPL_HOST_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, LgeSuplServerHost:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1222
    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1223
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SUPL_PORT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1224
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LGE_TLS_MODE_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SUPL_VER_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public lgeSetSuplVer(Ljava/lang/String;)V
    .locals 4
    .parameter "suplver"

    .prologue
    .line 1261
    const-string v1, "0x20000"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    :try_start_0
    const-string v1, "lge.gps.extracmd.raw.set_supl_version"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.set_supl_version"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse SUPL_VER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public lgeSetTlsMode()V
    .locals 6

    .prologue
    .line 1250
    const-string v2, "lge.gps.extracmd.raw.tls.mode#%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, LgeTlsMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1253
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1254
    :catch_0
    move-exception v1

    .line 1255
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to parse LGE_TLS_MODE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public lgeUpdateSimState(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 1088
    const-string v5, "ss"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1090
    .local v4, stateExtra:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1092
    .local v3, numeric:Ljava/lang/String;
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lgeUpdateSimState : state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1098
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1099
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getMccCode numeric "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_1

    .line 1103
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1104
    .local v1, mcc_i:I
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1105
    .local v2, mnc_i:I
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- getMccCode mcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string v5, "1"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->integratedSW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "GLOBAL"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1108
    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetSlpFromSimGlobal(II)V

    .line 1124
    .end local v1           #mcc_i:I
    .end local v2           #mnc_i:I
    :goto_0
    return-void

    .line 1110
    .restart local v1       #mcc_i:I
    .restart local v2       #mnc_i:I
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetSlpFromSim(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1114
    .end local v1           #mcc_i:I
    .end local v2           #mnc_i:I
    :catch_0
    move-exception v0

    .line 1115
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "Exception parsing mcc/mnc: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1119
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "- getMccCode numeric is null or length is less than 4\n"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1123
    :cond_2
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "ICC records Load is not complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 474
    .local v0, identity:J
    const/4 v2, 0x0

    .line 476
    .local v2, result:Z
    const-string v3, "lge.gps.extracmd.fmw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 508
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    if-nez v2, :cond_1

    .line 511
    invoke-super {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 513
    .end local v2           #result:Z
    :cond_1
    return v2

    .line 479
    .restart local v2       #result:Z
    :cond_2
    const-string v3, "lge.gps.extracmd.raw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v2

    goto :goto_0

    .line 483
    :cond_3
    const-string v3, "SKT"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 484
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->sktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 486
    :cond_4
    const-string v3, "KT"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 487
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->ktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 489
    :cond_5
    const-string v3, "LGU"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->lguHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 492
    :cond_6
    const-string v3, "DCM"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 493
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->dcmHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 495
    :cond_7
    const-string v3, "SPR"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 496
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->sprHandleCarrierAppExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 498
    :cond_8
    const-string v3, "UNF"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->targetOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "MX"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->targetCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->unfMxHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_0

    .line 502
    :cond_9
    const-string v3, "CMCC"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendExtraCommand : CMCC ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->cmccHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 5
    .parameter "request"
    .parameter "source"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 405
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLocationTracking - mPositionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-boolean v0, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_3

    .line 409
    const-string v0, "DCM"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iput-boolean v4, v0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    .line 411
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v0}, Lcom/android/server/location/LgeGpsConstants;->ledControl()V

    .line 412
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v0}, Lcom/android/server/location/LgeGpsConstants;->soundVibControl()V

    .line 440
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 441
    return-void

    .line 415
    :cond_1
    const-string v0, "CMCC"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iput-boolean v4, v0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    .line 417
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    if-eqz v0, :cond_2

    .line 418
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMCC setRequest - local session id :  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    .line 421
    :cond_2
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "CMCC setRequest:setting Control"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->CMCC_AGPS_SettingControl()V

    .line 423
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->CMCC_AGPS_Change_XTRA()V

    goto :goto_0

    .line 429
    :cond_3
    const-string v0, "DCM"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iput-boolean v3, v0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    .line 431
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v0}, Lcom/android/server/location/LgeGpsConstants;->ledControl()V

    .line 432
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v0}, Lcom/android/server/location/LgeGpsConstants;->soundVibControl()V

    goto :goto_0

    .line 435
    :cond_4
    const-string v0, "CMCC"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iput-boolean v3, v0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    goto :goto_0
.end method

.method public unfMxHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 973
    const/4 v0, 0x1

    .line 974
    .local v0, result:Z
    const-string v1, "ms_based_mode"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 977
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mPositionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v0, 0x1

    .line 997
    :goto_0
    return v0

    .line 980
    :cond_0
    const-string v1, "ms_assisted_mode"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 982
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 983
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mPositionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v0, 0x1

    goto :goto_0

    .line 986
    :cond_1
    const-string v1, "ms_standalone_mode"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 988
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 989
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mPositionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v0, 0x1

    goto :goto_0

    .line 994
    :cond_2
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "Error!!! no position mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v0, 0x0

    goto :goto_0
.end method
