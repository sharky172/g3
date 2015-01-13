.class public Lcom/android/server/ePDGTracker;
.super Landroid/os/Handler;
.source "ePDGTracker.java"


# static fields
.field static final DELAYED_HO_EVENT:I = 0x4

.field static final EPDG_ALREADY_ACTIVE:I = 0x0

.field static final EPDG_ALREADY_INACTIVE:I = 0x6

.field static final EPDG_DISCONNECT_STARTED:I = 0x8

.field static final EPDG_FAIL_MANAGER_NOT_READY:I = 0x4

.field static final EPDG_FAIL_NO_NETWORK:I = 0x3

.field static final EPDG_FAIL_SIM_NOT_READY:I = 0x5

.field static final EPDG_NETWORK_FAIL:I = 0x7

.field static final EPDG_REQUEST_STARTED:I = 0x1

.field static final EPDG_TYPE_NOT_AVAILABLE:I = 0x2

.field static final EVENT_CONNECTION_LOST:I = 0x2

.field static final EVENT_CONNECTION_RSP:I = 0x1

.field public static final EVENT_DEBUG_TYPE:I = 0x2

.field static final EVENT_GET_WIFISIG:I = 0x3

.field static final IPSEC_SERVICESTATUS_CHANGE:I = 0x0

.field static final IPSEC_SERVICE_START:I = 0x1

.field static final IPSEC_SERVICE_STOP:I = 0x0

.field public static final IPTYPE_IPV4:I = 0x1

.field public static final IPTYPE_IPV4V6:I = 0x3

.field public static final IPTYPE_IPV6:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "ePDGTracker"

.field static final PDN_INACTIVE_FROM_UNSOL_MSG:I = 0x3eb

.field static final REQ_TIME_OUT:I = 0x3e9

.field static final RIL_DATA_CALL_PDP_FAIL:I = 0x3ea

.field static final SCAN_FAIL:I = 0x3e8

.field public static final SIGNAL_DEBUG_TYPE:I = 0x1

.field static final WIFI_CONNECTED_EVENT:I = 0x5

.field static final WIFI_DISCONNECTED_EVENT:I = 0x6

.field static final ePDG_PDN_CONNECTED:I = 0x0

.field static final ePDG_PDN_DISCONNECTED:I = 0x2

.field static final ePDG_PDN_DISCONNECTING:I = 0x4

.field static final ePDG_PDN_FAILED:I = 0x3

.field static final ePDG_PDN_REQUESTING:I = 0x1

.field static final numofpdn:I = 0x2


# instance fields
.field public FQDNForEPDG:Ljava/lang/String;

.field private FQDNForTestApp:Ljava/lang/String;

.field private FQDNStaticFlag:Z

.field private WiFi_Offload_gw_addr:Ljava/lang/String;

.field private ePDGAddrForTestApp:Ljava/lang/String;

.field private ePDGAddrStaticFlag:Z

.field public ePDGAddrofThisnetwork:Ljava/lang/String;

