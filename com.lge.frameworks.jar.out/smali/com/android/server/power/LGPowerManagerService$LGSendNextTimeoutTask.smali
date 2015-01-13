.class Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;
.super Ljava/lang/Object;
.source "LGPowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LGPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGSendNextTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LGPowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/LGPowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;->this$0:Lcom/android/server/power/LGPowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/LGPowerManagerService;Lcom/android/server/power/LGPowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;-><init>(Lcom/android/server/power/LGPowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #getter for: Lcom/android/server/power/LGPowerManagerService;->mWiseScreenEnable:I
    invoke-static {v1}, Lcom/android/server/power/LGPowerManagerService;->access$600(Lcom/android/server/power/LGPowerManagerService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.keepscreenon.KeepScreenOnService.getNextTime"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "nextTime"

    iget-object v2, p0, Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #getter for: Lcom/android/server/power/LGPowerManagerService;->mNextTimeout:J
    invoke-static {v2}, Lcom/android/server/power/LGPowerManagerService;->access$700(Lcom/android/server/power/LGPowerManagerService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 535
    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService$LGSendNextTimeoutTask;->this$0:Lcom/android/server/power/LGPowerManagerService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 536
    const-string v1, "LGPowerManagerService"

    const-string v2, "[WiseScreen] GET_NEXT_TIMEOUT Broadcast..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
