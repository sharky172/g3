.class public Lcom/android/server/connectivity/Tethering$EntitlementCheckService;
.super Landroid/app/Service;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntitlementCheckService"
.end annotation


# static fields
.field public static final BLUETOOTH:I = 0x2

.field public static final ENTITLEMENT_CHECK_HOST:Ljava/lang/String; = "entitlement.mobile.att.net"

.field private static final ENTITLEMENT_FAIL_CAUSE:Ljava/lang/String; = "fail_cause"

.field private static final ENTITLEMENT_SUCCESS:Ljava/lang/String; = "success"

.field public static final FAILURE_CAUSECODE_33:I = 0x63

.field public static final HIPRI_ENABLE_TIMEOUT:I = 0x14

.field public static final HOTSPOT_CHECK_PAGE:Ljava/lang/String; = "entitlement.mobile.att.net/mhs1"

.field public static final HOTSPOT_CHECK_URL:Ljava/lang/String; = "http://entitlement.mobile.att.net/mhs1"

.field public static final TETHERING_CHECK_PAGE:Ljava/lang/String; = "entitlement.mobile.att.net/teth"

.field public static final TETHERING_CHECK_URL:Ljava/lang/String; = "http://entitlement.mobile.att.net/teth"

.field public static final USB:I = 0x1

.field public static final VIDEOCALLING_CHECK_PAGE:Ljava/lang/String; = "entitlement.mobile.att.net/gvc1"

.field public static final VIDEOCALLING_CHECK_URL:Ljava/lang/String; = "http://entitlement.mobile.att.net/gvc1"

.field public static final WIFI:I

.field private static mIsHIPRIConnectOpen:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAPNIntentFilter:Landroid/content/IntentFilter;

.field mCm:Landroid/net/ConnectivityManager;

.field private mEntitleType:I

.field private mEntitlementCheckType:I

