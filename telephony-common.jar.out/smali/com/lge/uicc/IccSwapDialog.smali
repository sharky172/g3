.class public Lcom/lge/uicc/IccSwapDialog;
.super Landroid/os/Handler;
.source "IccSwapDialog.java"


# static fields
.field private static final EVENT_CARD_STATE_CHANGED:I = 0x1

.field private static final EVENT_PHONE_REBOOT_TIMER:I = 0x2

.field private static final FACTORY_PROPERTY:Ljava/lang/String; = "ro.factorytest"

.field private static final LGE_FTM_OFF:I = 0x2

.field private static final LGE_FTM_ON:I = 0x1

.field private static final MODEL_NAME:Ljava/lang/String;

.field private static mInstance:Lcom/lge/uicc/IccSwapDialog;

.field public static mSimInserted:Z


# instance fields
.field private mCardState:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFTMFlag:I

.field private final mLock:Ljava/lang/Object;

.field private mNoSimDialog:I

.field private mTimeoutTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/uicc/IccSwapDialog;->mSimInserted:Z

    .line 66
    const-string v0, "ro.product.model"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/uicc/IccSwapDialog;->MODEL_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/IccSwapDialog;->mLock:Ljava/lang/Object;

    .line 50
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/lge/uicc/IccSwapDialog;->mCardState:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/IccSwapDialog;->mFTMFlag:I

    .line 67
    const v0, 0x2030026

    iput v0, p0, Lcom/lge/uicc/IccSwapDialog;->mNoSimDialog:I

    .line 77
    invoke-static {}, Lcom/lge/uicc/IccTools;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    .line 78
    const-string v0, "card_state"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 79
    const-string v0, "#operator_cardswap_dialog"

    const-string v1, "yes"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/lge/uicc/IccSwapDialog;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/uicc/IccSwapDialog;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/uicc/IccSwapDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/uicc/IccSwapDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lge/uicc/IccSwapDialog;->cancelRebootTimer()V

    return-void
.end method

.method private cancelRebootTimer()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/uicc/IccSwapDialog;->mTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lge/uicc/IccSwapDialog;->mTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 155
    :cond_0
    return-void
.end method

