.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1598
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 1600
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1601
    .local v1, action:Ljava/lang/String;
    const-string v11, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1602
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1603
    :try_start_0
    const-string v11, "connected"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1604
    .local v9, usbConnected:Z
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v13, "rndis"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    #setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v11, v13}, Lcom/android/server/connectivity/Tethering;->access$702(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1605
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v13, "ecm"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    #setter for: Lcom/android/server/connectivity/Tethering;->mEcmEnabled:Z
    invoke-static {v11, v13}, Lcom/android/server/connectivity/Tethering;->access$802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1606
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v13, "ncm"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    #setter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static {v11, v13}, Lcom/android/server/connectivity/Tethering;->access$902(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1608
    if-eqz v9, :cond_1

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mEcmEnabled:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1609
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v13, 0x1

    #calls: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v11, v13}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1612
    :cond_1
    if-eqz v9, :cond_2

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1613
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v13, 0x1

    #calls: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v11, v13}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1616
    :cond_2
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v11, v13}, Lcom/android/server/connectivity/Tethering;->access$1002(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1617
    monitor-exit v12

    .line 1735
    .end local v9           #usbConnected:Z
    :cond_3
    :goto_0
    return-void

    .line 1617
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 1619
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    if-eqz v11, :cond_7

    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1623
    const-string v11, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1624
    const-string v11, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 1626
    .local v6, info:Landroid/net/NetworkInfo;
    const-string v11, "connectivity"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1627
    .local v2, binder:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    .line 1628
    .local v3, cm:Landroid/net/IConnectivityManager;
    const/4 v10, 0x0

    .line 1630
    .local v10, wifi:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_5

    .line 1631
    const/4 v11, 0x1

    :try_start_1
    invoke-interface {v3, v11}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 1637
    :cond_5
    :goto_1
    if-eqz v6, :cond_3

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    const/16 v12, 0x12

    if-ne v11, v12, :cond_3

    .line 1638
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TYPE_WIFI :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "info reason :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v11

    const-string v12, "apnFailed"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-nez v11, :cond_6

    .line 1641
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget v12, v11, Lcom/android/server/connectivity/Tethering;->nRetryCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/android/server/connectivity/Tethering;->nRetryCount:I

    .line 1643
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget v11, v11, Lcom/android/server/connectivity/Tethering;->nRetryCount:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_3

    .line 1644
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LGE_DATA] untethered, nRetryCount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget v13, v13, Lcom/android/server/connectivity/Tethering;->nRetryCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    .line 1646
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mtempWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1647
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/server/connectivity/Tethering;->nRetryCount:I

    goto/16 :goto_0

    .line 1632
    :catch_0
    move-exception v4

    .line 1633
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error getNetworkInfo(ConnectivityManager.TYPE_WIFI) :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1649
    .end local v4           #e:Ljava/lang/Exception;
    :cond_6
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1650
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/server/connectivity/Tethering;->nRetryCount:I

    goto/16 :goto_0

    .line 1657
    .end local v2           #binder:Landroid/os/IBinder;
    .end local v3           #cm:Landroid/net/IConnectivityManager;
    .end local v6           #info:Landroid/net/NetworkInfo;
    .end local v10           #wifi:Landroid/net/NetworkInfo;
    :cond_7
    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1658
    const-string v11, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 1660
    .local v8, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v11, v12, :cond_3

    .line 1663
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1665
    .end local v8           #networkInfo:Landroid/net/NetworkInfo;
    :cond_8
    const-string v11, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1666
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v11}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto/16 :goto_0

    .line 1669
    :cond_9
    const-string v11, "com.lge.wifi.sap.WIFI_SAP_STATION_ASSOC"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "com.lge.wifi.sap.WIFI_SAP_STATION_DISASSOC"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "com.lge.wifi.sap.WIFI_SAP_HOSTAPD_CONNECTED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1678
    :cond_a
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiSoftAPIface()Lcom/lge/wifi/extension/IWifiSoftAP;

    move-result-object v11

    invoke-interface {v11}, Lcom/lge/wifi/extension/IWifiSoftAP;->getAllAssocMacListATT()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 1680
    .local v5, i:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$300()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ap_current_max_client"

    const/16 v13, 0x8

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1682
    .local v7, maxCount:I
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[Tethering] Station Num =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useCommonHotspotAPI()Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "com.lge.wifi.sap.WIFI_SAP_HOSTAPD_CONNECTED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1684
    sget-boolean v11, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v11, :cond_3

    .line 1685
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LG Common UI] Tethering got WIFI_SAP_STATION_ASSOC_ACTION num =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "max = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-gt v5, v7, :cond_3

    .line 1688
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1500()[I

    move-result-object v12

    aget v12, v12, v5

    #calls: Lcom/android/server/connectivity/Tethering;->showWiFiTetheredNotification(I)V
    invoke-static {v11, v12}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1692
    :cond_b
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->TARGET_OPERATOR:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->TARGET_OPERATOR:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "MPCS"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->TARGET_OPERATOR:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "VZW"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 1693
    sget-boolean v11, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->doesSupportHotspotList()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1695
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Tethering got WIFI_SAP_STATION_ASSOC_ACTION num = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "max = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eqz v11, :cond_c

    if-gt v5, v7, :cond_c

    .line 1698
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1500()[I

    move-result-object v12

    aget v12, v12, v5

    #calls: Lcom/android/server/connectivity/Tethering;->showWiFiTetheredNotification(I)V
    invoke-static {v11, v12}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    .line 1701
    :cond_c
    if-ne v7, v5, :cond_d

    .line 1702
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const v12, 0x1080078

    #calls: Lcom/android/server/connectivity/Tethering;->showMaxClientReachedNotification(I)V
    invoke-static {v11, v12}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1704
    :cond_d
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const v12, 0x1080078

    #calls: Lcom/android/server/connectivity/Tethering;->clearMaxClientReachedNotification(I)V
    invoke-static {v11, v12}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1706
    :cond_e
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->TARGET_OPERATOR:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->TARGET_OPERATOR:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "MPCS"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1707
    :cond_f
    if-ne v7, v5, :cond_3

    .line 1708
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const v12, 0x1080078

    #calls: Lcom/android/server/connectivity/Tethering;->showMaxClientReachedNotification(I)V
    invoke-static {v11, v12}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1714
    .end local v5           #i:I
    .end local v7           #maxCount:I
    :cond_10
    const-string v11, "com.lge.kddidunfailed"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1716
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    sget-boolean v11, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_KDDI:Z

    if-eqz v11, :cond_3

    .line 1719
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    .line 1720
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mtempWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1722
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$000(Lcom/android/server/connectivity/Tethering;)Landroid/bluetooth/BluetoothPan;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 1723
    const-string v11, "Tethering"

    const-string v12, "KDDI BT Tethring off"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$000(Lcom/android/server/connectivity/Tethering;)Landroid/bluetooth/BluetoothPan;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto/16 :goto_0

    .line 1731
    :cond_11
    const-string v11, "com.lge.data.css_status"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1732
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v12, "status"

    iget-object v13, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->isCssEnabled:Z
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    #setter for: Lcom/android/server/connectivity/Tethering;->isCssEnabled:Z
    invoke-static {v11, v12}, Lcom/android/server/connectivity/Tethering;->access$2002(Lcom/android/server/connectivity/Tethering;Z)Z

    goto/16 :goto_0
.end method
