.class public Lcom/android/internal/telephony/LGPhoneInterfaceManager;
.super Lcom/android/internal/telephony/ILGTelephony$Stub;
.source "LGPhoneInterfaceManager.java"


# static fields
.field private static final DBG:Z = true

.field public static final EVENT_EPDG_SETUP_DATA_CALL:I = 0x2

.field public static final LISTEN_SETUP_DATA_CALL_RSP_PARAM:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "LGPhoneInterfaceManager"

.field private static sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;


# instance fields
.field mMyRil:Lcom/android/internal/telephony/RIL;

.field mMyePDGinterface:Lcom/android/internal/telephony/ePDGinterface;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/RIL;Landroid/content/Context;)V
    .locals 2
    .parameter "phone"
    .parameter "myril"
    .parameter "con"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/ILGTelephony$Stub;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 57
    iput-object p2, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mMyRil:Lcom/android/internal/telephony/RIL;

    .line 58
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    new-instance v0, Lcom/android/internal/telephony/ePDGinterface;

    iget-object v1, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p2, v1, p3}, Lcom/android/internal/telephony/ePDGinterface;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mMyePDGinterface:Lcom/android/internal/telephony/ePDGinterface;

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->publish()V

    .line 64
    return-void
.end method

.method static init(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/RIL;Landroid/content/Context;)Lcom/android/internal/telephony/LGPhoneInterfaceManager;
    .locals 4
    .parameter "phone"
    .parameter "myril"
    .parameter "con"

    .prologue
    .line 43
    const-class v1, Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/RIL;Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    .line 49
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 47
    :cond_0
    const-string v0, "LGPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!\tsInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 206
    const-string v0, "LGPhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JPhoneMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method private publish()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 69
    const-string v0, "Jphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 70
    return-void
.end method


# virtual methods
.method public checkDataProfileEx(II)Z
    .locals 1
    .parameter "type"
    .parameter "Q_IPv"

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public ePDGDeactivateDataCall(Ljava/lang/String;II)V
    .locals 5
    .parameter "apntype"
    .parameter "cid"
    .parameter "reason"

    .prologue
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ePDG] ePDGDeactivateDataCall start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 123
    const-string v3, "ims"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    .line 126
    .local v2, myPhone:Lcom/android/internal/telephony/PhoneProxy;
    iget-object v0, v2, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 127
    .local v0, myBasePhone:Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 129
    .local v1, myDctracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-nez v1, :cond_0

    .line 131
    const-string v3, "[ePDG] myDctracker=null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 139
    .end local v0           #myBasePhone:Lcom/android/internal/telephony/PhoneBase;
    .end local v1           #myDctracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2           #myPhone:Lcom/android/internal/telephony/PhoneProxy;
    :goto_0
    return-void

    .line 134
    .restart local v0       #myBasePhone:Lcom/android/internal/telephony/PhoneBase;
    .restart local v1       #myDctracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .restart local v2       #myPhone:Lcom/android/internal/telephony/PhoneProxy;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setIMSteardown()V

    goto :goto_0

    .line 137
    .end local v0           #myBasePhone:Lcom/android/internal/telephony/PhoneBase;
    .end local v1           #myDctracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2           #myPhone:Lcom/android/internal/telephony/PhoneProxy;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mMyePDGinterface:Lcom/android/internal/telephony/ePDGinterface;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/telephony/ePDGinterface;->ePDGDeactivateDataCall(Ljava/lang/String;IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public ePDGSetupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apntype"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] setup_data_call start type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->getDPfromtype(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v9

    .line 110
    .local v9, apnSetting:Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-nez v9, :cond_0

    .line 112
    const-string v0, "[ePDG] setup_data_call fail cause apn is null "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mMyePDGinterface:Lcom/android/internal/telephony/ePDGinterface;

    iget-object v3, v9, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    iget-object v7, v9, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ePDGinterface;->ePDGSetupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAPNList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getAPNList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDPfromtype(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfile;
    .locals 5
    .parameter "apntype"

    .prologue
    .line 82
    iget-object v3, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    .line 83
    .local v3, myPhone:Lcom/android/internal/telephony/PhoneProxy;
    iget-object v1, v3, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 84
    .local v1, myBasePhone:Lcom/android/internal/telephony/PhoneBase;
    iget-object v2, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 86
    .local v2, myDctracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-nez v2, :cond_0

    .line 88
    const-string v4, "[ePDG] myDctracker=null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 92
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDPbyType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v0

    .line 94
    .local v0, apnSetting:Lcom/android/internal/telephony/dataconnection/DataProfile;
    goto :goto_0
.end method

.method public getDebugInfo(II)[I
    .locals 1
    .parameter "infotype"
    .parameter "itemnum"

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public restartDCTClass()V
    .locals 1

    .prologue
    .line 194
    const-string v0, "restartDCTClass "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->restartDCTClass()V

    .line 196
    return-void
.end method

.method public restartDataDaemon()V
    .locals 1

    .prologue
    .line 189
    const-string v0, "restartDataDaemon "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->restartDataDaemon()V

    .line 191
    return-void
.end method

.method public restartDataProcess()I
    .locals 1

    .prologue
    .line 182
    const-string v0, "restartDataProcess "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->restartDataDaemon()V

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->restartDCTClass()V

    .line 185
    const/16 v0, 0x21

    return v0
.end method

.method public restartPDPConnection()I
    .locals 1

    .prologue
    .line 170
    const-string v0, "restartPDPConnection "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->restartPDPConnection()V

    .line 172
    const/16 v0, 0xb

    return v0
.end method

.method public restartRild()I
    .locals 1

    .prologue
    .line 176
    const-string v0, "restartRild "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->restartRild()V

    .line 178
    const/16 v0, 0x16

    return v0
.end method

.method public restartWithModem()I
    .locals 1

    .prologue
    .line 199
    const-string v0, "restartWithModem "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->restartWithModem()V

    .line 201
    const/16 v0, 0x2c

    return v0
.end method

.method public setePDGsetprefTest(Ljava/lang/String;I)V
    .locals 4
    .parameter "apntype"
    .parameter "data_pref"

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setePDGsetprefTest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->getDPfromtype(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v0

    .line 145
    .local v0, apnSetting:Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-nez v0, :cond_0

    .line 147
    const-string v1, "[ePDG] setePDGsetprefTest fail cause apn is null "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mMyePDGinterface:Lcom/android/internal/telephony/ePDGinterface;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/internal/telephony/ePDGinterface;->setePDGsetprefTest(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method