.field public iLTEIPType:[I

.field public iLTEPDN4Addr:[Ljava/lang/String;

.field public iLTEPDN6Addr:[Ljava/lang/String;

.field public iPsecAddr:[Ljava/lang/String;

.field public iPsecDNS:[Ljava/lang/String;

.field public iPsecGW:[Ljava/lang/String;

.field public iPsecIf:[Ljava/lang/String;

.field public identity:Ljava/lang/String;

.field public isFeatureStatus:[I

.field public isFeatureSwitch:[Z

.field public isbeforeSigstat:Z

.field public isgood:Z

.field private mContext:Landroid/content/Context;

.field protected mIMSLinkProperties:Landroid/net/LinkProperties;

.field mIMS_HO_avail:Z

.field public mLastfailreason:I

.field private mMgrStatus:I

.field protected mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mTarget:Landroid/os/Handler;

.field protected mVZWAPPLinkProperties:Landroid/net/LinkProperties;

.field public mWifiConnected:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTracker:Landroid/net/wifi/WifiStateTracker;

.field public mcc:Ljava/lang/String;

.field protected mePDGConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/ePDGConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mePDGNotifier:Lcom/android/server/ePDGNotifier;

.field public mnc:Ljava/lang/String;

.field public myDebugger:Lcom/android/internal/telephony/lgdata/MMdebuger;

.field public oldBad:I

.field public oldGood:I

.field public thre:I

.field tm:Landroid/telephony/TelephonyManager;

.field private vzwappRef:Z

.field private vzwcbsRef:Z

.field private vzwmmsRef:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V
    .locals 7
    .parameter "context"
    .parameter "tracker"
    .parameter "target"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 222
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    .line 86
    iput v3, p0, Lcom/android/server/ePDGTracker;->mMgrStatus:I

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    .line 95
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->mcc:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    .line 109
    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    .line 110
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    .line 112
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iLTEPDN4Addr:[Ljava/lang/String;

    .line 113
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iLTEPDN6Addr:[Ljava/lang/String;

    .line 114
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iLTEIPType:[I

    .line 115
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    .line 116
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    .line 117
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    .line 118
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecDNS:[Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    .line 124
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    .line 129
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    .line 170
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->ePDGAddrofThisnetwork:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->FQDNForEPDG:Ljava/lang/String;

    .line 173
    iput v3, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:I

    .line 179
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->FQDNForTestApp:Ljava/lang/String;

    .line 180
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->FQDNStaticFlag:Z

    .line 181
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->ePDGAddrForTestApp:Ljava/lang/String;

    .line 182
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->ePDGAddrStaticFlag:Z

    .line 183
    const-string v0, "fe80::e291:f5ff:fecc:5dd7"

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->WiFi_Offload_gw_addr:Ljava/lang/String;

    .line 202
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    .line 203
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    .line 204
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    .line 211
    iput-boolean v4, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    .line 213
    iput v3, p0, Lcom/android/server/ePDGTracker;->oldGood:I

    .line 214
    iput v3, p0, Lcom/android/server/ePDGTracker;->oldBad:I

    .line 216
    iput v6, p0, Lcom/android/server/ePDGTracker;->thre:I

    .line 218
    iput-boolean v4, p0, Lcom/android/server/ePDGTracker;->isbeforeSigstat:Z

    .line 224
    iput-object p1, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    .line 225
    iput-object p3, p0, Lcom/android/server/ePDGTracker;->mTarget:Landroid/os/Handler;

    .line 231
    iput-object p2, p0, Lcom/android/server/ePDGTracker;->mWifiTracker:Landroid/net/wifi/WifiStateTracker;

    .line 235
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->tm:Landroid/telephony/TelephonyManager;

    .line 237
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 240
    const-string v0, "net.loss"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "net.wifisigmon"

    const-string v1, "yes"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/android/internal/telephony/lgdata/MMdebuger;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/lgdata/MMdebuger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->myDebugger:Lcom/android/internal/telephony/lgdata/MMdebuger;

    .line 245
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 248
    return-void

    .line 109
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 110
    nop

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createPDGConnection(I)Lcom/android/server/ePDGConnection;
    .locals 3
    .parameter "fid"

    .prologue
    .line 854
    const-string v1, "createPDGConnection E"

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 857
    invoke-static {p1}, Lcom/android/server/ePDGConnection;->makePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 858
    .local v0, conn:Lcom/android/server/ePDGConnection;
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPDGConnection() X id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 861
    return-object v0
.end method

.method private findePDGConnection(I)Lcom/android/server/ePDGConnection;
    .locals 3
    .parameter "fid"

    .prologue
    .line 866
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 867
    .local v0, dc:Lcom/android/server/ePDGConnection;
    invoke-virtual {v0}, Lcom/android/server/ePDGConnection;->getConnectionID()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 870
    .end local v0           #dc:Lcom/android/server/ePDGConnection;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findePDGConnectionbyCid(I)Lcom/android/server/ePDGConnection;
    .locals 3
    .parameter "cid"

    .prologue
    .line 876
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 877
    .local v0, dc:Lcom/android/server/ePDGConnection;
    iget v2, v0, Lcom/android/server/ePDGConnection;->cid:I

    if-ne v2, p1, :cond_0

    .line 880
    .end local v0           #dc:Lcom/android/server/ePDGConnection;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1835
    const-string v0, "ePDGTracker"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    return-void
.end method

.method private makeidentity()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x3

    .line 789
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 791
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    .line 827
    :cond_0
    :goto_0
    return-object v3

    .line 794
    :cond_1
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, imsi:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 801
    .local v1, length:I
    if-ge v1, v6, :cond_2

    .line 803
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi is strange just return"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :cond_2
    const/4 v2, 0x3

    .line 816
    .local v2, mnc_len:I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ePDGTracker;->mcc:Ljava/lang/String;

    .line 817
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    .line 820
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    .line 823
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@wlan.mnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mcc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 827
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private onConnectionRsp(Lcom/android/server/ePDGConnInfo;)V
    .locals 9
    .parameter "rsp"

    .prologue
    const/16 v1, 0x3e8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 306
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-le v0, v2, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "What???? Bad SMi id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 471
    :goto_0
    return-void

    .line 312
    :cond_0
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    if-nez v0, :cond_5

    .line 314
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 315
    iget-object v0, p1, Lcom/android/server/ePDGConnInfo;->ConnectedGWAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->ePDGAddrofThisnetwork:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    iget-object v2, p1, Lcom/android/server/ePDGConnInfo;->mIpsecAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 318
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    iget-object v2, p1, Lcom/android/server/ePDGConnInfo;->mIface:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 319
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecDNS:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    iget-object v2, p1, Lcom/android/server/ePDGConnInfo;->mdnss:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 320
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    iget-object v2, p1, Lcom/android/server/ePDGConnInfo;->mIpsecGW:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 323
    iget-object v0, p1, Lcom/android/server/ePDGConnInfo;->mFQDN:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p1, Lcom/android/server/ePDGConnInfo;->mFQDN:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->FQDNForEPDG:Ljava/lang/String;

    .line 327
    :cond_1
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-nez v0, :cond_4

    .line 340
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    .line 343
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyonConnectionParam(I)V

    .line 464
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->myDebugger:Lcom/android/internal/telephony/lgdata/MMdebuger;

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v2, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget v1, v1, v2

    iget v2, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/MMdebuger;->saveEvent(II)V

    .line 468
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->checkdcandrequestagain()V

    goto :goto_0

    .line 336
    :cond_4
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-ne v0, v4, :cond_2

    .line 338
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    iget v2, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    iget v3, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v3, v0, v3

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    iget v4, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v4, v0, v4

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecDNS:[Ljava/lang/String;

    iget v5, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGTracker;->setEPDGLinkProperties(Landroid/net/LinkProperties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 346
    :cond_5
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    if-ne v0, v2, :cond_7

    .line 348
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v2, v0, v1

    .line 352
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_3

    .line 355
    iget-boolean v0, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-nez v0, :cond_6

    .line 358
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 362
    :cond_6
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto :goto_2

    .line 366
    :cond_7
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    if-ne v0, v4, :cond_8

    .line 368
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->failcause:I

    iput v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:I

    .line 369
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v3, v0, v1

    .line 371
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v0}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus()V

    .line 374
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto :goto_2

    .line 380
    :cond_8
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    if-ne v0, v3, :cond_d

    .line 382
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->failcause:I

    iput v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:I

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG][mhj]CON_LOST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 384
    iget v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:I

    if-eq v0, v5, :cond_9

    iget v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 386
    :cond_9
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v3, v0, v1

    .line 387
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v6

    .line 388
    .local v6, dc:Lcom/android/server/ePDGConnection;
    if-eqz v6, :cond_a

    .line 390
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 391
    .local v7, msg_connect:Landroid/os/Message;
    iput v4, v7, Landroid/os/Message;->what:I

    .line 392
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 393
    .local v8, msg_lost:Landroid/os/Message;
    iput v2, v8, Landroid/os/Message;->what:I

    .line 394
    invoke-virtual {v6, v7, v8}, Lcom/android/server/ePDGConnection;->resetCBLooper(Landroid/os/Message;Landroid/os/Message;)V

    .line 396
    .end local v7           #msg_connect:Landroid/os/Message;
    .end local v8           #msg_lost:Landroid/os/Message;
    :cond_a
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v0}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus()V

    .line 397
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_2

    .line 401
    .end local v6           #dc:Lcom/android/server/ePDGConnection;
    :cond_b
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v2, v0, v1

    .line 403
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_3

    .line 406
    iget-boolean v0, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    if-eqz v0, :cond_c

    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-nez v0, :cond_c

    .line 409
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 413
    :cond_c
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v0}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus()V

    .line 414
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_2

    .line 422
    :cond_d
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    if-ne v0, v1, :cond_e

    .line 424
    iput v1, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:I

    .line 425
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v3, v0, v1

    .line 427
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v0}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus()V

    .line 430
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_2

    .line 450
    :cond_e
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_3

    .line 452
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:I

    .line 453
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v3, v0, v1

    .line 455
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v0}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus()V

    .line 458
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_2
.end method

.method private setAlldcStop()V
    .locals 3

    .prologue
    .line 884
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 885
    .local v0, dc:Lcom/android/server/ePDGConnection;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/ePDGConnection;->setManagerStatus(Z)V

    goto :goto_0

    .line 887
    .end local v0           #dc:Lcom/android/server/ePDGConnection;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkdcandrequestagain()V
    .locals 3

    .prologue
    .line 944
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 946
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 948
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v1, v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkdcandrequestagain start self start, fid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->ePDGStart(I)I

    .line 959
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 960
    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->ePDGStop(I)I

    .line 944
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkdcandrequestagain it is on but fail so do not retry, fid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 965
    :cond_3
    return-void
.end method

.method public checkdcandsetfeature()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 934
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 936
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v2, v1, v0

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    :cond_0
    return-void
.end method

.method public ePDGHandOverStatus(I)V
    .locals 4
    .parameter "extendedRAT"

    .prologue
    .line 1765
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGTracker;->getePDGPDNStatus(I)I

    move-result v0

    .line 1766
    .local v0, PDNstatus:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ePDGHandOverStatus: PDNstatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1773
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v1

    .line 1774
    .local v1, imsdc:Lcom/android/server/ePDGConnection;
    if-eqz v1, :cond_0

    .line 1776
    invoke-virtual {v1, p1}, Lcom/android/server/ePDGConnection;->ePDGHandOverStatus(I)V

    .line 1779
    :cond_0
    return-void
.end method

.method public ePDGPrefTechdone(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ePDGPrefTechdone: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1759
    return-void
.end method

.method public ePDGStart(I)I
    .locals 9
    .parameter "fid"

    .prologue
    const/4 v8, 0x1

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ePDGStart is called!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->fidtoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 678
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    aput-boolean v8, v3, p1

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->isInitialAttachtype(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 684
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyEPDGControl(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v7, v3, p1

    .line 693
    .local v7, status:I
    if-nez v7, :cond_1

    .line 697
    const/4 v3, 0x0

    .line 782
    :goto_1
    return v3

    .line 699
    :cond_1
    if-ne v7, v8, :cond_2

    move v3, v8

    .line 701
    goto :goto_1

    .line 713
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    if-nez v3, :cond_3

    .line 714
    const/4 v3, 0x3

    goto :goto_1

    .line 725
    :cond_3
    invoke-direct {p0}, Lcom/android/server/ePDGTracker;->makeidentity()Ljava/lang/String;

    move-result-object v6

    .line 728
    .local v6, identity:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 730
    const-string v3, "SIM is not ready so just go out"

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 731
    const/4 v3, 0x5

    goto :goto_1

    .line 748
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 750
    .local v0, dc:Lcom/android/server/ePDGConnection;
    if-nez v0, :cond_5

    .line 751
    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->createPDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 755
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/ePDGTracker;->FQDNStaticFlag:Z

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->FQDNForTestApp:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/ePDGConnection;->setFQDNByTestApp(ZLjava/lang/String;)V

    .line 756
    iget-boolean v3, p0, Lcom/android/server/ePDGTracker;->ePDGAddrStaticFlag:Z

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->ePDGAddrForTestApp:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/ePDGConnection;->setEPDGAddrByTestApp(ZLjava/lang/String;)V

    .line 758
    iget-boolean v3, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    invoke-virtual {v0, v8, v3}, Lcom/android/server/ePDGConnection;->setWIFIStatus(ZZ)V

    .line 764
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 765
    .local v1, msg_connect:Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 768
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 769
    .local v2, msg_lost:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 773
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mcc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGConnection;->ePDGbringUp(Landroid/os/Message;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 775
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v8, v3, p1

    :goto_2
    move v3, v8

    .line 782
    goto :goto_1

    .line 779
    :cond_6
    const-string v3, "connection req Error"

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 686
    .end local v0           #dc:Lcom/android/server/ePDGConnection;
    .end local v1           #msg_connect:Landroid/os/Message;
    .end local v2           #msg_lost:Landroid/os/Message;
    .end local v6           #identity:Ljava/lang/String;
    .end local v7           #status:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public ePDGStart(Ljava/lang/String;)I
    .locals 4
    .parameter "feature"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 647
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getfeatureID(Ljava/lang/String;)I

    move-result v0

    .line 648
    .local v0, fid:I
    if-le v0, v3, :cond_0

    .line 649
    const/4 v1, 0x2

    .line 668
    :goto_0
    return v1

    .line 653
    :cond_0
    if-ne v0, v2, :cond_2

    .line 655
    iput-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    .line 668
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->ePDGStart(I)I

    move-result v1

    goto :goto_0

    .line 657
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 659
    iput-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    .line 660
    const/4 v0, 0x1

    goto :goto_1

    .line 662
    :cond_3
    if-ne v0, v3, :cond_1

    .line 664
    iput-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    .line 665
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public ePDGStop(I)I
    .locals 9
    .parameter "fid"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x6

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ePDGStop is called!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->fidtoString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 518
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    aput-boolean v6, v4, p1

    .line 520
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v4, p1

    .line 523
    .local v2, status:I
    if-eq v2, v8, :cond_0

    if-ne v2, v7, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v3

    .line 526
    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    if-nez p1, :cond_0

    .line 534
    :cond_2
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v4, :cond_0

    .line 543
    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 545
    .local v0, dc:Lcom/android/server/ePDGConnection;
    if-nez v0, :cond_3

    .line 547
    const-string v4, "something wrong!! no dc but status is connected?? anyway return inactive"

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_3
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 552
    .local v1, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v1, Landroid/os/Message;->what:I

    .line 553
    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->ePDGteardown(Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 555
    const-string v4, "something wrong!! SM and status is mismatched?? anyway return inactive"

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 585
    :goto_1
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v4, p1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->isInitialAttachtype(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyEPDGControl(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 593
    :catch_0
    move-exception v4

    goto :goto_0

    .line 559
    :cond_4
    if-eqz p1, :cond_5

    .line 561
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v7, v4, p1

    goto :goto_1

    .line 565
    :cond_5
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v4, v4, p1

    if-nez v4, :cond_7

    .line 567
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v7, v3, p1

    .line 568
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v3, :cond_6

    .line 570
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v3, p1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    .line 572
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v6}, Lcom/android/server/ePDGConnection;->ePDGDeactivateDataCall(Ljava/lang/String;II)V

    .line 575
    const/16 v3, 0x8

    goto :goto_0

    .line 579
    :cond_7
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v8, v4, p1

    goto :goto_1
.end method

.method public ePDGStop(Ljava/lang/String;)I
    .locals 6
    .parameter "feature"

    .prologue
    const/4 v5, 0x7

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 476
    const-string v2, "APPALL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    const-string v1, "APPALL Called"

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 479
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    .line 480
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    .line 481
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    .line 482
    invoke-virtual {p0, v4}, Lcom/android/server/ePDGTracker;->ePDGStop(I)I

    move-result v1

    .line 510
    :cond_0
    :goto_0
    return v1

    .line 485
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getfeatureID(Ljava/lang/String;)I

    move-result v0

    .line 486
    .local v0, fid:I
    if-gt v0, v5, :cond_0

    .line 490
    if-ne v0, v4, :cond_3

    .line 492
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    .line 505
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    if-nez v2, :cond_0

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->ePDGStop(I)I

    move-result v1

    goto :goto_0

    .line 494
    :cond_3
    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    .line 496
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    .line 497
    const/4 v0, 0x1

    goto :goto_1

    .line 499
    :cond_4
    if-ne v0, v5, :cond_2

    .line 501
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    .line 502
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public fidtoString(I)Ljava/lang/String;
    .locals 1
    .parameter "fid"

    .prologue
    .line 1822
    packed-switch p1, :pswitch_data_0

    .line 1827
    const-string v0, "UnKnow"

    :goto_0
    return-object v0

    .line 1823
    :pswitch_0
    const-string v0, "IMS"

    goto :goto_0

    .line 1824
    :pswitch_1
    const-string v0, "VZWAPP"

    goto :goto_0

    .line 1825
    :pswitch_2
    const-string v0, "CF"

    goto :goto_0

    .line 1826
    :pswitch_3
    const-string v0, "STATIC"

    goto :goto_0

    .line 1822
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAPNwithFid(I)Ljava/lang/String;
    .locals 1
    .parameter "fid"

    .prologue
    .line 834
    packed-switch p1, :pswitch_data_0

    .line 848
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 840
    :pswitch_0
    const-string v0, "VZWIMS"

    goto :goto_0

    .line 842
    :pswitch_1
    const-string v0, "VZWAPP"

    goto :goto_0

    .line 844
    :pswitch_2
    const-string v0, "vzwCF"

    goto :goto_0

    .line 846
    :pswitch_3
    const-string v0, "vzwstatic"

    goto :goto_0

    .line 834
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDebugInfo(II)[D
    .locals 1
    .parameter "infotype"
    .parameter "itemnum"

    .prologue
    .line 1801
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->myDebugger:Lcom/android/internal/telephony/lgdata/MMdebuger;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/lgdata/MMdebuger;->getwifiSig(I)[D

    move-result-object v0

    .line 1811
    :goto_0
    return-object v0

    .line 1805
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1807
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->myDebugger:Lcom/android/internal/telephony/lgdata/MMdebuger;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/lgdata/MMdebuger;->getePDGEvent(I)[D

    move-result-object v0

    goto :goto_0

    .line 1811
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEPDGfeatureID(Ljava/lang/String;)I
    .locals 1
    .parameter "feature"

    .prologue
    .line 991
    const-string v0, "VZWIMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    const/4 v0, 0x0

    .line 1000
    :goto_0
    return v0

    .line 993
    :cond_0
    const-string v0, "VZWAPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 994
    const/4 v0, 0x1

    goto :goto_0

    .line 995
    :cond_1
    const-string v0, "CF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 996
    const/4 v0, 0x2

    goto :goto_0

    .line 997
    :cond_2
    const-string v0, "Static"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 998
    const/4 v0, 0x3

    goto :goto_0

    .line 1000
    :cond_3
    const/16 v0, 0x3e7

    goto :goto_0
.end method

.method public getapntypewithfid(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 1006
    packed-switch p1, :pswitch_data_0

    .line 1023
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1010
    :pswitch_1
    const-string v0, "ims"

    goto :goto_0

    .line 1013
    :pswitch_2
    const-string v0, "vzwapp"

    goto :goto_0

    .line 1015
    :pswitch_3
    const-string v0, "CF"

    goto :goto_0

    .line 1017
    :pswitch_4
    const-string v0, "static"

    goto :goto_0

    .line 1019
    :pswitch_5
    const-string v0, "cbs"

    goto :goto_0

    .line 1021
    :pswitch_6
    const-string v0, "mms"

    goto :goto_0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getePDGLinkProp(I)Landroid/net/LinkProperties;
    .locals 6
    .parameter "epdgtypeid"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 1433
    packed-switch p1, :pswitch_data_0

    .line 1467
    :goto_0
    :pswitch_0
    return-object v0

    .line 1453
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1455
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    aget-object v2, v0, v5

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    aget-object v3, v0, v5

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    aget-object v4, v0, v5

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecDNS:[Ljava/lang/String;

    aget-object v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGTracker;->setEPDGLinkProperties(Landroid/net/LinkProperties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1458
    :cond_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 1433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getePDGPDNStatus(I)I
    .locals 2
    .parameter "networktype"

    .prologue
    const/4 v0, 0x2

    .line 1410
    sparse-switch p1, :sswitch_data_0

    .line 1425
    :goto_0
    return v0

    .line 1414
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    .line 1417
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    .line 1419
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v0, v1, v0

    goto :goto_0

    .line 1422
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_0

    .line 1410
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public getfeatureID(Ljava/lang/String;)I
    .locals 1
    .parameter "feature"

    .prologue
    .line 970
    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    const/4 v0, 0x0

    .line 985
    :goto_0
    return v0

    .line 972
    :cond_0
    const-string v0, "vzwapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    const/4 v0, 0x1

    goto :goto_0

    .line 974
    :cond_1
    const-string v0, "CF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 975
    const/4 v0, 0x2

    goto :goto_0

    .line 976
    :cond_2
    const-string v0, "Static"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 977
    const/4 v0, 0x3

    goto :goto_0

    .line 978
    :cond_3
    const-string v0, "cbs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 979
    const/4 v0, 0x6

    goto :goto_0

    .line 980
    :cond_4
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 981
    const/4 v0, 0x7

    goto :goto_0

    .line 982
    :cond_5
    const-string v0, "APPALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 983
    const/16 v0, 0x3e6

    goto :goto_0

    .line 985
    :cond_6
    const/16 v0, 0x3e7

    goto :goto_0
.end method

.method public handleConnect(Landroid/net/NetworkInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v3, 0x1

    .line 1044
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 1046
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    move v1, v3

    .line 1047
    .local v1, newstatus:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    if-nez v4, :cond_0

    if-ne v1, v3, :cond_0

    .line 1049
    iput-boolean v1, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    .line 1050
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->checkdcandrequestagain()V

    .line 1053
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is Handover possible= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1055
    .end local v1           #newstatus:Z
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 1094
    :goto_1
    return-void

    .line 1046
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1060
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1062
    const-string v3, "handle connected call but state is not connected"

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1071
    :cond_4
    const-string v4, "[ePDG] wifi is connected!!!"

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1073
    const-string v4, "net.loss"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1074
    .local v2, threshold:Ljava/lang/String;
    if-nez v2, :cond_5

    .line 1076
    const/16 v4, 0x63

    iput v4, p0, Lcom/android/server/ePDGTracker;->thre:I

    .line 1088
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/ePDGTracker;->startmonitoring(Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    .line 1090
    invoke-virtual {p0, v3}, Lcom/android/server/ePDGTracker;->setWIFIstatus(Z)V

    goto :goto_1

    .line 1080
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ePDG] get packet loss threshold "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1082
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/ePDGTracker;->thre:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "threshold exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public handleDisconnect(Landroid/net/NetworkInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1236
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    .line 1238
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    move v1, v2

    .line 1239
    .local v1, newstatus:Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    .line 1241
    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 1242
    .local v0, imsdc:Lcom/android/server/ePDGConnection;
    if-eqz v0, :cond_0

    .line 1244
    const-string v4, "we lost IMS PDN so will set lost "

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v0, v3}, Lcom/android/server/ePDGConnection;->ePDGHandOverStatus(I)V

    .line 1250
    .end local v0           #imsdc:Lcom/android/server/ePDGConnection;
    .end local v1           #newstatus:Z
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 1262
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 1238
    goto :goto_0

    .line 1253
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1255
    const-string v2, "handle Disconnected call but state is connected!!"

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1258
    :cond_3
    const-string v4, "wifi is Disconnected!!!"

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1259
    iput-boolean v2, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    .line 1260
    invoke-virtual {p0, v3}, Lcom/android/server/ePDGTracker;->setWIFIstatus(Z)V

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->stopmonitoring()V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 252
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 273
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "we get rsp!! rsp type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 274
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 275
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/ePDGConnInfo;

    .line 276
    .local v2, sendingResult:Lcom/android/server/ePDGConnInfo;
    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->onConnectionRsp(Lcom/android/server/ePDGConnInfo;)V

    goto :goto_0

    .line 280
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #sendingResult:Lcom/android/server/ePDGConnInfo;
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    if-eqz v3, :cond_0

    .line 282
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/ePDGTracker;->startmonitoring(Z)Z

    move-result v1

    .line 283
    .local v1, currenloss:Z
    iget-boolean v3, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    if-eq v3, v1, :cond_0

    .line 285
    iput-boolean v1, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    .line 286
    iget-boolean v3, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    invoke-virtual {p0, v3}, Lcom/android/server/ePDGTracker;->setWIFIstatus(Z)V

    goto :goto_0

    .line 292
    .end local v1           #currenloss:Z
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delayed rsp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 293
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAnyConnecting()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 607
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 609
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v1, v3, v0

    .line 611
    .local v1, status:I
    if-eq v1, v2, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 617
    .end local v1           #status:I
    :cond_0
    :goto_1
    return v2

    .line 607
    .restart local v1       #status:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    .end local v1           #status:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isConnection(Ljava/lang/String;)Z
    .locals 5
    .parameter "feature"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1783
    const-string v2, "ims"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1784
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v0

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 1796
    :cond_1
    :goto_0
    return v0

    .line 1785
    :cond_2
    const-string v2, "vzwapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1786
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v1

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v1

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 1787
    :cond_4
    const-string v2, "CF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1788
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v3

    if-eq v2, v1, :cond_5

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v3

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    .line 1789
    :cond_6
    const-string v2, "Static"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1790
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v4

    if-eq v2, v1, :cond_7

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v4

    if-nez v2, :cond_1

    :cond_7
    move v0, v1

    goto :goto_0

    .line 1791
    :cond_8
    const-string v2, "cbs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1792
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v1

    if-eq v2, v1, :cond_9

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v1

    if-nez v2, :cond_1

    :cond_9
    move v0, v1

    goto :goto_0

    .line 1793
    :cond_a
    const-string v2, "mms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1794
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v1

    if-eq v2, v1, :cond_b

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, v1

    if-nez v2, :cond_1

    :cond_b
    move v0, v1

    goto :goto_0
.end method

.method public isHandoverPossible(I)Z
    .locals 2
    .parameter "fid"

    .prologue
    const/4 v0, 0x1

    .line 623
    if-eqz p1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 626
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    if-nez v1, :cond_0

    .line 629
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialAttachtype(I)Z
    .locals 1
    .parameter "fid"

    .prologue
    const/4 v0, 0x1

    .line 636
    if-ne p1, v0, :cond_0

    .line 641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public issameaddr(ILjava/lang/String;)Z
    .locals 2
    .parameter "mid"
    .parameter "newaddr"

    .prologue
    const/4 v0, 0x0

    .line 1621
    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    .line 1630
    :cond_0
    :goto_0
    return v0

    .line 1624
    :cond_1
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 1627
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1628
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 14
    .parameter "version"
    .parameter "status"
    .parameter "cid"
    .parameter "active"
    .parameter "type"
    .parameter "ifname"
    .parameter "addresses"
    .parameter "dnses"
    .parameter "gateways"
    .parameter "suggestedRetryTime"
    .parameter "apntype"

    .prologue
    .line 1639
    const-string v2, "[ePDG] notifyEPDGCallResult start "

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1642
    const/4 v13, 0x0

    .line 1643
    .local v13, pdnNum:I
    const/4 v12, 0x0

    .line 1644
    .local v12, msg:Landroid/os/Message;
    new-instance v1, Lcom/android/server/ePDGConnInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/ePDGConnInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    .local v1, sendingResult:Lcom/android/server/ePDGConnInfo;
    const/4 v11, 0x0

    .line 1648
    .local v11, dc:Lcom/android/server/ePDGConnection;
    if-nez p11, :cond_2

    .line 1650
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->findePDGConnectionbyCid(I)Lcom/android/server/ePDGConnection;

    move-result-object v11

    .line 1652
    if-nez v11, :cond_0

    .line 1654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no dc has this cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1701
    :goto_0
    return-void

    .line 1658
    :cond_0
    invoke-virtual {v11}, Lcom/android/server/ePDGConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v11}, Lcom/android/server/ePDGConnection;->getConnectionID()I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lcom/android/server/ePDGTracker;->issameaddr(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1660
    const-string v2, "connected & changed addr "

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {v11}, Lcom/android/server/ePDGConnection;->getConnectionID()I

    move-result v3

    move-object v2, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/ePDGTracker;->setLinkp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v11}, Lcom/android/server/ePDGConnection;->getConnectionID()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGNotifier;->notifyADDRChange(I)V

    goto :goto_0

    .line 1666
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "same addr so return addr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1673
    :cond_2
    move-object/from16 v0, p11

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->getfeatureID(Ljava/lang/String;)I

    move-result v13

    .line 1674
    invoke-direct {p0, v13}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v11

    .line 1676
    if-nez v11, :cond_3

    .line 1677
    const-string v2, "[ePDG] Error. notifyEPDGCallResult : ePDGConnection is null "

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1680
    :cond_3
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/android/server/ePDGConnInfo;->mIpsecAddr:Ljava/lang/String;

    .line 1681
    move-object/from16 v0, p6

    iput-object v0, v1, Lcom/android/server/ePDGConnInfo;->mIface:Ljava/lang/String;

    .line 1682
    move-object/from16 v0, p9

    iput-object v0, v1, Lcom/android/server/ePDGConnInfo;->mIpsecGW:Ljava/lang/String;

    .line 1683
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/android/server/ePDGConnInfo;->mdnss:Ljava/lang/String;

    .line 1685
    if-eqz p2, :cond_4

    .line 1687
    const v2, 0x40006

    move/from16 v0, p2

    invoke-virtual {v11, v2, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v12

    .line 1690
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 1691
    const-string v2, "[ePDG] notifyEPDGCallResult status error"

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1695
    :cond_4
    move/from16 v0, p3

    iput v0, v11, Lcom/android/server/ePDGConnection;->cid:I

    .line 1696
    const v2, 0x40005

    invoke-virtual {v11, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 1697
    const/4 v2, 0x0

    invoke-static {v12, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1698
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 1699
    const-string v2, "[ePDG] notifyEPDGCallResult send success"

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyEPDGPDNStatus(IIILjava/lang/String;)V
    .locals 5
    .parameter "status"
    .parameter "cid"
    .parameter "active"
    .parameter "newaddr"

    .prologue
    .line 1705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ePDG] notifyEPDGPDNStatus receive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new addr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1707
    const/4 v2, 0x0

    .line 1708
    .local v2, pdnNum:I
    const/4 v1, 0x0

    .line 1714
    .local v1, msg:Landroid/os/Message;
    invoke-direct {p0, p2}, Lcom/android/server/ePDGTracker;->findePDGConnectionbyCid(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 1716
    .local v0, dc:Lcom/android/server/ePDGConnection;
    if-nez v0, :cond_1

    .line 1750
    :cond_0
    :goto_0
    return-void

    .line 1719
    :cond_1
    if-nez p3, :cond_0

    .line 1721
    const v3, 0x40006

    const/16 v4, 0x3eb

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    .line 1724
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setEPDGAddrByTestApp(ZLjava/lang/String;)V
    .locals 0
    .parameter "enable"
    .parameter "ePDGAddr"

    .prologue
    .line 1276
    iput-boolean p1, p0, Lcom/android/server/ePDGTracker;->ePDGAddrStaticFlag:Z

    .line 1277
    iput-object p2, p0, Lcom/android/server/ePDGTracker;->ePDGAddrForTestApp:Ljava/lang/String;

    .line 1278
    return-void
.end method

.method public setEPDGLinkProperties(Landroid/net/LinkProperties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .parameter "linkProperties"
    .parameter "ifname"
    .parameter "addrlist"
    .parameter "gatewaylist"
    .parameter "dnsslist"

    .prologue
    .line 1476
    const/4 v3, 0x0

    .line 1477
    .local v3, addresses:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1478
    .local v6, dnses:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1483
    .local v8, gateways:[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 1484
    new-instance p1, Landroid/net/LinkProperties;

    .end local p1
    invoke-direct/range {p1 .. p1}, Landroid/net/LinkProperties;-><init>()V

    .line 1490
    .restart local p1
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1492
    if-eqz p3, :cond_0

    .line 1494
    const-string v14, ","

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1497
    :cond_0
    if-eqz v3, :cond_8

    array-length v14, v3

    if-lez v14, :cond_8

    .line 1498
    move-object v5, v3

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v12, :cond_9

    aget-object v1, v5, v9

    .line 1499
    .local v1, addr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1500
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_3

    .line 1498
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1486
    .end local v1           #addr:Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #len$:I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    goto :goto_0

    .line 1504
    .restart local v1       #addr:Ljava/lang/String;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v12       #len$:I
    :cond_3
    :try_start_1
    const-string v14, "/"

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1505
    .local v4, ap:[Ljava/lang/String;
    array-length v14, v4

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    .line 1506
    const/4 v14, 0x0

    aget-object v1, v4, v14

    .line 1507
    const/4 v14, 0x1

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 1513
    .local v2, addrPrefixLen:I
    :goto_3
    :try_start_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    .line 1517
    .local v10, ia:Ljava/net/InetAddress;
    :try_start_3
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1518
    if-nez v2, :cond_4

    .line 1520
    instance-of v14, v10, Ljava/net/Inet4Address;

    if-eqz v14, :cond_7

    const/16 v2, 0x20

    .line 1522
    :cond_4
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addr/pl="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1523
    new-instance v11, Landroid/net/LinkAddress;

    invoke-direct {v11, v10, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1524
    .local v11, la:Landroid/net/LinkAddress;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1587
    .end local v1           #addr:Ljava/lang/String;
    .end local v2           #addrPrefixLen:I
    .end local v4           #ap:[Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #ia:Ljava/net/InetAddress;
    .end local v11           #la:Landroid/net/LinkAddress;
    .end local v12           #len$:I
    :catch_0
    move-exception v7

    .line 1588
    .local v7, e:Ljava/net/UnknownHostException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setLinkProperties: UnknownHostException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1589
    const/4 v13, 0x0

    .line 1594
    .end local v7           #e:Ljava/net/UnknownHostException;
    .local v13, result:Z
    :goto_5
    if-nez v13, :cond_5

    .line 1598
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    .line 1601
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setLinkProperties: result="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1603
    return v13

    .line 1509
    .end local v13           #result:Z
    .restart local v1       #addr:Ljava/lang/String;
    .restart local v4       #ap:[Ljava/lang/String;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v12       #len$:I
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #addrPrefixLen:I
    goto :goto_3

    .line 1514
    :catch_1
    move-exception v7

    .line 1515
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Non-numeric ip addr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1520
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v10       #ia:Ljava/net/InetAddress;
    :cond_7
    const/16 v2, 0x80

    goto/16 :goto_4

    .line 1528
    .end local v1           #addr:Ljava/lang/String;
    .end local v2           #addrPrefixLen:I
    .end local v4           #ap:[Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #ia:Ljava/net/InetAddress;
    .end local v12           #len$:I
    :cond_8
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no address for ifname="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1532
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v12       #len$:I
    :cond_9
    if-eqz p5, :cond_a

    .line 1534
    const-string v14, ","

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1538
    :cond_a
    if-eqz v6, :cond_e

    array-length v14, v6

    if-lez v14, :cond_e

    .line 1539
    move-object v5, v6

    array-length v12, v5

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v12, :cond_e

    aget-object v1, v5, v9

    .line 1540
    .restart local v1       #addr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1541
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v14

    if-eqz v14, :cond_c

    .line 1539
    :cond_b
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1544
    :cond_c
    :try_start_5
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v10

    .line 1548
    .restart local v10       #ia:Ljava/net/InetAddress;
    if-nez v10, :cond_d

    .line 1550
    :try_start_6
    const-string v14, "null!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 1545
    .end local v10           #ia:Ljava/net/InetAddress;
    :catch_2
    move-exception v7

    .line 1546
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Non-numeric dns addr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1554
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v10       #ia:Ljava/net/InetAddress;
    :cond_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "not null!! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v14

    if-nez v14, :cond_b

    .line 1556
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_7

    .line 1562
    .end local v1           #addr:Ljava/lang/String;
    .end local v10           #ia:Ljava/net/InetAddress;
    :cond_e
    if-eqz p4, :cond_f

    .line 1564
    const-string v14, ","

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1568
    :cond_f
    if-eqz v8, :cond_10

    array-length v14, v8

    if-nez v14, :cond_11

    .line 1569
    :cond_10
    const/4 v14, 0x0

    new-array v8, v14, [Ljava/lang/String;

    .line 1572
    :cond_11
    move-object v5, v8

    array-length v12, v5

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v12, :cond_13

    aget-object v1, v5, v9

    .line 1573
    .restart local v1       #addr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1574
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v14

    if-eqz v14, :cond_12

    .line 1572
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1577
    :cond_12
    :try_start_7
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v10

    .line 1582
    .restart local v10       #ia:Ljava/net/InetAddress;
    :try_start_8
    new-instance v14, Landroid/net/RouteInfo;

    invoke-direct {v14, v10}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_9

    .line 1578
    .end local v10           #ia:Ljava/net/InetAddress;
    :catch_3
    move-exception v7

    .line 1579
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Non-numeric gateway addr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1586
    .end local v1           #addr:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_13
    const/4 v13, 0x1

    .restart local v13       #result:Z
    goto/16 :goto_5
.end method

.method public setFQDNByTestApp(ZLjava/lang/String;)V
    .locals 0
    .parameter "enable"
    .parameter "fqdn"

    .prologue
    .line 1271
    iput-boolean p1, p0, Lcom/android/server/ePDGTracker;->FQDNStaticFlag:Z

    .line 1272
    iput-object p2, p0, Lcom/android/server/ePDGTracker;->FQDNForTestApp:Ljava/lang/String;

    .line 1273
    return-void
.end method

.method public setLinkp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "mid"
    .parameter "ifname"
    .parameter "addrlist"
    .parameter "gatewaylist"
    .parameter "dnsslist"

    .prologue
    .line 1608
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1610
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGTracker;->setEPDGLinkProperties(Landroid/net/LinkProperties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1616
    :goto_0
    return-void

    .line 1614
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNotifier(Lcom/android/server/ePDGNotifier;)V
    .locals 0
    .parameter "Notifier"

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    .line 1267
    return-void
.end method

.method public setWIFIstatus(Z)V
    .locals 3
    .parameter "wifistatus"

    .prologue
    .line 892
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v2, :cond_0

    .line 894
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v2}, Lcom/android/server/ePDGNotifier;->notifyWIFIStatus()V

    .line 897
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    .line 900
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 901
    .local v0, dc:Lcom/android/server/ePDGConnection;
    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    invoke-virtual {v0, p1, v2}, Lcom/android/server/ePDGConnection;->setWIFIStatus(ZZ)V

    goto :goto_0

    .line 903
    .end local v0           #dc:Lcom/android/server/ePDGConnection;
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 905
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->checkdcandrequestagain()V

    .line 929
    :goto_1
    return-void

    .line 910
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->checkdcandsetfeature()V

    .line 914
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ePDGTracker;->ePDGAddrofThisnetwork:Ljava/lang/String;

    goto :goto_1
.end method

.method public startmonitoring(Z)Z
    .locals 15
    .parameter "isfist"

    .prologue
    .line 1101
    const/4 v12, 0x0

    .line 1102
    .local v12, ret:Z
    const-string v0, "net.wifisigmon"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1103
    .local v11, operator:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 1105
    const-string v0, "[ePDG] packet loss check is disabled"

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1106
    const/4 v0, 0x1

    .line 1201
    :goto_0
    return v0

    .line 1108
    :cond_0
    const-string v0, "yes"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] packet loss check is disabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1111
    const/4 v0, 0x1

    goto :goto_0

    .line 1121
    :cond_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiRSSIandLoss()[I

    move-result-object v10

    .line 1122
    .local v10, myWifiinfo:[I
    if-nez v10, :cond_2

    .line 1124
    const-string v0, "[ePDG] WiFi info is null. So it will be skipped this time."

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1125
    const/4 v0, 0x0

    goto :goto_0

    .line 1127
    :cond_2
    const-wide/16 v8, 0x0

    .line 1128
    .local v8, loss:D
    const/4 v0, 0x1

    aget v7, v10, v0

    .line 1129
    .local v7, good:I
    const/4 v0, 0x2

    aget v6, v10, v0

    .line 1130
    .local v6, bad:I
    const-wide/16 v4, 0x0

    .line 1132
    .local v4, term_loss:D
    add-int v0, v7, v6

    if-eqz v0, :cond_3

    .line 1134
    add-int v0, v7, v6

    div-int v0, v6, v0

    mul-int/lit8 v0, v0, 0x64

    int-to-double v8, v0

    .line 1137
    :cond_3
    if-eqz p1, :cond_4

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] Start monitoring!! RSSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Good!! = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v10, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Bad!! = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, v10, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Loss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ePDGTracker;->oldGood:I

    .line 1141
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ePDGTracker;->oldBad:I

    .line 1142
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->myDebugger:Lcom/android/internal/telephony/lgdata/MMdebuger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/MMdebuger;->saveEvent(I)V

    .line 1145
    :cond_4
    iget v0, p0, Lcom/android/server/ePDGTracker;->oldGood:I

    sub-int v14, v7, v0

    .line 1146
    .local v14, term_good:I
    iget v0, p0, Lcom/android/server/ePDGTracker;->oldBad:I

    sub-int v13, v6, v0

    .line 1148
    .local v13, term_bad:I
    add-int v0, v14, v13

    if-eqz v0, :cond_5

    .line 1150
    add-int v0, v14, v13

    div-int v0, v13, v0

    mul-int/lit8 v0, v0, 0x64

    int-to-double v4, v0

    .line 1153
    :cond_5
    iput v7, p0, Lcom/android/server/ePDGTracker;->oldGood:I

    .line 1154
    iput v6, p0, Lcom/android/server/ePDGTracker;->oldBad:I

    .line 1156
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    .line 1158
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->myDebugger:Lcom/android/internal/telephony/lgdata/MMdebuger;

    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, 0x2

    aget v3, v10, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/lgdata/MMdebuger;->savewifiSig(IIID)V

    .line 1162
    :cond_6
    iget v0, p0, Lcom/android/server/ePDGTracker;->thre:I

    int-to-double v0, v0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_7

    .line 1164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ePDGTracker;->isbeforeSigstat:Z

    .line 1165
    const/4 v12, 0x1

    .line 1192
    :goto_1
    if-eqz v12, :cond_a

    .line 1194
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    move v0, v12

    .line 1201
    goto/16 :goto_0

    .line 1171
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/ePDGTracker;->isbeforeSigstat:Z

    if-nez v0, :cond_8

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] we get low level sig, loss ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eve loss = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1174
    const/4 v12, 0x0

    .line 1177
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ePDGTracker;->isbeforeSigstat:Z

    .line 1179
    const/16 v0, 0x14

    if-le v13, v0, :cond_9

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] we get low level sig, loss ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eve loss = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 1st time but many packet so report"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1182
    const/4 v12, 0x0

    .line 1185
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] we get low level sig, loss ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eve loss = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but just 1 time so not report it "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1186
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 1198
    :cond_a
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2ee0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method

.method public stopmonitoring()V
    .locals 3

    .prologue
    .line 1207
    const-string v1, "net.wifisigmon"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, operator:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1210
    const-string v1, "[ePDG] packet loss check is disabled"

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1227
    :goto_0
    return-void

    .line 1213
    :cond_0
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] packet loss check is disabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1224
    :cond_1
    const-string v1, "[ePDG] Stop monitoring!!"

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1225
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1226
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->myDebugger:Lcom/android/internal/telephony/lgdata/MMdebuger;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/MMdebuger;->saveEvent(I)V

    goto :goto_0
.end method
