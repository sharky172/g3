.class public final Lcom/lge/nfcaddon/NfcAdapterAddon;
.super Ljava/lang/Object;
.source "NfcAdapterAddon.java"


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "lge.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_CONNECTIVITY_EVENT_DETECTED:Ljava/lang/String; = "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

.field public static final ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "com.nxp.action.TRANSACTION_DETECTED"

.field public static final CALLING_NFCSOUND_DEFAULT:Z = false

.field public static final CARD_EMULATION_DISABLED:I = 0x0

.field public static final CARD_EMULATION_ENABLED:I = 0x1

.field public static final CARD_EMULATION_ERROR:I = -0x1

.field public static final EXTRA_ADAPTER_CARD_STATE:Ljava/lang/String; = "com.lge.nfcaddon.extra.ADAPTER_CARD_STATE"

.field public static final EXTRA_ADAPTER_DISCOVERY_STATE:Ljava/lang/String; = "com.lge.nfcaddon.extra.ADAPTER_DISCOVERY_STATE"

.field public static final EXTRA_ADAPTER_P2P_STATE:Ljava/lang/String; = "com.lge.nfcaddon.extra.ADAPTER_P2P_STATE"

.field public static final EXTRA_ADAPTER_SYSTEM_STATE:Ljava/lang/String; = "com.lge.nfcaddon.extra.ADAPTER_SYSTEM_STATE"

.field public static final EXTRA_AID:Ljava/lang/String; = "com.nxp.extra.AID"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.nxp.extra.DATA"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "com.nxp.extra.SOURCE"

.field public static final HANDOVER_CHECKBOX_DEFAULT:Z = true

.field public static final HOST_ID_TYPE:I = 0x0

.field public static final NFC_CARD_MASKING:I = 0x0

.field public static final NFC_CARD_OFF:I = 0x2

.field public static final NFC_CARD_ON:I = 0x1

.field public static final NFC_COMMON_OFF:I = 0x2

.field public static final NFC_COMMON_ON:I = 0x1

.field public static final NFC_DISCOVERY_MASKING:I = 0x2

.field public static final NFC_DISCOVERY_OFF:I = 0x8

.field public static final NFC_DISCOVERY_ON:I = 0x4

.field public static final NFC_MASKING_STEP:I = 0x2

.field public static final NFC_P2P_MASKING:I = 0x4

.field public static final NFC_P2P_OFF:I = 0x20

.field public static final NFC_P2P_ON:I = 0x10

.field public static final NUMBER_CALLING_NFCSOUND:I = 0x3

.field public static final NUMBER_HANDOVER_CHECKBOX:I = 0x2

.field public static final NUMBER_HANDOVER_POPUP_VIEW_IN_MONTHLY:I = 0x65

.field public static final NUMBER_POPUP_MONTHLYCHECK:I = 0x4

.field public static final NUMBER_TAG_DEFAULT_CHECKBOX:I = 0x1

.field public static final NUMBER_TAG_POPUP_VIEW_IN_MONTHLY:I = 0x64

.field public static final POPUP_MONTHLYCHECK_DEFAULT:Z = false

.field public static final PREF_CALLING_NFCSOUND:Ljava/lang/String; = "calling_nfcsound"

.field public static final PREF_POPUP_MONTHLYCHECK:Ljava/lang/String; = "popup_monthlycheck"

.field public static final PREF_TAG_DEFAULT_CHECKBOX:Ljava/lang/String; = "tag_defaultcheckbox"

.field public static final PREF_TAG_HANDOVER_CHECKBOX:Ljava/lang/String; = "handover_checkbox"

.field public static final SMART_MX_ID:Ljava/lang/String; = "com.nxp.smart_mx.ID"

.field public static final SMART_MX_ID_TYPE:I = 0x1

.field public static final STATE_CARD_OFF:I = 0xb

.field public static final STATE_CARD_ON:I = 0xd

.field public static final STATE_DISCOVERY_OFF:I = 0x15

.field public static final STATE_DISCOVERY_ON:I = 0x17

.field public static final STATE_OFF:I = 0x29

.field public static final STATE_ON:I = 0x2b

.field public static final STATE_P2P_OFF:I = 0x1f

.field public static final STATE_P2P_ON:I = 0x21

.field public static final STATE_TURNING_CARD_OFF:I = 0xe

