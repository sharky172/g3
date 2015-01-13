.class public Lcom/lge/uicc/IccHandlerVZW;
.super Landroid/os/Handler;
.source "IccHandlerVZW.java"


# static fields
.field private static final EVENT_HPLMNWACT_LOADED:I = 0x2

.field private static final EVENT_IMSI_M_LOADED:I = 0x1

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x3

.field protected static final EVENT_SET_VPE_STATE:I = 0x4

.field private static mInstance:Lcom/lge/uicc/IccHandlerVZW;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 52
    const-string v0, "imsi_m"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 53
    const-string v0, "hplmnwact"

    const/4 v1, 0x2

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 55
    const-string v0, "radio_state"

    const/4 v1, 0x3

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/lge/uicc/IccTools;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/IccHandlerVZW;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private initializeVPEstate(II)Z
    .locals 3
    .parameter "slot"
    .parameter "index"

    .prologue
    .line 123
    invoke-static {p1}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v0

    .line 124
    .local v0, ril:Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_0

    .line 125
    const-string v1, "RIL==null"

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    .line 128
    :cond_0
    const-string v1, "initializeVPEstate "

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/internal/telephony/RIL;->UIMInternalRequestCmd(I[BLandroid/os/Message;)V

    .line 131
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccHandlerVZW] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccHandlerVZW] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected static setup()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "VZW"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    sget-object v0, Lcom/lge/uicc/IccHandlerVZW;->mInstance:Lcom/lge/uicc/IccHandlerVZW;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/lge/uicc/IccHandlerVZW;

    invoke-direct {v0}, Lcom/lge/uicc/IccHandlerVZW;-><init>()V

    sput-object v0, Lcom/lge/uicc/IccHandlerVZW;->mInstance:Lcom/lge/uicc/IccHandlerVZW;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 66
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->loge(Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 68
    :pswitch_0
    const-string v1, "EVENT_IMSI_M_LOADED"

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 69
    const-string v1, "imsi_m"

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "Error: imsi_m is not valid"

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_1
    const-string v1, "IMSI_M"

    invoke-static {v1, v2}, Lcom/lge/uicc/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_1
    const-string v1, "EVENT_HPLMNWACT_LOADED"

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 78
    const-string v1, "hplmnwact"

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    const-string v1, "Error: hplmnwact is not valid"

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    const-string v1, "HPLMN_SIMTYPE"

    invoke-static {v1, v2}, Lcom/lge/uicc/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_RADIO_STATE_CHANGED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "radio_state"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 89
    const-string v1, "radio_state"

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM_STATE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "proxy.sim_state"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 92
    const-string v1, "proxy.sim_state"

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "READY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/uicc/IccHandlerVZW;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/lge/uicc/IccHandlerVZW;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "Airplane mode is on. Forcing update VPE status"

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x0

    const/16 v2, 0x1001

    invoke-direct {p0, v1, v2}, Lcom/lge/uicc/IccHandlerVZW;->initializeVPEstate(II)Z

    goto/16 :goto_0

    .line 102
    :pswitch_3
    const-string v1, "EVENT_SET_VPE_STATE"

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 103
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception in command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerVZW;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
