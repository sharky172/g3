.class public Lcom/lge/nfcconfig/NfcConfigure;
.super Ljava/lang/Object;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;,
        Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;,
        Lcom/lge/nfcconfig/NfcConfigure$OsComparabilityList;,
        Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;,
        Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;,
        Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;,
        Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    }
.end annotation


# static fields
.field public static AccessControlEnable:Z = false

.field public static AdvancedHCEEnable:Z = false

.field public static AidFilterEnable:Z = false

.field public static AsyncCardControlEnable:Z = false

.field public static BeamUIFinishwhenAlertUIView:Z = false

.field public static CardEnableInPowerOff:Z = false

.field public static CoverScenarioEnable:Z = false

.field private static DBG:Z = false

.field public static DefaultOnOffType:Ljava/lang/String; = null

.field public static DisableInPowerOffEnable:Z = false

.field public static EmptyPopupSupport:Z = false

.field public static HCEOnHostEnable:Z = false

.field public static HandoverAutoAppLaunch:Z = false

.field public static HandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList; = null

.field public static HceScenario:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList; = null

.field private static INSTANCE:Lcom/lge/nfcconfig/NfcConfigure; = null

.field public static IndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList; = null

.field public static LockScreenPollingEnable:Z = false

.field public static MTKBluetoothEnable:Z = false

.field public static MccMncSupport:Z = false

.field public static final NFC_HANDOVER_AUTOAPPLAUNCH:Ljava/lang/String; = "HandoverAutoAppLaunch"

.field public static final NFC_HANDOVER_TYPE:Ljava/lang/String; = "HandoverSupportType"

.field public static final NFC_POPUPDIALOG_TYPE:Ljava/lang/String; = "PopupDialogType"

.field public static final NFC_SECUREELEMENT_TYPE:Ljava/lang/String; = "SecureElementType"

.field public static final NFC_VENDOR_TYPE:Ljava/lang/String; = "VendorType"

.field public static NfcEERoutingEnable:Z = false

.field public static NotifyonlyValidTag:Z = false

.field public static OSComparabilityType:Ljava/lang/String; = null

.field public static PermittedSeBroadcastEnable:Z = false

.field public static PopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList; = null

.field public static PowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList; = null

.field public static RingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList; = null

.field public static RwP2pServerSyncEnable:Z = false

.field public static SePatchEnabled:Z = false

.field public static SecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList; = null

.field public static SupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList; = null

.field private static final TAG:Ljava/lang/String; = "NfcConfigure"

.field public static TagLongTimePopupSupport:Z

.field public static TransactionAIDEnable:Z

.field public static VendorStablePatch:Z

.field public static VendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public static WCScenarioEnable:Z

.field public static WPSHandoverEnable:Z

.field private static mConfigMap:Ljava/util/HashMap;
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

.field private static mContext:Landroid/content/Context;

.field public static mMCC:Ljava/lang/String;

.field public static mTargetCountry:Ljava/lang/String;

.field public static mTargetDevice:Ljava/lang/String;

.field public static mTargetOperator:Ljava/lang/String;

