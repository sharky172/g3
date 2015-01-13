.class public Lcom/lge/uicc/IccRefreshHandler;
.super Landroid/os/Handler;
.source "IccRefreshHandler.java"


# static fields
.field private static final EVENT_PHONE_DISCONNECT:I = 0x3

.field private static final EVENT_PROXY_SIM_STATE_CHANGED:I = 0x2

.field private static final EVENT_SIM_REFRESH:I = 0x1

.field private static final EVENT_SIM_REFRESH_BY_OTA_AFTER_CALL_END:I = 0x4

.field private static mInstance:Lcom/lge/uicc/IccRefreshHandler;


# instance fields
.field private isResetPhoneAfterCall:Z

.field private mContext:Landroid/content/Context;

.field private mSimState:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    const-string v1, ""

    iput-object v1, p0, Lcom/lge/uicc/IccRefreshHandler;->mSimState:Ljava/lang/String;

    .line 51
    iput-boolean v3, p0, Lcom/lge/uicc/IccRefreshHandler;->isResetPhoneAfterCall:Z

    .line 60
    const-string v1, "create instance"

    invoke-static {v1}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 61
    invoke-static {v3}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v0

    .line 62
    .local v0, ril:Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {v0, p0, v4, v6}, Lcom/android/internal/telephony/BaseCommands;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/lge/uicc/IccTools;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/uicc/IccRefreshHandler;->mContext:Landroid/content/Context;

    .line 67
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SKT"

    aput-object v2, v1, v3

    const-string v2, "KT"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "proxy.sim_state"

    invoke-static {v1, p0, v5, v6}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccRefreshHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccRefreshHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private onSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 8
    .parameter "refreshResponse"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 144
    const-string v3, "no result recieved"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->loge(Ljava/lang/String;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "VZW"

    aput-object v4, v3, v5

    const-string v4, "USC"

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    const-string v3, "com.lge.intent.action.OTA_CSIM_REFRESH_EVENT"

    invoke-static {v3}, Lcom/lge/uicc/IccTools;->broadcastIntent(Ljava/lang/String;)V

    .line 156
    const-string v3, "ota_csim_refresh_status"

    const-string v4, "REFRESHED"

    invoke-static {v3, v4}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    const-string v3, "OTA_CSIM_REFRESH_EVENT RECEIVED"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 160
    :cond_2
    iget v3, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v3, :pswitch_data_0

    .line 227
    const-string v3, "onSimRefresh with unknown operation"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_0
    const-string v3, "REFRESH_RESULT_FILE_UPDATE"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 164
    const-string v3, "com.lge.intent.action.OTA_USIM_REFRESH_FILE_UPDATED"

    invoke-static {v3}, Lcom/lge/uicc/IccTools;->broadcastIntent(Ljava/lang/String;)V

    .line 167
    iget v3, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    const/16 v4, 0x2ff0

    if-ne v3, v4, :cond_0

    .line 168
    const-string v3, "com.lge.intent.action.OTA_USIM_REFRESH_FILE_UPDATED_DCM_LOCK"

    invoke-static {v3}, Lcom/lge/uicc/IccTools;->broadcastIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_1
    const-string v3, "REFRESH_RESULT_INIT"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 176
    const-string v3, "com.lge.intent.action.OTA_USIM_REFRESH_INIT"

    invoke-static {v3}, Lcom/lge/uicc/IccTools;->broadcastIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :pswitch_2
    const-string v3, "REFRESH_RESULT_RESET"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 183
    const-string v3, "com.lge.intent.action.OTA_USIM_REFRESH_TO_RESET"

    invoke-static {v3}, Lcom/lge/uicc/IccTools;->broadcastIntent(Ljava/lang/String;)V

    .line 185
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SKT"

    aput-object v4, v3, v5

    const-string v4, "KT"

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/lge/uicc/IccRefreshHandler;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 187
    .local v1, a:Landroid/app/ActivityManager;
    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 189
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v2, :cond_3

    .line 190
    const-string v3, "RunningTaskInfo is Null"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_3
    const-string v4, "com.lge.ota.SKTUsimDownloadActivity"

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v4, "com.lge.ota.KTRegiActivity"

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "TEST"

    const-string v4, "card_operator"

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 199
    :cond_4
    const-string v3, "pass OTA in IccRefreshHander......"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_5
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "KT"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_6

    .line 204
    const-string v3, "OTA Reset after the Call End"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 205
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 207
    :cond_6
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "KT"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    const-string v3, "OTA message from KT : OTA Result Activity Execute"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v0, KTota:Landroid/content/Intent;
    const-string v3, "com.lge.ota"

    const-string v4, "com.lge.ota.KTResultActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 212
    iget-object v3, p0, Lcom/lge/uicc/IccRefreshHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 221
    .end local v0           #KTota:Landroid/content/Intent;
    .end local v1           #a:Landroid/app/ActivityManager;
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_3
    const-string v3, "REFRESH_RESULT_OTA"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 222
    const-string v3, "Send SIM_REFRESH_RESET event to the module to reset the phone by user."

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 223
    const-string v3, "com.lge.intent.action.OTA_USIM_REFRESH_TO_RESET"

    invoke-static {v3}, Lcom/lge/uicc/IccTools;->broadcastIntent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected static setup()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/lge/uicc/IccRefreshHandler;->mInstance:Lcom/lge/uicc/IccRefreshHandler;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/lge/uicc/IccRefreshHandler;

    invoke-direct {v0}, Lcom/lge/uicc/IccRefreshHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/IccRefreshHandler;->mInstance:Lcom/lge/uicc/IccRefreshHandler;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/high16 v7, 0x1000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 72
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 74
    .local v1, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    const-string v3, "EVENT_SIM_REFRESH"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 77
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SIM_REFRESH with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, v3}, Lcom/lge/uicc/IccRefreshHandler;->onSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_2

    .line 90
    iput-boolean v6, p0, Lcom/lge/uicc/IccRefreshHandler;->isResetPhoneAfterCall:Z

    .line 92
    const-string v3, "OTA message from KT : OTA Result Activity Execute"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, KTota:Landroid/content/Intent;
    const-string v3, "com.lge.ota"

    const-string v4, "com.lge.ota.KTResultActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    iget-object v3, p0, Lcom/lge/uicc/IccRefreshHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    .end local v0           #KTota:Landroid/content/Intent;
    :cond_2
    iput-boolean v5, p0, Lcom/lge/uicc/IccRefreshHandler;->isResetPhoneAfterCall:Z

    goto :goto_0

    .line 104
    :pswitch_2
    const-string v3, "Received PHONE_DISCONNECT event ..."

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 105
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "KT"

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    iget-boolean v3, p0, Lcom/lge/uicc/IccRefreshHandler;->isResetPhoneAfterCall:Z

    if-eqz v3, :cond_0

    .line 108
    iput-boolean v6, p0, Lcom/lge/uicc/IccRefreshHandler;->isResetPhoneAfterCall:Z

    .line 109
    const-string v3, "OTA message from KT : OTA Result Activity Execute"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .restart local v0       #KTota:Landroid/content/Intent;
    const-string v3, "com.lge.ota"

    const-string v4, "com.lge.ota.KTResultActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    iget-object v3, p0, Lcom/lge/uicc/IccRefreshHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 119
    .end local v0           #KTota:Landroid/content/Intent;
    :pswitch_3
    const-string v3, "proxy.sim_state"

    invoke-static {v3}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, newState:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/uicc/IccRefreshHandler;->mSimState:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/lge/uicc/IccRefreshHandler;->mSimState:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/lge/uicc/IccRefreshHandler;->mSimState:Ljava/lang/String;

    const-string v4, "READY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "READY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 126
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    const-string v3, "OTA EVENT_PHONE_DISCONNECT registered"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 136
    :cond_3
    :goto_1
    iput-object v2, p0, Lcom/lge/uicc/IccRefreshHandler;->mSimState:Ljava/lang/String;

    goto/16 :goto_0

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/lge/uicc/IccRefreshHandler;->mSimState:Ljava/lang/String;

    const-string v4, "NOT_READY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "NOT_READY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 131
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 132
    const-string v3, "OTA EVENT_PHONE_DISCONNECT deregistered"

    invoke-static {v3}, Lcom/lge/uicc/IccRefreshHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
