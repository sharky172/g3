.class final Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;
.super Landroid/database/ContentObserver;
.source "LGPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LGPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LGPowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LGPowerManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    .line 493
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 494
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$LGSettingsObserver;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #calls: Lcom/android/server/power/LGPowerManagerService;->LGHandleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/android/server/power/LGPowerManagerService;->access$500(Lcom/android/server/power/LGPowerManagerService;)V

    .line 500
    monitor-exit v1

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
