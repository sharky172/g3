.class public Lcom/android/server/ePDGConnection;
.super Lcom/android/internal/util/StateMachine;
.source "ePDGConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ePDGConnection$1;,
        Lcom/android/server/ePDGConnection$DcDefaultState;,
        Lcom/android/server/ePDGConnection$DcNonetworkState;,
        Lcom/android/server/ePDGConnection$DcReadyState;,
        Lcom/android/server/ePDGConnection$DcUserwaitState;,
        Lcom/android/server/ePDGConnection$DcEPSScanState;,
        Lcom/android/server/ePDGConnection$DcConnectingState;,
        Lcom/android/server/ePDGConnection$DcConnectedState;,
        Lcom/android/server/ePDGConnection$DcDisconnectingState;,
        Lcom/android/server/ePDGConnection$DcFailState;
    }
.end annotation


# static fields
.field static final BAD_LOSSINWIFI:I = 0x4

.field protected static final BASE:I = 0x40000

.field static final CON_FAIL_RSP:I = 0x1

.field static final CON_LOST:I = 0x3

.field static final CON_SUCCESS_RSP:I = 0x0

.field private static final DBG:Z = true

.field static final DISCONNECTED_SUCCESS:I = 0x2

.field protected static final EVENT_BAD_WIFI_STATUS:I = 0x4000b

.field protected static final EVENT_CONNECTED:I = 0x40005

.field protected static final EVENT_DISCONNECTED:I = 0x40006

.field protected static final EVENT_EPDG_REQUEST:I = 0x40002

.field protected static final EVENT_EPDG_SETUP_DATA_CALL:I = 0x4000a

.field protected static final EVENT_FQDN_RSP:I = 0x40008

.field protected static final EVENT_HANDOVER_FAIL:I = 0x4000c

.field protected static final EVENT_MANGER_START:I = 0x40004

.field protected static final EVENT_MANGER_STOP:I = 0x40003

.field protected static final EVENT_TIME_OUT:I = 0x40007

.field protected static final EVENT_USER_DISCONNECT:I = 0x40009

.field protected static final EVENT_WIFI_CONNECT:I = 0x40000

.field protected static final EVENT_WIFI_DISCONNECT:I = 0x40001

.field static final FAIL_CONNECTION:I = 0x3

.field static final FAIL_EPS_SCAN:I = 0x2

.field static final FAIL_NO_RSP:I = 0x1

.field static final HANDOVER_FAIL:I = 0x5

.field static final HandoverError:I = 0x64

.field static final IMS_TYPE:I = 0x0

.field static final IWLAN_S2b:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "ePDG"

.field static final NO_LIST:I = 0x3e7

.field static final PREF_IWLAN_TECH:I = 0x2

.field static final PREF_WWAN_TECH:I = 0x0

.field static final REQ_TIME_OUT:I = 0x3e9

.field static final SCAN_FAIL:I = 0x3e8

.field static final VZWAPP_TYPE:I = 0x1

.field static final WiFi_LOST:I = 0x6

.field protected static mCount:I


# instance fields
.field private FQDNForTestApp:Ljava/lang/String;

.field private FQDNStaticFlag:Z

.field public cid:I

.field public currentPref:I

