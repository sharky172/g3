.class Lcom/android/server/power/LGPowerManagerService$1;
.super Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;
.source "LGPowerManagerService.java"


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
    .line 617
    iput-object p1, p0, Lcom/android/server/power/LGPowerManagerService$1;->this$0:Lcom/android/server/power/LGPowerManagerService;

    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3
    .parameter "coverState"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$1;->this$0:Lcom/android/server/power/LGPowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    packed-switch p1, :pswitch_data_0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$1;->this$0:Lcom/android/server/power/LGPowerManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z
    invoke-static {v0, v2}, Lcom/android/server/power/LGPowerManagerService;->access$1102(Lcom/android/server/power/LGPowerManagerService;Z)Z

    .line 630
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$1;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #calls: Lcom/android/server/power/LGPowerManagerService;->updateCoverStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/LGPowerManagerService;->access$1200(Lcom/android/server/power/LGPowerManagerService;)V

    .line 631
    monitor-exit v1

    .line 632
    return-void

    .line 623
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$1;->this$0:Lcom/android/server/power/LGPowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/power/LGPowerManagerService;->mCoverOpened:Z
    invoke-static {v0, v2}, Lcom/android/server/power/LGPowerManagerService;->access$1102(Lcom/android/server/power/LGPowerManagerService;Z)Z

    goto :goto_0

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTypeChanged(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$1;->this$0:Lcom/android/server/power/LGPowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$1;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #getter for: Lcom/android/server/power/LGPowerManagerService;->mCoverType:I
    invoke-static {v0}, Lcom/android/server/power/LGPowerManagerService;->access$1300(Lcom/android/server/power/LGPowerManagerService;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$1;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #setter for: Lcom/android/server/power/LGPowerManagerService;->mCoverType:I
    invoke-static {v0, p1}, Lcom/android/server/power/LGPowerManagerService;->access$1302(Lcom/android/server/power/LGPowerManagerService;I)I

    .line 639
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$1;->this$0:Lcom/android/server/power/LGPowerManagerService;

    #calls: Lcom/android/server/power/LGPowerManagerService;->updateCoverStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/LGPowerManagerService;->access$1200(Lcom/android/server/power/LGPowerManagerService;)V

    .line 641
    :cond_0
    monitor-exit v1

    .line 642
    return-void

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
