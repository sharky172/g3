.class Lcom/android/server/power/LGPowerManagerService$3;
.super Ljava/lang/Object;
.source "LGPowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LGPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LGPowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/LGPowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/server/power/LGPowerManagerService$3;->this$0:Lcom/android/server/power/LGPowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/LGPowerManagerService$3;->this$0:Lcom/android/server/power/LGPowerManagerService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LGPowerManagerService$3;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #getter for: Lcom/android/server/power/LGPowerManagerService;->mEarlyScreenOff:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/power/LGPowerManagerService;->access$1600(Lcom/android/server/power/LGPowerManagerService;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :goto_0
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LGPowerManagerService"

    const-string v2, "[updateScreenState] Exception to send early screen off intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
