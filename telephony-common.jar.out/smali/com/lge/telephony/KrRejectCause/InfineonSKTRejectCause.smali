.class public Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;
.super Lcom/lge/telephony/KrRejectCause/SKTRejectCause;
.source "InfineonSKTRejectCause.java"


# static fields
.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 33
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InfineonSKTRejectCause] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method protected processIntentBroadcast()V
    .locals 7

    .prologue
    .line 38
    const/4 v2, 0x0

    .line 39
    .local v2, bOtaIsRunning:Z
    const-string v5, "gsm.lge.ota_is_running"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 41
    const-string v5, "ril.card_operator"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, card_operator:Ljava/lang/String;
    const-string v5, "ril.card_provisioned"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, card_provisioned:Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v5, "SKT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    :cond_0
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_IN_SERVICE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, IntentOtaInService:Landroid/content/Intent;
    const-string v5, "send intent OTA_IN_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 51
    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 64
    .end local v0           #IntentOtaInService:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 59
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_NO_SERVICE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, IntentOtaNoService:Landroid/content/Intent;
    const-string v5, "send intent OTA_NO_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 61
    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected processStatuId(I)V
    .locals 13
    .parameter "statusId"

    .prologue
    const/4 v12, 0x1

    .line 70
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 71
    .local v8, r:Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 72
    .local v7, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 73
    .local v0, IsRoaming:Z
    sget-object v10, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    .line 74
    .local v9, ss:Landroid/telephony/ServiceState;
    const/4 v3, 0x1

    .line 76
    .local v3, canShowAlert:Z
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->isUsimRoaming()Z

    move-result v1

    .line 78
    .local v1, IsUsimRoaming:Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNetworkRejection : statusId :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 80
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eq v10, v12, :cond_1

    :cond_0
    if-ne v1, v12, :cond_7

    .line 81
    :cond_1
    const/4 v0, 0x1

    .line 86
    :goto_0
    const-string v10, "ril.card_operator"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, card_operator:Ljava/lang/String;
    const-string v10, "ril.card_provisioned"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, card_provisioned:Ljava/lang/String;
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "no"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 92
    const/4 v3, 0x0

    .line 97
    :cond_2
    sget-object v10, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 98
    .local v2, am:Landroid/app/ActivityManager;
    invoke-virtual {v2, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 101
    .local v6, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v9, :cond_3

    .line 102
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ss.getState() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 106
    :cond_3
    if-eqz v6, :cond_4

    const-string v11, "com.lge.ota.SKTUsimDownloadActivity"

    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    const-string v10, "gsm.lge.ota_is_running"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 108
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNetworkRejection : ignore Rejection code for SKT :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 270
    :cond_6
    :goto_1
    return-void

    .line 83
    .end local v2           #am:Landroid/app/ActivityManager;
    .end local v4           #card_operator:Ljava/lang/String;
    .end local v5           #card_provisioned:Ljava/lang/String;
    .end local v6           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 113
    .restart local v2       #am:Landroid/app/ActivityManager;
    .restart local v4       #card_operator:Ljava/lang/String;
    .restart local v5       #card_provisioned:Ljava/lang/String;
    .restart local v6       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_8
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 121
    :pswitch_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNetworkRejection : case 2 : srv_status="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 128
    const-string v10, "gsm.rc_2_rs_3_5.exist"

    const-string v11, "true"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 131
    if-eqz v0, :cond_9

    .line 132
    const-string v10, "SKT_NRC_02_INTER_IMSI_UNKNOWN_IN_HLR"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNetworkRejection : case 2 :show dialog : msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v7, v3, v12}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 134
    :cond_9
    const-string v10, "SKT_NRC_02_IMSI_UNKNOWN_IN_HLR"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 137
    :cond_a
    const-string v10, "sp_SKT_NRC_02_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 149
    :pswitch_2
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 150
    if-eqz v0, :cond_b

    .line 151
    const-string v10, "SKT_NRC_03_INTER_ILLEGAL_MS"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 158
    :goto_3
    invoke-virtual {p0, v7, v3, v12}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 153
    :cond_b
    const-string v10, "SKT_NRC_03_ILLEGAL_MS"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 156
    :cond_c
    const-string v10, "sp_SKT_NRC_03_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 162
    :pswitch_3
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 163
    if-eqz v0, :cond_d

    .line 164
    const-string v10, "SKT_NRC_06_INTER_ILLEGAL_ME"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 171
    :goto_4
    invoke-virtual {p0, v7, v3, v12}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 166
    :cond_d
    const-string v10, "SKT_NRC_06_ILLEGAL_ME"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 169
    :cond_e
    const-string v10, "sp_SKT_NRC_06_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 178
    :pswitch_4
    const-string v10, "SKT_NRC_07_GPRS_NOT_ALLOWED"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-virtual {p0, v7, v3, v12}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 188
    :pswitch_5
    const-string v10, "SKT_NRC_14_GPRS_NOT_ALLOWED_IN_THIS_PLMN"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    invoke-virtual {p0, v7, v3, v12}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 195
    :pswitch_6
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 196
    if-eqz v0, :cond_f

    .line 197
    const-string v10, "SKT_NRC_08_INTER_GPRS_AND_NON_GPRS_NOT_ALLOWED"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 204
    :goto_5
    invoke-virtual {p0, v7, v3, v12}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 199
    :cond_f
    const-string v10, "SKT_NRC_08_GPRS_AND_NON_GPRS_NOT_ALLOWED"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 202
    :cond_10
    const-string v10, "sp_SKT_NRC_08_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 211
    :pswitch_7
    const/16 v10, 0xb

    if-ne p1, v10, :cond_12

    .line 212
    const-string v10, "SKT_NRC_11_PLMN_NOT_ALLOWED"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    :cond_11
    :goto_6
    invoke-virtual {p0, v7, v3, v12}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 213
    :cond_12
    const/16 v10, 0xc

    if-ne p1, v10, :cond_13

    .line 214
    const-string v10, "SKT_NRC_12_LOCATION_AREA_NOT_ALLOWED"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 215
    :cond_13
    const/16 v10, 0xd

    if-ne p1, v10, :cond_14

    .line 216
    const-string v10, "SKT_NRC_13_ROAMING_NOT_ALLOWED_IN_THIS_LOCATION_AREA"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 217
    :cond_14
    const/16 v10, 0xf

    if-ne p1, v10, :cond_11

    .line 218
    const-string v10, "SKT_NRC_15_NO_SUITABLE_CELLS_IN_LOCATION_AREA"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 228
    :pswitch_8
    iget v10, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eqz v10, :cond_15

    iget v10, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_15

    iget v10, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    .line 231
    :cond_15
    const/16 v10, 0x10

    if-ne p1, v10, :cond_19

    .line 232
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 233
    if-eqz v0, :cond_17

    .line 234
    const-string v10, "SKT_NRC_16_INTER_MSC_TEMPORARILY_NOT_REACHABLE"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 263
    :cond_16
    :goto_7
    invoke-virtual {p0, v7, v3, v12}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 236
    :cond_17
    const-string v10, "SKT_NRC_16_MSC_TEMPORARILY_NOT_REACHABLE"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 239
    :cond_18
    const-string v10, "sp_SKT_NRC_16_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 241
    :cond_19
    const/16 v10, 0x11

    if-ne p1, v10, :cond_1c

    .line 242
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 243
    if-eqz v0, :cond_1a

    .line 244
    const-string v10, "SKT_NRC_17_INTER_NETWORK_FAILURE"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 246
    :cond_1a
    const-string v10, "SKT_NRC_17_NETWORK_FAILURE"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 249
    :cond_1b
    const-string v10, "sp_SKT_NRC_17_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 252
    :cond_1c
    const/16 v10, 0x16

    if-ne p1, v10, :cond_16

    .line 253
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 254
    if-eqz v0, :cond_1d

    .line 255
    const-string v10, "SKT_NRC_22_INTER_CONGESTION"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 257
    :cond_1d
    const-string v10, "SKT_NRC_22_CONGESTION"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 260
    :cond_1e
    const-string v10, "sp_SKT_NRC_22_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