.field private static targetFlag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 33
    sput-boolean v7, Lcom/lge/nfcconfig/NfcConfigure;->DBG:Z

    .line 298
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleN:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->IndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 299
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->SecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    .line 300
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->RingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    .line 301
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;->googlenative:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->HandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    .line 302
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->gsma:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->PopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 303
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->VendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    .line 304
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->DefaultOnOffType:Ljava/lang/String;

    .line 305
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$OsComparabilityList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$OsComparabilityList;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->OSComparabilityType:Ljava/lang/String;

    .line 306
    sput-boolean v7, Lcom/lge/nfcconfig/NfcConfigure;->AccessControlEnable:Z

    .line 307
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->TransactionAIDEnable:Z

    .line 308
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->PowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    .line 309
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->SupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    .line 310
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->NfcEERoutingEnable:Z

    .line 311
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->DisableInPowerOffEnable:Z

    .line 312
    sput-boolean v7, Lcom/lge/nfcconfig/NfcConfigure;->CardEnableInPowerOff:Z

    .line 313
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->AsyncCardControlEnable:Z

    .line 314
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->MTKBluetoothEnable:Z

    .line 315
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->HandoverAutoAppLaunch:Z

    .line 316
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->WPSHandoverEnable:Z

    .line 317
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->WCScenarioEnable:Z

    .line 318
    sput-boolean v7, Lcom/lge/nfcconfig/NfcConfigure;->RwP2pServerSyncEnable:Z

    .line 319
    sput-boolean v7, Lcom/lge/nfcconfig/NfcConfigure;->PermittedSeBroadcastEnable:Z

    .line 320
    sput-boolean v7, Lcom/lge/nfcconfig/NfcConfigure;->BeamUIFinishwhenAlertUIView:Z

    .line 321
    sput-boolean v7, Lcom/lge/nfcconfig/NfcConfigure;->VendorStablePatch:Z

    .line 322
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->SePatchEnabled:Z

    .line 323
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->CoverScenarioEnable:Z

    .line 324
    sput-boolean v7, Lcom/lge/nfcconfig/NfcConfigure;->EmptyPopupSupport:Z

    .line 325
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->LockScreenPollingEnable:Z

    .line 326
    sput-boolean v7, Lcom/lge/nfcconfig/NfcConfigure;->NotifyonlyValidTag:Z

    .line 327
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->TagLongTimePopupSupport:Z

    .line 328
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->MccMncSupport:Z

    .line 329
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->AdvancedHCEEnable:Z

    .line 330
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->HCEOnHostEnable:Z

    .line 331
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->AidFilterEnable:Z

    .line 332
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->v1:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->HceScenario:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    .line 337
    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    .line 338
    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    .line 339
    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    .line 341
    const-string v5, ""

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->targetFlag:Ljava/lang/String;

    .line 343
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->mConfigMap:Ljava/util/HashMap;

    .line 346
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->VendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    .line 347
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->values()[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    move-result-object v0

    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 348
    .local v3, list:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    const-string v5, "lge.nfc.vendor"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, vendorType:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    sput-object v3, Lcom/lge/nfcconfig/NfcConfigure;->VendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    .line 347
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v3           #list:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    .end local v4           #vendorType:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    sput-object p1, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    .line 362
    sput-object p0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    .line 366
    const-string v1, "ril.temp.countrycodeforoneimage"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcconfig/NfcConfigure;->mMCC:Ljava/lang/String;

    .line 367
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure;->mMCC:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const-string v1, "persist.sys.iccid-mcc"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcconfig/NfcConfigure;->mMCC:Ljava/lang/String;

    .line 371
    :cond_0
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 372
    :cond_1
    const-string v1, "NfcConfigure"

    const-string v2, "Invalid Target Operator and Country"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_0
    return-void

    .line 379
    :cond_2
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x206004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Lcom/lge/nfcconfig/NfcConfigure;->CoverScenarioEnable:Z

    .line 386
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigParser;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .local v0, mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->setDefaultConfig()V

    .line 388
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->printDefaultConfig()V

    .line 390
    invoke-direct {p0}, Lcom/lge/nfcconfig/NfcConfigure;->setConfigureMap()V

    goto :goto_0

    .line 379
    .end local v0           #mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 710
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 711
    .local v0, adapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 712
    :cond_0
    const/4 v1, 0x0

    .line 715
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureMap(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/lge/nfcconfig/NfcConfigure;
    .locals 2

    .prologue
    .line 687
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 688
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/nfcconfig/NfcConfigure;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    .line 690
    :cond_0
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    return-object v0
.end method

.method private static isBroadcom()Z
    .locals 2

    .prologue
    .line 649
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->VendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->brcm:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInside()Z
    .locals 2

    .prologue
    .line 676
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->VendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->inside:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNxp()Z
    .locals 2

    .prologue
    .line 658
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->VendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->nxp:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSony()Z
    .locals 2

    .prologue
    .line 667
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->VendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->sony:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static printDefaultConfig()V
    .locals 3

    .prologue
    .line 424
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    const-string v0, "NfcConfigure"

    const-string v1, "====================== LGE NFC Configure START ============================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v0, "NfcConfigure"

    const-string v1, " Feature Name : Current Value(config_xxx.xml) / Default Value(config.xml)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v0, "NfcConfigure"

    const-string v1, "===================================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTargetOperator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTargetCountry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTargetDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.sys.iccid-mcc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->mMCC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lge.nfc.vendor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lge.nfc.vendor"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ VendorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->VendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecureElementType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->SecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SecureElementType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultOnOffType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->DefaultOnOffType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DefaultOnOffType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandoverSupportType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->HandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HandoverSupportType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTKSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->MTKBluetoothEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HandoverAutoAppLaunch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->HandoverAutoAppLaunch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", WPSHandoverEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->WPSHandoverEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessControlEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->AccessControlEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AccessControlEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransactionAIDEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->TransactionAIDEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TransactionAIDEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndicatorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->IndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IndicatorType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RingSoundScenarioType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->RingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RingSoundScenarioType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerSaveType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->PowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PowerSaveType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NfcEERoutingEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->NfcEERoutingEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NfcEERoutingEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableInPowerOffEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->DisableInPowerOffEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DisableInPowerOffEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CardEnableInPowerOff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->CardEnableInPowerOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CardEnableInPowerOff"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncCardControlEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->AsyncCardControlEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AsyncCardControlEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupDialogType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->PopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PopupDialogType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WCScenarioEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->WCScenarioEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WCScenarioEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RwP2pServerSyncEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->RwP2pServerSyncEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RwP2pServerSyncEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PermittedSeBroadcastEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->PermittedSeBroadcastEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PermittedSeBroadcastEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSComparabilityType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->OSComparabilityType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OSComparabilityType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeamUIFinishwhenAlertUIView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->BeamUIFinishwhenAlertUIView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BeamUIFinishwhenAlertUIView"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VendorStablePatch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->VendorStablePatch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VendorStablePatch"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SupportWalletType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->SupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SupportWalletType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SePatchEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->SePatchEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SePatchEnabled"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmptyPopupSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->EmptyPopupSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EmptyPopupSupport"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LockScreenPollingEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->LockScreenPollingEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LockScreenPollingEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyonlyValidTag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->NotifyonlyValidTag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NotifyonlyValidTag"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TagLongTimePopupSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->TagLongTimePopupSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TagLongTimePopupSupport"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MccMncSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->MccMncSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MccMncSupport"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdvancedHCEEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->AdvancedHCEEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AdvancedHCEEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HCEonHostEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->HCEOnHostEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HCEOnHostEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AidFilterEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/nfcconfig/NfcConfigure;->AidFilterEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AidFilterEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HceScenario : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->HceScenario:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HceScenario"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v0, "NfcConfigure"

    const-string v1, "====================== LGE NFC Configure END ============================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    return-void
.end method

.method public static resetOpenarrayPowerStatus()Ljava/lang/String;
    .locals 3

    .prologue
    .line 632
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->targetFlag:Ljava/lang/String;

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->setOpenarrayPowerStatus()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure;->DefaultOnOffType:Ljava/lang/String;

    .line 634
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigMap:Ljava/util/HashMap;

    const-string v1, "DefaultOnOffType"

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->DefaultOnOffType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :cond_0
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultOnOffType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure;->DefaultOnOffType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->DefaultOnOffType:Ljava/lang/String;

    return-object v0
.end method

.method private setConfigureMap()V
    .locals 8

    .prologue
    .line 398
    const-class v5, Lcom/lge/nfcconfig/NfcConfigure;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 399
    .local v2, classFields:[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 401
    .local v1, classField:Ljava/lang/reflect/Field;
    if-nez v1, :cond_1

    .line 399
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 412
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 413
    :catch_0
    move-exception v5

    goto :goto_1

    .line 412
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_2

    .line 417
    .end local v1           #classField:Ljava/lang/reflect/Field;
    :cond_3
    return-void
.end method

.method private static setDefaultConfig()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 473
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    sget-object v10, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    invoke-static {v6, v9, v10}, Lcom/lge/nfcconfig/NfcConfigParser;->searchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigParser$Config;

    move-result-object v1

    .line 475
    .local v1, config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    if-nez v1, :cond_0

    .line 580
    :goto_0
    return-void

    .line 477
    :cond_0
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->IndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 478
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->values()[Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    move-result-object v0

    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 479
    .local v5, list:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->IndicatorType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 480
    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->IndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 478
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 484
    .end local v5           #list:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    :cond_2
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->RingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    .line 485
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    move-result-object v0

    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    .line 486
    .local v5, list:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->RingSoundScenarioType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 487
    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->RingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    .line 485
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 490
    .end local v5           #list:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;
    :cond_4
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->WCScenarioEnable:Ljava/lang/String;

    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->update:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_3
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->WCScenarioEnable:Z

    .line 492
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->OSComparabilityType:Ljava/lang/String;

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->OSComparabilityType:Ljava/lang/String;

    .line 494
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->SecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    .line 495
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->values()[Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    move-result-object v0

    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_7

    aget-object v5, v0, v3

    .line 496
    .local v5, list:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->SecureElementType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 497
    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->SecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    .line 495
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v5           #list:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;
    :cond_6
    move v6, v8

    .line 490
    goto :goto_3

    .line 501
    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    :cond_7
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->HandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    .line 502
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    move-result-object v0

    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_9

    aget-object v5, v0, v3

    .line 503
    .local v5, list:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->HandoverSupportType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_8

    .line 504
    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->HandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    .line 502
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 507
    .end local v5           #list:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    :cond_9
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->HandoverSupportType:Ljava/lang/String;

    const-string v9, "mtkbt"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_c

    move v6, v7

    :goto_6
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->MTKBluetoothEnable:Z

    .line 508
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->HandoverSupportType:Ljava/lang/String;

    const-string v9, "autoapplaunch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_d

    move v6, v7

    :goto_7
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->HandoverAutoAppLaunch:Z

    .line 509
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->HandoverSupportType:Ljava/lang/String;

    const-string v9, "WPSHandover"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_e

    move v6, v7

    :goto_8
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->WPSHandoverEnable:Z

    .line 512
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->MccMncSupport:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v6, v7

    :goto_9
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->MccMncSupport:Z

    .line 514
    const-string v2, "INITVALUE"

    .line 516
    .local v2, defaultonoff:Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x20d000d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 520
    :goto_a
    const-string v6, "INITVALUE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 521
    sput-object v2, Lcom/lge/nfcconfig/NfcConfigure;->DefaultOnOffType:Ljava/lang/String;

    .line 526
    :goto_b
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure;->DefaultOnOffType:Ljava/lang/String;

    const-string v9, "open"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 527
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure;->DefaultOnOffType:Ljava/lang/String;

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->targetFlag:Ljava/lang/String;

    .line 528
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->setOpenarrayPowerStatus()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->DefaultOnOffType:Ljava/lang/String;

    .line 532
    :cond_a
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->PopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 533
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    move-result-object v0

    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v4, :cond_11

    aget-object v5, v0, v3

    .line 534
    .local v5, list:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->PopupDialogType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 535
    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->PopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 533
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .end local v2           #defaultonoff:Ljava/lang/String;
    .end local v5           #list:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;
    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    :cond_c
    move v6, v8

    .line 507
    goto :goto_6

    :cond_d
    move v6, v8

    .line 508
    goto :goto_7

    :cond_e
    move v6, v8

    .line 509
    goto :goto_8

    :cond_f
    move v6, v8

    .line 512
    goto :goto_9

    .line 523
    .restart local v2       #defaultonoff:Ljava/lang/String;
    :cond_10
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->DefaultOnOffType:Ljava/lang/String;

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->DefaultOnOffType:Ljava/lang/String;

    goto :goto_b

    .line 539
    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;
    :cond_11
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->PowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    .line 540
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    move-result-object v0

    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v4, :cond_13

    aget-object v5, v0, v3

    .line 541
    .local v5, list:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->PowerSaveType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 542
    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->PowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    .line 540
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 546
    .end local v5           #list:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;
    :cond_13
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->SupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    .line 547
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->values()[Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    move-result-object v0

    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v4, :cond_15

    aget-object v5, v0, v3

    .line 548
    .local v5, list:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->SupportWalletType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 549
    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->SupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    .line 547
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 553
    .end local v5           #list:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;
    :cond_15
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->v1:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    sput-object v6, Lcom/lge/nfcconfig/NfcConfigure;->HceScenario:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    .line 554
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    move-result-object v0

    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v4, :cond_17

    aget-object v5, v0, v3

    .line 555
    .local v5, list:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->HceScenario:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 556
    sput-object v5, Lcom/lge/nfcconfig/NfcConfigure;->HceScenario:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    .line 554
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 560
    .end local v5           #list:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;
    :cond_17
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->AccessControlEnable:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v6, v7

    :goto_10
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->AccessControlEnable:Z

    .line 561
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->TransactionAIDEnable:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    move v6, v7

    :goto_11
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->TransactionAIDEnable:Z

    .line 562
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->NfcEERoutingEnable:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move v6, v7

    :goto_12
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->NfcEERoutingEnable:Z

    .line 563
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->DisableInPowerOffEnable:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    move v6, v7

    :goto_13
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->DisableInPowerOffEnable:Z

    .line 564
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->CardEnableInPowerOff:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move v6, v7

    :goto_14
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->CardEnableInPowerOff:Z

    .line 565
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->AsyncCardControlEnable:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    move v6, v7

    :goto_15
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->AsyncCardControlEnable:Z

    .line 566
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->VendorStablePatch:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    move v6, v7

    :goto_16
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->VendorStablePatch:Z

    .line 567
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->RwP2pServerSyncEnable:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move v6, v7

    :goto_17
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->RwP2pServerSyncEnable:Z

    .line 568
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->BeamUIFinishwhenAlertUIView:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    move v6, v7

    :goto_18
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->BeamUIFinishwhenAlertUIView:Z

    .line 569
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->PermittedSeBroadcastEnable:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    move v6, v7

    :goto_19
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->PermittedSeBroadcastEnable:Z

    .line 570
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->EmptyPopupSupport:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    move v6, v7

    :goto_1a
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->EmptyPopupSupport:Z

    .line 571
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->LockScreenPollingEnable:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v6, v7

    :goto_1b
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->LockScreenPollingEnable:Z

    .line 572
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->NotifyonlyValidTag:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    move v6, v7

    :goto_1c
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->NotifyonlyValidTag:Z

    .line 573
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->SePatchEnabled:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    move v6, v7

    :goto_1d
    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->SePatchEnabled:Z

    .line 574
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->TagLongTimePopupSupport:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    :goto_1e
    sput-boolean v7, Lcom/lge/nfcconfig/NfcConfigure;->TagLongTimePopupSupport:Z

    .line 575
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->AdvancedHCEEnable:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->AdvancedHCEEnable:Z

    .line 576
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->HCEOnHostEnable:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->HCEOnHostEnable:Z

    .line 577
    iget-object v6, v1, Lcom/lge/nfcconfig/NfcConfigParser$Config;->AidFilterEnable:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/lge/nfcconfig/NfcConfigure;->AidFilterEnable:Z

    goto/16 :goto_0

    :cond_18
    move v6, v8

    .line 560
    goto/16 :goto_10

    :cond_19
    move v6, v8

    .line 561
    goto/16 :goto_11

    :cond_1a
    move v6, v8

    .line 562
    goto/16 :goto_12

    :cond_1b
    move v6, v8

    .line 563
    goto/16 :goto_13

    :cond_1c
    move v6, v8

    .line 564
    goto/16 :goto_14

    :cond_1d
    move v6, v8

    .line 565
    goto/16 :goto_15

    :cond_1e
    move v6, v8

    .line 566
    goto/16 :goto_16

    :cond_1f
    move v6, v8

    .line 567
    goto/16 :goto_17

    :cond_20
    move v6, v8

    .line 568
    goto/16 :goto_18

    :cond_21
    move v6, v8

    .line 569
    goto :goto_19

    :cond_22
    move v6, v8

    .line 570
    goto :goto_1a

    :cond_23
    move v6, v8

    .line 571
    goto :goto_1b

    :cond_24
    move v6, v8

    .line 572
    goto :goto_1c

    :cond_25
    move v6, v8

    .line 573
    goto :goto_1d

    :cond_26
    move v7, v8

    .line 574
    goto :goto_1e

    .line 517
    .local v0, arr$:[Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    :catch_0
    move-exception v6

    goto/16 :goto_a
.end method

.method private static setOpenarrayPowerStatus()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 588
    sget-boolean v5, Lcom/lge/nfcconfig/NfcConfigure;->MccMncSupport:Z

    if-eqz v5, :cond_4

    .line 589
    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 591
    .local v4, prop:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 592
    const-string v5, "NfcConfigure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TelephonyProperties.PROPERTY_SIM_STATE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 595
    const-string v1, "XXX"

    .line 596
    .local v1, mcc:Ljava/lang/String;
    const-string v3, "XX"

    .line 597
    .local v3, mnc:Ljava/lang/String;
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, mccmnc:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    .line 600
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    const-string v5, "NfcConfigure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mcc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / mnc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-static {v1, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->searchMcc(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;

    move-result-object v0

    .line 604
    .local v0, config:Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    if-eqz v0, :cond_1

    iget-object v5, v0, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->DefaultOnOffType:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 605
    iget-object v5, v0, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->DefaultOnOffType:Ljava/lang/String;

    .line 622
    .end local v1           #mcc:Ljava/lang/String;
    .end local v2           #mccmnc:Ljava/lang/String;
    .end local v3           #mnc:Ljava/lang/String;
    .end local v4           #prop:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 608
    .end local v0           #config:Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    .restart local v1       #mcc:Ljava/lang/String;
    .restart local v2       #mccmnc:Ljava/lang/String;
    .restart local v3       #mnc:Ljava/lang/String;
    .restart local v4       #prop:Ljava/lang/String;
    :cond_0
    const-string v5, "NfcConfigure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numeric is invalid, numeric : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v1           #mcc:Ljava/lang/String;
    .end local v2           #mccmnc:Ljava/lang/String;
    .end local v3           #mnc:Ljava/lang/String;
    :cond_1
    const-string v5, "offp2p"

    goto :goto_0

    .line 611
    :cond_2
    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "UNKNOWN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 612
    :cond_3
    const-string v5, "oncardrwp2p"

    goto :goto_0

    .line 618
    .end local v4           #prop:Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure;->mMCC:Ljava/lang/String;

    const-string v6, "XX"

    invoke-static {v5, v6}, Lcom/lge/nfcconfig/NfcConfigParser;->searchMcc(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;

    move-result-object v0

    .line 619
    .restart local v0       #config:Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    if-eqz v0, :cond_5

    iget-object v5, v0, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->DefaultOnOffType:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 620
    iget-object v5, v0, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->DefaultOnOffType:Ljava/lang/String;

    goto :goto_0

    .line 622
    :cond_5
    const-string v5, "oncardrwp2p"

    goto :goto_0
.end method


# virtual methods
.method public getConfigMap()Ljava/util/HashMap;
    .locals 1
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
    .line 725
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigMap:Ljava/util/HashMap;

    return-object v0
.end method