.field private ePDGAddrForTestApp:[Ljava/lang/String;

.field private ePDGAddrStaticFlag:Z

.field public isGoodPacket:Z

.field private isManager:Z

.field private isWiFi:Z

.field public mCompletedMsg:Landroid/os/Message;

.field private mConnectedState:Lcom/android/server/ePDGConnection$DcConnectedState;

.field private mConnectingState:Lcom/android/server/ePDGConnection$DcConnectingState;

.field private mCurrentGW:Ljava/lang/String;

.field private mDefaultState:Lcom/android/server/ePDGConnection$DcDefaultState;

.field private mDisconnectingState:Lcom/android/server/ePDGConnection$DcDisconnectingState;

.field private mEIf:Ljava/lang/String;

.field private mEPSScanState:Lcom/android/server/ePDGConnection$DcEPSScanState;

.field private mFailReason:I

.field private mFailState:Lcom/android/server/ePDGConnection$DcFailState;

.field private mFid:I

.field private mFqdn:Ljava/lang/String;

.field private mGWList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

.field private mLastNetworkReason:I

.field public mLostMsg:Landroid/os/Message;

.field private mNonetworkState:Lcom/android/server/ePDGConnection$DcNonetworkState;

.field private mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;

.field private mUserwaitState:Lcom/android/server/ePDGConnection$DcUserwaitState;

.field private mV4Addr:Ljava/lang/String;

.field private mV6Addr:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 66
    iput v2, p0, Lcom/android/server/ePDGConnection;->mFailReason:I

    .line 67
    iput v2, p0, Lcom/android/server/ePDGConnection;->mLastNetworkReason:I

    .line 69
    iput v2, p0, Lcom/android/server/ePDGConnection;->mFid:I

    .line 75
    iput-boolean v2, p0, Lcom/android/server/ePDGConnection;->isWiFi:Z

    .line 78
    iput-boolean v3, p0, Lcom/android/server/ePDGConnection;->isManager:Z

    .line 83
    iput-object v1, p0, Lcom/android/server/ePDGConnection;->mCurrentGW:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/android/server/ePDGConnection;->mV4Addr:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/android/server/ePDGConnection;->mV6Addr:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/android/server/ePDGConnection;->mEIf:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/android/server/ePDGConnection;->mcc:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/android/server/ePDGConnection;->mnc:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/android/server/ePDGConnection$DcDefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGConnection$DcDefaultState;-><init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mDefaultState:Lcom/android/server/ePDGConnection$DcDefaultState;

    .line 104
    new-instance v0, Lcom/android/server/ePDGConnection$DcNonetworkState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGConnection$DcNonetworkState;-><init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mNonetworkState:Lcom/android/server/ePDGConnection$DcNonetworkState;

    .line 105
    new-instance v0, Lcom/android/server/ePDGConnection$DcReadyState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGConnection$DcReadyState;-><init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;

    .line 106
    new-instance v0, Lcom/android/server/ePDGConnection$DcEPSScanState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGConnection$DcEPSScanState;-><init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mEPSScanState:Lcom/android/server/ePDGConnection$DcEPSScanState;

    .line 107
    new-instance v0, Lcom/android/server/ePDGConnection$DcUserwaitState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGConnection$DcUserwaitState;-><init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mUserwaitState:Lcom/android/server/ePDGConnection$DcUserwaitState;

    .line 108
    new-instance v0, Lcom/android/server/ePDGConnection$DcConnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGConnection$DcConnectingState;-><init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mConnectingState:Lcom/android/server/ePDGConnection$DcConnectingState;

    .line 110
    new-instance v0, Lcom/android/server/ePDGConnection$DcConnectedState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGConnection$DcConnectedState;-><init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mConnectedState:Lcom/android/server/ePDGConnection$DcConnectedState;

    .line 111
    new-instance v0, Lcom/android/server/ePDGConnection$DcDisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGConnection$DcDisconnectingState;-><init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mDisconnectingState:Lcom/android/server/ePDGConnection$DcDisconnectingState;

    .line 112
    new-instance v0, Lcom/android/server/ePDGConnection$DcFailState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGConnection$DcFailState;-><init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;

    .line 152
    iput v2, p0, Lcom/android/server/ePDGConnection;->currentPref:I

    .line 162
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/server/ePDGConnection;->cid:I

    .line 163
    iput-boolean v3, p0, Lcom/android/server/ePDGConnection;->isGoodPacket:Z

    .line 186
    iput-object v1, p0, Lcom/android/server/ePDGConnection;->FQDNForTestApp:Ljava/lang/String;

    .line 187
    iput-boolean v2, p0, Lcom/android/server/ePDGConnection;->FQDNStaticFlag:Z

    .line 188
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->ePDGAddrForTestApp:[Ljava/lang/String;

    .line 189
    iput-boolean v2, p0, Lcom/android/server/ePDGConnection;->ePDGAddrStaticFlag:Z

    .line 198
    const-string v0, "ePDGConnection constructor E"

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 200
    iput p2, p0, Lcom/android/server/ePDGConnection;->mId:I

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->setDbg(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mDefaultState:Lcom/android/server/ePDGConnection$DcDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mNonetworkState:Lcom/android/server/ePDGConnection$DcNonetworkState;

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mDefaultState:Lcom/android/server/ePDGConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mDefaultState:Lcom/android/server/ePDGConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mEPSScanState:Lcom/android/server/ePDGConnection$DcEPSScanState;

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mDefaultState:Lcom/android/server/ePDGConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mUserwaitState:Lcom/android/server/ePDGConnection$DcUserwaitState;

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mDefaultState:Lcom/android/server/ePDGConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mConnectingState:Lcom/android/server/ePDGConnection$DcConnectingState;

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mDefaultState:Lcom/android/server/ePDGConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mConnectedState:Lcom/android/server/ePDGConnection$DcConnectedState;

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mDefaultState:Lcom/android/server/ePDGConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mDisconnectingState:Lcom/android/server/ePDGConnection$DcDisconnectingState;

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mDefaultState:Lcom/android/server/ePDGConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mDefaultState:Lcom/android/server/ePDGConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mNonetworkState:Lcom/android/server/ePDGConnection$DcNonetworkState;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 223
    const-string v0, "Jphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ILGTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    .line 225
    const-string v0, "ePDGConnection constructor X"

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/ePDGConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/ePDGConnection;->mLastNetworkReason:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/ePDGConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/server/ePDGConnection;->mLastNetworkReason:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/ePDGConnection;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ePDGConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/ePDGConnection;->mFid:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/ePDGConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/ePDGConnection;->isWiFi:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/ePDGConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/ePDGConnection;->isWiFi:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcReadyState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcNonetworkState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mNonetworkState:Lcom/android/server/ePDGConnection$DcNonetworkState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcConnectedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mConnectedState:Lcom/android/server/ePDGConnection$DcConnectedState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcConnectingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mConnectingState:Lcom/android/server/ePDGConnection$DcConnectingState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcDisconnectingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mDisconnectingState:Lcom/android/server/ePDGConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcFailState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/ePDGConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/ePDGConnection;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/android/server/ePDGConnection;->notifyePDGCompleted(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/ePDGConnection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/ePDGConnection;->makeFQDN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/ePDGConnection;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->ePDGAddrForTestApp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/ePDGConnection;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/server/ePDGConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/ePDGConnection;->mCurrentGW:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcEPSScanState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mEPSScanState:Lcom/android/server/ePDGConnection$DcEPSScanState;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/ePDGConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/ePDGConnection;->isManager:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/ePDGConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/ePDGConnection;->isManager:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/ePDGConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ePDGConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/ePDGConnection;->mFailReason:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/ePDGConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/server/ePDGConnection;->mFailReason:I

    return p1
.end method

.method private makeFQDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/server/ePDGConnection;->FQDNStaticFlag:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->FQDNForTestApp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    .line 414
    :goto_0
    return-object v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mcc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mnc:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 408
    :cond_1
    const-string v0, "makeFQDN Fail"

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "epdg.epc.mnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mcc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pub.3gppnetwork.org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    goto :goto_0
.end method

.method static makePDGConnection(I)Lcom/android/server/ePDGConnection;
    .locals 3
    .parameter "id"

    .prologue
    .line 231
    new-instance v0, Lcom/android/server/ePDGConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDGDC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/ePDGConnection;-><init>(Ljava/lang/String;I)V

    .line 233
    .local v0, ePDGDc:Lcom/android/server/ePDGConnection;
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 235
    return-object v0
.end method

.method private notifyePDGCompleted(II)V
    .locals 7
    .parameter "type"
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    .line 366
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ePDGConnection;->notifyePDGCompleted(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private notifyePDGCompleted(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "type"
    .parameter "reason"
    .parameter "ipaddr"
    .parameter "ipif"
    .parameter "ipsecGW"
    .parameter "idnss"

    .prologue
    .line 371
    const/4 v10, 0x0

    .line 373
    .local v10, connectionCompletedMsg:Landroid/os/Message;
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 375
    iget-object v10, p0, Lcom/android/server/ePDGConnection;->mLostMsg:Landroid/os/Message;

    .line 383
    :goto_0
    if-nez v10, :cond_1

    .line 395
    :goto_1
    return-void

    .line 379
    :cond_0
    iget-object v10, p0, Lcom/android/server/ePDGConnection;->mCompletedMsg:Landroid/os/Message;

    goto :goto_0

    .line 387
    :cond_1
    new-instance v0, Lcom/android/server/ePDGConnInfo;

    iget v3, p0, Lcom/android/server/ePDGConnection;->mId:I

    iget-object v4, p0, Lcom/android/server/ePDGConnection;->mCurrentGW:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/ePDGConnInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .local v0, sendingResult:Lcom/android/server/ePDGConnInfo;
    const/4 v1, 0x0

    invoke-static {v10, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 391
    :try_start_0
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 392
    :catch_0
    move-exception v11

    .line 393
    .local v11, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG notification ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public checkSameAddr(Ljava/lang/String;)I
    .locals 3
    .parameter "GWaddr"

    .prologue
    .line 271
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 272
    iget-object v2, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    .end local v0           #i:I
    :goto_1
    return v0

    .line 271
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_1
    const-string v2, "if it is second pdn, we do not configure list"

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 278
    const/16 v0, 0x3e7

    goto :goto_1
.end method

.method protected clearSettings()V
    .locals 1

    .prologue
    .line 242
    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mCurrentGW:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/server/ePDGConnection;->cid:I

    .line 249
    return-void
.end method

.method public ePDGDeactivateDataCall(Ljava/lang/String;II)V
    .locals 3
    .parameter "apn"
    .parameter "cid"
    .parameter "reason"

    .prologue
    .line 472
    const-string v1, "[ePDG] Deactivate data call start : "

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ILGTelephony;->ePDGDeactivateDataCall(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] Deactivate data call RemoteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ePDGHandOverStatus(I)V
    .locals 3
    .parameter "extendedRAT"

    .prologue
    const/4 v2, 0x0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ePDGHandOverStatus, extRat :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 523
    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    .line 525
    const v0, 0x40005

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 531
    const v0, 0x4000c

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mConnectedState:Lcom/android/server/ePDGConnection$DcConnectedState;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mDisconnectingState:Lcom/android/server/ePDGConnection$DcDisconnectingState;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;

    if-ne v0, v1, :cond_0

    .line 538
    :cond_3
    const v0, 0x40006

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    goto :goto_0
.end method

.method public ePDGSetupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"

    .prologue
    .line 461
    const-string v0, "[ePDG] ePDG Setup Data Call start : "

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ILGTelephony;->ePDGSetupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v8

    .line 465
    .local v8, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] setup data call RemoteException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ePDGbringUp(Landroid/os/Message;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "onCompletedMsg"
    .parameter "onLostMsg"
    .parameter "mymcc"
    .parameter "mymnc"
    .parameter "fid"

    .prologue
    .line 297
    iput-object p3, p0, Lcom/android/server/ePDGConnection;->mcc:Ljava/lang/String;

    .line 298
    iput-object p4, p0, Lcom/android/server/ePDGConnection;->mnc:Ljava/lang/String;

    .line 299
    iput-object p1, p0, Lcom/android/server/ePDGConnection;->mCompletedMsg:Landroid/os/Message;

    .line 300
    iput-object p2, p0, Lcom/android/server/ePDGConnection;->mLostMsg:Landroid/os/Message;

    .line 301
    iput p5, p0, Lcom/android/server/ePDGConnection;->mFid:I

    .line 302
    const v0, 0x40002

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public ePDGteardown(Landroid/os/Message;)Z
    .locals 2
    .parameter "onCompletedMsg"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mConnectedState:Lcom/android/server/ePDGConnection$DcConnectedState;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/ePDGConnection;->mFid:I

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    .line 313
    :cond_0
    iput-object p1, p0, Lcom/android/server/ePDGConnection;->mCompletedMsg:Landroid/os/Message;

    .line 314
    const v0, 0x40009

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 315
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAPNTypewithFid(I)Ljava/lang/String;
    .locals 1
    .parameter "fid"

    .prologue
    .line 500
    packed-switch p1, :pswitch_data_0

    .line 514
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 506
    :pswitch_0
    const-string v0, "ims"

    goto :goto_0

    .line 508
    :pswitch_1
    const-string v0, "vzwapp"

    goto :goto_0

    .line 510
    :pswitch_2
    const-string v0, "vzwCF"

    goto :goto_0

    .line 512
    :pswitch_3
    const-string v0, "vzwstatic"

    goto :goto_0

    .line 500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getConnectionID()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/android/server/ePDGConnection;->mId:I

    return v0
.end method

.method public getHostByName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "strFQDN"

    .prologue
    .line 418
    const/4 v3, 0x0

    .line 420
    .local v3, objIPs:[Ljava/net/InetAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHostByName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 423
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 430
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 431
    .local v2, objIPStrs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 432
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHostByName ip=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v1           #nIndex:I
    .end local v2           #objIPStrs:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownHostException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 427
    const/4 v2, 0x0

    .line 436
    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_0
    return-object v2
.end method

.method public getfeatureID(Ljava/lang/String;)I
    .locals 1
    .parameter "feature"

    .prologue
    .line 545
    const-string v0, "VZWIMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    .line 547
    :cond_0
    const-string v0, "VZWAPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    const/4 v0, 0x1

    goto :goto_0

    .line 549
    :cond_1
    const-string v0, "CF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    const/4 v0, 0x2

    goto :goto_0

    .line 551
    :cond_2
    const-string v0, "Static"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    const/4 v0, 0x3

    goto :goto_0

    .line 554
    :cond_3
    const/16 v0, 0x3e7

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mConnectedState:Lcom/android/server/ePDGConnection$DcConnectedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 442
    const-string v0, "ePDG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method public resetCBLooper(Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter "onCompletedMsg"
    .parameter "onLostMsg"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/server/ePDGConnection;->mCompletedMsg:Landroid/os/Message;

    .line 285
    iput-object p2, p0, Lcom/android/server/ePDGConnection;->mLostMsg:Landroid/os/Message;

    .line 286
    return-void
.end method

.method public setEPDGAddrByTestApp(ZLjava/lang/String;)V
    .locals 2
    .parameter "enable"
    .parameter "ePDGAddr"

    .prologue
    .line 455
    iput-boolean p1, p0, Lcom/android/server/ePDGConnection;->ePDGAddrStaticFlag:Z

    .line 456
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->ePDGAddrForTestApp:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 457
    return-void
.end method

.method public setEPDGForIODT(Ljava/lang/String;)I
    .locals 1
    .parameter "GWAddr"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setEPDGGWAddr([Ljava/lang/String;)I
    .locals 4
    .parameter "GWAddr"

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    const/4 v2, 0x0

    .line 266
    :goto_0
    return v2

    .line 262
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0
.end method

.method public setFQDNByTestApp(ZLjava/lang/String;)V
    .locals 0
    .parameter "enable"
    .parameter "fqdn"

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/android/server/ePDGConnection;->FQDNStaticFlag:Z

    .line 452
    iput-object p2, p0, Lcom/android/server/ePDGConnection;->FQDNForTestApp:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setManagerStatus(Z)V
    .locals 1
    .parameter "setvalue"

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 322
    const v0, 0x40004

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    const v0, 0x40003

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setWIFIStatus(ZZ)V
    .locals 1
    .parameter "setvalue"
    .parameter "isgood"

    .prologue
    .line 334
    if-eqz p1, :cond_1

    .line 336
    iget v0, p0, Lcom/android/server/ePDGConnection;->mFid:I

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 338
    const v0, 0x4000b

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 349
    :goto_0
    return-void

    .line 342
    :cond_0
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 347
    :cond_1
    const v0, 0x40001

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setePDGsetprefTest(Ljava/lang/String;I)V
    .locals 3
    .parameter "apn"
    .parameter "data_pref"

    .prologue
    .line 482
    iget v1, p0, Lcom/android/server/ePDGConnection;->currentPref:I

    if-ne v1, p2, :cond_0

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] data_perf is same no need to change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 496
    :goto_0
    return-void

    .line 488
    :cond_0
    iput p2, p0, Lcom/android/server/ePDGConnection;->currentPref:I

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ILGTelephony;->setePDGsetprefTest(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] setePDGsetprefTest RemoteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
