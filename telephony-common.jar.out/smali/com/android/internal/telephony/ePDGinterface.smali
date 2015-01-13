.class public Lcom/android/internal/telephony/ePDGinterface;
.super Ljava/lang/Object;
.source "ePDGinterface.java"


# static fields
.field private static final EVENT_EPDG_WIFI:I = 0x1f7

.field private static final RIL_REQUEST_ePDG_DEACTIVATE_DATA_CALL:I = 0x1f6

.field private static final RIL_REQUEST_ePDG_SETUP_DATA_CALL:I = 0x1f5

.field static final numofpdn:I = 0x5


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private ePDGList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ePDGSetupDataCallResult:Ljava/lang/Object;

.field mConnMgr:Landroid/net/IConnectivityManager;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsUsingLGWifi:I

.field public mIsWifiConnected:Z

.field mMyRil:Lcom/android/internal/telephony/RIL;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mSendingisAv:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiLinkProperties:Landroid/net/LinkProperties;

.field mePDGHandler:Landroid/os/Handler;

.field public myaddr:[I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 4
    .parameter "myRIL"
    .parameter "phone"
    .parameter "con"

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v1, "epdginterface"

    iput-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->LOG_TAG:Ljava/lang/String;

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGSetupDataCallResult:Ljava/lang/Object;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    .line 83
    iput v3, p0, Lcom/android/internal/telephony/ePDGinterface;->mSendingisAv:I

    .line 85
    iput-boolean v3, p0, Lcom/android/internal/telephony/ePDGinterface;->mIsWifiConnected:Z

    .line 88
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->myaddr:[I

    .line 89
    iput v3, p0, Lcom/android/internal/telephony/ePDGinterface;->mIsUsingLGWifi:I

    .line 93
    new-instance v1, Lcom/android/internal/telephony/ePDGinterface$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ePDGinterface$1;-><init>(Lcom/android/internal/telephony/ePDGinterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    .line 126
    new-instance v1, Lcom/android/internal/telephony/ePDGinterface$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ePDGinterface$2;-><init>(Lcom/android/internal/telephony/ePDGinterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/RIL;->setePDGinterface(Lcom/android/internal/telephony/ePDGinterface;)V

    .line 163
    iput-object p2, p0, Lcom/android/internal/telephony/ePDGinterface;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 166
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "epdg_selfwifi_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 88
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ePDGinterface;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mWifiLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/ePDGinterface;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/ePDGinterface;->mWifiLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ePDGinterface;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ePDGinterface;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/ePDGinterface;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static ePDGcommandString(I)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 604
    sparse-switch p0, :sswitch_data_0

    .line 609
    const-string v0, "unknown ePDG req"

    :goto_0
    return-object v0

    .line 606
    :sswitch_0
    const-string v0, "RIL_REQUEST_VSS_ePDG_SET_PREF_TECH"

    goto :goto_0

    .line 607
    :sswitch_1
    const-string v0, "RIL_REQUEST_WIFI_AVAILABLE"

    goto :goto_0

    .line 608
    :sswitch_2
    const-string v0, "UNSOL_EPCSTATUS"

    goto :goto_0

    .line 604
    nop

    :sswitch_data_0
    .sparse-switch
        0x172 -> :sswitch_0
        0x173 -> :sswitch_1
        0x412 -> :sswitch_2
    .end sparse-switch
.end method

.method static isePDGrequest(I)Z
    .locals 1
    .parameter "reqorunsol"

    .prologue
    const/4 v0, 0x1

    .line 529
    sparse-switch p0, :sswitch_data_0

    .line 538
    const/4 v0, 0x0

    :sswitch_0
    return v0

    .line 529
    :sswitch_data_0
    .sparse-switch
        0x172 -> :sswitch_0
        0x173 -> :sswitch_0
        0x412 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public ConvtRespEPDGSetupDataCall(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Ljava/lang/String;)V
    .locals 25
    .parameter "dc"
    .parameter "apntype"

    .prologue
    .line 321
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 322
    .local v3, eVersion:I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 323
    .local v4, eStatus:I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 324
    .local v5, eCid:I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 325
    .local v6, eActive:I
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 326
    .local v7, eType:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 327
    .local v8, eIfname:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    move-object/from16 v18, v0

    .line 328
    .local v18, addresses:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    move-object/from16 v21, v0

    .line 329
    .local v21, dnses:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    move-object/from16 v22, v0

    .line 330
    .local v22, gateways:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 332
    .local v12, suggestedRetryTime:I
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v14, EAddr:Ljava/lang/StringBuffer;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 334
    .local v15, EDnses:Ljava/lang/StringBuffer;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v16, EGateways:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ePDG] ConvtRespEPDGSetupDataCall : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 337
    move-object/from16 v19, v18

    .local v19, arr$:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    aget-object v17, v19, v23

    .line 338
    .local v17, addr:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 341
    .end local v17           #addr:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v18

    array-length v2, v0

    if-lez v2, :cond_1

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 343
    :cond_1
    move-object/from16 v19, v21

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    aget-object v17, v19, v23

    .line 344
    .restart local v17       #addr:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    const-string v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 347
    .end local v17           #addr:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v21

    array-length v2, v0

    if-lez v2, :cond_3

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 349
    :cond_3
    move-object/from16 v19, v22

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    aget-object v17, v19, v23

    .line 350
    .restart local v17       #addr:Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 353
    .end local v17           #addr:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v22

    array-length v2, v0

    if-lez v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 354
    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    move-object/from16 v13, p2

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/ePDGinterface;->notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 356
    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 357
    .local v20, currentCid:Ljava/lang/Integer;
    if-ltz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_6
    return-void
.end method

.method public ePDGDeactivateDataCall(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 8
    .parameter "apn"
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 176
    move-object v1, p1

    .line 177
    .local v1, eApn:Ljava/lang/String;
    move v2, p3

    .line 178
    .local v2, eReason:I
    const/4 v4, 0x0

    .line 180
    .local v4, num:I
    iget-object v6, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    const/16 v7, 0x1f6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 181
    .local v3, msgResult:Landroid/os/Message;
    const-string v6, "[ePDG] RIL_REQUEST_ePDG_DEACTIVATE_DATA_CALL "

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 183
    const/16 v6, 0x29

    invoke-static {v6, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    .line 185
    .local v5, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v6, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 191
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 192
    .local v0, currentCid:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public ePDGSetupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "apntype"

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    const/16 v3, 0x1f5

    invoke-virtual {v2, v3, p8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 202
    .local v0, msgResult:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget v2, v2, Lcom/android/internal/telephony/RIL;->testmode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iput-object p7, v2, Lcom/android/internal/telephony/RIL;->Emulprotocol:Ljava/lang/String;

    .line 204
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/RIL;->emulNetworkState(ILandroid/os/Message;)V

    .line 239
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget v2, v2, Lcom/android/internal/telephony/RIL;->testmode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/RIL;->emulNetworkState(ILandroid/os/Message;)V

    goto :goto_0

    .line 214
    :cond_1
    const/16 v2, 0x1b

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 217
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto/16 :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 615
    const-string v0, "epdginterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method makeAddrString(Ljava/lang/String;)V
    .locals 8
    .parameter "macAddr"

    .prologue
    .line 460
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, result:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 463
    .local v2, i:I
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 465
    .local v0, addr:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/ePDGinterface;->myaddr:[I

    const/16 v7, 0x10

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v2

    .line 466
    add-int/lit8 v2, v2, 0x1

    .line 467
    const/4 v6, 0x6

    if-ne v2, v6, :cond_1

    .line 471
    .end local v0           #addr:Ljava/lang/String;
    :cond_0
    return-void

    .line 463
    .restart local v0       #addr:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
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
    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Landroid/net/IConnectivityManager;->notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyEPDGPDNStatus(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, dcrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const/4 v0, 0x0

    .line 379
    .local v0, eActive:I
    const/4 v2, 0x0

    .line 380
    .local v2, found:Z
    const/4 v6, 0x0

    .line 382
    .local v6, mycid:I
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 384
    .local v7, num:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ePDG] notifyEPDGPDNStatus start size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 386
    if-nez v7, :cond_1

    .line 437
    :cond_0
    return-void

    .line 391
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 393
    .local v5, listclone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 395
    .local v1, eCid:Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 396
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 398
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 400
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v8, v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    if-eq v6, v8, :cond_3

    .line 402
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check cid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " list cid= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v8, v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 398
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 405
    :cond_3
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v0, v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 409
    if-nez v0, :cond_5

    .line 411
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "notused"

    invoke-interface {v8, v9, v6, v10, v11}, Landroid/net/IConnectivityManager;->notifyEPDGPDNStatus(IIILjava/lang/String;)V

    .line 412
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 420
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyEPDGPDNStatus send :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 423
    :goto_3
    const/4 v2, 0x1

    .line 426
    :cond_4
    if-nez v2, :cond_2

    .line 428
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not exist, so this is disconnected!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 430
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "NotUsed"

    invoke-interface {v8, v9, v6, v10, v11}, Landroid/net/IConnectivityManager;->notifyEPDGPDNStatus(IIILjava/lang/String;)V

    .line 431
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 432
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 416
    :cond_5
    :try_start_2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/ePDGinterface;->ConvtRespEPDGSetupDataCall(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 421
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method public notiyToEPDGClient([I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notiyToEPDGClient <====== status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " profileID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 260
    const/4 v1, 0x0

    .line 263
    .local v1, extendedRAT:I
    aget v1, p1, v5

    .line 265
    aget v2, p1, v4

    if-eq v2, v4, :cond_0

    .line 267
    const-string v2, "it is not ims pdn so go out!!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    invoke-interface {v2, v1}, Landroid/net/IConnectivityManager;->ePDGHandOverStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ePDG] notiyToEPDGClient RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected processCallBackUnSoli(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCommand"
    .parameter "qcrildata"

    .prologue
    .line 589
    packed-switch p1, :pswitch_data_0

    .line 599
    .end local p2
    :goto_0
    return-void

    .line 592
    .restart local p2
    :pswitch_0
    check-cast p2, [I

    .end local p2
    check-cast p2, [I

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ePDGinterface;->notiyToEPDGClient([I)V

    goto :goto_0

    .line 589
    :pswitch_data_0
    .packed-switch 0x412
        :pswitch_0
    .end packed-switch
.end method

.method public processSoli(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "requestCommand"
    .parameter "p"

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, ret:Ljava/lang/Object;
    packed-switch p1, :pswitch_data_0

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized solicited response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 585
    :pswitch_0
    return-object v0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x172
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processSolicited(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "requestCommand"
    .parameter "p"

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, ret:Ljava/lang/Object;
    packed-switch p1, :pswitch_data_0

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized solicited response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 555
    :pswitch_0
    return-object v0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x172
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processUnSoli(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "requestCommand"
    .parameter "p"

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, ret:Ljava/lang/Object;
    packed-switch p1, :pswitch_data_0

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized unsolicited response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 569
    .end local v0           #ret:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 563
    .restart local v0       #ret:Ljava/lang/Object;
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x412
        :pswitch_0
    .end packed-switch
.end method

.method public responseSetePDGPrefTech(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "p"

    .prologue
    .line 443
    const-string v1, "responseSetePDGPrefTech-entered"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->ePDGPrefTechdone(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] responseSetePDGPrefTech RemoteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendWifiStatustoModem(ZLjava/util/Collection;Ljava/lang/String;)V
    .locals 9
    .parameter "isavail"
    .parameter
    .parameter "macAddr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, address:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    const/16 v8, 0x1f7

    const/4 v7, 0x0

    .line 475
    const/4 v3, 0x0

    .line 476
    .local v3, myAddr:Ljava/net/InetAddress;
    const/4 v4, 0x0

    .line 479
    .local v4, mywifiAddr:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EPDG]sendWifiStatustoModem: macAddr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 481
    if-nez p1, :cond_0

    .line 484
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v7, v5, v7, v6}, Lcom/android/internal/telephony/ePDGinterface;->setWifiAvaiable(I[IILandroid/os/Message;)V

    .line 524
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/ePDGinterface;->makeAddrString(Ljava/lang/String;)V

    .line 494
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v5, 0x6

    if-ge v1, v5, :cond_1

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EPDG] macAddr ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ePDGinterface;->myaddr:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 501
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 504
    .local v0, adr:Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 508
    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_3

    move-object v5, v3

    .line 511
    check-cast v5, Ljava/net/Inet4Address;

    invoke-static {v5}, Landroid/net/NetworkUtils;->revinetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v4

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EPDG]we found IPv4 addr!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 523
    .end local v0           #adr:Landroid/net/LinkAddress;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/ePDGinterface;->myaddr:[I

    iget-object v7, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v4, v7}, Lcom/android/internal/telephony/ePDGinterface;->setWifiAvaiable(I[IILandroid/os/Message;)V

    goto :goto_0

    .line 518
    .restart local v0       #adr:Landroid/net/LinkAddress;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EPDG]some strange addr in the list!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setWifiAvaiable(I[IILandroid/os/Message;)V
    .locals 5
    .parameter "isAvaialbe"
    .parameter "macAddr"
    .parameter "IPv4Addr"
    .parameter "result"

    .prologue
    const/4 v4, 0x6

    .line 280
    const-string v2, "setWifiAvaiable entered======>"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 282
    const/16 v2, 0x173

    invoke-static {v2, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 285
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez p1, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mSendingisAv:I

    if-nez v2, :cond_0

    .line 317
    :goto_0
    return-void

    .line 290
    :cond_0
    if-nez p2, :cond_1

    .line 292
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 294
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 299
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v4, :cond_2

    .line 301
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :cond_2
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iput p1, p0, Lcom/android/internal/telephony/ePDGinterface;->mSendingisAv:I

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,isAvaialbe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,ipv4Addr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 314
    const-string v2, "setWifiAvaiable send ======>"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setePDGsetprefTest(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .parameter "apn"
    .parameter "data_pref"
    .parameter "result"

    .prologue
    .line 244
    const/16 v1, 0x172

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 246
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,apn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,data_tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 253
    return-void
.end method
