.class final Lcom/android/server/power/LGPowerManagerService$HDMIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LGPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HDMIReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LGPowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/LGPowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/server/power/LGPowerManagerService$HDMIReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/LGPowerManagerService;Lcom/android/server/power/LGPowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/android/server/power/LGPowerManagerService$HDMIReceiver;-><init>(Lcom/android/server/power/LGPowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$HDMIReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 695
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$HDMIReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/server/power/LGPowerManagerService;->mHDMIConnected:Z
    invoke-static {v0, v2}, Lcom/android/server/power/LGPowerManagerService;->access$1402(Lcom/android/server/power/LGPowerManagerService;Z)Z

    .line 697
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$HDMIReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v0, :cond_0

    .line 698
    const-string v0, "LGPowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDMI connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LGPowerManagerService$HDMIReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #getter for: Lcom/android/server/power/LGPowerManagerService;->mHDMIConnected:Z
    invoke-static {v3}, Lcom/android/server/power/LGPowerManagerService;->access$1400(Lcom/android/server/power/LGPowerManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$HDMIReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/LGPowerManagerService;->wakeUp(J)V

    .line 702
    :cond_0
    monitor-exit v1

    .line 703
    return-void

    .line 702
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