.field public mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private timeOutTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1287
    const/4 v0, 0x0

    sput v0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mIsHIPRIConnectOpen:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1262
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 1263
    const-string v0, "Tethering"

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->TAG:Ljava/lang/String;

    .line 1270
    iput v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    .line 1271
    iput v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitlementCheckType:I

    .line 1289
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mHandler:Landroid/os/Handler;

    .line 1290
    new-instance v0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$1;-><init>(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->timeOutTask:Ljava/lang/Runnable;

    .line 1417
    new-instance v0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$3;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$3;-><init>(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private SetupMobileConnection()Z
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1461
    const/4 v0, 0x1

    .line 1464
    .local v0, IsTimeout:I
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1466
    .local v5, network:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1467
    const-string v9, "Tethering"

    const-string v10, "[EntitlementCheck] TYPE_MOBILE_HIPRI is already enabled, SKIP to enable it"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_0
    :goto_0
    return v8

    .line 1472
    :cond_1
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const-string v11, "enableHIPRI"

    invoke-virtual {v10, v9, v11}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v7

    .line 1473
    .local v7, resultInt:I
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[EntitlementCheck] startUsingNetworkFeature( ), return value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    const/4 v10, -0x1

    if-ne v7, v10, :cond_2

    .line 1480
    const-string v8, "Tethering"

    const-string v10, "[EntitlementCheck] Wrong result of startUsingNetworkFeature, maybe problems"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1481
    goto :goto_0

    .line 1483
    :cond_2
    sput v8, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mIsHIPRIConnectOpen:I

    .line 1484
    const-string v4, "entitlement.mobile.att.net"

    .line 1488
    .local v4, hostname:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, counter:I
    :goto_1
    const/16 v10, 0x14

    if-ge v1, v10, :cond_3

    .line 1489
    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1490
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[EntitlementCheck] Waiting on HIPRI connection, Count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    .line 1492
    const/4 v0, 0x0

    .line 1502
    :cond_3
    if-ne v0, v8, :cond_5

    .line 1503
    const-string v8, "Tethering"

    const-string v10, "[EntitlementCheck] Timeout on wating mobile network"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1504
    goto :goto_0

    .line 1495
    :cond_4
    const-wide/16 v10, 0x3e8

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1488
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1497
    :catch_0
    move-exception v2

    .line 1498
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v8, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[EntitlementCheck] Exception on waiting, Except "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1499
    goto/16 :goto_0

    .line 1507
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_5
    const-string v10, "Tethering"

    const-string v11, "start lookupHost()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 1510
    .local v3, hostAddress:Ljava/net/InetAddress;
    if-nez v3, :cond_6

    .line 1511
    const-string v8, "Tethering"

    const-string v10, "[EntitlementCheck] Error on lookupHost()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1512
    goto/16 :goto_0

    .line 1515
    :cond_6
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "start requestRouteToHostAddress() with host address = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v13, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v6

    .line 1517
    .local v6, resultBool:Z
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[EntitlementCheck] requestRouteToHost result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    if-nez v6, :cond_0

    .line 1519
    const-string v8, "Tethering"

    const-string v10, "[EntitlementCheck] Wrong requestRouteToHost result: expected true, but was false"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1520
    goto/16 :goto_0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1262
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->performServiceLayerEntitlementCheck()I

    move-result v0

    return v0
.end method

.method private getEntitlementCheckType()I
    .locals 3

    .prologue
    .line 1435
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tether_entitlement_check_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 10
    .parameter "hostname"

    .prologue
    const/4 v6, 0x0

    .line 1442
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1448
    .local v4, inetAddress:[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, arr$:[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v1, v3

    .line 1449
    .local v0, a:Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_1

    .line 1456
    .end local v0           #a:Ljava/net/InetAddress;
    .end local v1           #arr$:[Ljava/net/InetAddress;
    .end local v3           #i$:I
    .end local v4           #inetAddress:[Ljava/net/InetAddress;
    .end local v5           #len$:I
    :cond_0
    :goto_1
    return-object v0

    .line 1443
    :catch_0
    move-exception v2

    .line 1444
    .local v2, e:Ljava/net/UnknownHostException;
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception on getAllByName(), Exception Msg ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 1445
    goto :goto_1

    .line 1451
    .end local v2           #e:Ljava/net/UnknownHostException;
    .restart local v0       #a:Ljava/net/InetAddress;
    .restart local v1       #arr$:[Ljava/net/InetAddress;
    .restart local v3       #i$:I
    .restart local v4       #inetAddress:[Ljava/net/InetAddress;
    .restart local v5       #len$:I
    :cond_1
    instance-of v7, v0, Ljava/net/Inet6Address;

    if-nez v7, :cond_0

    .line 1448
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1455
    .end local v0           #a:Ljava/net/InetAddress;
    :cond_2
    const-string v7, "Tethering"

    const-string v8, "Failed to find inetAddress in lookupHost(), return NULL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 1456
    goto :goto_1
.end method

.method private performServiceLayerEntitlementCheck()I
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1527
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1528
    .local v3, cur_wifi:Landroid/net/NetworkInfo;
    const/4 v7, 0x3

    .line 1529
    .local v7, ret_code:I
    const/4 v1, 0x0

    .line 1530
    .local v1, IsTimeout:I
    const/4 v2, 0x0

    .line 1532
    .local v2, counter:I
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1534
    const-string v10, "Tethering"

    const-string v11, "[EntitlementCheck] Data enabler off by the setting menu"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const/4 v10, 0x3

    .line 1588
    :goto_0
    return v10

    .line 1538
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->SetupMobileConnection()Z

    move-result v6

    .line 1539
    .local v6, ret:Z
    if-eq v6, v13, :cond_1

    .line 1540
    const-string v10, "Tethering"

    const-string v11, "[EntitlementCheck] SetupMobileConnection(), return false"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v7

    .line 1541
    goto :goto_0

    .line 1544
    :cond_1
    const/4 v9, 0x0

    .line 1549
    .local v9, urlConnection:Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[EntitlementCheck] HTTP Request with mEntitleType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    if-ne v10, v13, :cond_3

    .line 1551
    new-instance v8, Ljava/net/URL;

    const-string v10, "http://entitlement.mobile.att.net/teth"

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v8, url:Ljava/net/URL;
    :goto_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 1559
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1560
    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1561
    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1562
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1565
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 1566
    .local v5, result:I
    const/16 v10, 0xc8

    if-ne v5, v10, :cond_5

    .line 1567
    const-string v10, "Tethering"

    const-string v11, "[EntitlementCheck] Success"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1568
    const/4 v7, 0x0

    .line 1590
    :goto_2
    if-eqz v9, :cond_2

    .line 1591
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v10, v7

    .line 1576
    goto :goto_0

    .line 1552
    .end local v5           #result:I
    .end local v8           #url:Ljava/net/URL;
    :cond_3
    :try_start_1
    iget v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 1553
    new-instance v8, Ljava/net/URL;

    const-string v10, "http://entitlement.mobile.att.net/teth"

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v8       #url:Ljava/net/URL;
    goto :goto_1

    .line 1555
    .end local v8           #url:Ljava/net/URL;
    :cond_4
    new-instance v8, Ljava/net/URL;

    const-string v10, "http://entitlement.mobile.att.net/mhs1"

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v8       #url:Ljava/net/URL;
    goto :goto_1

    .line 1569
    .restart local v5       #result:I
    :cond_5
    const/16 v10, 0x193

    if-ne v5, v10, :cond_6

    .line 1570
    const-string v10, "Tethering"

    const-string v11, "[EntitlementCheck] fail cause code 33"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    const/16 v7, 0x63

    goto :goto_2

    .line 1573
    :cond_6
    const-string v10, "Tethering"

    const-string v11, "[EntitlementCheck] fail temperal network problem"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1574
    const/4 v7, 0x3

    goto :goto_2

    .line 1577
    .end local v5           #result:I
    .end local v8           #url:Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 1578
    .local v4, e:Ljava/net/UnknownHostException;
    :try_start_2
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Entitlement check - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1579
    const/4 v7, 0x3

    .line 1590
    if-eqz v9, :cond_7

    .line 1591
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move v10, v7

    .line 1580
    goto/16 :goto_0

    .line 1581
    .end local v4           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v4

    .line 1582
    .local v4, e:Ljava/net/ConnectException;
    :try_start_3
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Entitlement check - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1583
    const/4 v7, 0x3

    .line 1590
    if-eqz v9, :cond_8

    .line 1591
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    move v10, v7

    .line 1584
    goto/16 :goto_0

    .line 1585
    .end local v4           #e:Ljava/net/ConnectException;
    :catch_2
    move-exception v4

    .line 1586
    .local v4, e:Ljava/io/IOException;
    :try_start_4
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Entitlement check - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1587
    const/16 v7, 0x63

    .line 1590
    if-eqz v9, :cond_9

    .line 1591
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    move v10, v7

    .line 1588
    goto/16 :goto_0

    .line 1590
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_a

    .line 1591
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1590
    :cond_a
    throw v10
.end method


# virtual methods
.method public disableTethering()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1399
    const-string v5, "Tethering"

    const-string v6, "[EntitlementCheck] Disable Tethering"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 1401
    .local v4, mIfaces:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1402
    .local v3, mIface:Ljava/lang/String;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EntitlementCheck] Untethering  Interface =>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    .line 1404
    const-string v5, "wlan0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1405
    const-string v5, "Tethering"

    const-string v6, "[EntitlementCheck] Disable Mobile Hotspot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1407
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$300()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_saved_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 1409
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1410
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$300()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_saved_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1401
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1415
    .end local v3           #mIface:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1386
    const-string v0, "Tethering"

    const-string v1, "[EntitlementCheck] onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 1300
    const-string v5, "Tethering"

    const-string v6, "[EntitlementCheck] onCreate()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    .line 1302
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.DATA_CONNECTED_STATUS"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mAPNIntentFilter:Landroid/content/IntentFilter;

    .line 1303
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mAPNIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v5, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1305
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1306
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->getEntitlementCheckType()I

    move-result v5

    iput v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitlementCheckType:I

    .line 1307
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EntitlementCheck] onCreate(), mEntitlementCheckType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitlementCheckType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 1311
    .local v4, mIfaces:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 1312
    .local v3, mIface:Ljava/lang/String;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EntitlementCheck] onCreate() Find Interface =>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const-string v5, "wlan0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1314
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    .line 1311
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1315
    :cond_1
    const-string v5, "usb0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1316
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    goto :goto_1

    .line 1317
    :cond_2
    const-string v5, "bt-pan"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1318
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    goto :goto_1

    .line 1321
    .end local v3           #mIface:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1369
    const-string v0, "Tethering"

    const-string v1, "[EntitlementCheck] onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1371
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->timeOutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1373
    iget v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitlementCheckType:I

    if-ne v0, v3, :cond_1

    .line 1374
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const-string v1, "enableENTITLEMENT"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    sget v0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mIsHIPRIConnectOpen:I

    if-ne v0, v3, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const-string v1, "enableHIPRI"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1378
    const-string v0, "Tethering"

    const-string v1, "[EntitlementCheck] stopUsingNetworkFeature() with Phone.FEATURE_ENABLE_HIPRI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v6, 0x1

    .line 1324
    iget v2, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitlementCheckType:I

    if-ne v2, v6, :cond_3

    .line 1325
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    const-string v4, "enableHIPRI"

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 1328
    .local v1, result:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1330
    :cond_0
    const-string v2, "Tethering"

    const-string v3, "[EntitlementCheck] StartUsingNetwork failed   APN_REQUEST_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->disableTethering()V

    .line 1332
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 1365
    .end local v1           #result:I
    :goto_0
    return v6

    .line 1333
    .restart local v1       #result:I
    :cond_1
    if-nez v1, :cond_2

    .line 1334
    const-string v2, "Tethering"

    const-string v3, "[EntitlementCheck] StartUsingNetwork APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 1337
    :cond_2
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EntitlementCheck] onCreate  Entitlement Successfully tried ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   Set TIMEOUT 30 sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->timeOutTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1343
    .end local v1           #result:I
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;-><init>(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1363
    .local v0, conn:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setAlarm_Entitle()V
    .locals 8

    .prologue
    .line 1391
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$300()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tether_entitlement_check_interval"

    const/16 v5, 0x5a0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1393
    .local v2, intervalMin:I
    const-string v3, "Tethering"

    const-string v4, "[EntitlementCheck11] setAlarm_Entitle() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const v3, 0xea60

    mul-int/2addr v3, v2

    int-to-long v0, v3

    .line 1395
    .local v0, interval:J
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$500()Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v0

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$400()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1397
    return-void
.end method
