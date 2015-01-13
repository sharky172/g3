.class public Lcom/lge/uicc/IccRecordLoader;
.super Landroid/os/Handler;
.source "IccRecordLoader.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field private static final EVENT_GET_EF_CSIM_MDN_DONE:I = 0xb

.field private static final EVENT_GET_EF_LGU_ROAMING_DONE:I = 0xa

.field private static final EVENT_SIM_STATE_READY:I = 0x1

.field private static mInstance:Lcom/lge/uicc/IccRecordLoader;


# instance fields
.field private recordsToLoad:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    .line 43
    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/IccRecordLoader;->logd(Ljava/lang/String;)V

    .line 44
    const-string v0, "proxy.sim_state"

    const/4 v1, 0x1

    const-string v2, "READY"

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 45
    return-void
.end method

.method private fetchRecords()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-static {v3, v4}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 49
    .local v0, fh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_1

    .line 50
    const-string v1, "fails to get IccFileHandler !!!"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordLoader;->loge(Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget v1, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    if-lez v1, :cond_2

    .line 55
    const-string v1, "fetchrecords already running..."

    invoke-static {v1}, Lcom/lge/uicc/IccRecordLoader;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "LGU"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    const-string v1, "fetch EF_LGU_ROAMING"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordLoader;->logd(Ljava/lang/String;)V

    .line 61
    const/16 v1, 0x2f50

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 62
    iget v1, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    .line 64
    const/4 v1, 0x2

    invoke-static {v3, v1}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    const-string v1, "fetch EF_CSIM_MDN"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordLoader;->logd(Ljava/lang/String;)V

    .line 67
    const/16 v1, 0x6f44

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 68
    iget v1, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    .line 72
    :cond_3
    iget v1, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    if-nez v1, :cond_0

    .line 73
    const-string v1, "nothing to load"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordLoader;->logd(Ljava/lang/String;)V

    .line 74
    const-string v1, "proxy.sim_state"

    invoke-static {v1, p0}, Lcom/lge/uicc/LGUICC;->unregisterForConfig(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccRecordLoader] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccRecordLoader] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccRecordLoader] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logp(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method protected static setup()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/lge/uicc/IccRecordLoader;->mInstance:Lcom/lge/uicc/IccRecordLoader;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/lge/uicc/IccRecordLoader;

    invoke-direct {v0}, Lcom/lge/uicc/IccRecordLoader;-><init>()V

    sput-object v0, Lcom/lge/uicc/IccRecordLoader;->mInstance:Lcom/lge/uicc/IccRecordLoader;

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    .line 81
    const/4 v6, 0x1

    .line 85
    .local v6, isRecordLoadResponse:Z
    :try_start_0
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unhandled message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/IccRecordLoader;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 138
    iget v9, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    .line 139
    iget v9, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    if-gez v9, :cond_1

    .line 140
    const-string v9, "recordsToLoad < 0, programmer error suspected"

    invoke-static {v9}, Lcom/lge/uicc/IccRecordLoader;->loge(Ljava/lang/String;)V

    .line 141
    :goto_1
    iput v11, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    .line 145
    :cond_1
    return-void

    .line 87
    :sswitch_0
    const/4 v6, 0x0

    .line 88
    :try_start_1
    const-string v9, "proxy.sim_state"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "READY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 89
    const-string v9, "start loading records..."

    invoke-static {v9}, Lcom/lge/uicc/IccRecordLoader;->logd(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/lge/uicc/IccRecordLoader;->fetchRecords()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v4

    .line 134
    .local v4, exc:Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception parsing record: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/IccRecordLoader;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    if-eqz v6, :cond_1

    .line 138
    iget v9, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    .line 139
    iget v9, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    if-gez v9, :cond_1

    .line 140
    const-string v9, "recordsToLoad < 0, programmer error suspected"

    invoke-static {v9}, Lcom/lge/uicc/IccRecordLoader;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    .end local v4           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    const-string v9, "EVENT_GET_EF_LGU_ROAMING_DONE"

    invoke-static {v9}, Lcom/lge/uicc/IccRecordLoader;->logd(Ljava/lang/String;)V

    .line 96
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 97
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_3

    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in reading EF_LGU_ROAMING: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/IccRecordLoader;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 136
    .end local v1           #ar:Landroid/os/AsyncResult;
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_2

    .line 138
    iget v10, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    .line 139
    iget v10, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    if-gez v10, :cond_2

    .line 140
    const-string v10, "recordsToLoad < 0, programmer error suspected"

    invoke-static {v10}, Lcom/lge/uicc/IccRecordLoader;->loge(Ljava/lang/String;)V

    .line 141
    iput v11, p0, Lcom/lge/uicc/IccRecordLoader;->recordsToLoad:I

    .line 136
    :cond_2
    throw v9

    .line 101
    .restart local v1       #ar:Landroid/os/AsyncResult;
    :cond_3
    :try_start_4
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 102
    .local v2, data:[B
    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, efroaming:Ljava/lang/String;
    const-string v9, "lgu.imsi_type"

    invoke-static {v9}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, imsi_type:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 105
    const-string v9, "10"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "HOME"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    const-string v9, "11"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "HOME"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 107
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LGU+] USIM card error!! ef_roaming="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", imsi_type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/IccRecordLoader;->loge(Ljava/lang/String;)V

    .line 110
    :cond_6
    const-string v9, "lgu.ef_roaming"

    invoke-static {v9, v3}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 114
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    .end local v3           #efroaming:Ljava/lang/String;
    .end local v5           #imsi_type:Ljava/lang/String;
    :sswitch_2
    const-string v9, "EVENT_GET_EF_CSIM_MDN_DONE"

    invoke-static {v9}, Lcom/lge/uicc/IccRecordLoader;->logd(Ljava/lang/String;)V

    .line 115
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 116
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_7

    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v9, :cond_8

    .line 117
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in reading EF_CSIM_MDN: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/IccRecordLoader;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_8
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 121
    .restart local v2       #data:[B
    const/4 v9, 0x0

    aget-byte v9, v2, v9

    and-int/lit8 v8, v9, 0xf

    .line 122
    .local v8, mdnDigitsNum:I
    const/4 v9, 0x1

    invoke-static {v2, v9, v8}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdToString([BII)Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, mdn:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CSIM MDN="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/IccRecordLoader;->logp(Ljava/lang/String;)V

    .line 124
    const-string v9, "mdn"

    invoke-static {v9, v7}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method
