.class public Lcom/kddi/pdg/PdgAccessController;
.super Landroid/content/BroadcastReceiver;
.source "PdgAccessController.java"


# static fields
.field private static final AU_MARKET_PACKAGE:Ljava/lang/String; = "com.kddi.market"

.field private static final DATA_TYPE_UNKNOWN:I = -0x1

.field private static final DIALOG_PACKAGE_NAME:Ljava/lang/String; = "com.kddi.android.pdg"

.field private static final DIALOG_TIMOUT_SECOND:J = 0xfL


# instance fields
.field private mAccessTime:J

.field private mContext:Landroid/content/Context;

.field private mDataType:I

.field private mDefaultPrivacy:Z

.field private mHandler:Landroid/os/Handler;

.field private mPackageName:Ljava/lang/String;

.field private mPrivacyEnable:Z

.field private mQueue:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcom/kddi/pdg/PdgAccessController;->mQueue:Ljava/util/concurrent/SynchronousQueue;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdgAccessController( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    .line 76
    const-string v0, "PdgAccessController() end"

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private getDataType(I)I
    .locals 3
    .parameter "requestType"

    .prologue
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int getDataType( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 237
    const/4 v0, -0x1

    .line 240
    .local v0, result:I
    packed-switch p1, :pswitch_data_0

    .line 250
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int getDataType() end / return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 251
    return v0

    .line 244
    :pswitch_0
    move v0, p1

    .line 245
    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultPrivacy()Z
    .locals 3

    .prologue
    .line 279
    const-string v1, "boolean getDefaultPrivacy() start"

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kddi/pdg/PdgSettingManager;->getBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 281
    .local v0, result:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boolean getDefaultPrivacy() end / return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 283
    return v0
.end method

.method private getPrivacyEnable()Z
    .locals 3

    .prologue
    .line 263
    const-string v1, "boolean getPrivacyEnable() start"

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kddi/pdg/PdgSettingManager;->getBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 265
    .local v0, result:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boolean getPrivacyEnable() end / return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 267
    return v0
.end method

.method private getSelectedPrivacy(Ljava/lang/String;)Z
    .locals 5
    .parameter "selected"

    .prologue
    const/4 v2, 0x1

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boolean getSelectedPrivacy( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 299
    iget-boolean v1, p0, Lcom/kddi/pdg/PdgAccessController;->mPrivacyEnable:Z

    .line 301
    .local v1, privacyEnable:Z
    iget-boolean v0, p0, Lcom/kddi/pdg/PdgAccessController;->mDefaultPrivacy:Z

    .line 304
    .local v0, defaultPrivacy:Z
    if-nez v1, :cond_0

    .line 305
    const-string v3, "boolean getSelectedPrivacy() end / return = true"

    invoke-static {v3}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    move v0, v2

    .line 333
    .end local v0           #defaultPrivacy:Z
    :goto_0
    return v0

    .line 310
    .restart local v0       #defaultPrivacy:Z
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean getSelectedPrivacy() end / return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_2
    const-string v3, "permit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    const-string v3, "boolean getSelectedPrivacy() end / return = true"

    invoke-static {v3}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    move v0, v2

    .line 317
    goto :goto_0

    .line 318
    :cond_3
    const-string v2, "reject"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 320
    const-string v2, "boolean getSelectedPrivacy() end / return = false"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    :cond_4
    const-string v2, "timeout"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean getSelectedPrivacy() end / return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_5
    const-string v2, "quit"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean getSelectedPrivacy() end / return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean getSelectedPrivacy() end / return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isCallActive(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 472
    const-string v3, "void isCallActive() start"

    invoke-static {v3}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 473
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 474
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 475
    .local v0, state:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    .line 477
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "void isCallActive() end / true state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 481
    :goto_0
    return v2

    .line 480
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "void isCallActive() end / false state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 481
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendShowDialog(Landroid/content/Context;Ljava/lang/String;IJ)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "dataTyepe"
    .parameter "accessTime"

    .prologue
    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean sendShowDialog( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 355
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.kddi.android.pdg.intent.action.SHOW_PDG_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v2, "com.kddi.android.pdg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v2, "packagename"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v2, "datatype"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v2, "accesstime"

    invoke-virtual {v1, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 364
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    const-string v2, "boolean sendShowDialog() end / return = true"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 375
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 365
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 371
    const-string v2, "boolean sendShowDialog() end / return = false"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 372
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendShowNotification(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "dataTyepe"
    .parameter "accessTime"

    .prologue
    .line 449
    const-string v1, "void sendShowNotification() start"

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 451
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 452
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.kddi.android.pdg.intent.action.SHOW_PDG_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v1, "com.kddi.android.pdg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v1, "datatype"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    const-string v1, "accesstime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 458
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    const-string v1, "void sendShowNotification() end"

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method private sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "dataTyepe"
    .parameter "accessTime"

    .prologue
    .line 423
    const-string v1, "void sendUpdatePdgStatus() start"

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 425
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.kddi.android.pdg.intent.action.UPDATE_PDG_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v1, "com.kddi.android.pdg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v1, "datatype"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    const-string v1, "accesstime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 432
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    const-string v1, "void sendUpdatePdgStatus() end"

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method private waitDialog()Ljava/lang/String;
    .locals 8

    .prologue
    .line 390
    const-string v4, "String waitDialog() start"

    invoke-static {v4}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 391
    const-string v2, "unknown"

    .line 394
    .local v2, result:Ljava/lang/String;
    :try_start_0
    const-string v4, "Queue wait start "

    invoke-static {v4}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 395
    iget-object v4, p0, Lcom/kddi/pdg/PdgAccessController;->mQueue:Ljava/util/concurrent/SynchronousQueue;

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/SynchronousQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Queue wait end / result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String waitDialog() end / return = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    move-object v3, v2

    .line 407
    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 397
    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 402
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kddi/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String waitDialog() end / exception return = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    move-object v3, v2

    .line 404
    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public final getPrivacy(I)Z
    .locals 19
    .parameter "requestType"

    .prologue
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean getPrivacy( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 90
    const/16 v17, 0x1

    .line 93
    .local v17, result:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 94
    const-string v2, "boolean getPrivacy() end / return = true / context = null"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 95
    const/4 v11, 0x1

    .line 221
    :goto_0
    return v11

    .line 100
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const-string v2, "boolean getPrivacy() end / return = true / package name empty"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 102
    const/4 v11, 0x1

    goto :goto_0

    .line 106
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 107
    .local v15, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 109
    .local v10, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 115
    if-eqz v10, :cond_2

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 116
    :cond_2
    const-string v2, "boolean getPrivacy() end / return = true / ai = null or flag system"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 117
    const/4 v11, 0x1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v12

    .line 111
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "boolean getPrivacy() end / return = true / NameNotFoundException"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 112
    const/4 v11, 0x1

    goto :goto_0

    .line 121
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v2, "com.kddi.market"

    iget-object v3, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    const-string v2, "boolean getPrivacy() end / return = true / au Market app"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 123
    const/4 v11, 0x1

    goto :goto_0

    .line 127
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/kddi/pdg/PdgAccessController;->getDataType(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kddi/pdg/PdgAccessController;->mDataType:I

    .line 129
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kddi/pdg/PdgAccessController;->mDataType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 130
    const-string v2, "boolean getPrivacy() end / return = true / data tyep unknown"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 131
    const/4 v11, 0x1

    goto :goto_0

    .line 135
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kddi/pdg/PdgWhiteListManager;->contain(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 136
    const-string v2, "boolean getPrivacy() end / return = true / white list match"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 137
    const/4 v11, 0x1

    goto :goto_0

    .line 141
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 142
    .local v8, accessTime:J
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/kddi/pdg/PdgAccessController;->mAccessTime:J

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/kddi/pdg/PdgAccessController;->getDefaultPrivacy()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kddi/pdg/PdgAccessController;->mDefaultPrivacy:Z

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/kddi/pdg/PdgAccessController;->getPrivacyEnable()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kddi/pdg/PdgAccessController;->mPrivacyEnable:Z

    .line 148
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kddi/pdg/PdgAccessController;->mPrivacyEnable:Z

    if-nez v2, :cond_7

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kddi/pdg/PdgAccessController;->mDataType:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/kddi/pdg/PdgAccessController;->mAccessTime:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kddi/pdg/PdgAccessController;->sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 151
    const-string v2, "boolean getPrivacy() end / return = true / privacy disable"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 152
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 156
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kddi/pdg/PdgAccessController;->mDataType:I

    invoke-static {v2, v3, v4}, Lcom/kddi/pdg/PdgStatusManager;->getPrivacyData(Landroid/content/Context;Ljava/lang/String;I)Lcom/kddi/pdg/PdgStatusManager$PrivacyData;

    move-result-object v16

    .line 158
    .local v16, privacyData:Lcom/kddi/pdg/PdgStatusManager$PrivacyData;
    if-eqz v16, :cond_b

    .line 159
    invoke-virtual/range {v16 .. v16}, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->getSettingState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->getSettingState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 161
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->getAuthState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kddi/pdg/PdgAccessController;->mDataType:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/kddi/pdg/PdgAccessController;->mAccessTime:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kddi/pdg/PdgAccessController;->sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 164
    const-string v2, "boolean getPrivacy() end / return = true / state configured"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 165
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 166
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->getAuthState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kddi/pdg/PdgAccessController;->mDataType:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/kddi/pdg/PdgAccessController;->mAccessTime:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kddi/pdg/PdgAccessController;->sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 169
    const-string v2, "boolean getPrivacy() end / return = false / state configured"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 170
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 172
    :cond_a
    const-string v2, "pdg settingState error !!!"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 174
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 180
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kddi/pdg/PdgAccessController;->isCallActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 181
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kddi/pdg/PdgAccessController;->mDefaultPrivacy:Z

    .line 183
    .local v11, defaultPrivacy:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kddi/pdg/PdgAccessController;->mDataType:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/kddi/pdg/PdgAccessController;->mAccessTime:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kddi/pdg/PdgAccessController;->sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kddi/pdg/PdgAccessController;->mDataType:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/kddi/pdg/PdgAccessController;->mAccessTime:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kddi/pdg/PdgAccessController;->sendShowNotification(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean getPrivacy() end / calll active / defaultPrivacy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    .end local v11           #defaultPrivacy:Z
    :cond_c
    new-instance v14, Landroid/os/HandlerThread;

    const-string v2, "PdgThread"

    invoke-direct {v14, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 192
    .local v14, mHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 193
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kddi/pdg/PdgAccessController;->mHandler:Landroid/os/Handler;

    .line 196
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v13, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.kddi.android.pdg.intent.action.SEND_PDG_RESULT"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kddi/pdg/PdgAccessController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v13, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kddi/pdg/PdgAccessController;->mDataType:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/kddi/pdg/PdgAccessController;->mAccessTime:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kddi/pdg/PdgAccessController;->sendShowDialog(Landroid/content/Context;Ljava/lang/String;IJ)Z

    move-result v2

    if-nez v2, :cond_d

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    const-string v2, "boolean getPrivacy() end / return = true / dialog show failed "

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 207
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 211
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/kddi/pdg/PdgAccessController;->waitDialog()Ljava/lang/String;

    move-result-object v18

    .line 214
    .local v18, temp:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/kddi/pdg/PdgAccessController;->getSelectedPrivacy(Ljava/lang/String;)Z

    move-result v17

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kddi/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean getPrivacy() end / return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    move/from16 v11, v17

    .line 221
    goto/16 :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "void onReceive( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 496
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 497
    :cond_0
    const-string v3, "void onReceive() end / argument error"

    invoke-static {v3}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 533
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.kddi.android.pdg.intent.action.SEND_PDG_RESULT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 503
    const-string v3, "packagename"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/kddi/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 506
    :cond_2
    const-string v3, "void onReceive() end / package name mismatch"

    invoke-static {v3}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_3
    const-string v3, "datatype"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 513
    .local v0, dataType:I
    iget v3, p0, Lcom/kddi/pdg/PdgAccessController;->mDataType:I

    if-eq v0, v3, :cond_4

    .line 514
    const-string v3, "void onReceive() end / data type mismatch"

    invoke-static {v3}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_4
    const-string v3, "result"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 523
    :cond_5
    const-string v2, "quit"

    .line 527
    :cond_6
    iget-object v3, p0, Lcom/kddi/pdg/PdgAccessController;->mQueue:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offer() is false return / result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    .end local v0           #dataType:I
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #result:Ljava/lang/String;
    :cond_7
    const-string v3, "void onReceive() end / return"

    invoke-static {v3}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
