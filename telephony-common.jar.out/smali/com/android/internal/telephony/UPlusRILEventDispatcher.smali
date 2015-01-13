.class public final Lcom/android/internal/telephony/UPlusRILEventDispatcher;
.super Landroid/os/Handler;
.source "UPlusRILEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_LG_NVITEM_RESET:Ljava/lang/String; = "android.intent.action.LG_NVITEM_RESET"

.field public static final CDMA_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.CDMA_LOCK_ORDER"

.field public static final CDMA_MAINT_REQ:Ljava/lang/String; = "android.intent.action.CDMA_MAINT_REQ"

.field private static final CDMA_RIL_EVENT:Ljava/lang/String; = "android.intent.action.CDMA_RIL_EVENT"

.field static final CONGESTTION:I = 0x16

.field private static final EHRPD_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.EHRPD_LOCK_ORDER"

.field static final EPS_SERVICES_AND_NON_EPS_SERVICES_NOT_ALLOWED:I = 0x8

.field static final EPS_SERVICES_NOT_ALLOWED:I = 0x7

.field static final EPS_SERVICES_NOT_ALLOWED_IN_THIS_PLMN:I = 0xe

.field static final ESM_FAILURE:I = 0x13

.field private static final EVENT_EMM_REJECT:I = 0x16

.field private static final EVENT_HDR_LOCK:I = 0x14

.field private static final EVENT_LGT_FACTORY_RESET:I = 0x13

.field private static final EVENT_LGT_OTA_SESSION_FAIL:I = 0x1

.field private static final EVENT_LGT_OTA_SESSION_SUCCESS:I = 0x2

.field private static final EVENT_LGT_ROAMING_UI_TEST_SET_DONE:I = 0xc

.field private static final EVENT_LGT_SID_CHANGED:I = 0x4

.field private static final EVENT_LGT_WPBX_CHANGED:I = 0x5

.field private static final EVENT_LOCK_STATE_CHANGED:I = 0x3

.field private static final EVENT_LTE_LOCK:I = 0x15

.field private static final EVENT_NET_ERR_DISP:I = 0xf

.field private static final EVENT_RIL_EVENT_DISPATCHER_BASE:I = 0x0

.field static final ILLEGAL_ME:I = 0x6

.field static final ILLEGAL_UE:I = 0x3

.field static final IMEI_NOT_ACCEPTED:I = 0x5

.field static final IMPLICITLY_DETACHED:I = 0xa

.field static final IMSI_NUKNOWN_IN_HSS:I = 0x2

.field static final INFORMATION_ELEMENTNON_EXISTANT_OR_NOT_IMPLEMENTED:I = 0x63

.field static final INVALID_MANDATORY_INFO:I = 0x60

.field public static final LGT_AUTH_LOCK:Ljava/lang/String; = "android.intent.action.LGT_AUTH_LOCK"

.field public static final LGT_HDR_NETWORK_ERROR:Ljava/lang/String; = "android.intent.action.LGT_HDR_NETWORK_ERROR"

.field public static final LGT_OTA_RES_NOTIF_FAIL:Ljava/lang/String; = "android.intent.action.LGT_OTA_RES_NOTIF_FAIL"

.field public static final LGT_OTA_RES_NOTIF_SAME:Ljava/lang/String; = "android.intent.action.LGT_OTA_RES_NOTIF_SAME"

.field public static final LGT_OTA_RES_NOTIF_UPDATE:Ljava/lang/String; = "android.intent.action.LGT_OTA_RES_NOTIF_UPDATE"

.field public static final LGT_SID_CHANGED:Ljava/lang/String; = "android.intent.action.LGT_SID_CHANGED"

.field public static final LGT_WPBX_MATCH:Ljava/lang/String; = "android.intent.action.LGT_WPBX_MATCH"

.field public static final LGT_WPBX_NOMATCH:Ljava/lang/String; = "android.intent.action.LGT_WPBX_NOMATCH"

