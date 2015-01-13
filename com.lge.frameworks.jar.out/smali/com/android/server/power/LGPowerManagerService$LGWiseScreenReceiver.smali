.class final Lcom/android/server/power/LGPowerManagerService$LGWiseScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LGPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGWiseScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LGPowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/LGPowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/server/power/LGPowerManagerService$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/LGPowerManagerService;Lcom/android/server/power/LGPowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/android/server/power/LGPowerManagerService$LGWiseScreenReceiver;-><init>(Lcom/android/server/power/LGPowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 544
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.keepscreenon.KeepScreenOnService.requestGetNextTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #getter for: Lcom/android/server/power/LGPowerManagerService;->mSupportWiseScreen:Z
    invoke-static {v0}, Lcom/android/server/power/LGPowerManagerService;->access$800(Lcom/android/server/power/LGPowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "LGPowerManagerService"

    const-string v1, "[WiseScreen] REQUEST_NEXT_TIMEOUT received..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #getter for: Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/LGPowerManagerService;->access$1000(Lcom/android/server/power/LGPowerManagerService;)Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #getter for: Lcom/android/server/power/LGPowerManagerService;->mSendNextTimeoutTask:Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;
    invoke-static {v1}, Lcom/android/server/power/LGPowerManagerService;->access$900(Lcom/android/server/power/LGPowerManagerService;)Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 548
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #getter for: Lcom/android/server/power/LGPowerManagerService;->mLGPowerHandler:Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/LGPowerManagerService;->access$1000(Lcom/android/server/power/LGPowerManagerService;)Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #getter for: Lcom/android/server/power/LGPowerManagerService;->mSendNextTimeoutTask:Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;
    invoke-static {v1}, Lcom/android/server/power/LGPowerManagerService;->access$900(Lcom/android/server/power/LGPowerManagerService;)Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    :cond_0
    return-void
.end method
