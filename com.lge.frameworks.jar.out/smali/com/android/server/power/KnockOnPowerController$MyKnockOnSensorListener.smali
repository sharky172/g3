.class Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;
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
    name = "MyKnockOnSensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 554
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 558
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_2

    .line 559
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mInit:Z
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$800(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mTimeToSleep:J
    invoke-static {v3}, Lcom/android/server/power/KnockOnPowerController;->access$1000(Lcom/android/server/power/KnockOnPowerController;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mTimeAfterSleep:J
    invoke-static {v0, v1, v2}, Lcom/android/server/power/KnockOnPowerController;->access$902(Lcom/android/server/power/KnockOnPowerController;J)J

    .line 562
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnockOnonSensorChanged: isScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$1100(Lcom/android/server/power/KnockOnPowerController;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TimeAfterSleep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mTimeAfterSleep:J
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$900(Lcom/android/server/power/KnockOnPowerController;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$1100(Lcom/android/server/power/KnockOnPowerController;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mTimeAfterSleep:J
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$900(Lcom/android/server/power/KnockOnPowerController;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->sendIntent(IZ)V
    invoke-static {v0, v5, v5}, Lcom/android/server/power/KnockOnPowerController;->access$1200(Lcom/android/server/power/KnockOnPowerController;IZ)V

    .line 567
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$1100(Lcom/android/server/power/KnockOnPowerController;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 568
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$1300(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->setLightSensorEnabled(Z)V
    invoke-static {v0, v5}, Lcom/android/server/power/KnockOnPowerController;->access$1500(Lcom/android/server/power/KnockOnPowerController;Z)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->setProximitySensorEnabled(Z)V
    invoke-static {v0, v5}, Lcom/android/server/power/KnockOnPowerController;->access$1600(Lcom/android/server/power/KnockOnPowerController;Z)V

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mInit:Z
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$800(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyKnockOnSensorListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mInit:Z
    invoke-static {v0, v5}, Lcom/android/server/power/KnockOnPowerController;->access$802(Lcom/android/server/power/KnockOnPowerController;Z)Z

    .line 580
    :cond_2
    return-void
.end method
