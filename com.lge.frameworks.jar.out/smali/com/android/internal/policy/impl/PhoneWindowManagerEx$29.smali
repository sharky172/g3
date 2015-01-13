.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$29;
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
    .line 3727
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3746
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3730
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v3

    .line 3731
    .local v0, lux:F
    const/high16 v4, 0x4080

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    move v1, v2

    .line 3733
    .local v1, notCovered:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 3734
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightCovered:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3202(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 3741
    :cond_0
    :goto_1
    return-void

    .end local v1           #notCovered:Z
    :cond_1
    move v1, v3

    .line 3731
    goto :goto_0

    .line 3735
    .restart local v1       #notCovered:Z
    :cond_2
    const-string v4, "sys.allautotest.run"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3736
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightCovered:Z
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3202(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    goto :goto_1
.end method
