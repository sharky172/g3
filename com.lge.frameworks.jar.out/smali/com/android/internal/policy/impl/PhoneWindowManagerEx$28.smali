.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$28;
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
    .line 3705
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3724
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3708
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v3

    .line 3709
    .local v0, distance:F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    move v1, v2

    .line 3711
    .local v1, positive:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 3712
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximityNear:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3102(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 3719
    :cond_0
    :goto_1
    return-void

    .end local v1           #positive:Z
    :cond_1
    move v1, v3

    .line 3709
    goto :goto_0

    .line 3713
    .restart local v1       #positive:Z
    :cond_2
    const-string v4, "sys.allautotest.run"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3714
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximityNear:Z
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3102(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    goto :goto_1
.end method