.method private isPopupDisabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPopupDisabled check value mFTMFlag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/uicc/IccSwapDialog;->mFTMFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccSwapDialog;->loge(Ljava/lang/String;)V

    .line 495
    iget v3, p0, Lcom/lge/uicc/IccSwapDialog;->mFTMFlag:I

    if-nez v3, :cond_2

    .line 496
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, factoryTestStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    iput v2, p0, Lcom/lge/uicc/IccSwapDialog;->mFTMFlag:I

    .line 506
    .end local v0           #factoryTestStr:Ljava/lang/String;
    :goto_0
    return v1

    .line 501
    .restart local v0       #factoryTestStr:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/uicc/IccSwapDialog;->mFTMFlag:I

    .end local v0           #factoryTestStr:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 506
    goto :goto_0

    .line 503
    :cond_2
    iget v3, p0, Lcom/lge/uicc/IccSwapDialog;->mFTMFlag:I

    if-ne v3, v2, :cond_1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccSwapDialog] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccSwapDialog] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method private onIccAbsentEx()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v12, 0x0

    .line 403
    const-string v10, "onIccAbsentEx"

    invoke-static {v10}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 405
    new-array v10, v14, [Ljava/lang/String;

    const-string v11, "VZW"

    aput-object v11, v10, v12

    const-string v11, "ATT"

    aput-object v11, v10, v13

    invoke-static {v10}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 488
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v11, p0, Lcom/lge/uicc/IccSwapDialog;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 409
    :try_start_0
    iget-object v10, p0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 410
    .local v6, pm:Landroid/content/pm/PackageManager;
    const-string v8, "com.android.LGSetupWizard"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    .local v8, setupWizard:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v14, :cond_1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "ATT"

    aput-object v13, v10, v12

    invoke-static {v10}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 415
    const-string v10, "No sim pop up is not displayed because of SetupWizard is enabled"

    invoke-static {v10}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    :try_start_2
    monitor-exit v11

    goto :goto_0

    .line 487
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #setupWizard:Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 420
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    .restart local v8       #setupWizard:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/lge/uicc/IccSwapDialog;->isPopupDisabled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 421
    const-string v10, "fartory mode, donot display no sim pop-up"

    invoke-static {v10}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 422
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 426
    :cond_2
    :try_start_5
    sget-boolean v10, Lcom/lge/uicc/IccSwapDialog;->mSimInserted:Z

    if-eqz v10, :cond_3

    .line 427
    const-string v10, "SIM Removed, donot display no sim pop-up"

    invoke-static {v10}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 428
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 432
    :cond_3
    :try_start_7
    const-string v10, "quiet_mode"

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "true"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 433
    const-string v10, "quiet_mode is true"

    invoke-static {v10}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 434
    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 440
    :cond_4
    :try_start_9
    const-string v10, "com.lge.foldertest"

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v14, :cond_5

    .line 441
    const-string v10, "No sim pop up is not displayed because of foldertest is enabled"

    invoke-static {v10}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 442
    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v2

    .line 445
    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_b
    const-string v10, "IllegalArgumentException (Unknown package) cause of missing com.lge.foldertest"

    invoke-static {v10}, Lcom/lge/uicc/IccSwapDialog;->loge(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 454
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_5
    :try_start_c
    new-instance v5, Lcom/lge/uicc/IccSwapDialog$10;

    invoke-direct {v5, p0}, Lcom/lge/uicc/IccSwapDialog$10;-><init>(Lcom/lge/uicc/IccSwapDialog;)V

    .line 466
    .local v5, listener:Landroid/content/DialogInterface$OnClickListener;
    const-string v10, "VS985 4G"

    sget-object v12, Lcom/lge/uicc/IccSwapDialog;->MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "LG-D850"

    sget-object v12, Lcom/lge/uicc/IccSwapDialog;->MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 467
    :cond_6
    const v10, 0x2030027

    iput v10, p0, Lcom/lge/uicc/IccSwapDialog;->mNoSimDialog:I

    .line 471
    :cond_7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 472
    .local v7, r:Landroid/content/res/Resources;
    const v10, 0x20d0171

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 473
    .local v9, title:Ljava/lang/String;
    const v10, 0x104000a

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, buttonOkTxt:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 477
    .local v3, inflater:Landroid/view/LayoutInflater;
    iget v10, p0, Lcom/lge/uicc/IccSwapDialog;->mNoSimDialog:I

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 480
    .local v4, layout:Landroid/view/View;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    const v13, 0x20a01b5

    invoke-direct {v10, v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 485
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v12, 0x7d3

    invoke-virtual {v10, v12}, Landroid/view/Window;->setType(I)V

    .line 486
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 487
    monitor-exit v11

    goto/16 :goto_0

    .line 449
    .end local v0           #buttonOkTxt:Ljava/lang/String;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v7           #r:Landroid/content/res/Resources;
    .end local v9           #title:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 450
    .local v2, e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "popup is not displayed : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/uicc/IccSwapDialog;->loge(Ljava/lang/String;)V

    .line 451
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0
.end method

.method private onIccSwapEx(Z)V
    .locals 18
    .parameter "isAdded"

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIccSwapEx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/uicc/IccSwapDialog;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 164
    :try_start_0
    new-instance v11, Lcom/lge/uicc/IccSwapDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/lge/uicc/IccSwapDialog$2;-><init>(Lcom/lge/uicc/IccSwapDialog;)V

    .line 180
    .local v11, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v12, Lcom/lge/uicc/IccSwapDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/lge/uicc/IccSwapDialog$3;-><init>(Lcom/lge/uicc/IccSwapDialog;)V

    .line 192
    .local v12, listener_force_reboot:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 193
    .local v14, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v1, 0x104047c

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 196
    .local v16, title:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v1, 0x104047d

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 199
    .local v13, message:Ljava/lang/String;
    :goto_1
    const v1, 0x104047e

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, buttonTxt:Ljava/lang/String;
    const v1, 0x104000a

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, buttonOkTxt:Ljava/lang/String;
    const/high16 v1, 0x104

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, buttonCancelTxt:Ljava/lang/String;
    const/4 v15, 0x0

    .line 213
    .local v15, theme:I
    if-eqz p1, :cond_2

    .line 215
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 220
    .local v10, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 221
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 222
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 224
    new-instance v1, Lcom/lge/uicc/IccSwapDialog$4;

    const-wide/16 v3, 0x7d0

    const-wide/16 v5, 0x3e8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/lge/uicc/IccSwapDialog$4;-><init>(Lcom/lge/uicc/IccSwapDialog;JJ)V

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 398
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :goto_2
    monitor-exit v17

    .line 399
    return-void

    .line 193
    .end local v7           #buttonCancelTxt:Ljava/lang/String;
    .end local v8           #buttonOkTxt:Ljava/lang/String;
    .end local v9           #buttonTxt:Ljava/lang/String;
    .end local v13           #message:Ljava/lang/String;
    .end local v15           #theme:I
    .end local v16           #title:Ljava/lang/String;
    :cond_0
    const v1, 0x1040479

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 196
    .restart local v16       #title:Ljava/lang/String;
    :cond_1
    const v1, 0x104047a

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 235
    .restart local v7       #buttonCancelTxt:Ljava/lang/String;
    .restart local v8       #buttonOkTxt:Ljava/lang/String;
    .restart local v9       #buttonTxt:Ljava/lang/String;
    .restart local v13       #message:Ljava/lang/String;
    .restart local v15       #theme:I
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "LGU"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    const-string v1, "LGU removed"

    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 237
    new-instance v10, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1, v15}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 238
    .local v10, dialog:Landroid/app/ProgressDialog;
    const v1, 0x20d0160

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 239
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v10, v13}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v10, v8, v11}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 243
    invoke-virtual {v10, v7, v11}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 245
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 247
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 248
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 249
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 250
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 251
    const-wide/16 v1, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v10}, Lcom/lge/uicc/IccSwapDialog;->registerRebootTimer(JLandroid/app/ProgressDialog;)V

    goto :goto_2

    .line 398
    .end local v7           #buttonCancelTxt:Ljava/lang/String;
    .end local v8           #buttonOkTxt:Ljava/lang/String;
    .end local v9           #buttonTxt:Ljava/lang/String;
    .end local v10           #dialog:Landroid/app/ProgressDialog;
    .end local v11           #listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v12           #listener_force_reboot:Landroid/content/DialogInterface$OnClickListener;
    .end local v13           #message:Ljava/lang/String;
    .end local v14           #r:Landroid/content/res/Resources;
    .end local v15           #theme:I
    .end local v16           #title:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 253
    .restart local v7       #buttonCancelTxt:Ljava/lang/String;
    .restart local v8       #buttonOkTxt:Ljava/lang/String;
    .restart local v9       #buttonTxt:Ljava/lang/String;
    .restart local v11       #listener:Landroid/content/DialogInterface$OnClickListener;
    .restart local v12       #listener_force_reboot:Landroid/content/DialogInterface$OnClickListener;
    .restart local v13       #message:Ljava/lang/String;
    .restart local v14       #r:Landroid/content/res/Resources;
    .restart local v15       #theme:I
    .restart local v16       #title:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SKT"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    const-string v1, "SKT removed"

    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 255
    const v1, 0x20d016d

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 256
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 261
    .local v10, dialog:Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 262
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 263
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 264
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 265
    new-instance v1, Lcom/lge/uicc/IccSwapDialog$5;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x3e8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/lge/uicc/IccSwapDialog$5;-><init>(Lcom/lge/uicc/IccSwapDialog;JJ)V

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_2

    .line 275
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "KT"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 276
    const-string v1, "KT removed"

    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 277
    const v1, 0x20d016c

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 278
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 283
    .restart local v10       #dialog:Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 284
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 285
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 286
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 288
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :cond_5
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DCM"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 289
    const-string v1, "DCM removed"

    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 290
    const v1, 0x20d016e

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 291
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 295
    .restart local v10       #dialog:Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 296
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 297
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 299
    new-instance v1, Lcom/lge/uicc/IccSwapDialog$6;

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0x3e8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/lge/uicc/IccSwapDialog$6;-><init>(Lcom/lge/uicc/IccSwapDialog;JJ)V

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_2

    .line 309
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :cond_6
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "KDDI"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 310
    const-string v1, "KDDI removed"

    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 311
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 315
    .restart local v10       #dialog:Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 316
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 317
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 319
    new-instance v1, Lcom/lge/uicc/IccSwapDialog$7;

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0x3e8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/lge/uicc/IccSwapDialog$7;-><init>(Lcom/lge/uicc/IccSwapDialog;JJ)V

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_2

    .line 330
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :cond_7
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SPR"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 332
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 333
    const-string v13, "The mobile 4G network will be unavailable until you restart with a valid SIM card inserted."

    .line 334
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 346
    .restart local v10       #dialog:Landroid/app/AlertDialog;
    :goto_3
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 347
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 348
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 340
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :cond_8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .restart local v10       #dialog:Landroid/app/AlertDialog;
    goto :goto_3

    .line 350
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :cond_9
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "VZW"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ATT"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 351
    const v1, 0x20d0168

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 352
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    const v3, 0x20a01cb

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x20d016b

    new-instance v3, Lcom/lge/uicc/IccSwapDialog$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lge/uicc/IccSwapDialog$9;-><init>(Lcom/lge/uicc/IccSwapDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x20d016a

    new-instance v3, Lcom/lge/uicc/IccSwapDialog$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lge/uicc/IccSwapDialog$8;-><init>(Lcom/lge/uicc/IccSwapDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 376
    .restart local v10       #dialog:Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 377
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 378
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 379
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 383
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :cond_a
    new-instance v10, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1, v15}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 384
    .local v10, dialog:Landroid/app/ProgressDialog;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {v10, v13}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 387
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 388
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 389
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 390
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 391
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 392
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 393
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 394
    const-wide/16 v1, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v10}, Lcom/lge/uicc/IccSwapDialog;->registerRebootTimer(JLandroid/app/ProgressDialog;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method private registerRebootTimer(JLandroid/app/ProgressDialog;)V
    .locals 3
    .parameter "delay"
    .parameter "dialog"

    .prologue
    .line 143
    move-object v0, p3

    .line 144
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/lge/uicc/IccSwapDialog;->mTimeoutTimer:Ljava/util/Timer;

    .line 145
    iget-object v1, p0, Lcom/lge/uicc/IccSwapDialog;->mTimeoutTimer:Ljava/util/Timer;

    new-instance v2, Lcom/lge/uicc/IccSwapDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/uicc/IccSwapDialog$1;-><init>(Lcom/lge/uicc/IccSwapDialog;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 150
    return-void
.end method

.method protected static setup()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/lge/uicc/IccSwapDialog;->mInstance:Lcom/lge/uicc/IccSwapDialog;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/lge/uicc/IccSwapDialog;

    invoke-direct {v0}, Lcom/lge/uicc/IccSwapDialog;-><init>()V

    sput-object v0, Lcom/lge/uicc/IccSwapDialog;->mInstance:Lcom/lge/uicc/IccSwapDialog;

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 88
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/IccSwapDialog;->loge(Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    const-string v4, "card_state"

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, newState:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/uicc/IccSwapDialog;->mCardState:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_CARD_STATE_CHANGED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 95
    const-string v4, "radio_state"

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "TMO"

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "US"

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->targetCountry([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 96
    :cond_1
    const-string v4, "radio off or unavailable"

    invoke-static {v4}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v4, p0, Lcom/lge/uicc/IccSwapDialog;->mCardState:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 101
    iget-object v4, p0, Lcom/lge/uicc/IccSwapDialog;->mCardState:Ljava/lang/String;

    const-string v5, "SIM_DETECT_INSERTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SIM_DETECT_INSERTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    invoke-direct {p0, v6}, Lcom/lge/uicc/IccSwapDialog;->onIccSwapEx(Z)V

    .line 117
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/lge/uicc/IccSwapDialog;->mCardState:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_4
    iget-object v4, p0, Lcom/lge/uicc/IccSwapDialog;->mCardState:Ljava/lang/String;

    const-string v5, "REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "REMOVED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 104
    invoke-direct {p0, v7}, Lcom/lge/uicc/IccSwapDialog;->onIccSwapEx(Z)V

    goto :goto_1

    .line 107
    :cond_5
    iget-object v4, p0, Lcom/lge/uicc/IccSwapDialog;->mCardState:Ljava/lang/String;

    const-string v5, "ABSENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "ABSENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 108
    invoke-direct {p0}, Lcom/lge/uicc/IccSwapDialog;->onIccAbsentEx()V

    goto :goto_1

    .line 112
    :cond_6
    iget-object v4, p0, Lcom/lge/uicc/IccSwapDialog;->mCardState:Ljava/lang/String;

    const-string v5, "PRESENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "PRESENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 113
    sput-boolean v6, Lcom/lge/uicc/IccSwapDialog;->mSimInserted:Z

    goto :goto_1

    .line 121
    .end local v1           #newState:Ljava/lang/String;
    :pswitch_1
    const-string v4, "EVENT_PHONE_REBOOT_TIMER"

    invoke-static {v4}, Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 122
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ProgressDialog;

    .line 124
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v3

    .line 125
    .local v3, progress:I
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getMax()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 127
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 128
    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v4, v5, v0}, Lcom/lge/uicc/IccSwapDialog;->registerRebootTimer(JLandroid/app/ProgressDialog;)V

    goto/16 :goto_0

    .line 130
    :cond_7
    iget-object v4, p0, Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 131
    .local v2, pm:Landroid/os/PowerManager;
    const-string v4, "Phone reboot."

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
