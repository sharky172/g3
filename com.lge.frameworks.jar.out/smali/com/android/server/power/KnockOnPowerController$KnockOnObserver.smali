.class Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;
.super Landroid/os/UEventObserver;
.source "KnockOnPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockOnPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KnockOnObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 2040
    return-void
.end method

.method private updateLocked(Ljava/lang/String;)V
    .locals 3
    .parameter "uev"

    .prologue
    .line 2056
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2057
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2058
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 2044
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$3200(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2045
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mInit:Z
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$800(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2046
    const-string v1, "TOUCH_GESTURE_WAKEUP"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2047
    .local v0, uevalue:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;->updateLocked(Ljava/lang/String;)V

    .line 2049
    .end local v0           #uevalue:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mInit:Z
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$800(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2050
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$KnockOnObserver;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mInit:Z
    invoke-static {v1, v3}, Lcom/android/server/power/KnockOnPowerController;->access$802(Lcom/android/server/power/KnockOnPowerController;Z)Z

    .line 2052
    :cond_1
    monitor-exit v2

    .line 2053
    return-void

    .line 2052
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
