.class public Lcom/android/server/location/LgeGpsConstants;
.super Ljava/lang/Object;
.source "LgeGpsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static LGE_GNSS_CONF_FILE:Ljava/lang/String; = null

.field private static final LGE_GNSS_DCM_CONF_FILE:Ljava/lang/String; = "/data/dcm_gnss.conf"

.field private static PROPERTIES_FILE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LgeGpsConstants"

.field private static mAssistedEnable:I

.field private static mGlonassEnable:I

.field private static mGpsDcmConfMap:Ljava/util/HashMap;
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

.field private static mGpsIntConfMap:Ljava/util/HashMap;
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

.field private static mGpsStrConfMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLgeContext:Landroid/content/Context;

.field private static mUserAgent:Ljava/lang/String;

.field private static mVendorNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LED_GPS_ID:I

.field private mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

.field private mLedOn:Z

.field private mSoundOn:Z

.field public mTracking:Z

.field private mVibratorOn:Z

.field public mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

.field public nm:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 74
    const-string v2, "/etc/gps.conf"

    sput-object v2, Lcom/android/server/location/LgeGpsConstants;->PROPERTIES_FILE:Ljava/lang/String;

    .line 75
    const-string v2, "/data/ext_gps.conf"

    sput-object v2, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    .line 81
    sput v3, Lcom/android/server/location/LgeGpsConstants;->mAssistedEnable:I

    .line 82
    sput v3, Lcom/android/server/location/LgeGpsConstants;->mGlonassEnable:I

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsDcmConfMap:Ljava/util/HashMap;

    .line 84
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/location/LgeGpsConstants;->mVendorNameMap:Ljava/util/HashMap;

    .line 90
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 91
    .local v1, mLgeProperties:Ljava/util/Properties;
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->PROPERTIES_FILE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/location/LgeGpsConstants;->readFile(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    const-string v3, "LgeSuplServerHost"

    const-string v4, "SUPL_HOST"

    invoke-virtual {v1, v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    const-string v3, "VendorName"

    const-string v4, "VENDOR"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v3, "PositionMode"

    const-string v4, "LGE_GPS_POSITION_MODE"

    invoke-static {v1, v4}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v3, "LgeSuplServerPort"

    const-string v4, "SUPL_PORT"

    invoke-static {v1, v4}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v3, "LgeTlsMode"

    const-string v4, "LGE_TLS_MODE"

    invoke-static {v1, v4}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v3, "LgeSuplType"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/server/location/LgeGpsConstants;->initializeXTRAUserAgent()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/location/LgeGpsConstants;->mUserAgent:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 102
    .local v0, mLgeDcmProperties:Ljava/util/Properties;
    const-string v2, "/data/dcm_gnss.conf"

    invoke-static {v0, v2}, Lcom/android/server/location/LgeGpsConstants;->readFile(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsDcmConfMap:Ljava/util/HashMap;

    const-string v3, "PositionMode"

    const-string v4, "LGE_GPS_POSITION_MODE"

    invoke-static {v0, v4}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsDcmConfMap:Ljava/util/HashMap;

    const-string v3, "MsAssisted"

    const-string v4, "LGE_GPS_MS_ASSISTED_ENABLE"

    invoke-virtual {v0, v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsDcmConfMap:Ljava/util/HashMap;

    const-string v3, "GlonassEnable"

    const-string v4, "LGE_GLONASS_ENABLE"

    invoke-virtual {v0, v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/app/Notification;

    const-string v1, "LED_GPS"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/android/server/location/LgeGpsConstants;->notification:Landroid/app/Notification;

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/location/LgeGpsConstants;->LED_GPS_ID:I

    .line 67
    iput-boolean v4, p0, Lcom/android/server/location/LgeGpsConstants;->mSoundOn:Z

    .line 68
    iput-boolean v4, p0, Lcom/android/server/location/LgeGpsConstants;->mVibratorOn:Z

    .line 69
    iput-boolean v4, p0, Lcom/android/server/location/LgeGpsConstants;->mLedOn:Z

    .line 70
    iput-boolean v4, p0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    .line 567
    return-void
.end method

.method private emotionalLedCtrl(Z)V
    .locals 6
    .parameter "isOn"

    .prologue
    const/4 v5, 0x1

    .line 432
    const-string v2, "LgeGpsConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emotionalLedCtrl, isOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, bNeedChange:Z
    iget-boolean v2, p0, Lcom/android/server/location/LgeGpsConstants;->mLedOn:Z

    if-nez v2, :cond_1

    if-ne p1, v5, :cond_1

    .line 437
    const/4 v0, 0x1

    .line 446
    :goto_0
    if-ne v0, v5, :cond_0

    .line 448
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.android.intent.action.GNSS_ALERT_LED_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v1, intent:Landroid/content/Intent;
    if-ne p1, v5, :cond_3

    .line 450
    const-string v2, "com.lge.intent.extra.EXTRA_GNSS_LED_STATE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    :goto_1
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsConstants;->mLedOn:Z

    .line 459
    const-string v2, "LgeGpsConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emotionalLedCtrl, change to led status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/location/LgeGpsConstants;->mLedOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 439
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/location/LgeGpsConstants;->mLedOn:Z

    if-ne v2, v5, :cond_2

    if-nez p1, :cond_2

    .line 440
    const/4 v0, 0x1

    goto :goto_0

    .line 443
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 453
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3
    const-string v2, "com.lge.intent.extra.EXTRA_GNSS_LED_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private static getCarrierName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 321
    const-string v2, "ro.cdma.home.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, mCarrierNumeric:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v1, mMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "310120"

    const-string v3, "Sprint"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v2, "311490"

    const-string v3, "Virgin"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v2, "311870"

    const-string v3, "Boost"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "Wholesale"

    goto :goto_0
.end method

.method private static getDateString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 335
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, "ro.build.date"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 336
    .local v8, stok:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, mDay:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, mMonth:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, mDate:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, mTime:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, mStandardTime:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, mYear:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 345
    .local v4, mParsedDate:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v2, mMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "Jan"

    const-string v10, "01"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Feb"

    const-string v10, "02"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Mar"

    const-string v10, "03"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Apr"

    const-string v10, "04"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "May"

    const-string v10, "05"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Jun"

    const-string v10, "06"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v9, "Jul"

    const-string v10, "07"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Aug"

    const-string v10, "08"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Sep"

    const-string v10, "09"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Oct"

    const-string v10, "10"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Nov"

    const-string v10, "11"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Dec"

    const-string v10, "12"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I
    .locals 6
    .parameter "prop"
    .parameter "confname"

    .prologue
    .line 279
    const-string v3, "1"

    invoke-virtual {p0, p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, sParam:Ljava/lang/String;
    const/4 v1, 0x0

    .line 281
    .local v1, iParam:I
    if-eqz v2, :cond_0

    .line 283
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 288
    :cond_0
    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "LgeGpsConstants"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getXTRAUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/android/server/location/LgeGpsConstants;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private static initializeXTRAUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 296
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    const-string v3, "VendorName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    .local v1, mVendorName:Ljava/lang/String;
    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    const-string v0, "Android"

    .line 315
    :goto_0
    return-object v0

    .line 301
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/location/LgeGpsConstants;->getCarrierName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "LG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.board.platform"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "LTE-CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.lge.swversion"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/location/LgeGpsConstants;->getDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, mUserAgent:Ljava/lang/String;
    const-string v2, "LgeGpsConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gpsOneXTRA HTTP User-Agent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isSupportELED()Z
    .locals 2

    .prologue
    .line 428
    const-string v0, "ro.lge.capp_emotional_led"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static loadDcmIntConfig(Ljava/lang/String;)I
    .locals 1
    .parameter "dcmintconf"

    .prologue
    .line 146
    sget-object v0, Lcom/android/server/location/LgeGpsConstants;->mGpsDcmConfMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static loadIntConfig(Ljava/lang/String;)I
    .locals 4
    .parameter "intconf"

    .prologue
    .line 132
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 134
    .local v0, mExtProperties:Ljava/util/Properties;
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/location/LgeGpsConstants;->readFile(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v2, "PositionMode"

    const-string v3, "LGE_GPS_POSITION_MODE"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v2, "LgeSuplType"

    const-string v3, "SUPL_TYPE"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v2, "LgeSuplServerPort"

    const-string v3, "SUPL_PORT"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v2, "LgeTlsMode"

    const-string v3, "LGE_TLS_MODE"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static loadStrConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strconf"

    .prologue
    .line 119
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 121
    .local v0, mExtProperties:Ljava/util/Properties;
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/location/LgeGpsConstants;->readFile(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    const-string v2, "LgeSuplServerHost"

    const-string v3, "SUPL_HOST"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private normalLedCtrl(Z)V
    .locals 7
    .parameter "isOn"

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x7

    const/4 v4, 0x1

    .line 464
    const-string v1, "LgeGpsConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emotionalLedCtrl, isOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, 0x0

    .line 468
    .local v0, bNeedChange:Z
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsConstants;->mLedOn:Z

    if-nez v1, :cond_1

    if-ne p1, v4, :cond_1

    .line 469
    const/4 v0, 0x1

    .line 478
    :goto_0
    if-ne v0, v4, :cond_0

    .line 479
    if-ne p1, v4, :cond_3

    .line 480
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->notification:Landroid/app/Notification;

    const/16 v2, 0xff

    iput v2, v1, Landroid/app/Notification;->ledARGB:I

    .line 481
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->notification:Landroid/app/Notification;

    iput v6, v1, Landroid/app/Notification;->ledOnMS:I

    .line 482
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->notification:Landroid/app/Notification;

    iput v6, v1, Landroid/app/Notification;->ledOffMS:I

    .line 483
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 484
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 485
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->notification:Landroid/app/Notification;

    const/4 v2, 0x0

    iput v2, v1, Landroid/app/Notification;->priority:I

    .line 486
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x700

    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 487
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->nm:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/server/location/LgeGpsConstants;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 493
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsConstants;->mLedOn:Z

    .line 495
    const-string v1, "LgeGpsConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emotionalLedCtrl, change to led status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsConstants;->mLedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    return-void

    .line 471
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsConstants;->mLedOn:Z

    if-ne v1, v4, :cond_2

    if-nez p1, :cond_2

    .line 472
    const/4 v0, 0x1

    goto :goto_0

    .line 475
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 490
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method public static readFile(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 6
    .parameter "prop"
    .parameter "fpath"

    .prologue
    .line 256
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 259
    .local v2, ret:Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 261
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 262
    .local v3, stream:Ljava/io/FileInputStream;
    invoke-virtual {p0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 263
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    const/4 v2, 0x1

    .line 273
    .end local v3           #stream:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return v2

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "LgeGpsConstants"

    const-string v5, "unable to open the file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v2, 0x0

    .line 271
    goto :goto_0

    .line 268
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 269
    .local v0, e:Ljava/io/IOException;
    const-string v4, "LgeGpsConstants"

    const-string v5, "unable to load or close the stream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 115
    sput-object p0, Lcom/android/server/location/LgeGpsConstants;->mLgeContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method private soundCtrl(Z)V
    .locals 5
    .parameter "isOn"

    .prologue
    const/4 v4, 0x1

    .line 500
    const-string v1, "LgeGpsConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "soundCtrl, mSoundOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsConstants;->mSoundOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, bNeedChange:Z
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsConstants;->mSoundOn:Z

    if-nez v1, :cond_2

    if-ne p1, v4, :cond_2

    .line 504
    const/4 v0, 0x1

    .line 513
    :goto_0
    if-ne v0, v4, :cond_1

    .line 514
    if-ne p1, v4, :cond_4

    .line 515
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    if-nez v1, :cond_0

    .line 516
    new-instance v1, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    invoke-direct {v1}, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    invoke-virtual {v1}, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->play()V

    .line 519
    const-string v1, "LgeGpsConstants"

    const-string v2, "sound start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsConstants;->mSoundOn:Z

    .line 529
    :cond_1
    return-void

    .line 506
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsConstants;->mSoundOn:Z

    if-ne v1, v4, :cond_3

    if-nez p1, :cond_3

    .line 507
    const/4 v0, 0x1

    goto :goto_0

    .line 510
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 522
    :cond_4
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    if-eqz v1, :cond_5

    .line 523
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    invoke-virtual {v1}, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->release()V

    .line 525
    :cond_5
    const-string v1, "LgeGpsConstants"

    const-string v2, "sound stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private vibratorCtrl(Z)V
    .locals 10
    .parameter "isOn"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 532
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibratorCtrl, mVibratorOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/location/LgeGpsConstants;->mSoundOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, bNeedChange:Z
    iget-boolean v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVibratorOn:Z

    if-nez v5, :cond_0

    if-ne p1, v8, :cond_0

    .line 536
    const/4 v0, 0x1

    .line 545
    :goto_0
    if-ne v0, v8, :cond_3

    iget-object v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    if-eqz v5, :cond_3

    .line 546
    if-ne p1, v8, :cond_4

    .line 547
    new-array v2, v9, [J

    fill-array-data v2, :array_0

    .line 548
    .local v2, sVibratePattern:[J
    new-array v3, v9, [I

    .line 549
    .local v3, vibPatternVol:[I
    iget-object v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    iget-object v6, p0, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    invoke-interface {v5, v8}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->getVibrateVolume(I)I

    move-result v4

    .line 551
    .local v4, vibVol:I
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mVibrator vibVol"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v9, :cond_2

    .line 553
    aput v4, v3, v1

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 538
    .end local v1           #i:I
    .end local v2           #sVibratePattern:[J
    .end local v3           #vibPatternVol:[I
    .end local v4           #vibVol:I
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVibratorOn:Z

    if-ne v5, v8, :cond_1

    if-nez p1, :cond_1

    .line 539
    const/4 v0, 0x1

    goto :goto_0

    .line 542
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 556
    .restart local v1       #i:I
    .restart local v2       #sVibratePattern:[J
    .restart local v3       #vibPatternVol:[I
    .restart local v4       #vibVol:I
    :cond_2
    iget-object v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6, v3}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->vibrate([JI[I)V

    .line 557
    const-string v5, "LgeGpsConstants"

    const-string v6, "vib start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .end local v1           #i:I
    .end local v2           #sVibratePattern:[J
    .end local v3           #vibPatternVol:[I
    .end local v4           #vibVol:I
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsConstants;->mVibratorOn:Z

    .line 565
    :cond_3
    return-void

    .line 560
    :cond_4
    iget-object v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    invoke-interface {v5}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->cancel()V

    .line 561
    const-string v5, "LgeGpsConstants"

    const-string v6, "vib stop"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 547
    :array_0
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public ledControl()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, nLedSettingAll:I
    const/4 v1, 0x0

    .line 366
    .local v1, nLedSettingGps:I
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsConstants;->isSupportELED()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 367
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lge_notification_light_pulse"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 369
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emotional_led_gps"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 379
    :goto_0
    const-string v2, "LgeGpsConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nLedSettingAll :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v2, "LgeGpsConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nLedSettingGps :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-ne v0, v5, :cond_3

    if-ne v1, v5, :cond_3

    iget-boolean v2, p0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    if-ne v2, v5, :cond_3

    .line 383
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsConstants;->isSupportELED()Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 384
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsConstants;->emotionalLedCtrl(Z)V

    .line 396
    :cond_0
    :goto_1
    return-void

    .line 373
    :cond_1
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "front_key_all"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 375
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "front_key_gps"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 386
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsConstants;->normalLedCtrl(Z)V

    goto :goto_1

    .line 389
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    if-nez v2, :cond_0

    .line 390
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsConstants;->isSupportELED()Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 391
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsConstants;->emotionalLedCtrl(Z)V

    goto :goto_1

    .line 393
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsConstants;->normalLedCtrl(Z)V

    goto :goto_1
.end method

.method public lgeDefaultGnssConfig()V
    .locals 5

    .prologue
    .line 174
    const-string v2, "LgeGpsConstants"

    const-string v3, "LGE GNSS Ext Config Default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    const-string v2, "LgeGpsConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delete fail !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LgeGpsConstants"

    const-string v3, " LGE GNSS Ext Config Default Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public lgeSaveGnssConfig(IILjava/lang/String;II)V
    .locals 9
    .parameter "PositionMode"
    .parameter "SuplType"
    .parameter "SuplHost"
    .parameter "SuplPort"
    .parameter "TlsMode"

    .prologue
    .line 150
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LGE GNSS Ext Config Save, posMode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SuplType ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SUPL_HOST ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SUPL_PORT ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", TLS_MODE ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v3, 0x0

    .line 154
    .local v3, writer:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_1
    const-string v5, "%s=%d\n%s=%d\n%s=%s\n%s=%d\n%s=%d\n"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "LGE_GPS_POSITION_MODE"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "SUPL_TYPE"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "SUPL_HOST"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p3, v6, v7

    const/4 v7, 0x6

    const-string v8, "SUPL_PORT"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "LGE_TLS_MODE"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, config:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 166
    if-eqz v4, :cond_2

    .line 167
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 171
    .end local v0           #config:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 168
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v0       #config:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const-string v5, "LgeGpsConstants"

    const-string v6, "LG GNSS Config File close Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_0

    .line 163
    .end local v0           #config:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 164
    .restart local v1       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "LgeGpsConstants"

    const-string v6, "LG GNSS Config File save Fail"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    if-eqz v3, :cond_0

    .line 167
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 168
    :catch_2
    move-exception v1

    const-string v5, "LgeGpsConstants"

    const-string v6, "LG GNSS Config File close Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 167
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 168
    :cond_1
    :goto_3
    throw v5

    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "LgeGpsConstants"

    const-string v7, "LG GNSS Config File close Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 166
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_2

    .line 163
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_1

    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v0       #config:Ljava/lang/String;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :cond_2
    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_0
.end method

.method public saveDcmConfig(II)Z
    .locals 12
    .parameter "agpsSetting"
    .parameter "glonass"

    .prologue
    .line 189
    const/4 v10, 0x0

    .line 190
    .local v10, result:Z
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 196
    .local v9, property:Ljava/util/Properties;
    if-nez v9, :cond_0

    .line 197
    const/4 v11, 0x0

    .line 244
    :goto_0
    return v11

    .line 200
    :cond_0
    div-int/lit8 v11, p1, 0x2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, assistedEnable:Ljava/lang/String;
    add-int/lit8 v11, p1, 0x1

    div-int/lit8 v11, v11, 0x2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, positionMode:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, glonassEnable:Ljava/lang/String;
    const/4 v4, 0x0

    .line 205
    .local v4, instream:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 207
    .local v6, outstream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v11, "/data/dcm_gnss.conf"

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 211
    :cond_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 212
    .end local v4           #instream:Ljava/io/FileInputStream;
    .local v5, instream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v7, v2, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 213
    .end local v6           #outstream:Ljava/io/FileOutputStream;
    .local v7, outstream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v9, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 215
    const-string v11, "LGE_GPS_POSITION_MODE"

    invoke-virtual {v9, v11, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    const-string v11, "LGE_GPS_MS_ASSISTED_ENABLE"

    invoke-virtual {v9, v11, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    const-string v11, "LGE_GLONASS_ENABLE"

    invoke-virtual {v9, v11, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    const/4 v11, 0x0

    invoke-virtual {v9, v7, v11}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 222
    const/4 v10, 0x1

    .line 228
    if-eqz v7, :cond_2

    .line 229
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 236
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 237
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    move-object v6, v7

    .end local v7           #outstream:Ljava/io/FileOutputStream;
    .restart local v6       #outstream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v2           #file:Ljava/io/File;
    .end local v5           #instream:Ljava/io/FileInputStream;
    .restart local v4       #instream:Ljava/io/FileInputStream;
    :cond_4
    :goto_2
    move v11, v10

    .line 244
    goto :goto_0

    .line 231
    .end local v4           #instream:Ljava/io/FileInputStream;
    .end local v6           #outstream:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #instream:Ljava/io/FileInputStream;
    .restart local v7       #outstream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 232
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 239
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 240
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7           #outstream:Ljava/io/FileOutputStream;
    .restart local v6       #outstream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 242
    .end local v5           #instream:Ljava/io/FileInputStream;
    .restart local v4       #instream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 223
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    :catch_2
    move-exception v1

    .line 225
    .restart local v1       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 228
    if-eqz v6, :cond_5

    .line 229
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 236
    :cond_5
    :goto_4
    if-eqz v4, :cond_4

    .line 237
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 239
    :catch_3
    move-exception v1

    .line 240
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 231
    :catch_4
    move-exception v1

    .line 232
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 227
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 228
    :goto_5
    if-eqz v6, :cond_6

    .line 229
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 236
    :cond_6
    :goto_6
    if-eqz v4, :cond_7

    .line 237
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 241
    :cond_7
    :goto_7
    throw v11

    .line 231
    :catch_5
    move-exception v1

    .line 232
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 239
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 240
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 227
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #instream:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #instream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5           #instream:Ljava/io/FileInputStream;
    .restart local v4       #instream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4           #instream:Ljava/io/FileInputStream;
    .end local v6           #outstream:Ljava/io/FileOutputStream;
    .restart local v5       #instream:Ljava/io/FileInputStream;
    .restart local v7       #outstream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #outstream:Ljava/io/FileOutputStream;
    .restart local v6       #outstream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #instream:Ljava/io/FileInputStream;
    .restart local v4       #instream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 223
    .end local v4           #instream:Ljava/io/FileInputStream;
    .restart local v5       #instream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5           #instream:Ljava/io/FileInputStream;
    .restart local v4       #instream:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4           #instream:Ljava/io/FileInputStream;
    .end local v6           #outstream:Ljava/io/FileOutputStream;
    .restart local v5       #instream:Ljava/io/FileInputStream;
    .restart local v7       #outstream:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v6, v7

    .end local v7           #outstream:Ljava/io/FileOutputStream;
    .restart local v6       #outstream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #instream:Ljava/io/FileInputStream;
    .restart local v4       #instream:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public soundVibControl()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 401
    sget-object v3, Lcom/android/server/location/LgeGpsConstants;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_gps_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 405
    .local v2, nSoundSetting:I
    if-ne v2, v5, :cond_3

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    if-ne v3, v5, :cond_3

    .line 406
    sget-object v3, Lcom/android/server/location/LgeGpsConstants;->mLgeContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 407
    .local v0, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 408
    .local v1, nRingerMode:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 409
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsConstants;->soundCtrl(Z)V

    .line 410
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsConstants;->vibratorCtrl(Z)V

    .line 425
    .end local v0           #mAudioManager:Landroid/media/AudioManager;
    .end local v1           #nRingerMode:I
    :cond_0
    :goto_0
    return-void

    .line 411
    .restart local v0       #mAudioManager:Landroid/media/AudioManager;
    .restart local v1       #nRingerMode:I
    :cond_1
    if-ne v1, v5, :cond_2

    .line 412
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsConstants;->soundCtrl(Z)V

    .line 413
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsConstants;->vibratorCtrl(Z)V

    goto :goto_0

    .line 416
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsConstants;->soundCtrl(Z)V

    .line 417
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsConstants;->vibratorCtrl(Z)V

    goto :goto_0

    .line 420
    .end local v0           #mAudioManager:Landroid/media/AudioManager;
    .end local v1           #nRingerMode:I
    :cond_3
    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    if-nez v3, :cond_0

    .line 421
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsConstants;->soundCtrl(Z)V

    .line 422
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsConstants;->vibratorCtrl(Z)V

    goto :goto_0
.end method
