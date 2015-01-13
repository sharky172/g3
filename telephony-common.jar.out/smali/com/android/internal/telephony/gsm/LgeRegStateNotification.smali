.class public Lcom/android/internal/telephony/gsm/LgeRegStateNotification;
.super Ljava/lang/Object;
.source "LgeRegStateNotification.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field static final NETWORK_FAIL_NOTIFICATION_ID:I = 0xc73c

.field static final REJECTCAUSE_NOTIFICATION_ID:I = 0xc73b

.field static final SEARCHING_NOTIFICATION_ID:I = 0xc73a

.field static final SUCCESS_NOTIFICATION_ID:I = 0xc739

.field private static sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;


# instance fields
.field private mFailNotification:Landroid/app/Notification;

.field private mHasShownOperatorInfo:Z

.field private mImsiType:Ljava/lang/String;

.field private mNetworkFailNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOperatorMccMnc:Ljava/lang/String;

.field private mOperatorName:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPrevOperatorName:Ljava/lang/String;

.field private mRef:I

.field private mSearchingNotification:Landroid/app/Notification;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSuccessNotification:Landroid/app/Notification;

.field private newSS:Landroid/telephony/ServiceState;

.field private prevSS:Landroid/telephony/ServiceState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    .line 80
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 94
    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/LgeRegStateNotification;
    .locals 4
    .parameter "phone"

    .prologue
    .line 98
    const-class v1, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    .line 103
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iget v2, v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    .line 105
    const-string v0, "CALL_FRW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LgeRegStateNotification] getInstance():: sInstance.mRef = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iget v3, v3, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOperatorInfo()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    .line 278
    return-void
.end method

.method private showOperatorInfoLGU()V
    .locals 8

    .prologue
    const/high16 v7, 0x1000

    .line 283
    const-string v1, "lgu.imsi_type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsiType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 286
    const-string v1, "no Imsi zone"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 295
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, RoamingIntent:Landroid/content/Intent;
    const-string v1, "com.lge.roamingsettings"

    const-string v2, "com.lge.roamingsettings.uplusroaming.wcdmaroaming.imsi.RoamingIMSISelect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    .line 300
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 301
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const/16 v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 302
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const v2, 0x20203f7

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "UPLUS_ROAMING_SUCCESS_NOTIFICATION_TITLE"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 306
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0xc739

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 307
    return-void

    .line 287
    .end local v0           #RoamingIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    const-string v2, "HOME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Zone1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Zone2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private showOperatorInfoSKT()V
    .locals 9

    .prologue
    const/high16 v8, 0x1000

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, TRoamingIntent:Landroid/content/Intent;
    const-string v1, "com.lge.roamingsettings"

    const-string v2, "com.lge.roamingsettings.troaming.TRoamingFGK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const/16 v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 319
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const/4 v2, -0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    .line 320
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const v2, 0x2020571

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 321
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SKT_ROAMING_SUCCESS_NOTIFICATION_TITLE"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0xc739

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 325
    return-void
.end method

.method private showRoamingNetworkFailLGU()V
    .locals 8

    .prologue
    const/high16 v7, 0x1000

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, RoamingIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getLTEDataRoamingEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const-string v2, "com.lge.roamingsettings"

    const-string v3, "com.lge.roamingsettings.uplusroaming.wcdmaroaming.RoamingonLTE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v2, "UPLUS_LTE_ROAMING_FAIL_NOTIFICATION_CONTENT"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, networkFailMessage:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    .line 354
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 355
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    const/16 v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 356
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    const v3, 0x108008a

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 357
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "UPLUS_ROAMING_FAIL_NOTIFICATION_TITLE"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 360
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v3, 0xc73c

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 361
    return-void

    .line 348
    .end local v1           #networkFailMessage:Ljava/lang/String;
    :cond_0
    const-string v2, "com.lge.roamingsettings"

    const-string v3, "com.lge.roamingsettings.uplusroaming.wcdmaroaming.imsi.RoamingIMSISelect"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v2, "UPLUS_ROAMING_FAIL_NOTIFICATION_CONTENT"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #networkFailMessage:Ljava/lang/String;
    goto :goto_0
.end method

.method private showSearching()V
    .locals 5

    .prologue
    .line 328
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const v1, 0x2020585

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "UPLUS_ROAMING_SEARCHING_NOTIFICATION_TITLE"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UPLUS_ROAMING_SEARCHING_NOTIFICATION_CONTENT"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73a

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 337
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 111
    iget v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose mRef="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iget v2, v2, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 116
    .local v0, notificationManager:Landroid/app/NotificationManager;
    iget v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    if-gtz v1, :cond_0

    .line 117
    const v1, 0xc739

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 118
    const v1, 0xc73a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 119
    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 120
    const-string v1, "dispose() mRef <= 0 : clear succes and searching notification"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 123
    :cond_0
    const v1, 0xc73b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 124
    const-string v1, "CALL_FRW"

    const-string v2, "dispose(): clear reject cause notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    return-void
.end method

.method public handleNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0xc73b

    const v5, 0xc73a

    const/4 v4, 0x1

    const v3, 0xc739

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    .line 134
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prevSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVoiceSearching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isVoiceSearching()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDataSearching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isDataSearching()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 147
    const-string v0, "Airplane Mode : clear success, searching, reject cause, and network reject notification."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 149
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    .line 227
    :cond_0
    :goto_0
    const-string v0, "KR"

    const-string v1, "SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prevSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_d

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 236
    const-string v0, "Airplane Mode : clear both success & fail notification"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 238
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    .line 272
    :cond_1
    :goto_1
    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->getOperatorInfo()V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 162
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoLGU()V

    .line 163
    const-string v0, "Show roaming operator info. since operator name changed"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 164
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    .line 176
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 177
    const-string v0, "update operator info since imsi is not decided yet"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoLGU()V

    .line 221
    :cond_5
    :goto_3
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    goto/16 :goto_0

    .line 165
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    if-nez v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoLGU()V

    .line 170
    const-string v0, "Show roaming operator info. since it has not been shown before"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 171
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto :goto_2

    .line 182
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v4, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-ne v0, v4, :cond_c

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isVoiceSearching()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isDataSearching()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_9

    .line 191
    const-string v0, "Show searching ..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showSearching()V

    .line 195
    :cond_9
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto/16 :goto_3

    .line 197
    :cond_a
    const-string v0, "true"

    const-string v1, "persist.radio.isroaming"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 201
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showRoamingNetworkFailLGU()V

    .line 202
    const-string v0, "Show roaming network fail notification"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 206
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 208
    const-string v0, "out of service : not searching, not roaming"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 213
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 216
    const-string v0, "clear success notification or searching notification or roaming netowrk fail notification"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 217
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto/16 :goto_3

    .line 240
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 244
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->getOperatorInfo()V

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_e

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoSKT()V

    .line 249
    const-string v0, "Show roaming operator info. since operator name changed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 250
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    .line 267
    :cond_e
    :goto_4
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    goto/16 :goto_1

    .line 251
    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    if-nez v0, :cond_e

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoSKT()V

    .line 254
    const-string v0, "Show roaming operator info. since it has not been shown before."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 255
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto :goto_4

    .line 261
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 262
    const-string v0, "clear success notification"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 263
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto :goto_4
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 377
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LgeRegStateNotification] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method

.method public setSimState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3
    .parameter "simState"

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 366
    .local v0, notificationManager:Landroid/app/NotificationManager;
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update mSimState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    .line 369
    const-string v1, "cancel searching notification since sim is not inserted"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 370
    const v1, 0xc73a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 373
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method
