.class public interface abstract Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;
.super Ljava/lang/Object;
.source "LgeAutoProfilingConstants.java"


# static fields
.field public static final ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "qualcomm.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ATTR_NAME_COUNTRY:Ljava/lang/String; = "country"

.field public static final ATTR_NAME_DEFAULT:Ljava/lang/String; = "default"

.field public static final ATTR_NAME_GID:Ljava/lang/String; = "gid"

.field public static final ATTR_NAME_IMSI_RANGE:Ljava/lang/String; = "imsi"

.field public static final ATTR_NAME_KEY:Ljava/lang/String; = "name"

.field public static final ATTR_NAME_MCC:Ljava/lang/String; = "mcc"

.field public static final ATTR_NAME_MNC:Ljava/lang/String; = "mnc"

.field public static final ATTR_NAME_OPERATOR:Ljava/lang/String; = "operator"

.field public static final ATTR_NAME_SPN:Ljava/lang/String; = "spn"

.field public static final AUTO_PROFILE_ENABLED:Z = true

.field public static final COUNTRY:Ljava/lang/String; = null

.field public static final ELEMENT_NAME_COMMONPROFILE:Ljava/lang/String; = "CommonProfile"

.field public static final ELEMENT_NAME_FEATURESET:Ljava/lang/String; = "FeatureSet"

.field public static final ELEMENT_NAME_ITEM:Ljava/lang/String; = "item"

.field public static final ELEMENT_NAME_PROFILE:Ljava/lang/String; = "profile"

.field public static final ELEMENT_NAME_PROFILES:Ljava/lang/String; = "profiles"

.field public static final ELEMENT_NAME_SIMINFO:Ljava/lang/String; = "siminfo"

.field public static final FEATURE:I = 0x2

.field public static final FILE_PATH_CUPSS_FEATURE:Ljava/lang/String; = null

.field public static final FILE_PATH_CUPSS_PROFILE:Ljava/lang/String; = null

.field public static final FILE_PATH_CUPSS_PROFILE_OPEN:Ljava/lang/String; = "/etc/telephonyCupssOpen.xml"

.field public static final FILE_PATH_FEATURE:Ljava/lang/String; = "/etc/featureset.xml"

.field public static final FILE_PATH_PROFILE:Ljava/lang/String; = "/etc/telephony.xml"

.field public static final FILE_PATH_PROFILE_OPEN:Ljava/lang/String; = "/etc/telephonyOpen.xml"

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final ITEM_NAME_BUILD_DATE:Ljava/lang/String; = "build_date"

.field public static final ITEM_NAME_GID:Ljava/lang/String; = "gid"

.field public static final ITEM_NAME_IMSI:Ljava/lang/String; = "imsi"

.field public static final ITEM_NAME_MCC:Ljava/lang/String; = "mcc"

.field public static final ITEM_NAME_MNC:Ljava/lang/String; = "mnc"

.field public static final ITEM_NAME_SPN:Ljava/lang/String; = "spn"

.field public static final KEY_ECC_IDLE_MODE:Ljava/lang/String; = "ECC_IdleMode"

.field public static final KEY_ECC_LIST:Ljava/lang/String; = "ECC_list"

.field public static final KEY_NO_SIM_ECCLIST:Ljava/lang/String; = "no_sim_ecclist"

.field public static final KEY_ROAMING_ICON_HIDE:Ljava/lang/String; = "ROAMING_ICON_HIDE"

.field public static final KEY_RVMS:Ljava/lang/String; = "RVMS"

.field public static final KEY_SHORTCODE_CALL:Ljava/lang/String; = "ShortCodeCall"

.field public static final KEY_SIM_LOCK_ECCLIST:Ljava/lang/String; = "sim_lock_ecclist"

.field public static final KEY_VMS:Ljava/lang/String; = "VMS"

.field public static final LOG_DIALSTRING:I = 0x10

.field public static final LOG_IDENTITY:I = 0x100

.field public static final LOG_USSD:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final MULTI_SIM_ENABLED:Z = false

.field public static final OPERATOR:Ljava/lang/String; = null

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PREF_NAME_FEATURE:Ljava/lang/String; = "feature"

.field public static final PREF_NAME_PROFILE:Ljava/lang/String; = "profile_"

.field public static final PREF_NAME_PROFILE_DEFAULT:Ljava/lang/String; = "defaultProfile"

.field public static final PREF_NAME_SIM_INFO:Ljava/lang/String; = "simInfo_"

.field public static final PRIVATE_LOG_PROP:Ljava/lang/String; = "persist.service.plog.enable"

.field public static final PRIVATE_LOG_TMUS_PROP:Ljava/lang/String; = "persist.service.privacy.enable"

.field public static final PROFILE:I = 0x1

.field public static final PROPERTY_BUILD_DATE:Ljava/lang/String; = "ro.build.date"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.sim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.sim.operator.numeric"

.field public static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field public static final SYSTEM_PROP_AUTOPROFILE_ECCLIST:Ljava/lang/String; = "ril.ecclist.autoprofile"

.field public static final SYSTEM_PROP_AUTOPROFILE_ECC_IDLEMODE:Ljava/lang/String; = "ril.ecclist.eccidlemode"

.field public static final SYSTEM_PROP_BUILD_TYPE:Ljava/lang/String; = "ro.build.type"

.field public static final SYSTEM_PROP_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field public static final SYSTEM_PROP_MCC_FOR_ONE_IMAGE:Ljava/lang/String; = "persist.sys.iccid-mcc"

.field public static final SYSTEM_PROP_TARGET_COUNTRY:Ljava/lang/String; = "ro.build.target_country"

.field public static final SYSTEM_PROP_TARGET_OPERATOR:Ljava/lang/String; = "ro.build.target_operator"

.field public static final TAG:Ljava/lang/String; = "TelephonyAutoProfiling"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final USE_DEFAULT_PROFILE_XML:Z = false

.field public static final USE_PREFERENCES_FEATURE:Z = false

.field public static final USE_PREFERENCES_PROFILE:Z = true

.field public static final USE_PREFERENCES_PROFILE_DEFAULT:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const-string v0, "ro.build.target_operator"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;->OPERATOR:Ljava/lang/String;

    .line 59
    const-string v0, "ro.build.target_country"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;->COUNTRY:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config/telephony.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;->FILE_PATH_CUPSS_PROFILE:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config/featureset.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;->FILE_PATH_CUPSS_FEATURE:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;->MULTI_SIM_ENABLED:Z

    return-void
.end method
