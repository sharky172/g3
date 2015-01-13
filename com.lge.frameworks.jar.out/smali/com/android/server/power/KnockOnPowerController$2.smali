.class Lcom/android/server/power/KnockOnPowerController$2;
.super Landroid/content/BroadcastReceiver;
.source "KnockOnPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockOnPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$2;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$2;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 376
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$2;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
