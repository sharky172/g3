.class public Lcom/lge/bluetooth/LGBluetoothFeatureConfig;
.super Ljava/lang/Object;
.source "LGBluetoothFeatureConfig.java"


# static fields
.field private static final BUILD_TYPE_USER:Ljava/lang/String; = "user"

.field private static final DEBUG:Z = false

.field private static final PROPERTY_BTUI_PRIVACY_LOG:Ljava/lang/String; = "persist.service.bdroid.btui_log"

.field private static final TAG:Ljava/lang/String; = "LGBluetoothFeatureConfig"

.field private static btFeature:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isFeatureLoaded:Z

.field private static final mLGFeatureSet:Ljava/lang/String;

.field private static mNetworkMode:Ljava/lang/String;

.field private static mOperatorsDisablingPrivacyLogs:[Ljava/lang/String;

.field private static mTargetCountry:Ljava/lang/String;

.field private static mTargetOp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    .line 48
    const-string v0, "ro.build.target_country"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetCountry:Ljava/lang/String;

    .line 50
    const-string v0, "ro.telephony.default_network"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mNetworkMode:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    .line 55
    sput-boolean v2, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SPR"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "TMO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MPCS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mOperatorsDisablingPrivacyLogs:[Ljava/lang/String;

    .line 64
    const-string v0, "ro.afwdata.LGfeatureset"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mLGFeatureSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private LGBluetoothFeatureConfig()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method private static btFeatureConfigSet()V
    .locals 3

    .prologue
    .line 78
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    monitor-enter v1

    .line 83
    :try_start_0
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_ENABLE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 84
    const-string v0, "LGBT_COMMON_SCENARIO_BLOCK_SENDING_DRM_FILES"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 85
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 86
    const-string v0, "LGBT_COMMON_SUPPORT_SIM_PHONEBOOK"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 88
    const-string v0, "LGBT_CNDTL_SCENARIO_VZW_BT_TUTORIAL"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 91
    const-string v0, "LGBT_CNDTL_SCENARIO_NEW_MENU_LIST"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 93
    const-string v0, "LGBT_COMMON_SCENARIO_DEVICE_NAME_SYNC"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 95
    const-string v0, "BT_COMMON_SCENARIO_DUAL_SEARCH_BUTTON"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 96
    const-string v0, "BT_COMMON_SCENARIO_CUSTOM_SEARCH_BUTTON"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 99
    const-string v0, "BT_COMMON_SCENARIO_IDENTIFY_COD"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 102
    const-string v0, "BT_COMMON_SCENARIO_AUTO_HFP_CONNECT_DURING_A2DP_CONNECTION"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 105
    const-string v0, "BT_COMMON_SCENARIO_LED"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 107
    const-string v0, "BT_CNDTL_SCENARIO_VOLTE_ONLY_SERVICE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 108
    const-string v0, "LGBT_COMMON_MAX"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 120
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "VZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    const-string v0, "LGBT_CNDTL_SCENARIO_GAP_CARKIT_ICON"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 122
    const-string v0, "LGBT_CNDTL_SCENARIO_GAP_CONNECT_AFTER_PAIR"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 123
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 125
    const-string v0, "LGBT_CNDTL_SCENARIO_VISIBILITY_TIMEOUT_OPTION"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 128
    const-string v0, "LGBT_CNDTL_SCENARIO_NEW_MENU_LIST"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 131
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mNetworkMode:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "LGBT_COMMON_SUPPORT_SIM_PHONEBOOK"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 136
    :cond_0
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mLGFeatureSet:Ljava/lang/String;

    const-string v2, "VZWBASE_PP"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_ENABLE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 296
    :cond_1
    :goto_0
    monitor-exit v1

    .line 302
    return-void

    .line 143
    :cond_2
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "MPCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    const-string v0, "LGBT_CNDTL_SCENARIO_CHANGE_CALLER_ID_WHEN_CALL_SWAP"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 145
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 146
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_ENABLE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 152
    :cond_3
    :try_start_1
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "CRK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    const-string v0, "LGBT_CNDTL_SCENARIO_CHANGE_CALLER_ID_WHEN_CALL_SWAP"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 154
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto :goto_0

    .line 160
    :cond_4
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "DCM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_ENABLE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 162
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 163
    const-string v0, "LGBT_COMMON_SUPPORT_SIM_PHONEBOOK"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto :goto_0

    .line 168
    :cond_5
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "KDDI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    const-string v0, "LGBT_CNDTL_FUNCTION_PBAP_SOUND_TAG"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 172
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto :goto_0

    .line 178
    :cond_6
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "SKT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto :goto_0

    .line 185
    :cond_7
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "KT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 186
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 192
    :cond_8
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "LGU"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 194
    const-string v0, "BT_CNDTL_SCENARIO_VOLTE_ONLY_SERVICE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 199
    :cond_9
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "SPR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 200
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 206
    :cond_a
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "USC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 207
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 209
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_ENABLE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 214
    :cond_b
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "TRF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 215
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_ENABLE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 217
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 220
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mNetworkMode:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "LGBT_COMMON_SUPPORT_SIM_PHONEBOOK"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 228
    :cond_c
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "TMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 229
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_ENABLE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 231
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 237
    :cond_d
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 239
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 242
    const-string v0, "BT_CNDTL_SCENARIO_SKIP_TUTORIAL_ALERT_DIALOG"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 249
    :cond_e
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 250
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "JP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_f
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 260
    :cond_10
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "AIO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 261
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_ENABLE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 264
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 271
    :cond_11
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "CCA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 272
    const-string v0, "LGBT_CNDTL_SCENARIO_CHANGE_CALLER_ID_WHEN_CALL_SWAP"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 273
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 274
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_ENABLE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 281
    :cond_12
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "LRA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 282
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 292
    :cond_13
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "DUMMY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0
.end method

.method public static disablePrivacyLogsInUserBuild()V
    .locals 8

    .prologue
    .line 430
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isTargetBuildTypeUSER()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mOperatorsDisablingPrivacyLogs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 432
    .local v3, operator:Ljava/lang/String;
    sget-object v5, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 433
    const-string v5, "persist.service.bdroid.btui_log"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, result:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 436
    const-string v5, "LGBluetoothFeatureConfig"

    const-string v6, "already set to 1 via hidden menu. so, enable logs"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v3           #operator:Ljava/lang/String;
    .end local v4           #result:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 440
    .restart local v3       #operator:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    :cond_1
    const-string v5, "LGBluetoothFeatureConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disablePrivacyLogsInUserBuild(), result is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", and property is set to 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v5, "persist.service.bdroid.btui_log"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 431
    .end local v4           #result:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static get(Ljava/lang/String;)Z
    .locals 2
    .parameter "svcName"

    .prologue
    const/4 v1, 0x1

    .line 409
    sget-boolean v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    if-eq v0, v1, :cond_0

    .line 410
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeatureConfigSet()V

    .line 411
    sput-boolean v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    .line 421
    :cond_0
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 422
    const/4 v0, 0x0

    .line 424
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/Boolean;

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static isBRCMSolution()Z
    .locals 2

    .prologue
    .line 345
    const-string v0, "bluetooth.chip.vendor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "brcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChameleonFeaturedCarrier()Z
    .locals 2

    .prologue
    .line 464
    const-string v0, "US"

    sget-object v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    const/4 v0, 0x1

    .line 470
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMTKSolution()Z
    .locals 2

    .prologue
    .line 371
    const-string v0, "bluetooth.chip.vendor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrivacyLogsEnabled()Z
    .locals 4

    .prologue
    .line 380
    const-string v1, "persist.service.bdroid.btui_log"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 381
    .local v0, isPrivacyLogsEnabled:Z
    const-string v1, "LGBluetoothFeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPrivacyLogsEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return v0
.end method

.method public static isQCTSolution()Z
    .locals 2

    .prologue
    .line 358
    const-string v0, "bluetooth.chip.vendor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 335
    invoke-static {p0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFtp()Z
    .locals 3

    .prologue
    .line 555
    const/4 v0, 0x1

    .line 559
    .local v0, support:Z
    const-string v1, "persist.service.bt.support.ftp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    const/4 v0, 0x0

    .line 562
    :cond_0
    return v0
.end method

.method public static isSupportMap()Z
    .locals 3

    .prologue
    .line 538
    const/4 v0, 0x1

    .line 542
    .local v0, support:Z
    const-string v1, "persist.service.bt.support.map"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    const/4 v0, 0x0

    .line 545
    :cond_0
    return v0
.end method

.method public static isSupportPan()Z
    .locals 7

    .prologue
    .line 485
    const/4 v2, 0x1

    .line 486
    .local v2, ret_value:Z
    const-string v4, "LGBluetoothFeatureConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportPan() :  mTargetOp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isChameleonFeaturedCarrier()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 489
    new-instance v0, Ljava/lang/String;

    const-string v4, "/carrier/data/td"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, cmln_data_tether:Ljava/lang/String;
    const/4 v1, 0x1

    .line 493
    .local v1, ref_value:I
    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v3

    .line 495
    .local v3, tetherMode:I
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 496
    const/4 v2, 0x0

    .line 500
    :goto_0
    const-string v4, "LGBluetoothFeatureConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportPan() :  tetherMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret_value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v0           #cmln_data_tether:Ljava/lang/String;
    .end local v1           #ref_value:I
    .end local v3           #tetherMode:I
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    .line 506
    const-string v4, "bluetooth.pan"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_2
    return v2

    .line 498
    .restart local v0       #cmln_data_tether:Ljava/lang/String;
    .restart local v1       #ref_value:I
    .restart local v3       #tetherMode:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 501
    .end local v0           #cmln_data_tether:Ljava/lang/String;
    .end local v1           #ref_value:I
    .end local v3           #tetherMode:I
    :cond_2
    const-string v4, "LGBT_COMMON_FUNCTION_PAN_ENABLE"

    invoke-static {v4}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 502
    const/4 v2, 0x0

    goto :goto_1

    .line 508
    :cond_3
    const-string v4, "bluetooth.pan"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static isSupportSap()Z
    .locals 3

    .prologue
    .line 521
    const/4 v0, 0x0

    .line 525
    .local v0, support:Z
    const-string v1, "persist.service.bt.support.sap"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    const/4 v0, 0x1

    .line 528
    :cond_0
    return v0
.end method

.method public static isTargetBuildTypeUSER()Z
    .locals 2

    .prologue
    .line 387
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static listPrintDebug()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method private static readChameleonIntValue(Ljava/lang/String;I)I
    .locals 12
    .parameter "fn"
    .parameter "ref_value"

    .prologue
    .line 568
    const/4 v2, 0x0

    .line 569
    .local v2, fr:Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 570
    .local v9, value:Ljava/lang/String;
    move v6, p1

    .line 572
    .local v6, ret_value:I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v1, fh:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 574
    const-string v10, "LGBluetoothFeatureConfig"

    const-string v11, "readChameleonIntValue() : tethered data does not exit."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 611
    .end local v6           #ret_value:I
    .local v7, ret_value:I
    :goto_0
    return v7

    .line 579
    .end local v7           #ret_value:I
    .restart local v6       #ret_value:I
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 580
    .end local v2           #fr:Ljava/io/FileReader;
    .local v3, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 581
    .local v4, inFile:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 582
    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 583
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 584
    .local v8, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v9

    .line 591
    .end local v8           #tokenizer:Ljava/util/StringTokenizer;
    :cond_1
    if-eqz v3, :cond_2

    .line 592
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    .line 601
    .end local v3           #fr:Ljava/io/FileReader;
    .end local v4           #inFile:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v2       #fr:Ljava/io/FileReader;
    :cond_3
    :goto_1
    if-eqz v9, :cond_5

    .line 602
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    :goto_2
    move v7, v6

    .line 611
    .end local v6           #ret_value:I
    .restart local v7       #ret_value:I
    goto :goto_0

    .line 595
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v7           #ret_value:I
    .restart local v3       #fr:Ljava/io/FileReader;
    .restart local v4       #inFile:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #ret_value:I
    :catch_0
    move-exception v10

    move-object v2, v3

    .line 597
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_1

    .line 588
    .end local v4           #inFile:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 591
    :goto_3
    if-eqz v2, :cond_3

    .line 592
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 595
    :catch_2
    move-exception v10

    goto :goto_1

    .line 590
    :catchall_0
    move-exception v10

    .line 591
    :goto_4
    if-eqz v2, :cond_4

    .line 592
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 596
    :cond_4
    :goto_5
    throw v10

    .line 604
    :cond_5
    move v6, p1

    goto :goto_2

    .line 607
    :catch_3
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/Exception;
    move v6, p1

    goto :goto_2

    .line 595
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v11

    goto :goto_5

    .line 590
    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_4

    .line 588
    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v10

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_3
.end method

.method private static set(Ljava/lang/String;Z)V
    .locals 2
    .parameter "svcName"
    .parameter "bYn"

    .prologue
    .line 400
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_0
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    return-void
.end method
