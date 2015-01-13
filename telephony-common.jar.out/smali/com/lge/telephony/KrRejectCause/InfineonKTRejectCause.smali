.class public Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;
.super Lcom/lge/telephony/KrRejectCause/KTRejectCause;
.source "InfineonKTRejectCause.java"


# static fields
.field static final DBG:Z = true

.field private static final DELAYED_5SEC_TIMEOUT:I = 0x1388

.field static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field private static final MSG_ID_5SEC_DELAYED_TIMEOUT:I = 0x1


# instance fields
.field m5SECDelayedTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;-><init>()V

    .line 40
    new-instance v0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause$1;-><init>(Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->m5SECDelayedTimeoutHandler:Landroid/os/Handler;

    .line 31
    sput-object p1, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    .line 35
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->m5SECDelayedTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->checkManagedRoamingDialogAtBoot()V

    return-void
.end method

.method private checkManagedRoamingDialogAtBoot()V
    .locals 5

    .prologue
    .line 55
    sget-object v2, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 56
    .local v1, ss:Landroid/telephony/ServiceState;
    sget-object v2, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, airplaneMode:I
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->createManagedRoamingDialog()V

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method protected checkGsmServiceStatus()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, statusId:I
    const-string v1, "no"

    const-string v2, "ril.card_provisioned"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    const-string v1, "canShowAlert = false"

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->log(Ljava/lang/String;)V

    .line 145
    iput-boolean v8, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    .line 146
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-nez v1, :cond_1

    .line 151
    :cond_0
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 152
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 155
    :cond_1
    if-nez v0, :cond_2

    const-string v1, "KT"

    const-string v2, "ril.card_operator"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    const/16 v0, 0x64

    .line 216
    :cond_2
    :goto_0
    return v0

    .line 159
    :cond_3
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eq v1, v4, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eq v1, v5, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-nez v1, :cond_6

    .line 164
    :cond_4
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 165
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 167
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->network_op_mode:I

    if-ne v1, v6, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_2

    .line 171
    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    .line 174
    :cond_6
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eq v1, v6, :cond_7

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    :cond_7
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_domain:I

    if-nez v1, :cond_9

    .line 178
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eq v1, v5, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eq v1, v7, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 188
    :cond_8
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    goto :goto_0

    .line 191
    :cond_9
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eq v1, v6, :cond_a

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_a
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_domain:I

    if-ne v1, v6, :cond_2

    .line 195
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v4, :cond_b

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v5, :cond_b

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v7, :cond_b

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 203
    :cond_b
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 205
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v4, :cond_c

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v5, :cond_c

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-ne v1, v7, :cond_2

    .line 209
    :cond_c
    iput-boolean v8, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    .line 211
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->postDismissDialog()V

    goto/16 :goto_0
.end method

.method protected checkLockStatusOta()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x2

    const/16 v6, 0x16

    const/16 v5, 0x11

    const/16 v4, 0x10

    .line 239
    const-string v1, "no"

    const-string v2, "ril.card_provisioned"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 240
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->ms_op_mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-ne v1, v6, :cond_1

    :cond_0
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_1
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v5, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-ne v1, v6, :cond_3

    :cond_2
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eq v1, v7, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_9

    :cond_3
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v7, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_5

    :cond_4
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_5
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    :cond_6
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    :cond_7
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->ms_op_mode:I

    if-nez v1, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_8
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->ms_op_mode:I

    if-ne v1, v7, :cond_a

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-ne v1, v6, :cond_a

    .line 306
    :cond_9
    const/4 v0, 0x1

    .line 313
    :cond_a
    return v0
.end method

.method protected checkManagedRoamingDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 110
    sget-object v2, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 111
    .local v1, ss:Landroid/telephony/ServiceState;
    iget v2, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->pre_srv_status:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->pre_srv_status:I

    if-ne v2, v4, :cond_2

    :cond_0
    iget v2, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eq v2, v4, :cond_2

    .line 116
    sget-object v2, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, airplaneMode:I
    if-nez v0, :cond_1

    .line 122
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-nez v2, :cond_1

    .line 123
    const-string v2, "createManagedRoamingDialog show"

    invoke-virtual {p0, v2}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->log(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->createManagedRoamingDialog()V

    .line 135
    .end local v0           #airplaneMode:I
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-ne v2, v4, :cond_1

    .line 131
    :cond_3
    sget-boolean v2, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->dismissManagedRoamingDialog()V

    goto :goto_0
.end method

.method protected isNeedDelayed()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 222
    iget v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mm_reject_cause:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->gmm_reject_cause:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-nez v0, :cond_2

    .line 229
    :cond_1
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 71
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InfineonKTRejectCause] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method protected processIntentBroadcast()V
    .locals 7

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, bOtaIsRunning:Z
    const-string v5, "gsm.lge.ota_is_running"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 80
    const-string v5, "ril.card_operator"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, card_operator:Ljava/lang/String;
    const-string v5, "ril.card_provisioned"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, card_provisioned:Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v5, "KT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    :cond_0
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 90
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_IN_SERVICE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, IntentOtaInService:Landroid/content/Intent;
    const-string v5, "send intent OTA_IN_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->log(Ljava/lang/String;)V

    .line 92
    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 105
    .end local v0           #IntentOtaInService:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 94
    :cond_3
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->srv_status:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 100
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_NO_SERVICE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, IntentOtaNoService:Landroid/content/Intent;
    const-string v5, "send intent OTA_NO_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->log(Ljava/lang/String;)V

    .line 102
    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
