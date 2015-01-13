.class public Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;
.super Ljava/lang/Object;
.source "AttCallStateBroadcaster.java"


# static fields
.field private static final ACTION_DDM_CSC:Ljava/lang/String; = "diagandroid.ddm.csc"

.field private static final CSC_ATTR_ORIGINATED:B = 0x0t

.field private static final CSC_ATTR_TERMINATED:B = 0x1t

.field private static final CSC_STATE_ATTEMPTING:B = 0x3t

.field private static final CSC_STATE_CONNECTED:B = 0x5t

.field private static final CSC_STATE_DISCONNECTING:B = 0x6t

.field private static final CSC_STATE_ESTABLISHED:B = 0x4t

.field private static final CSC_STATE_FAILED:B = 0x7t

.field private static final CSC_STATE_HELD:B = 0x8t

.field private static final CSC_STATE_IDLE:B = 0x1t

.field private static final CSC_STATE_UNKNOWN:B = 0x0t

#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field private static final EXTRA_DDM_CSC_ATTR:Ljava/lang/String; = "DdmCscAttr"

.field private static final EXTRA_DDM_CSC_CID:Ljava/lang/String; = "DdmCscCID"

.field private static final EXTRA_DDM_CSC_ERROR:Ljava/lang/String; = "DdmCscError"

.field private static final EXTRA_DDM_CSC_MID:Ljava/lang/String; = "DdmCscMID"

.field private static final EXTRA_DDM_CSC_NUMBER:Ljava/lang/String; = "DdmCscNumber"

.field private static final EXTRA_DDM_CSC_STATE:Ljava/lang/String; = "DdmCscState"

.field private static final EXTRA_DDM_CSC_TERM:Ljava/lang/String; = "DdmCscTerm"

.field private static final LOG_TAG:Ljava/lang/String; = "LGDDM-CSC"

.field private static mRilAnswered:Z

.field static mVersion:I

.field private static sConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmConnection;",
            "Lcom/android/internal/telephony/gsm/LgeConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextConId:I

