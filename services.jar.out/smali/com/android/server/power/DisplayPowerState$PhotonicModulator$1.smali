.class Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 376
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    .line 377
    .local v2, mOriginalPriority:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 383
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1300(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 384
    :try_start_0
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1400(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v3

    .line 385
    .local v3, on:Z
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1500(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v8

    if-eq v3, v8, :cond_1

    move v4, v5

    .line 386
    .local v4, onChanged:Z
    :goto_1
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1600(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v0

    .line 387
    .local v0, backlight:I
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1700(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v8

    if-eq v0, v8, :cond_2

    move v1, v5

    .line 388
    .local v1, backlightChanged:Z
    :goto_2
    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 389
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z
    invoke-static {v5, v6}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1802(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 390
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 391
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v5, v5, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    #calls: Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerState;->access$2100(Lcom/android/server/power/DisplayPowerState;)V

    .line 414
    return-void

    .end local v0           #backlight:I
    .end local v1           #backlightChanged:Z
    .end local v4           #onChanged:Z
    :cond_1
    move v4, v6

    .line 385
    goto :goto_1

    .restart local v0       #backlight:I
    .restart local v4       #onChanged:Z
    :cond_2
    move v1, v6

    .line 387
    goto :goto_2

    .line 393
    .restart local v1       #backlightChanged:Z
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v8, v3}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1502(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 394
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v8, v0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1702(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I

    .line 395
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$1200()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 398
    const-string v7, "DisplayPowerState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating screen state: on="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", backlight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 402
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    #getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$1900(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/power/DisplayBlanker;->unblankAllDisplays()V

    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->setScreenColor()V

    .line 404
    :cond_5
    if-eqz v1, :cond_6

    .line 405
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    #getter for: Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$2000(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 407
    :cond_6
    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    .line 408
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    #getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$1900(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/power/DisplayBlanker;->blankAllDisplays()V

    goto/16 :goto_0

    .line 395
    .end local v0           #backlight:I
    .end local v1           #backlightChanged:Z
    .end local v3           #on:Z
    .end local v4           #onChanged:Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
