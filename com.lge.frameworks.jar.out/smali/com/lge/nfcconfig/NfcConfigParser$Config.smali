.class public Lcom/lge/nfcconfig/NfcConfigParser$Config;
.super Ljava/lang/Object;
.source "NfcConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# instance fields
.field AccessControlEnable:Ljava/lang/String;

.field AdvancedHCEEnable:Ljava/lang/String;

.field AidFilterEnable:Ljava/lang/String;

.field AsyncCardControlEnable:Ljava/lang/String;

.field BeamUIFinishwhenAlertUIView:Ljava/lang/String;

.field CardEnableInPowerOff:Ljava/lang/String;

.field DefaultOnOffType:Ljava/lang/String;

.field DisableInPowerOffEnable:Ljava/lang/String;

.field EmptyPopupSupport:Ljava/lang/String;

.field HCEOnHostEnable:Ljava/lang/String;

.field HandoverSupportType:Ljava/lang/String;

.field HceScenario:Ljava/lang/String;

.field IndicatorType:Ljava/lang/String;

.field LockScreenPollingEnable:Ljava/lang/String;

.field MccMncSupport:Ljava/lang/String;

.field NfcEERoutingEnable:Ljava/lang/String;

.field NotifyonlyValidTag:Ljava/lang/String;

.field OSComparabilityType:Ljava/lang/String;

.field PermittedSeBroadcastEnable:Ljava/lang/String;

.field PopupDialogType:Ljava/lang/String;

.field PowerSaveType:Ljava/lang/String;

.field RingSoundScenarioType:Ljava/lang/String;

.field RwP2pServerSyncEnable:Ljava/lang/String;

.field SePatchEnabled:Ljava/lang/String;

.field SecureElementType:Ljava/lang/String;

.field SupportWalletType:Ljava/lang/String;

.field TagLongTimePopupSupport:Ljava/lang/String;

.field TransactionAIDEnable:Ljava/lang/String;

.field VendorStablePatch:Ljava/lang/String;

.field WCScenarioEnable:Ljava/lang/String;

.field country:Ljava/lang/String;

.field device:Ljava/lang/String;

.field operator:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/nfcconfig/NfcConfigParser;


# direct methods
.method public constructor <init>(Lcom/lge/nfcconfig/NfcConfigParser;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->this$0:Lcom/lge/nfcconfig/NfcConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "two_toggleN"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->IndicatorType:Ljava/lang/String;

    .line 76
    const-string v0, "INITVALUE"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->RingSoundScenarioType:Ljava/lang/String;

    .line 77
    const-string v0, "INITVALUE"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->WCScenarioEnable:Ljava/lang/String;

    .line 78
    const-string v0, "INITVALUE"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->OSComparabilityType:Ljava/lang/String;

    .line 79
    const-string v0, "uicc"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->SecureElementType:Ljava/lang/String;

    .line 80
    const-string v0, "googlenative"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->HandoverSupportType:Ljava/lang/String;

    .line 81
    const-string v0, "oncardrwp2p"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->DefaultOnOffType:Ljava/lang/String;

    .line 82
    const-string v0, "gsma"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->PopupDialogType:Ljava/lang/String;

    .line 83
    const-string v0, "true"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->AccessControlEnable:Ljava/lang/String;

    .line 84
    const-string v0, "false"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->TransactionAIDEnable:Ljava/lang/String;

    .line 85
    const-string v0, "INITVALUE"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->PowerSaveType:Ljava/lang/String;

    .line 86
    const-string v0, "false"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->NfcEERoutingEnable:Ljava/lang/String;

    .line 87
    const-string v0, "false"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->DisableInPowerOffEnable:Ljava/lang/String;

    .line 88
    const-string v0, "true"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->CardEnableInPowerOff:Ljava/lang/String;

    .line 89
    const-string v0, "false"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->AsyncCardControlEnable:Ljava/lang/String;

    .line 90
    const-string v0, "true"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->VendorStablePatch:Ljava/lang/String;

    .line 91
    const-string v0, "true"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->RwP2pServerSyncEnable:Ljava/lang/String;

    .line 92
    const-string v0, "true"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->BeamUIFinishwhenAlertUIView:Ljava/lang/String;

    .line 93
    const-string v0, "true"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->PermittedSeBroadcastEnable:Ljava/lang/String;

    .line 94
    const-string v0, "INITVALUE"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->SupportWalletType:Ljava/lang/String;

    .line 95
    const-string v0, "true"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->EmptyPopupSupport:Ljava/lang/String;

    .line 96
    const-string v0, "false"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->LockScreenPollingEnable:Ljava/lang/String;

    .line 97
    const-string v0, "true"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->NotifyonlyValidTag:Ljava/lang/String;

    .line 98
    const-string v0, "false"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->SePatchEnabled:Ljava/lang/String;

    .line 99
    const-string v0, "false"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->TagLongTimePopupSupport:Ljava/lang/String;

    .line 100
    const-string v0, "false"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->MccMncSupport:Ljava/lang/String;

    .line 101
    const-string v0, "false"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->AdvancedHCEEnable:Ljava/lang/String;

    .line 102
    const-string v0, "false"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->HCEOnHostEnable:Ljava/lang/String;

    .line 103
    const-string v0, "false"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->AidFilterEnable:Ljava/lang/String;

    .line 104
    const-string v0, "v1"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->HceScenario:Ljava/lang/String;

    return-void
.end method