.field private static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field static final LTE_AUTHENTICATION_REJECT:I = 0x54

.field private static final LTE_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.LTE_LOCK_ORDER"

.field static final MAC_FAILURE:I = 0x14

.field static final MESSAGE_TYPE_NONEXISTANT_OR_NOT_IMPLEMENTED:I = 0x61

.field static final MSC_TEMPORARILY_NOT_REACHABLE:I = 0x10

.field static final NETWORK_FAILURE:I = 0x11

.field static final NOT_AUTHORIZED_FOR_THIS_CSG:I = 0x19

.field static final NO_EPS_BEARER_CONTEXT_ACTIVATED:I = 0x28

.field static final NO_SUITABLE_CELLS_IN_TRACKING_AREA:I = 0xf

.field static final PLMN_NOT_ALLOWED:I = 0xb

.field private static final PROPERTY_SERVICE_PROVIDER:Ljava/lang/String; = "ro.telephony.service_provider"

.field static final PROTOCOL_ERROR_UNSPECIFIED:I = 0x6f

.field static final REJECTCAUSE_NOTIFICATION_ID:I = 0xc73b

.field static final ROAMING_NOT_ALLOWED_IN_THIS_TRACKING_AREA:I = 0xd

.field static final SEMANTICALLY_INCORRECT_MSG:I = 0x5f

.field private static final SERVICE_PROVIDER_LGT:Ljava/lang/String; = "LGT"

.field private static final SERVICE_PROVIDER_NONE:Ljava/lang/String; = "None"

.field static final TRACKING_AREA_NOT_ALLOWED:I = 0xc

.field static final UE_IDENTITY_CANNOT_BE_DERIVED_BY_THE_NERWORK:I = 0x9

.field private static rilEventDispatcher:Lcom/android/internal/telephony/UPlusRILEventDispatcher;


# instance fields
.field private curMessageRes:Ljava/lang/String;

.field private debugFilter:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private mEsmRejectNum:I

.field private mIsLGTHDRNetworkError:Z

.field private mIsLGTUnauthenticated:Z

.field private mIsLGTUnregister:Z

.field private mIsLTEAuthError:Z

.field private mIsLTEEMMReject:Z

.field private mLockOrderPopup:Landroid/app/AlertDialog;

.field private mLockOrderReceiver:Landroid/content/BroadcastReceiver;

.field private mRejectNotification:Landroid/app/Notification;

.field private mRejectNum:I

