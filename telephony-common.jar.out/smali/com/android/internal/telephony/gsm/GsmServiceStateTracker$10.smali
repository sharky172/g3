.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 5562
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5565
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.intent.action.SIM_UNLOCKED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5567
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->isUsimPersoLocked(Landroid/content/Context;)Z

    move-result v0

    .line 5568
    .local v0, locked:Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM_UNLOCKED intent received! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", locked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5569
    if-eqz v0, :cond_2

    .line 5570
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isQCRIL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5571
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    const v3, 0x60021

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 5574
    :cond_0
    sput-boolean v6, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    .line 5575
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5577
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 5579
    .local v1, skipRestoringSelection:Z
    if-nez v1, :cond_1

    .line 5581
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 5583
    :cond_1
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1002(Z)Z

    .line 5586
    .end local v1           #skipRestoringSelection:Z
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5587
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->delayedRejectPopupActivation(Z)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)V

    .line 5588
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allow Reject Cause processing after 1sec :: persoLockChecked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5592
    .end local v0           #locked:Z
    :cond_3
    return-void
.end method
