.class Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;
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
    name = "MyLightSensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 696
    monitor-enter p0

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v1, "disable light sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 700
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$1900()Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2400(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 706
    :cond_0
    :goto_0
    monitor-exit p0

    .line 707
    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mRunnableCheckLight:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2200(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 706
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
    .line 685
    monitor-enter p0

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$2900()Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v1, "enable light sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mLight:I
    invoke-static {v0, v1}, Lcom/android/server/power/KnockOnPowerController;->access$2702(Lcom/android/server/power/KnockOnPowerController;I)I

    .line 689
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$2900()Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 692
    :cond_0
    monitor-exit p0

    .line 693
    return-void

    .line 692
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
    .line 666
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 670
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v3

    .line 671
    .local v0, lux:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    move v1, v2

    .line 672
    .local v1, notCovered:Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLight:I
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$2700(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v5

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mPreLight:I
    invoke-static {v4, v5}, Lcom/android/server/power/KnockOnPowerController;->access$2802(Lcom/android/server/power/KnockOnPowerController;I)I

    .line 673
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    if-eqz v1, :cond_3

    move v4, v2

    :goto_1
    #setter for: Lcom/android/server/power/KnockOnPowerController;->mLight:I
    invoke-static {v5, v4}, Lcom/android/server/power/KnockOnPowerController;->access$2702(Lcom/android/server/power/KnockOnPowerController;I)I

    .line 674
    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mPreLight:I
    invoke-static {v4}, Lcom/android/server/power/KnockOnPowerController;->access$2800(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLight:I
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$2700(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v5

    xor-int/2addr v4, v5

    if-ne v4, v2, :cond_0

    .line 676
    sget-object v2, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Light onSensorChanged : mLight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLight:I
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$2700(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(0:DARK, 1:LIGHT)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$1900()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$1300(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 680
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyLightSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->setLightSensorEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/server/power/KnockOnPowerController;->access$1500(Lcom/android/server/power/KnockOnPowerController;Z)V

    .line 682
    :cond_1
    return-void

    .end local v1           #notCovered:Z
    :cond_2
    move v1, v3

    .line 671
    goto :goto_0

    .restart local v1       #notCovered:Z
    :cond_3
    move v4, v3

    .line 673
    goto :goto_1
.end method