.field public static final STATE_TURNING_CARD_ON:I = 0xc

.field public static final STATE_TURNING_DISCOVERY_OFF:I = 0x18

.field public static final STATE_TURNING_DISCOVERY_ON:I = 0x16

.field public static final STATE_TURNING_OFF:I = 0x2c

.field public static final STATE_TURNING_ON:I = 0x2a

.field public static final STATE_TURNING_P2P_OFF:I = 0x22

.field public static final STATE_TURNING_P2P_ON:I = 0x20

.field public static final STATE_TURNING_WC_OFF:I = 0x36

.field public static final STATE_TURNING_WC_ON:I = 0x34

.field public static final STATE_WC_OFF:I = 0x33

.field public static final STATE_WC_ON:I = 0x35

.field static final TAG:Ljava/lang/String; = "NfcAdapterAddon"

.field public static final TAG_DEFAULT_CHECKBOX_DEFAULT:Z = true

.field public static final UICC_ID:Ljava/lang/String; = "com.nxp.uicc.ID"

.field public static final UICC_ID_TYPE:I = 0x2

.field private static isBinded:Z

.field static mNfcAdapter:Landroid/nfc/NfcAdapter;

.field static sNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

.field static sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;


# instance fields
.field private mConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->isBinded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getServiceAddonInterface()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    .line 511
    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-nez v0, :cond_0

    .line 512
    const-string v0, "NfcAdapterAddon"

    const-string v1, "Error : Could not get NfcServiceAddon!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->isBinded:Z

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->isBinded:Z

    goto :goto_0
.end method

