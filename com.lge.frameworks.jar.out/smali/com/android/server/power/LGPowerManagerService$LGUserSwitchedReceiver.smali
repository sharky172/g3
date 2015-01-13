.class final Lcom/android/server/power/LGPowerManagerService$LGUserSwitchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LGPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGUserSwitchedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LGPowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/LGPowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/server/power/LGPowerManagerService$LGUserSwitchedReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/LGPowerManagerService;Lcom/android/server/power/LGPowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/android/server/power/LGPowerManagerService$LGUserSwitchedReceiver;-><init>(Lcom/android/server/power/LGPowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$LGUserSwitchedReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$LGUserSwitchedReceiver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #calls: Lcom/android/server/power/LGPowerManagerService;->LGHandleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/android/server/power/LGPowerManagerService;->access$500(Lcom/android/server/power/LGPowerManagerService;)V

    .line 559
    monitor-exit v1

    .line 560
    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
