.class public Lcom/lge/systemservice/core/WifiLgeExtManager;
.super Ljava/lang/Object;
.source "WifiLgeExtManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "wifiLgeExtService"

.field private static final TAG:Ljava/lang/String; = "WifiLgeExtManager"


# instance fields
.field private mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private final getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;
    .locals 2

    .prologue
    .line 33
    iget-object v1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    if-nez v1, :cond_0

    .line 34
    const-string v1, "wifiLgeExtService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    .line 37
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    return-object v1
.end method


# virtual methods
.method public Channel5G_HiddenMenu(II)Z
    .locals 5
    .parameter "Channel"
    .parameter "BondingInfo"

    .prologue
    const/4 v2, 0x0

    .line 492
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 493
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 494
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    return v2

    .line 499
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel5G_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->Channel5G_HiddenMenu(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Channel_HiddenMenu(II)Z
    .locals 5
    .parameter "Channel"
    .parameter "BondingInfo"

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 463
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 464
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_0
    return v2

    .line 469
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->Channel_HiddenMenu(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public CloseDUT_HiddenMenu(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 82
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 83
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return v2

    .line 88
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] CloseDUT_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->CloseDUT_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] CloseDUT_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] CloseDUT_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public CodeRate_HiddenMenu(Ljava/lang/String;)I
    .locals 5
    .parameter "ifname"

    .prologue
    const/4 v2, 0x0

    .line 1258
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1259
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1260
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v2, -0x1

    .line 1272
    :goto_0
    return v2

    .line 1265
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "CodeRate_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->CodeRate_HiddenMenu(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "CodeRate_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1270
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1271
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "CodeRate_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FRError_HiddenMenu()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 810
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 811
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 812
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_0
    return v2

    .line 817
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRError_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FRError_HiddenMenu()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRError_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 822
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 823
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRError_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FRGood_HiddenMenu()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 781
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 782
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 783
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :goto_0
    return v2

    .line 788
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRGood_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FRGood_HiddenMenu()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRGood_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 793
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 794
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRGood_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FRTotal_HiddenMenu()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 753
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 754
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 755
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :goto_0
    return v2

    .line 760
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRTotal_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FRTotal_HiddenMenu()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRTotal_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 765
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 766
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRTotal_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FrequencyAccuracy5G_HiddenMenu(Ljava/lang/String;I)Z
    .locals 5
    .parameter "band"
    .parameter "ChannelNo"

    .prologue
    const/4 v2, 0x0

    .line 922
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 923
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 924
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :goto_0
    return v2

    .line 929
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy5G_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FrequencyAccuracy5G_HiddenMenu(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy5G_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 934
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 935
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy5G_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FrequencyAccuracy_HiddenMenu(Ljava/lang/String;I)Z
    .locals 5
    .parameter "band"
    .parameter "ChannelNo"

    .prologue
    const/4 v2, 0x0

    .line 880
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 881
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 882
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :goto_0
    return v2

    .line 887
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FrequencyAccuracy_HiddenMenu(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 892
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 893
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public IsRunning_HiddenMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1144
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1145
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1146
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :goto_0
    return v2

    .line 1151
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] IsRunning_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->IsRunning_HiddenMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] IsRunning_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1156
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1157
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] IsRunning_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public NoModTxStart_BCM_HiddenMenu(I)Z
    .locals 5
    .parameter "channel"

    .prologue
    const/4 v2, 0x0

    .line 1089
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1090
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1091
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :goto_0
    return v2

    .line 1096
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] NoModTxStart_BCM_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->NoModTxStart_BCM_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] NoModTxStart_BCM_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1101
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1102
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] NoModTxStart_BCM_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public NoModTxStart_HiddenMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1061
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1062
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1063
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :goto_0
    return v2

    .line 1068
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->NoModTxStart_HiddenMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1073
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1074
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public NoModTxStop_HiddenMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1116
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1117
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1118
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :goto_0
    return v2

    .line 1123
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->NoModTxStop_HiddenMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1128
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1129
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OpMode_HiddenMenu(Ljava/lang/String;)I
    .locals 5
    .parameter "ifname"

    .prologue
    const/4 v2, 0x0

    .line 1230
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1231
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1232
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/4 v2, -0x1

    .line 1244
    :goto_0
    return v2

    .line 1237
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "OpMode_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OpMode_HiddenMenu(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "OpMode_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1242
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1243
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "OpMode_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OpenDUT_HiddenMenu(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 53
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 54
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return v2

    .line 59
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] OpenDUT_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OpenDUT_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] OpenDUT_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] OpenDUT_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OtaDisable_HiddenMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1033
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1034
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1035
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :goto_0
    return v2

    .line 1040
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] OtaDisable_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OtaDisable_HiddenMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] OtaDisable_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1045
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1046
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] OtaDisable_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OtaEnable_HiddenMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1006
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1007
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1008
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :goto_0
    return v2

    .line 1013
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] OtaEnable_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OtaEnable_HiddenMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] OtaEnabled_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1018
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1019
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] OtaEnabled_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RSSI_HiddenMenu()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 837
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 838
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 839
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :goto_0
    return v2

    .line 844
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RSSI_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RSSI_HiddenMenu()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RSSI_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 850
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RSSI_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RxPER_HiddenMenu(Ljava/lang/String;)I
    .locals 5
    .parameter "ifname"

    .prologue
    const/4 v2, 0x0

    .line 1202
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1203
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1204
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const/4 v2, -0x1

    .line 1216
    :goto_0
    return v2

    .line 1209
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "RxPER_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RxPER_HiddenMenu(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "RxPER_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1214
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1215
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "RxPER_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RxStart_HiddenMenu(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 170
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 171
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return v2

    .line 176
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStart_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RxStart_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RxStop_HiddenMenu(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 199
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 200
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return v2

    .line 205
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStop_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RxStop_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Set11nPreamble_HiddenMenu(I)Z
    .locals 5
    .parameter "Preamble"

    .prologue
    const/4 v2, 0x0

    .line 725
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 726
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 727
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :goto_0
    return v2

    .line 732
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Set11nPreamble_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->Set11nPreamble_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Set11nPreamble_HiddenMenu is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 737
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 738
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Set11nPreamble_HiddenMenu is is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetChainExt_HiddenMenu(I)Z
    .locals 5
    .parameter "chainValue"

    .prologue
    const/4 v2, 0x0

    .line 1315
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1316
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1317
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :goto_0
    return v2

    .line 1322
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChainExt_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetChainExt_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChainExt_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1327
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1328
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChainExt_HiddenMenu is failed2."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetChain_HiddenMenu(I)Z
    .locals 5
    .parameter "chainValue"

    .prologue
    const/4 v2, 0x0

    .line 1287
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1288
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1289
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :goto_0
    return v2

    .line 1294
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChain_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetChain_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChain_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1299
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1300
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChain_HiddenMenu is failed2."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetPreamble_HiddenMenu(I)Z
    .locals 5
    .parameter "Preamble"

    .prologue
    const/4 v2, 0x0

    .line 682
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 683
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 684
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_0
    return v2

    .line 689
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetPreamble_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetPreamble_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetPreamble_HiddenMenu is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 694
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 695
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetPreamble_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetTxBF_HiddenMenu(I)Z
    .locals 5
    .parameter "Value"

    .prologue
    const/4 v2, 0x0

    .line 1343
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1344
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1345
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :goto_0
    return v2

    .line 1350
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetTxBF_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetTxBF_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetTxBF_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1355
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1356
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetTxBF_HiddenMenu is failed2."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TXBW_40M_HiddenMenu(I)Z
    .locals 5
    .parameter "ChannelNo"

    .prologue
    const/4 v2, 0x0

    .line 951
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 952
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 953
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :goto_0
    return v2

    .line 958
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] TXBW_40M_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TXBW_40M_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] TXBW_40M_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 963
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 964
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] TXBW_40M_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TXBW_80M_HiddenMenu(I)Z
    .locals 5
    .parameter "ChannelNo"

    .prologue
    const/4 v2, 0x0

    .line 979
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 980
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 981
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :goto_0
    return v2

    .line 986
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yeongsu.wu] TXBW_80M_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TXBW_80M_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yeongsu.wu] TXBW_80M_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 991
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 992
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yeongsu.wu] TXBW_80M_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxBurstFrames_HiddenMenu(I)Z
    .locals 5
    .parameter "FrameNumber"

    .prologue
    const/4 v2, 0x0

    .line 611
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 612
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 613
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :goto_0
    return v2

    .line 618
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstFrames_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxBurstFrames_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstFrames_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 623
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 624
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstFrames_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxBurstInterval_HiddenMenu(I)Z
    .locals 5
    .parameter "SIFS"

    .prologue
    const/4 v2, 0x0

    .line 551
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 552
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 553
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :goto_0
    return v2

    .line 558
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstInterval_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxBurstInterval_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstInterval_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 564
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstInterval_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate11ac_HiddenMenu(IIII)Z
    .locals 5
    .parameter "nDataRate"
    .parameter "nBandWidth"
    .parameter "nChannel"
    .parameter "nGI"

    .prologue
    const/4 v2, 0x0

    .line 433
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 434
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 435
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_0
    return v2

    .line 440
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11ac_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11ac_HiddenMenu(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11ac_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 446
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11ac_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate11n40M_HiddenMenu(III)Z
    .locals 5
    .parameter "nDataRate"
    .parameter "nFrameFormat"
    .parameter "nGI"

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 343
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 344
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    return v2

    .line 349
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n40M_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n40M_HiddenMenu(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n40M_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n40M_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate11n5G40M_HiddenMenu(III)Z
    .locals 5
    .parameter "nDataRate"
    .parameter "nFrameFormat"
    .parameter "nGI"

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 403
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 404
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    return v2

    .line 409
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G40M_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n5G40M_HiddenMenu(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G40M_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G40M_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate11n5G_HiddenMenu(III)Z
    .locals 5
    .parameter "nDataRate"
    .parameter "nFrameFormat"
    .parameter "nGI"

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 373
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 374
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return v2

    .line 379
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n5G_HiddenMenu(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate11n_HiddenMenu(III)Z
    .locals 5
    .parameter "nDataRate"
    .parameter "nFrameFormat"
    .parameter "nGI"

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 313
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 314
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return v2

    .line 319
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n_HiddenMenu(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate5G_HiddenMenu(Ljava/lang/String;)Z
    .locals 5
    .parameter "Datarate"

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 283
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 284
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_0
    return v2

    .line 289
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate5G_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate5G_HiddenMenu(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate_HiddenMenu(Ljava/lang/String;)Z
    .locals 5
    .parameter "Datarate"

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 241
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 242
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return v2

    .line 247
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate_HiddenMenu(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDestAddress_HiddenMenu(Ljava/lang/String;)Z
    .locals 5
    .parameter "dstMacAddr"

    .prologue
    const/4 v2, 0x0

    .line 640
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 641
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 642
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :goto_0
    return v2

    .line 647
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDestAddress_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDestAddress_HiddenMenu(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDestAddress_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 652
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDestAddress_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxGain_HiddenMenu(I)Z
    .locals 5
    .parameter "TxGain"

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 522
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 523
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_0
    return v2

    .line 528
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxGain_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxGain_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxGain_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxGain_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxPER_HiddenMenu(Ljava/lang/String;)I
    .locals 5
    .parameter "ifname"

    .prologue
    const/4 v2, 0x0

    .line 1174
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1175
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1176
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v2, -0x1

    .line 1188
    :goto_0
    return v2

    .line 1181
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "TxPER_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxPER_HiddenMenu(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "TxPER_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1186
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1187
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "TxPER_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxPayloadLength_HiddenMenu(I)Z
    .locals 5
    .parameter "payLength"

    .prologue
    const/4 v2, 0x0

    .line 581
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 582
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 583
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_0
    return v2

    .line 588
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxPayloadLength_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxPayloadLength_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxPayloadLength_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 594
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxPayloadLength_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxStart_HiddenMenu(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 111
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 112
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return v2

    .line 117
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxStart_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxStop_HiddenMenu(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 140
    .local v1, wifiLgExtMgr:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 141
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return v2

    .line 146
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxStop_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