.method public static declared-synchronized getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;
    .locals 3

    .prologue
    .line 1002
    const-class v1, Lcom/lge/nfcaddon/NfcAdapterAddon;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->isBinded:Z

    if-nez v0, :cond_1

    .line 1003
    :cond_0
    new-instance v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-direct {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;-><init>()V

    sput-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 1007
    :cond_1
    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    if-nez v0, :cond_3

    .line 1008
    :cond_2
    const-string v0, "NfcAdapterAddon"

    const-string v2, "Error : Could not create NFC Addon Service Interface or Adapter!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    const/4 v0, 0x0

    .line 1012
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_1
    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getServiceAddonInterface()Lcom/lge/nfcaddon/INfcAdapterAddon;
    .locals 3

    .prologue
    .line 1024
    const-string v1, "nfcaddon"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1025
    .local v0, binder:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 1026
    const-string v1, "NfcAdapterAddon"

    const-string v2, "nfcaddon binder null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->isBinded:Z

    .line 1028
    const/4 v1, 0x0

    .line 1030
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public activeSwp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getDefaultSelectedSecureElement()Ljava/lang/String;

    move-result-object v1

    .line 1133
    .local v1, seID:Ljava/lang/String;
    const-string v2, "com.nxp.uicc.ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1134
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UICC is not selected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1138
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->activeSwp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    return-void

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NfcAdapterAddon"

    const-string v3, "activeSwp failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1141
    new-instance v2, Ljava/io/IOException;

    const-string v3, "activeSwp failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 1046
    const-string v1, "NfcAdapterAddon"

    const-string v2, "NFC Addon service dead - attempting to recover"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1047
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getServiceAddonInterface()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v0

    .line 1048
    .local v0, serviceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;
    if-nez v0, :cond_0

    .line 1049
    const-string v1, "NfcAdapterAddon"

    const-string v2, "could not retrieve NFC Addon service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :goto_0
    return-void

    .line 1056
    :cond_0
    sput-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    goto :goto_0
.end method

.method public checkFPRICRC()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1450
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureMap()Ljava/util/HashMap;

    move-result-object v0

    .line 1451
    .local v0, configMap:Ljava/util/HashMap;
    if-nez v0, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return v5

    .line 1457
    :cond_1
    :try_start_0
    const-string v6, "DefaultOnOffType"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1458
    .local v3, returnMapValue:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 1461
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1462
    .local v1, defaultOnOffValue:Ljava/lang/String;
    const-string v6, "off"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 1463
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcCardModeEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 1468
    :cond_3
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1471
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcCardModeEnabled()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "card"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    .line 1474
    :cond_4
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "rw"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    .line 1477
    :cond_5
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled()Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "p2p"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gez v6, :cond_0

    :cond_6
    move v5, v4

    .line 1480
    goto :goto_0

    .line 1481
    .end local v1           #defaultOnOffValue:Ljava/lang/String;
    .end local v3           #returnMapValue:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1482
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public createNfcSecureElementConnection()Lcom/lge/nfcaddon/NfcSecureElement;
    .locals 3

    .prologue
    .line 1236
    :try_start_0
    new-instance v1, Lcom/lge/nfcaddon/NfcSecureElement;

    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcSecureElementInterface()Lcom/lge/nfcaddon/INfcSecureElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/nfcaddon/NfcSecureElement;-><init>(Lcom/lge/nfcaddon/INfcSecureElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :goto_0
    return-object v1

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NfcAdapterAddon"

    const-string v2, "createNfcSecureElementConnection failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1239
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deSelectedSecureElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1181
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->deselectSecureElement()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    return-void

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NfcAdapterAddon"

    const-string v2, "deselectSecureElement failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1184
    new-instance v1, Ljava/io/IOException;

    const-string v2, "deselectSecureElement failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deinitNfcSystem()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 677
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 678
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->deinitNfcSystem()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 684
    :cond_0
    :goto_0
    return v1

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public disableNfcCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 738
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 739
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->disableNfcCard()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 745
    :cond_0
    :goto_0
    return v1

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public disableNfcDiscovery()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 802
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 803
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->disableNfcDiscovery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 809
    :cond_0
    :goto_0
    return v1

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public disableNfcP2p()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 869
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 870
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->disableNfcP2p()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 876
    :cond_0
    :goto_0
    return v1

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableNfcCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 707
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 708
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->enableNfcCard()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 714
    :cond_0
    :goto_0
    return v1

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableNfcDiscovery()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 768
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 769
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->enableNfcDiscovery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 775
    :cond_0
    :goto_0
    return v1

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableNfcP2p()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 836
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 837
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->enableNfcP2p()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 843
    :cond_0
    :goto_0
    return v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAdapterCardState()I
    .locals 3

    .prologue
    const/16 v1, 0xb

    .line 564
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 565
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcCardState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 571
    :cond_0
    :goto_0
    return v1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAdapterDiscoveryState()I
    .locals 3

    .prologue
    const/16 v1, 0x15

    .line 589
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 590
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcDiscoveryState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 596
    :cond_0
    :goto_0
    return v1

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAdapterP2pState()I
    .locals 3

    .prologue
    const/16 v1, 0x1f

    .line 617
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 618
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcP2pState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 624
    :cond_0
    :goto_0
    return v1

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAdapterSysState()I
    .locals 3

    .prologue
    const/16 v1, 0x29

    .line 536
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 537
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcSysState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 543
    :cond_0
    :goto_0
    return v1

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCardEmulationAddonService()Lcom/lge/nfcaddon/CardEmulationAddon;
    .locals 3

    .prologue
    .line 1245
    :try_start_0
    new-instance v1, Lcom/lge/nfcaddon/CardEmulationAddon;

    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getCardEmulationInterface()Lcom/lge/nfcaddon/ICardEmulationAddon;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/nfcaddon/CardEmulationAddon;-><init>(Lcom/lge/nfcaddon/ICardEmulationAddon;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    :goto_0
    return-object v1

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NfcAdapterAddon"

    const-string v2, "getCardEmulationAddonService failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1248
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultSelectedSecureElement()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1154
    const/4 v1, 0x0

    .line 1158
    .local v1, seID:I
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getSelectedSecureElement()I

    move-result v1

    .line 1159
    const v2, 0xabcdf0

    if-ne v1, v2, :cond_0

    .line 1160
    const-string v2, "com.nxp.uicc.ID"

    .line 1162
    :goto_0
    return-object v2

    .line 1161
    :cond_0
    const v2, 0xabcdef

    if-ne v1, v2, :cond_1

    .line 1162
    const-string v2, "com.nxp.smart_mx.ID"

    goto :goto_0

    .line 1164
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Secure Element selected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NfcAdapterAddon"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getGsmaNfcControllerService(Landroid/content/Context;)Lcom/lge/nfcaddon/GsmaNfcController;
    .locals 3
    .parameter "context"

    .prologue
    .line 1254
    :try_start_0
    new-instance v1, Lcom/lge/nfcaddon/GsmaNfcController;

    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getGsmaNfcControllerInterface()Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/lge/nfcaddon/GsmaNfcController;-><init>(Landroid/content/Context;Lcom/lge/nfcaddon/IGsmaNfcController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :goto_0
    return-object v1

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NfcAdapterAddon"

    const-string v2, "getGsmaNfcControllerService failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1257
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNfcAddonPreference(I)Z
    .locals 4
    .parameter "prefnumber"

    .prologue
    const/4 v1, 0x0

    .line 1296
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-nez v2, :cond_0

    .line 1297
    const-string v2, "NfcAdapterAddon"

    const-string v3, "Error : NFC Addon Interface is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :goto_0
    return v1

    .line 1302
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcAddonPreference(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getNfcConfigureMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1379
    const-string v1, "NfcAdapterAddon"

    const-string v3, "getNfcConfigureMap"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-nez v1, :cond_0

    .line 1382
    const-string v1, "NfcAdapterAddon"

    const-string v3, "Error : NFC Addon Interface is NULL!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 1393
    :goto_0
    return-object v1

    .line 1387
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->mConfigMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 1388
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcConfigureMap()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->mConfigMap:Ljava/util/HashMap;

    .line 1390
    :cond_1
    iget-object v1, p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->mConfigMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1391
    :catch_0
    move-exception v0

    .line 1392
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 1393
    goto :goto_0
.end method

.method public getNfcConfigureMap(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 1410
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureMap()Ljava/util/HashMap;

    move-result-object v0

    .line 1411
    .local v0, configMap:Ljava/util/HashMap;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1413
    const/4 v1, 0x0

    .line 1415
    .local v1, result:Z
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1416
    .local v2, returnMapValue:Ljava/lang/Object;
    if-nez v2, :cond_0

    move v1, v3

    .line 1423
    .end local v1           #result:Z
    .end local v2           #returnMapValue:Ljava/lang/Object;
    :goto_0
    return v1

    .line 1420
    .restart local v1       #result:Z
    .restart local v2       #returnMapValue:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1421
    goto :goto_0

    .end local v1           #result:Z
    .end local v2           #returnMapValue:Ljava/lang/Object;
    :cond_1
    move v1, v3

    .line 1423
    goto :goto_0
.end method

.method public getServiceAddon()V
    .locals 1

    .prologue
    .line 1039
    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-nez v0, :cond_0

    .line 1040
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getServiceAddonInterface()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    .line 1042
    :cond_0
    return-void
.end method

.method public initNfcSystem()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 647
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 648
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->initNfcSystem()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 654
    :cond_0
    :goto_0
    return v1

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isNfcCardModeEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 914
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 915
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->isNfcCardModeEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 921
    :cond_0
    :goto_0
    return v1

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isNfcP2pModeEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 960
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 961
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->isNfcP2pModeEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 967
    :cond_0
    :goto_0
    return v1

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isNfcRwModeEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 936
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 937
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->isNfcRwModeEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 943
    :cond_0
    :goto_0
    return v1

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isNfcSystemEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 892
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 893
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->isNfcSystemEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 899
    :cond_0
    :goto_0
    return v1

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isWirelessChargingModeOn()Z
    .locals 3

    .prologue
    .line 1340
    const-string v1, "NfcAdapterAddon"

    const-string v2, "isWirelessChargingModeOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->isWirelessChargingModeOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1345
    :goto_0
    return v1

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 1345
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public selectDefaultSecureElement(Ljava/lang/String;)V
    .locals 8
    .parameter "seId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1070
    const/4 v2, 0x0

    .line 1071
    .local v2, seID:I
    const/4 v5, -0x1

    .line 1072
    .local v5, seType:I
    const/4 v4, 0x0

    .line 1074
    .local v4, seSelected:Z
    const-string v6, "com.nxp.uicc.ID"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1075
    const v2, 0xabcdf0

    .line 1076
    const/4 v5, 0x2

    .line 1087
    :goto_0
    :try_start_0
    sget-object v6, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v6}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getSelectedSecureElement()I

    move-result v6

    if-eq v6, v2, :cond_0

    .line 1088
    sget-object v6, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v6}, Lcom/lge/nfcaddon/INfcAdapterAddon;->deselectSecureElement()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    :cond_0
    :try_start_1
    sget-object v6, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v6}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getSecureElementList()[I

    move-result-object v3

    .line 1098
    .local v3, seList:[I
    array-length v6, v3

    if-eqz v6, :cond_5

    .line 1099
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_5

    .line 1100
    aget v6, v3, v1

    if-eq v6, v2, :cond_1

    aget v6, v3, v1

    if-ne v6, v5, :cond_2

    .line 1102
    :cond_1
    sget-object v6, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v6, v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->selectSecureElement(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1103
    const/4 v4, 0x1

    .line 1099
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1077
    .end local v1           #i:I
    .end local v3           #seList:[I
    :cond_3
    const-string v6, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1078
    const v2, 0xabcdef

    .line 1079
    const/4 v5, 0x1

    goto :goto_0

    .line 1081
    :cond_4
    const-string v6, "NfcAdapterAddon"

    const-string v7, "selectDefaultSecureElement: wrong Secure Element ID"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v6, Ljava/io/IOException;

    const-string v7, "selectDefaultSecureElement failed: Wrong Secure Element ID"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "NfcAdapterAddon"

    const-string v7, "selectDefaultSecureElement: getSelectedSecureElement failed"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1092
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failure in deselecting the selected Secure Element"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1108
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #seList:[I
    :cond_5
    if-nez v4, :cond_6

    .line 1109
    :try_start_2
    const-string v6, "com.nxp.uicc.ID"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1110
    sget-object v6, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v6, v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->storeSePreference(I)V

    .line 1111
    new-instance v6, Ljava/io/IOException;

    const-string v7, "UICC not detected"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1117
    .end local v3           #seList:[I
    :catch_1
    move-exception v0

    .line 1118
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "NfcAdapterAddon"

    const-string v7, "selectUiccCardEmulation: getSecureElementList failed"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1120
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    return-void

    .line 1112
    .restart local v3       #seList:[I
    :cond_7
    :try_start_3
    const-string v6, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1113
    sget-object v6, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v6, v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->storeSePreference(I)V

    .line 1114
    new-instance v6, Ljava/io/IOException;

    const-string v7, "SMART_MX not detected"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public sendNfcTestCommand(I[B)Z
    .locals 4
    .parameter "command"
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 1273
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-nez v2, :cond_0

    .line 1274
    const-string v2, "NfcAdapterAddon"

    const-string v3, "Error : NFC Addon Interface is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :goto_0
    return v1

    .line 1279
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2, p1, p2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->sendNfcTestCommand(I[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setDefaultSecureElementState(Z)V
    .locals 4
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1196
    const/4 v1, 0x0

    .line 1200
    .local v1, seID:I
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getSelectedSecureElement()I

    move-result v1

    .line 1203
    if-nez v1, :cond_0

    .line 1204
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Secure Element selected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NfcAdapterAddon"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1226
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1207
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz p1, :cond_1

    .line 1210
    :try_start_1
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setSecureElementState(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1228
    :goto_0
    return-void

    .line 1211
    :catch_1
    move-exception v0

    .line 1212
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "NfcAdapterAddon"

    const-string v3, "Enable card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1213
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Enable card emulation failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1218
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setSecureElementState(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1219
    :catch_2
    move-exception v0

    .line 1220
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "NfcAdapterAddon"

    const-string v3, "Disable card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Disable card emulation failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public setNfcAddonPreference(IZ)Z
    .locals 4
    .parameter "prefnumber"
    .parameter "prefvalue"

    .prologue
    const/4 v1, 0x0

    .line 1320
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-nez v2, :cond_0

    .line 1321
    const-string v2, "NfcAdapterAddon"

    const-string v3, "Error : NFC Addon Interface is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :goto_0
    return v1

    .line 1326
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2, p1, p2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setNfcAddonPreference(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setNfcPowerStatus(I)Z
    .locals 4
    .parameter "status"

    .prologue
    .line 1362
    const-string v1, "NfcAdapterAddon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNfcPowerStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setNfcPowerStatus(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1367
    :goto_0
    return v1

    .line 1365
    :catch_0
    move-exception v0

    .line 1366
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 1367
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPresentUid(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 1433
    const-string v1, "NfcAdapterAddon"

    const-string v2, "setPresentUid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setPresentUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    :goto_0
    return-void

    .line 1437
    :catch_0
    move-exception v0

    .line 1438
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateP2pState()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 981
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v2, :cond_0

    .line 982
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->updateP2pState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 988
    :cond_0
    :goto_0
    return v1

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method