.field private static sSyncConn:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    const-string v0, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->DEBUG:Z

    .line 51
    sput v1, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->mVersion:I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    .line 57
    sput v2, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sNextConId:I

    .line 58
    sput-boolean v2, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->mRilAnswered:Z

    return-void

    :cond_0
    move v0, v2

    .line 23
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addConnection(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;
    .locals 4
    .parameter "conn"

    .prologue
    .line 176
    sget-object v1, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    .line 180
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/LgeConnectionState;-><init>()V

    .line 181
    .local v0, connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    sget-object v2, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v2

    .line 182
    :try_start_0
    sget v1, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sNextConId:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sNextConId:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    .line 183
    sget v1, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sNextConId:I

    const/16 v3, 0x3e8

    if-le v1, v3, :cond_2

    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sNextConId:I

    .line 185
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static explicitCallTransfer(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .parameter "context"
    .parameter "fgConn"
    .parameter "bgConn"

    .prologue
    .line 229
    return-void
.end method

.method private static getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;
    .locals 5
    .parameter "conn"

    .prologue
    .line 148
    sget-object v2, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 160
    :goto_0
    return-object v1

    .line 150
    :cond_1
    const/4 v1, 0x0

    .line 152
    .local v1, connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    sget-object v3, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v3

    .line 153
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-object v1, v0

    .line 155
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 156
    const/4 v1, 0x0

    .line 158
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getMetricId(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 139
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 140
    .local v0, id:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 141
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 142
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 143
    return v0
.end method

.method private static getRilAnswered()Z
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->mRilAnswered:Z

    return v0
.end method

.method static initiateMoCiqConnectionState(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .parameter "context"
    .parameter "conn"

    .prologue
    .line 285
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->initiateMoLgeConnectionState(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 286
    return-void
.end method

.method static initiateMoLgeConnectionState(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 6
    .parameter "context"
    .parameter "conn"

    .prologue
    .line 289
    invoke-static {}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->isCiqEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->addConnection(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v1

    .line 291
    .local v1, connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-nez v1, :cond_1

    .line 292
    const-string v4, "LGDDM-CSC"

    const-string v5, "initiateMo cannot add connection"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v1           #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local v1       #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    .line 297
    .local v2, dialString:Ljava/lang/String;
    iget v0, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    .line 298
    .local v0, conid:I
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 300
    .local v3, number:Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {p0, v0, v4, v5, v3}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->submitCscStart(Landroid/content/Context;IBBLjava/lang/String;)V

    .line 301
    const/4 v4, 0x3

    invoke-static {p0, v0, v4}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->submitCscStateTransition(Landroid/content/Context;IB)V

    goto :goto_0

    .line 298
    .end local v3           #number:Ljava/lang/String;
    :cond_2
    const-string v3, "Private Number"

    goto :goto_1
.end method

.method static initiateMtCiqConnectionState(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 0
    .parameter "context"
    .parameter "conn"
    .parameter "dc"

    .prologue
    .line 255
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->initiateMtLgeConnectionState(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)V

    .line 256
    return-void
.end method

.method static initiateMtLgeConnectionState(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 7
    .parameter "context"
    .parameter "conn"
    .parameter "dc"

    .prologue
    const/4 v6, 0x1

    .line 259
    invoke-static {}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->isCiqEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->addConnection(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v1

    .line 261
    .local v1, connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-nez v1, :cond_1

    .line 262
    const-string v4, "LGDDM-CSC"

    const-string v5, "initiateMt cannot add connection"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v1           #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_0
    :goto_0
    return-void

    .line 266
    .restart local v1       #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_1
    iget v0, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    .line 267
    .local v0, conid:I
    iget-object v4, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 269
    .local v3, number:Ljava/lang/String;
    :goto_1
    iget-object v4, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v5, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v4, v5, :cond_4

    .line 270
    const/4 v2, 0x1

    .line 271
    .local v2, direction:B
    iget-boolean v4, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v4, :cond_2

    .line 272
    const/4 v2, 0x0

    .line 275
    :cond_2
    invoke-static {p0, v0, v2, v6, v3}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->submitCscStart(Landroid/content/Context;IBBLjava/lang/String;)V

    .line 276
    const/4 v4, 0x5

    invoke-static {p0, v0, v4}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->submitCscStateTransition(Landroid/content/Context;IB)V

    goto :goto_0

    .line 267
    .end local v2           #direction:B
    .end local v3           #number:Ljava/lang/String;
    :cond_3
    const-string v3, "Private Number"

    goto :goto_1

    .line 278
    .restart local v3       #number:Ljava/lang/String;
    :cond_4
    invoke-static {p0, v0, v6, v6, v3}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->submitCscStart(Landroid/content/Context;IBBLjava/lang/String;)V

    .line 279
    const/4 v4, 0x4

    invoke-static {p0, v0, v4}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->submitCscStateTransition(Landroid/content/Context;IB)V

    goto :goto_0
.end method

.method static isCiqEnabled()Z
    .locals 2

    .prologue
    .line 192
    const-string v0, "1"

    const-string v1, "service.iq.active"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static onDisconnect(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 8
    .parameter "context"
    .parameter "conn"
    .parameter "cause"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    .line 364
    invoke-static {}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->isCiqEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 365
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v1

    .line 366
    .local v1, connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-nez v1, :cond_1

    .line 367
    const-string v5, "LGDDM-CSC"

    const-string v6, "onDisconnect cannot find connection"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1           #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_0
    :goto_0
    return-void

    .line 371
    .restart local v1       #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_1
    iget v0, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    .line 372
    .local v0, conid:I
    iget-short v4, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->termCode:S

    .line 373
    .local v4, termCode:S
    iget v3, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->systemCode:I

    .line 375
    .local v3, systemCode:I
    const/4 v2, 0x0

    .line 377
    .local v2, state:B
    invoke-static {}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->getRilAnswered()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p2, v5, :cond_3

    .line 380
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->setRilAnswered(Z)V

    .line 381
    const/4 v4, 0x1

    .line 392
    :cond_2
    :goto_1
    iput-short v4, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->termCode:S

    .line 393
    iput v3, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->systemCode:I

    .line 395
    const/4 v5, -0x1

    invoke-static {p0, v0, v5, v4}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->submitCscCallEnd(Landroid/content/Context;IIS)V

    .line 397
    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->removeConnection(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/gsm/LgeConnectionState;)V

    goto :goto_0

    .line 382
    :cond_3
    iget-byte v5, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->cState:B

    if-eq v5, v6, :cond_4

    if-eq v2, v6, :cond_4

    const/16 v5, 0x100

    if-eq v4, v5, :cond_4

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_5

    .line 385
    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    .line 386
    :cond_5
    iget-byte v5, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->cState:B

    if-eq v5, v7, :cond_6

    if-eq v2, v7, :cond_6

    const/16 v5, 0x158

    if-eq v4, v5, :cond_6

    const/16 v5, 0x164

    if-eq v4, v5, :cond_6

    const/16 v5, 0x81

    if-ne v4, v5, :cond_2

    .line 389
    :cond_6
    const/16 v4, 0x202

    goto :goto_1

    .line 398
    .end local v0           #conid:I
    .end local v1           #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    .end local v2           #state:B
    .end local v3           #systemCode:I
    .end local v4           #termCode:S
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 399
    const-string v5, "LGDDM-CSC"

    const-string v6, "onDisconnect clear sConnections"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v5, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method static onFakeHoldBeforeDial(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .parameter "context"
    .parameter "conn"

    .prologue
    .line 433
    invoke-static {}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->isCiqEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v1

    .line 435
    .local v1, connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-nez v1, :cond_1

    .line 436
    const-string v2, "LGDDM-CSC"

    const-string v3, "fakeHoldBeforeDial cannot find connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v1           #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_0
    :goto_0
    return-void

    .line 440
    .restart local v1       #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_1
    iget v0, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    .line 442
    .local v0, conid:I
    const/16 v2, 0x8

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->submitCscStateTransition(Landroid/content/Context;IB)V

    goto :goto_0
.end method

.method static onRemoteDisconnect(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;I)V
    .locals 11
    .parameter "context"
    .parameter "conn"
    .parameter "causeCode"

    .prologue
    const/16 v10, 0x3e9

    const/16 v9, 0x164

    const/16 v8, 0x158

    const/16 v7, 0x100

    const/16 v6, 0x81

    .line 307
    invoke-static {}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->isCiqEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v0

    .line 309
    .local v0, connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-nez v0, :cond_1

    .line 310
    const-string v3, "LGDDM-CSC"

    const-string v4, "onRemoteDisconnect cannot find connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v0           #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_0
    :goto_0
    return-void

    .line 315
    .restart local v0       #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_1
    const/4 v3, 0x0

    iput-byte v3, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->cState:B

    .line 317
    iget-short v2, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->termCode:S

    .line 318
    .local v2, termCode:S
    move v1, p2

    .line 319
    .local v1, systemCode:I
    const-string v3, "LGDDM-CSC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRemoteDisconnect, systemCode1 -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const v3, 0xffff

    if-ne v1, v3, :cond_2

    .line 323
    const/16 v1, 0x81

    .line 326
    :cond_2
    const/16 v3, 0x7f

    if-ge v1, v3, :cond_3

    .line 328
    int-to-short v2, v1

    .line 329
    const/4 v1, 0x0

    .line 332
    :cond_3
    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_4

    if-eq v1, v9, :cond_4

    if-eq v1, v6, :cond_4

    if-ne v1, v10, :cond_5

    .line 334
    :cond_4
    int-to-short v2, v1

    .line 335
    const/4 v1, 0x0

    .line 338
    :cond_5
    const-string v3, "LGDDM-CSC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRemoteDisconnect, systemCode2 -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v3, "LGDDM-CSC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRemoteDisconnect, termCode -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iput-short v2, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->termCode:S

    .line 342
    iput v1, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->systemCode:I

    .line 344
    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    .line 347
    if-eq v2, v8, :cond_6

    if-eq v2, v9, :cond_6

    if-eq v2, v6, :cond_6

    if-ne v2, v10, :cond_7

    .line 350
    :cond_6
    const/4 v3, 0x7

    iput-byte v3, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->cState:B

    goto :goto_0

    .line 351
    :cond_7
    if-ne v2, v7, :cond_0

    .line 353
    const/4 v3, 0x6

    iput-byte v3, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->cState:B

    goto/16 :goto_0
.end method

.method static onUpdate(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;Z)V
    .locals 5
    .parameter "context"
    .parameter "conn"
    .parameter "dc"
    .parameter "changed"

    .prologue
    .line 405
    invoke-static {}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->isCiqEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    if-eqz p3, :cond_0

    .line 407
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v1

    .line 408
    .local v1, connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-nez v1, :cond_1

    .line 409
    const-string v3, "LGDDM-CSC"

    const-string v4, "update cannot find connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v1           #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_0
    :goto_0
    return-void

    .line 413
    .restart local v1       #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_1
    iget v0, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    .line 415
    .local v0, conid:I
    const/4 v2, 0x0

    .line 417
    .local v2, state:B
    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v4, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v3, v4, :cond_2

    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v4, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v3, v4, :cond_4

    .line 418
    :cond_2
    const/4 v2, 0x3

    .line 427
    :cond_3
    :goto_1
    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->submitCscStateTransition(Landroid/content/Context;IB)V

    goto :goto_0

    .line 419
    :cond_4
    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v4, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v3, v4, :cond_5

    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v4, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v3, v4, :cond_6

    .line 420
    :cond_5
    const/4 v2, 0x4

    goto :goto_1

    .line 421
    :cond_6
    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v4, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v3, v4, :cond_7

    .line 422
    const/4 v2, 0x5

    goto :goto_1

    .line 423
    :cond_7
    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v4, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v3, v4, :cond_3

    .line 424
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private static removeConnection(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/gsm/LgeConnectionState;)V
    .locals 3
    .parameter "conn"
    .parameter "connState"

    .prologue
    .line 164
    sget-object v1, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    if-nez p1, :cond_2

    .line 168
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-object p1, v0

    .line 170
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, -0x1

    iput v1, p1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    .line 171
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static setRilAnswered(Z)V
    .locals 0
    .parameter "answered"

    .prologue
    .line 205
    sput-boolean p0, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->mRilAnswered:Z

    .line 206
    return-void
.end method

.method static setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 201
    sput p0, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->mVersion:I

    .line 202
    return-void
.end method

.method private static submitCscCallEnd(Landroid/content/Context;IIS)V
    .locals 5
    .parameter "context"
    .parameter "callId"
    .parameter "errCode"
    .parameter "termCode"

    .prologue
    .line 113
    if-nez p0, :cond_0

    .line 114
    const-string v3, "LGDDM-CSC"

    const-string v4, "context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "diagandroid.ddm.csc"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "GS03"

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->getMetricId(Ljava/lang/String;)I

    move-result v2

    .line 120
    .local v2, metricID:I
    const-string v3, "DdmCscMID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v3, "DdmCscCID"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v3, "DdmCscError"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v3, "DdmCscTerm"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 125
    sget-boolean v3, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v3, "Broadcast CSC State Transition"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v3, "\nID : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v3, "\nCallId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v3, "\nErrCode : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v3, "\nTermCode : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string v3, "LGDDM-CSC"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0           #b:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static submitCscStart(Landroid/content/Context;IBBLjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "callId"
    .parameter "attr"
    .parameter "state"
    .parameter "number"

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string v3, "LGDDM-CSC"

    const-string v4, "context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "diagandroid.ddm.csc"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "GS01"

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->getMetricId(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, metricID:I
    const-string v3, "DdmCscMID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v3, "DdmCscCID"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v3, "DdmCscAttr"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 71
    const-string v3, "DdmCscState"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 72
    const-string v3, "DdmCscNumber"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    sget-boolean v3, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v3, "Broadcast CSC Start"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v3, "\nID : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v3, "\nCallId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v3, "\nCallAttr : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v3, "\nCallState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v3, "\nNumber : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v3, "LGDDM-CSC"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0           #b:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static submitCscStateTransition(Landroid/content/Context;IB)V
    .locals 5
    .parameter "context"
    .parameter "callId"
    .parameter "state"

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    const-string v3, "LGDDM-CSC"

    const-string v4, "context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "diagandroid.ddm.csc"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "GS02"

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->getMetricId(Ljava/lang/String;)I

    move-result v2

    .line 96
    .local v2, metricID:I
    const-string v3, "DdmCscMID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v3, "DdmCscCID"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string v3, "DdmCscState"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 100
    sget-boolean v3, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v3, "Broadcast CSC State Transition"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v3, "\nID : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v3, "\nCallId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v3, "\nCallState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "LGDDM-CSC"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0           #b:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static updateCiqConnectionState(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 0
    .parameter "context"
    .parameter "conn"
    .parameter "dc"

    .prologue
    .line 233
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->updateLgeConnectionState(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)V

    .line 234
    return-void
.end method

.method static updateLgeConnectionState(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 4
    .parameter "context"
    .parameter "conn"
    .parameter "dc"

    .prologue
    .line 237
    invoke-static {}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->isCiqEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v2, v3, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, conid:I
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v1

    .line 242
    .local v1, connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-nez v1, :cond_1

    .line 243
    const-string v2, "LGDDM-CSC"

    const-string v3, "updateLgeConnectionState cannot find connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v0           #conid:I
    .end local v1           #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_0
    :goto_0
    return-void

    .line 246
    .restart local v0       #conid:I
    .restart local v1       #connState:Lcom/android/internal/telephony/gsm/LgeConnectionState;
    :cond_1
    iget v0, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    .line 247
    const/4 v2, 0x4

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/gsm/AttCallStateBroadcaster;->submitCscStateTransition(Landroid/content/Context;IB)V

    goto :goto_0
.end method
