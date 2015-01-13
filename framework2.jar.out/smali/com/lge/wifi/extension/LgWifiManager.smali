.class public Lcom/lge/wifi/extension/LgWifiManager;
.super Ljava/lang/Object;
.source "LgWifiManager.java"


# static fields
.field public static final ACTION_HS20_ANQP_FETCH_START:Ljava/lang/String; = "android.net.wifi.HS20_ANQP_FETCH_START"

.field public static final EXTRA_HS20_OPERATOR_FRIENDLY_NAME:Ljava/lang/String; = "operator"

.field public static final EXTRA_HS20_VENUE_NAME:Ljava/lang/String; = "venue"

.field private static final TAG:Ljava/lang/String; = "LgWifiManager"

.field private static cloader:Ljava/lang/ClassLoader;

.field private static mILgWifiService:Lcom/lge/wifi/extension/ILgWifiService;

.field private static mIPPPOEServiceExtension:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

.field private static mIWifiAggregation:Lcom/lge/wifi/extension/IWifiAggregation;

.field private static mIWifiHS20:Lcom/lge/wifi/extension/IWifiHS20;

.field private static mIWifiMobileHotspot:Lcom/lge/wifi/extension/IWifiMobileHotspot;

.field private static mIWifiOffLoading:Lcom/lge/wifi/extension/IWifiOffLoading;

.field private static mIWifiServiceExtension:Lcom/lge/wifi/extension/IWifiServiceExtension;

.field private static mIWifiSoftAP:Lcom/lge/wifi/extension/IWifiSoftAP;

.field private static mLgWifiMonitorHelper:Lcom/lge/wifi/extension/ILgWifiMonitorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 13
    sput-object v6, Lcom/lge/wifi/extension/LgWifiManager;->mILgWifiService:Lcom/lge/wifi/extension/ILgWifiService;

    .line 14
    sput-object v6, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiServiceExtension:Lcom/lge/wifi/extension/IWifiServiceExtension;

    .line 15
    sput-object v6, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiSoftAP:Lcom/lge/wifi/extension/IWifiSoftAP;

    .line 16
    sput-object v6, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiMobileHotspot:Lcom/lge/wifi/extension/IWifiMobileHotspot;

    .line 17
    sput-object v6, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiAggregation:Lcom/lge/wifi/extension/IWifiAggregation;

    .line 18
    sput-object v6, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiOffLoading:Lcom/lge/wifi/extension/IWifiOffLoading;

    .line 19
    sput-object v6, Lcom/lge/wifi/extension/LgWifiManager;->mLgWifiMonitorHelper:Lcom/lge/wifi/extension/ILgWifiMonitorHelper;

    .line 21
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.lge.wifi.jar"

    const-class v5, Lcom/lge/wifi/extension/LgWifiManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v3, Lcom/lge/wifi/extension/LgWifiManager;->cloader:Ljava/lang/ClassLoader;

    .line 24
    sput-object v6, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiHS20:Lcom/lge/wifi/extension/IWifiHS20;

    .line 50
    sput-object v6, Lcom/lge/wifi/extension/LgWifiManager;->mIPPPOEServiceExtension:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    .line 55
    :try_start_0
    const-string v3, "com.lge.wifi.impl.LgWifiService"

    const/4 v4, 0x1

    sget-object v5, Lcom/lge/wifi/extension/LgWifiManager;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, LgWifiServiceClass:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/extension/ILgWifiService;

    sput-object v3, Lcom/lge/wifi/extension/LgWifiManager;->mILgWifiService:Lcom/lge/wifi/extension/ILgWifiService;

    .line 58
    const-string v3, "com.lge.wifi.impl.WifiServiceExtension"

    const/4 v4, 0x1

    sget-object v5, Lcom/lge/wifi/extension/LgWifiManager;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 59
    .local v1, WifiServiceExtensionClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/extension/IWifiServiceExtension;

    sput-object v3, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiServiceExtension:Lcom/lge/wifi/extension/IWifiServiceExtension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1           #WifiServiceExtensionClass:Ljava/lang/Class;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "LgWifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static getILgWifiMonitorHelper()Lcom/lge/wifi/extension/ILgWifiMonitorHelper;
    .locals 5

    .prologue
    .line 157
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mLgWifiMonitorHelper:Lcom/lge/wifi/extension/ILgWifiMonitorHelper;

    if-nez v2, :cond_0

    .line 159
    :try_start_0
    const-string v2, "com.lge.wifi.impl.LgWifiMonitorHelper"

    const/4 v3, 0x1

    sget-object v4, Lcom/lge/wifi/extension/LgWifiManager;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 160
    .local v0, LgWifiMonitorHelperClass:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/extension/ILgWifiMonitorHelper;

    sput-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mLgWifiMonitorHelper:Lcom/lge/wifi/extension/ILgWifiMonitorHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mLgWifiMonitorHelper:Lcom/lge/wifi/extension/ILgWifiMonitorHelper;

    return-object v2

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LgWifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLgWifiServiceIface()Lcom/lge/wifi/extension/ILgWifiService;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mILgWifiService:Lcom/lge/wifi/extension/ILgWifiService;

    return-object v0
