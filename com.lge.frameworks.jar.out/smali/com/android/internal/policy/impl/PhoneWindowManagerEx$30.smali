.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;
.super Ljava/lang/Object;
.source "PhoneWindowManagerEx.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 3749
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3775
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 3752
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 3753
    .local v0, gesture:F
    const-string v1, "PhoneWindowManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HW_SENSOR : BasicGestureSensor = mBasicGestureSensor gesture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    const-string v1, "ro.factorytest"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sys.allautotest.run"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3770
    :cond_0
    :goto_0
    return-void

    .line 3760
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingEnabled:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4500(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingMode:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4600(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3761
    const/high16 v1, 0x4040

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 3762
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4700()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3763
    const-string v1, "ShakingGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingPkg:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4800(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4900(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    const-wide/16 v2, 0x12c

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/systemservice/core/VolumeVibratorManager;->vibrate(JI)V

    .line 3767
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingPkg:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4800(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4900(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->excuteQuickMemoHotKey(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$2100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
