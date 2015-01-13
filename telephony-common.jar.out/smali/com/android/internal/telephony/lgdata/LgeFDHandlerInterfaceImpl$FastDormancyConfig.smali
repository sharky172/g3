.class Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;
.super Ljava/lang/Object;
.source "LgeFDHandlerInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FastDormancyConfig"
.end annotation


# static fields
.field private static final FDCONFIG_DEFAULT_FDMAXRETRY:I = 0x1

.field private static final FDCONFIG_DEFAULT_FDRETRY_TIMER_MS:J = 0x1388L

.field private static final FDCONFIG_DEFAULT_FDTRIGGER_TIMER_SCREEN_OFF_MS:J = 0x1388L

.field private static final FDCONFIG_DEFAULT_FDTRIGGER_TIMER_SCREEN_ON_MS:J = 0x2710L

.field private static final FDCONFIG_DEFAULT_TRANSFERCHECK_TIMER_MS:J = 0x3e8L

.field private static final FDCONFIG_DEFAULT_TRANSFERCHECK_TIMER_MS_IN_UNKOWN_STATE:J = 0x1388L

.field private static final FDCONFIG_OPTION_FLAG_5SEC_DELAY_FD_IN_DIALING:I = 0x4

.field private static final FDCONFIG_OPTION_FLAG_FD_PAUSE:I = 0x20

.field private static final FDCONFIG_OPTION_FLAG_PREVENT_FD_WHEN_LCD_ON:I = 0x1

.field private static final FDCONFIG_OPTION_FLAG_PREVENT_FD_WHEN_TETHERING:I = 0x10

.field private static final FDCONFIG_OPTION_FLAG_PREVENT_FD_WHEN_VOICE_CALLING:I = 0x2

.field private static final FDCONFIG_SETTING_INDEX_ACTIVE:I = 0x0

.field private static final FDCONFIG_SETTING_INDEX_DEBUGMODE:I = 0x2

.field private static final FDCONFIG_SETTING_INDEX_FD_OPTION_VAL:I = 0x9

.field private static final FDCONFIG_SETTING_INDEX_FD_RETRY_TIMER_VAL:I = 0x7

.field private static final FDCONFIG_SETTING_INDEX_MAX_FD_RETRY:I = 0x8

.field private static final FDCONFIG_SETTING_INDEX_SCREEN_OFF_FDTRIGGER_TIMER_VAL:I = 0x6

.field private static final FDCONFIG_SETTING_INDEX_SCREEN_ON_FDTRIGGER_TIMER_VAL:I = 0x5

.field private static final FDCONFIG_SETTING_INDEX_TRANSFER_CHECK_TIMER_VAL:I = 0x3

.field private static final FDCONFIG_SETTING_INDEX_TRANSFER_CHECK_TIMER_VAL_IN_UNKNOWN_STATE:I = 0x4

.field private static final FDCONFIG_SETTING_INDEX_VERSION:I = 0x1


# instance fields
.field countryCode:Ljava/lang/String;

.field mDataTransferCheckTimerVal:J

.field mDataTransferCheckTimerValInUnkownState:J

.field mFDMaxRetry:I

.field mFDRetryTimerVal:J

.field mFDTriggerTimerVal_ScreenOff:J

.field mFDTriggerTimerVal_ScreenOn:J

.field mIsActive:Z

.field mIsDebugMode:Z

.field mIsDelayInDialing:Z

.field mIsFdPaused:Z

.field mIsPreventInBip:Z

.field mIsPreventInTethering:Z

.field mIsPreventWhenCalling:Z

.field mIsPreventWhenLcdOn:Z

.field mIsScreenOn:Z

.field mVersion:I

.field operatorCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x1388

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->countryCode:Ljava/lang/String;

    .line 372
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->operatorCode:Ljava/lang/String;

    .line 383
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsDelayInDialing:Z

    .line 384
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventWhenLcdOn:Z

    .line 385
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventWhenCalling:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsScreenOn:Z

    .line 387
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventInTethering:Z

    .line 388
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsFdPaused:Z

    .line 389
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventInBip:Z

    .line 392
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsActive:Z

    .line 393
    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mVersion:I

    .line 394
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsDebugMode:Z

    .line 395
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mDataTransferCheckTimerVal:J

    .line 396
    iput-wide v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mDataTransferCheckTimerValInUnkownState:J

    .line 397
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOn:J

    .line 398
    iput-wide v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOff:J

    .line 399
    iput-wide v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDRetryTimerVal:J

    .line 400
    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDMaxRetry:I

    .line 401
    return-void
.end method


