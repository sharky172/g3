.class Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;
.super Ljava/lang/Object;
.source "KnockOnPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockOnPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyProximitySensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 628
    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v1, "disable proximity sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 632
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$1900()Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2400(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 638
    :cond_0
    :goto_0
    monitor-exit p0

    .line 639
    return-void

    .line 634
    :cond_1
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mRunnableCheckLight:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2200(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 617
    monitor-enter p0

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2600(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v1, "enable proximity sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const/4 v1, -0x1

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mProximity:I
    invoke-static {v0, v1}, Lcom/android/server/power/KnockOnPowerController;->access$1802(Lcom/android/server/power/KnockOnPowerController;I)I

    .line 621
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2600(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 624
    :cond_0
    monitor-exit p0

    .line 625
    return-void

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 587
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 591
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const v5, 0x1fa2649

    if-ne v4, v5, :cond_4

    .line 592
    :cond_0
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v3

    .line 593
    .local v0, distance:F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    move v1, v2

    .line 594
    .local v1, positive:Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    if-eqz v1, :cond_6

    move v4, v2

    :goto_1
    #setter for: Lcom/android/server/power/KnockOnPowerController;->mProximity:I
    invoke-static {v5, v4}, Lcom/android/server/power/KnockOnPowerController;->access$1802(Lcom/android/server/power/KnockOnPowerController;I)I

    .line 595
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proximity onSensorChanged : proximity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mProximity:I
    invoke-static {v6}, Lcom/android/server/power/KnockOnPowerController;->access$1800(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$1900()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 597
    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/android/server/power/KnockOnPowerController;->access$1100(Lcom/android/server/power/KnockOnPowerController;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z
    invoke-static {v4}, Lcom/android/server/power/KnockOnPowerController;->access$1300(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 598
    sget-boolean v4, Lcom/android/server/power/KnockOnPowerController;->NOTUSER_DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proximity onSensorChanged : positive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_1
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 600
    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$2000(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mKnockCodeSetting:Z
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$2100(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    #calls: Lcom/android/server/power/KnockOnPowerController;->setLightSensorEnabled(Z)V
    invoke-static {v4, v3}, Lcom/android/server/power/KnockOnPowerController;->access$1500(Lcom/android/server/power/KnockOnPowerController;Z)V

    .line 601
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mRunnableCheckLight:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/KnockOnPowerController;->access$2200(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 614
    .end local v0           #distance:F
    .end local v1           #positive:Z
    :cond_4
    :goto_2
    return-void

    .restart local v0       #distance:F
    :cond_5
    move v1, v3

    .line 593
    goto/16 :goto_0

    .restart local v1       #positive:Z
    :cond_6
    move v4, v3

    .line 594
    goto/16 :goto_1

    .line 603
    :cond_7
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$2300(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 604
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$2300(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->updateProximitySensorChangedLocked(Z)V

    goto :goto_2

    .line 607
    :cond_8
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$1300(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 608
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->setProximitySensorEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/server/power/KnockOnPowerController;->access$1600(Lcom/android/server/power/KnockOnPowerController;Z)V

    goto :goto_2

    .line 611
    :cond_9
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/KnockOnPowerController$MyProximitySensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/KnockOnPowerController;->access$2400(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