.field private mSS:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->rilEventDispatcher:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .parameter "ctx"
    .parameter "commandsInterface"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 186
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 120
    iput-boolean v4, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    .line 123
    iput-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    iput-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    .line 131
    iput-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->curMessageRes:Ljava/lang/String;

    .line 134
    iput-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnregister:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnauthenticated:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTHDRNetworkError:Z

    .line 141
    iput-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEAuthError:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEEMMReject:Z

    .line 146
    iput v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    .line 147
    iput v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mEsmRejectNum:I

    .line 153
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mSS:Landroid/telephony/ServiceState;

    .line 512
    new-instance v1, Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;-><init>(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    const-string v1, "UPlusRILEventDispatcher created"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 194
    const-string v1, "gsm.lge.lte_reject_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "set  : TelephonyProperties.PROPERTY_LTE_REJECT_CAUSE to 0"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->checkMissingPhoneAndSendIntentWhenReboot()V

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_LGT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_KT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_JCDMA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_DCN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "android.intent.action.LG_NVITEM_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOtaSessionFail(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOtaSessionSuccess(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLockStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSidChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForWpbxStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xf

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkErrorDisp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x14

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForHdrLock(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x15

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteLock(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 223
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x16

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteEmmReject(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    invoke-direct {p0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->registerIntentReceivers()V

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLGTRoamingUITest(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleNVItemReset()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnregister:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnregister:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnauthenticated:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnauthenticated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTHDRNetworkError:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTHDRNetworkError:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEAuthError:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEAuthError:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEEMMReject:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEEMMReject:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mEsmRejectNum:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->setPopUp()V

    return-void
.end method

.method private checkMissingPhoneAndSendIntentWhenReboot()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 876
    const-string v2, "persist.radio.missing_phone"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, isMissingPhone:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMissingPhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 880
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.LTE_MISSING_PHONE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .local v0, intentMissingPhone:Landroid/content/Intent;
    const-string v2, "rejectCode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 884
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 886
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->startEmergencyDialerActivity(I)V

    .line 888
    const-string v2, "send intent LTE_MISSING_PHONE in phone process start"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 890
    .end local v0           #intentMissingPhone:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static getUPlusRILEventDispatcher(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UPlusRILEventDispatcher;
    .locals 3
    .parameter "ctx"
    .parameter "commandsInterface"

    .prologue
    .line 239
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUPlusRILEventDispatcher : rilEventDispatcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->rilEventDispatcher:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "commandsInterface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    .line 245
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->rilEventDispatcher:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    if-nez v0, :cond_2

    .line 246
    new-instance v0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->rilEventDispatcher:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    .line 249
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->rilEventDispatcher:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    goto :goto_0
.end method

.method private handleHdrLock(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 446
    const-string v2, "eHRPD Lock Order Received!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 448
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 449
    const-string v2, "Err! eHRPD Lock order"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 454
    .local v1, ints:[I
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 455
    const-string v2, "send intent EHRPD_LOCK_ORDER!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EHRPD_LOCK_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLGTNetworkError(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 426
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 427
    iget-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_NET_ERR_DISP Err"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LGT_HDR_NETWORK_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 432
    iget-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_0

    const-string v1, "intent LGT_HDR_NETWORK_ERROR send "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_0

    const-string v1, "DO NOT send intent LGT_HDR_NETWORK_ERROR"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleLGTRoamingUITest(I)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x20030

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 421
    return-void
.end method

.method private handleLgtOtaSessionFail()V
    .locals 2

    .prologue
    .line 330
    const-string v1, "LGT OTA SESSION FAIL"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LGT_OTA_RES_NOTIF_FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    return-void
.end method

.method private handleLgtOtaSessionSuccess(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 338
    iget-boolean v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v2, :cond_0

    const-string v2, "LGT OTA SESSION SUCCESS"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 340
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 341
    const-string v2, "Err! CDMA Lock order"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 356
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 346
    .local v1, ints:[I
    aget v2, v1, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 347
    const-string v2, "send intent LGT_OTA_RES_NOTIF_UPDATE!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_OTA_RES_NOTIF_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 350
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    aget v2, v1, v4

    if-nez v2, :cond_1

    .line 351
    const-string v2, "send intent LGT_OTA_RES_NOTIF_SAME!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_OTA_RES_NOTIF_SAME"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLgtSidChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 385
    iget-boolean v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v2, :cond_0

    const-string v2, "LGT ROAMING SID Changed!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 387
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 388
    const-string v2, "Err! LGT SID Changed"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 392
    .local v1, ints:[I
    iget-boolean v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send SID info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 394
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_SID_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sid"

    aget v3, v1, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLgtWpbxChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 401
    iget-boolean v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v2, :cond_0

    const-string v2, "LGT WPBX Match Changed!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 403
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 404
    const-string v2, "Err! LGT WPBX Match"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 406
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 409
    .local v1, ints:[I
    aget v2, v1, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_WPBX_MATCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 412
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    aget v2, v1, v4

    if-nez v2, :cond_1

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_WPBX_NOMATCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLockStateChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 359
    iget-boolean v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v2, :cond_0

    const-string v2, "CDMA Lock Order Received!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 362
    const-string v2, "Err! CDMA Lock order"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 382
    :cond_1
    :goto_0
    return-void

    .line 364
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 367
    .local v1, ints:[I
    aget v2, v1, v4

    if-ne v2, v3, :cond_3

    aget v2, v1, v3

    if-ne v2, v3, :cond_3

    .line 368
    const-string v2, "send intent CDMA_LOCK_ORDER!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CDMA_LOCK_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 371
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    aget v2, v1, v4

    if-ne v2, v3, :cond_4

    .line 372
    const-string v2, "send intent CDMA_MAINT_REQ!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CDMA_MAINT_REQ"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 376
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    aget v2, v1, v3

    if-ne v2, v3, :cond_1

    .line 377
    const-string v2, "send intent LGT_AUTH_LOCK!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_AUTH_LOCK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLteEmmReject(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 481
    const-string v3, "LTE EMM REJECT Received!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 483
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 484
    const-string v3, "Err! LTE EMM REJECT order"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 509
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 490
    .local v1, ints:[I
    const-string v3, "gsm.lge.lte_reject_cause"

    aget v4, v1, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v3, "gsm.lge.lte_esm_reject_cause"

    aget v4, v1, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v3, "gsm.radio.last_ltereject"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 497
    .local v2, lastLteRejectCause:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastLteRejectCause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , new lte reject = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 499
    if-eq v2, v7, :cond_1

    if-ne v2, v8, :cond_2

    :cond_1
    aget v3, v1, v5

    if-eq v3, v7, :cond_3

    aget v3, v1, v5

    if-eq v3, v8, :cond_3

    .line 500
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.LTE_EMM_REJECT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "rejectCode"

    aget v4, v1, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v3, "esmRejectCode"

    aget v4, v1, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 506
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v3, "gsm.radio.last_ltereject"

    aget v4, v1, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleLteLock(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 463
    const-string v1, "LTE Lock Order Received!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 465
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 466
    const-string v1, "Err! LTE Lock order"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 471
    .local v0, ints:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 472
    const-string v1, "send intent LTE_LOCK_ORDER!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNVItemReset()V
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x20036

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 442
    return-void
.end method

.method private isOtaActivity()Z
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method private registerIntentReceivers()V
    .locals 3

    .prologue
    .line 604
    const-string v1, "registerIntentReceivers"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 607
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 608
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 609
    .local v0, lockOrderfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CDMA_LOCK_ORDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    const-string v1, "android.intent.action.CDMA_MAINT_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    const-string v1, "android.intent.action.LGT_AUTH_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string v1, "android.intent.action.LGT_HDR_NETWORK_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    const-string v1, "android.intent.action.EHRPD_LOCK_ORDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 616
    const-string v1, "android.intent.action.LTE_LOCK_ORDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 617
    const-string v1, "android.intent.action.EHRPD_AN_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string v1, "com.lge.intent.action.LTE_EMM_REJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    new-instance v1, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;-><init>(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderReceiver:Landroid/content/BroadcastReceiver;

    .line 625
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 627
    .end local v0           #lockOrderfilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setPopUp()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 634
    const-string v6, "setPopUp"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 636
    const-string v2, ""

    .line 637
    .local v2, message:Ljava/lang/String;
    const-string v4, ""

    .line 638
    .local v4, title:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnregister:Z

    if-eqz v6, :cond_2

    .line 639
    const-string v6, "lgt_unregister"

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->isOtaActivity()Z

    move-result v6

    if-nez v6, :cond_1

    .line 725
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->showPopUp(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CDMA_RIL_EVENT++ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 731
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.CDMA_RIL_EVENT"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "Event_Type"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 733
    iget-object v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 734
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CDMA_RIL_EVENT-- : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 737
    return-void

    .line 640
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-boolean v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnauthenticated:Z

    if-eqz v6, :cond_3

    .line 641
    const-string v6, "lgt_unauthenticated"

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 642
    :cond_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTHDRNetworkError:Z

    if-eqz v6, :cond_4

    .line 643
    const-string v6, "lgt_hdr_network_error"

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 646
    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEAuthError:Z

    if-eqz v6, :cond_5

    .line 647
    const-string v6, "lgt_hdr_network_error"

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 652
    :cond_5
    iget-boolean v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEEMMReject:Z

    if-eqz v6, :cond_0

    .line 656
    const-string v6, "true"

    const-string v7, "persist.radio.isroaming"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 657
    const-string v6, "UPLUS_ROAMING_FAIL_NOTIFICATION_TITLE"

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 658
    iget v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    invoke-static {v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->toLteRejectCauseStringforRoaming(I)Ljava/lang/String;

    move-result-object v2

    .line 666
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_6

    iget v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    .line 668
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 669
    .local v5, toast:Landroid/widget/Toast;
    const/16 v6, 0x50

    invoke-virtual {v5, v6, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 670
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 681
    const/4 v6, 0x0

    const-string v7, "support_usim_compatibility"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 683
    const-string v6, "ril.card_operator"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, rilCardOperator:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ril.card_operator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 687
    const-string v6, "LGU"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 689
    :cond_7
    const-string v6, "persist.radio.missing_phone"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.lge.intent.action.LTE_MISSING_PHONE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .local v1, intentMissingPhone:Landroid/content/Intent;
    const-string v6, "rejectCode"

    iget v7, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    iget-object v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 696
    iget v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->startEmergencyDialerActivity(I)V

    .line 698
    const-string v6, "send intent LTE_MISSING_PHONE for only U+ or No USIM for USIM_COMPATIBILITY UE by Reject Cause"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 713
    .end local v1           #intentMissingPhone:Landroid/content/Intent;
    .end local v3           #rilCardOperator:Ljava/lang/String;
    :cond_8
    :goto_2
    const-string v2, ""

    .line 714
    iput-boolean v8, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEEMMReject:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEAuthError:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTHDRNetworkError:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnauthenticated:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnregister:Z

    .line 715
    iput v8, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    goto/16 :goto_0

    .line 660
    .end local v5           #toast:Landroid/widget/Toast;
    :cond_9
    const-string v6, "UPLUS_FAIL_NOTIFICATION_TITLE"

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 661
    iget v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    iget v7, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mEsmRejectNum:I

    invoke-static {v6, v7}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->toLteRejectCauseString(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 701
    .restart local v5       #toast:Landroid/widget/Toast;
    :cond_a
    const-string v6, "persist.radio.missing_phone"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.lge.intent.action.LTE_MISSING_PHONE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .restart local v1       #intentMissingPhone:Landroid/content/Intent;
    const-string v6, "rejectCode"

    iget v7, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    iget-object v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 708
    iget v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->startEmergencyDialerActivity(I)V

    .line 710
    const-string v6, "send intent LTE_MISSING_PHONE for U+ by Reject Cause"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private showPopUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    .line 743
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isFactoryMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    const-string v2, "LGU"

    const-string v3, "ril.card_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 746
    const-string v2, "not LGU+ USIM : do not show LTE reject notification"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPopUp / message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLockOrderPopup : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRejectNum : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 757
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    .line 759
    iget-boolean v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v2, :cond_3

    const-string v2, "New messageRes close previous popup"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 760
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 761
    iput-object v6, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    .line 767
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 768
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 770
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const-string v2, "showPopUp / new AlertDialog.Builder"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 774
    const-string v2, "showPopUp / setMessage"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 776
    const-string v2, "telephony_dialog_ok_button"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher$2;-><init>(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 787
    const-string v2, "showPopUp / setNeutralButton"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    .line 790
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 794
    if-eqz p2, :cond_0

    .line 795
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 796
    .local v1, notificationManager:Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x108008a

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Style;->build()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNotification:Landroid/app/Notification;

    .line 802
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNotification:Landroid/app/Notification;

    const/16 v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 803
    iget-object v2, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "UPLUS_ROAMING_FAIL_NOTIFICATION_TITLE"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 804
    const v2, 0xc73b

    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reject cause notification msg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startEmergencyDialerActivity(I)V
    .locals 2
    .parameter "rejectCode"

    .prologue
    .line 866
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 867
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "rejectCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    if-eqz v0, :cond_0

    .line 870
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 871
    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 873
    :cond_0
    return-void
.end method

.method public static toLteRejectCauseString(II)Ljava/lang/String;
    .locals 3
    .parameter "rejectNum"
    .parameter "esmRejectNum"

    .prologue
    .line 824
    if-gtz p0, :cond_0

    const/4 v0, 0x0

    .line 859
    :goto_0
    return-object v0

    .line 827
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lgu_lteemmreject"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/String;
    goto :goto_0

    .line 838
    .end local v0           #message:Ljava/lang/String;
    :sswitch_0
    const-string v0, ""

    .line 839
    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0

    .line 842
    .end local v0           #message:Ljava/lang/String;
    :sswitch_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 843
    const-string v1, "lgu_lteemmreject_19_8"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0

    .line 846
    .end local v0           #message:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    .line 848
    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0

    .line 851
    .end local v0           #message:Ljava/lang/String;
    :sswitch_2
    const-string v1, "lgt_unauthenticated"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 852
    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0

    .line 827
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xf -> :sswitch_0
        0x13 -> :sswitch_1
        0x16 -> :sswitch_0
        0x54 -> :sswitch_2
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x61 -> :sswitch_0
        0x63 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

.method public static toLteRejectCauseStringforRoaming(I)Ljava/lang/String;
    .locals 3
    .parameter "rejectNum"

    .prologue
    .line 896
    if-gtz p0, :cond_0

    const/4 v0, 0x0

    .line 926
    :goto_0
    return-object v0

    .line 900
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 921
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lgu_network_reject_cause_etc"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/String;
    goto :goto_0

    .line 906
    .end local v0           #message:Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lgu_network_reject_cause_service"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 907
    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0

    .line 911
    .end local v0           #message:Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lgu_network_reject_cause_data"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 912
    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0

    .line 917
    .end local v0           #message:Ljava/lang/String;
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lgu_network_reject_cause_temp"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 630
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 933
    const-string v0, "UPlusRILEventDispatcher finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mLockOrderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOtaSessionFail(Landroid/os/Handler;)V

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOtaSessionSuccess(Landroid/os/Handler;)V

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLockStateChanged(Landroid/os/Handler;)V

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSidChanged(Landroid/os/Handler;)V

    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForWpbxStateChanged(Landroid/os/Handler;)V

    .line 943
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkErrorDisp(Landroid/os/Handler;)V

    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForHdrLock(Landroid/os/Handler;)V

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLteLock(Landroid/os/Handler;)V

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLteEmmReject(Landroid/os/Handler;)V

    .line 947
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 257
    iget-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New RIL Event Message Received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 327
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 263
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_2

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_LGT_OTA_SESSION_FAIL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLgtOtaSessionFail()V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_3

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_LGT_OTA_SESSION_SUCCESS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 271
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 272
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLgtOtaSessionSuccess(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 276
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_4

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_LOCK_STATE_CHANGED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 278
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 279
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLockStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 283
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_LGT_SID_CHANGED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 284
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 285
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLgtSidChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 289
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_LGT_WPBX_CHANGED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 290
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 291
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLgtWpbxChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 295
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_LGT_ROAMING_UI_TEST_SET_DONE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :pswitch_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_NET_ERR_DISP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 301
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 302
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLGTNetworkError(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 305
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_LGT_FACTORY_RESET : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :pswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_HDR_LOCK : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 310
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 311
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleHdrLock(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 314
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_LTE_LOCK : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 315
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 316
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLteLock(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 320
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_EMM_REJECT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 321
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 322
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLteEmmReject(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 950
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UPlusRILEventDispatcher] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    return-void
.end method