# virtual methods
.method public getDataTransferCheckTimerValue()J
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->access$700(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    #getter for: Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUnknownState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;
    invoke-static {v1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->access$800(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;)Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 586
    iget-wide v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mDataTransferCheckTimerValInUnkownState:J

    .line 588
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mDataTransferCheckTimerVal:J

    goto :goto_0
.end method

.method public getFDMaxRetry()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDMaxRetry:I

    return v0
.end method

.method public getFDRetryTimerValue()J
    .locals 2

    .prologue
    .line 601
    iget-wide v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDRetryTimerVal:J

    return-wide v0
.end method

.method public getFDTriggerTimerValue()J
    .locals 2

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsScreenOn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 594
    iget-wide v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOn:J

    .line 596
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOff:J

    goto :goto_0
.end method

.method public getIsActive()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsActive:Z

    return v0
.end method

.method public getIsDebugMode()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsDebugMode:Z

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mVersion:I

    return v0
.end method

.method public isDelayInDialing()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsDelayInDialing:Z

    return v0
.end method

.method public isPausingFD()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsFdPaused:Z

    return v0
.end method

.method public isPreventInBip()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventInBip:Z

    return v0
.end method

.method public isPreventInTethering()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventInTethering:Z

    return v0
.end method

.method public isPreventWhenCalling()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventWhenCalling:Z

    return v0
.end method

.method public isPreventWhenLcdOn()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventWhenLcdOn:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsScreenOn:Z

    return v0
.end method

.method public loadSettingFromDb()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 405
    const-string v0, "persist.lg.data.fd"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, FDSettings:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 407
    const-string v6, "-1"

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 411
    .local v11, numeric:Ljava/lang/String;
    :goto_0
    const-string v0, "gsm.apn.sim.operator.mvno.type"

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    iget-object v4, v4, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mP:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 412
    .local v10, mvnoType:Ljava/lang/String;
    const-string v0, "gsm.apn.sim.operator.mvno.data"

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    iget-object v4, v4, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mP:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, mvnoData:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 414
    :cond_1
    const-string v0, "content://telephony/dcm_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 415
    .local v1, DCM_SETTINGS_URI:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and mvno_type = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' and mvno_match_data = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const-string v0, "fastdormancy"

    aput-object v0, v2, v12

    .line 419
    .local v2, columns:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 420
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 421
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    if-eqz v0, :cond_9

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadSettingFromDb] connot find the FD setting with ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->loge(Ljava/lang/String;)V

    .line 426
    :goto_1
    if-eqz v7, :cond_3

    .line 427
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 430
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 432
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 433
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    if-eqz v0, :cond_a

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadSettingFromDb] connot find the FD setting with ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), too"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->loge(Ljava/lang/String;)V

    .line 440
    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_6

    .line 442
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 443
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 449
    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    .line 450
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 458
    .end local v1           #DCM_SETTINGS_URI:Landroid/net/Uri;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_7
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    if-eqz v0, :cond_c

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update FDSettings is ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 463
    :goto_5
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->setFDSettingValue(Ljava/lang/String;)V

    .line 464
    return-void

    .line 410
    .end local v9           #mvnoData:Ljava/lang/String;
    .end local v10           #mvnoType:Ljava/lang/String;
    .end local v11           #numeric:Ljava/lang/String;
    :cond_8
    const-string v11, ""

    goto/16 :goto_0

    .line 424
    .restart local v1       #DCM_SETTINGS_URI:Landroid/net/Uri;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #mvnoData:Ljava/lang/String;
    .restart local v10       #mvnoType:Ljava/lang/String;
    .restart local v11       #numeric:Ljava/lang/String;
    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    const-string v4, "[loadSettingFromDb] connot find the FD setting"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 452
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 453
    .local v8, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSettingFromDb() : connot find the FD setting with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 436
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_a
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    const-string v4, "[loadSettingFromDb] connot find the FD setting"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 444
    :catch_1
    move-exception v8

    .line 445
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v6, 0x0

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    const-string v4, "loadSettingFromDb() : not find index with name because of CursorIndexOutOfBoundsException"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->loge(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 456
    .end local v1           #DCM_SETTINGS_URI:Landroid/net/Uri;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FDSettings is ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") from persist.lg.data.fd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 461
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update FDSettings is ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public setFDSettingValue(Ljava/lang/String;)V
    .locals 8
    .parameter "FDSettings"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 467
    const-string v3, "ro.build.target_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->countryCode:Ljava/lang/String;

    .line 468
    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->operatorCode:Ljava/lang/String;

    .line 470
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, "-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 471
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, settings:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_8

    .line 473
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 474
    .local v2, val:I
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "idx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", settings[idx]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", val:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 475
    packed-switch v0, :pswitch_data_0

    .line 472
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :pswitch_0
    if-eqz v2, :cond_1

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsActive:Z

    goto :goto_1

    .line 478
    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsActive:Z

    goto :goto_1

    .line 481
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mVersion:I

    goto :goto_1

    .line 484
    :pswitch_2
    if-eqz v2, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsDebugMode:Z

    goto :goto_1

    .line 485
    :cond_2
    iput-boolean v7, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsDebugMode:Z

    goto :goto_1

    .line 488
    :pswitch_3
    int-to-long v3, v2

    iput-wide v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mDataTransferCheckTimerVal:J

    goto :goto_1

    .line 491
    :pswitch_4
    int-to-long v3, v2

    iput-wide v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mDataTransferCheckTimerValInUnkownState:J

    goto :goto_1

    .line 494
    :pswitch_5
    int-to-long v3, v2

    iput-wide v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOn:J

    goto :goto_1

    .line 497
    :pswitch_6
    int-to-long v3, v2

    iput-wide v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOff:J

    goto :goto_1

    .line 500
    :pswitch_7
    int-to-long v3, v2

    iput-wide v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDRetryTimerVal:J

    goto :goto_1

    .line 503
    :pswitch_8
    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDMaxRetry:I

    goto :goto_1

    .line 506
    :pswitch_9
    if-eqz v2, :cond_0

    .line 507
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_3

    .line 508
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventWhenLcdOn:Z

    .line 510
    :cond_3
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_4

    .line 511
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventWhenCalling:Z

    .line 513
    :cond_4
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_5

    .line 514
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsDelayInDialing:Z

    .line 516
    :cond_5
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_6

    .line 517
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventInTethering:Z

    .line 518
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[1] mIsPreventInTethering is change to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventInTethering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 520
    :cond_6
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_0

    .line 521
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsFdPaused:Z

    goto :goto_1

    .line 530
    .end local v0           #idx:I
    .end local v1           #settings:[Ljava/lang/String;
    .end local v2           #val:I
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    const-string v4, "Fail to load FD setting from Db"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->loge(Ljava/lang/String;)V

    .line 533
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->operatorCode:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->countryCode:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 534
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->operatorCode:Ljava/lang/String;

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->operatorCode:Ljava/lang/String;

    const-string v4, "VDF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 535
    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventInTethering:Z

    .line 536
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    const-string v4, "mIsPreventInTethering is true due to VDF or OPEN"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 553
    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsActive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 554
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsDebugMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsDebugMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 556
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDataTransferCheckTimerVal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mDataTransferCheckTimerVal:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 557
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDataTransferCheckTimerValInUnkownState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mDataTransferCheckTimerValInUnkownState:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFDTriggerTimerVal_ScreenOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOn:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 559
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFDTriggerTimerVal_ScreenOff:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOff:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 560
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFDRetryTimerVal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDRetryTimerVal:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFDMaxRetry:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDMaxRetry:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 563
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    const-string v4, "Option Flages :"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 564
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsPreventWhenLcdOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventWhenLcdOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 565
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsPreventWhenCalling:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventWhenCalling:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 566
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsDelayInDialing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsDelayInDialing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 567
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsPreventInTethering:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventInTethering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 568
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsPreventInBip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventInBip:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 569
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsFdPaused:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsFdPaused:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 570
    return-void

    .line 537
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->operatorCode:Ljava/lang/String;

    const-string v4, "ORG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 538
    const-wide/16 v3, 0x1b58

    iput-wide v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOn:J

    .line 539
    const-wide/16 v3, 0xfa0

    iput-wide v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOff:J

    .line 540
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mFDMaxRetry:I

    .line 541
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    const-string v4, "ScreenOn is 7sec, ScreenOff is 4sec, mFDMaxRetry is 3 due to ORG"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 542
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->operatorCode:Ljava/lang/String;

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->operatorCode:Ljava/lang/String;

    const-string v4, "DTAG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->countryCode:Ljava/lang/String;

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 543
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventWhenCalling:Z

    .line 544
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    const-string v4, "mIsPreventInTethering is true, mIsPreventWhenCalling is true due to TMO or DTAG"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 545
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->operatorCode:Ljava/lang/String;

    const-string v4, "TIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->countryCode:Ljava/lang/String;

    const-string v4, "IT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 546
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsPreventInBip:Z

    .line 547
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    const-string v4, "mIsPreventInBip is true due to Italy TIM version"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 549
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    const-string v4, "there is no specific options for FD configuration"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setPausingFD(Z)V
    .locals 0
    .parameter "faused"

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsFdPaused:Z

    .line 614
    return-void
.end method

.method public updateScreenState(Z)V
    .locals 0
    .parameter "isScreenOn"

    .prologue
    .line 609
    iput-boolean p1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->mIsScreenOn:Z

    .line 610
    return-void
.end method