.end method

.method public static getPPPOEServiceExtIface()Lcom/lge/wifi/extension/IPPPOEServiceExtension;
    .locals 5

    .prologue
    .line 193
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIPPPOEServiceExtension:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    if-nez v2, :cond_0

    .line 195
    :try_start_0
    const-string v2, "com.lge.wifi.impl.PPPOEServiceExtension"

    const/4 v3, 0x1

    sget-object v4, Lcom/lge/wifi/extension/LgWifiManager;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 196
    .local v0, PPPOEServiceExtensionClass:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    sput-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIPPPOEServiceExtension:Lcom/lge/wifi/extension/IPPPOEServiceExtension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIPPPOEServiceExtension:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    return-object v2

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LgWifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWiFiAggregationIface()Lcom/lge/wifi/extension/IWifiAggregation;
    .locals 5

    .prologue
    .line 144
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiAggregation:Lcom/lge/wifi/extension/IWifiAggregation;

    if-nez v2, :cond_0

    .line 146
    :try_start_0
    const-string v2, "com.lge.wifi.impl.aggregation.WifiAggregation"

    const/4 v3, 0x1

    sget-object v4, Lcom/lge/wifi/extension/LgWifiManager;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 147
    .local v0, aggregationIfaceClass:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/extension/IWifiAggregation;

    sput-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiAggregation:Lcom/lge/wifi/extension/IWifiAggregation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiAggregation:Lcom/lge/wifi/extension/IWifiAggregation;

    return-object v2

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LgWifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWiFiOffloadingIface()Lcom/lge/wifi/extension/IWifiOffLoading;
    .locals 5

    .prologue
    .line 129
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiOffLoading:Lcom/lge/wifi/extension/IWifiOffLoading;

    if-nez v2, :cond_0

    .line 132
    :try_start_0
    const-string v2, "com.lge.wifi.impl.offloading.WifiOffLoading"

    const/4 v3, 0x1

    sget-object v4, Lcom/lge/wifi/extension/LgWifiManager;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 133
    .local v1, offloadingIfaceClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/extension/IWifiOffLoading;

    sput-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiOffLoading:Lcom/lge/wifi/extension/IWifiOffLoading;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiOffLoading:Lcom/lge/wifi/extension/IWifiOffLoading;

    return-object v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LgWifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWifiHS20Iface()Lcom/lge/wifi/extension/IWifiHS20;
    .locals 5

    .prologue
    .line 171
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiHS20:Lcom/lge/wifi/extension/IWifiHS20;

    if-nez v2, :cond_0

    .line 173
    :try_start_0
    const-string v2, "com.lge.wifi.impl.WifiHS20"

    const/4 v3, 0x1

    sget-object v4, Lcom/lge/wifi/extension/LgWifiManager;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 174
    .local v0, HS20IfaceClass:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/extension/IWifiHS20;

    sput-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiHS20:Lcom/lge/wifi/extension/IWifiHS20;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiHS20:Lcom/lge/wifi/extension/IWifiHS20;

    return-object v2

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LgWifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;
    .locals 5

    .prologue
    .line 114
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiMobileHotspot:Lcom/lge/wifi/extension/IWifiMobileHotspot;

    if-nez v2, :cond_0

    .line 116
    :try_start_0
    const-string v2, "com.lge.wifi.impl.mobilehotspot.WifiMobileHotspot"

    const/4 v3, 0x1

    sget-object v4, Lcom/lge/wifi/extension/LgWifiManager;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 117
    .local v1, mhpIfaceClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/extension/IWifiMobileHotspot;

    sput-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiMobileHotspot:Lcom/lge/wifi/extension/IWifiMobileHotspot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiMobileHotspot:Lcom/lge/wifi/extension/IWifiMobileHotspot;

    return-object v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LgWifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWifiServiceExtIface()Lcom/lge/wifi/extension/IWifiServiceExtension;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiServiceExtension:Lcom/lge/wifi/extension/IWifiServiceExtension;

    return-object v0
.end method

.method public static getWifiSoftAPIface()Lcom/lge/wifi/extension/IWifiSoftAP;
    .locals 5

    .prologue
    .line 101
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiSoftAP:Lcom/lge/wifi/extension/IWifiSoftAP;

    if-nez v2, :cond_0

    .line 103
    :try_start_0
    const-string v2, "com.lge.wifi.impl.wifiSap.WifiSoftAP"

    const/4 v3, 0x1

    sget-object v4, Lcom/lge/wifi/extension/LgWifiManager;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 104
    .local v1, sapIfaceClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/extension/IWifiSoftAP;

    sput-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiSoftAP:Lcom/lge/wifi/extension/IWifiSoftAP;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    sget-object v2, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiSoftAP:Lcom/lge/wifi/extension/IWifiSoftAP;

    return-object v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LgWifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
