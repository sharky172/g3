.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LgeSensorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 3615
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 3618
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3648
    :goto_0
    return-void

    .line 3623
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximityNear:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3102(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 3624
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3625
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4200()Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 3631
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximitySensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 3637
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightCovered:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3202(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 3638
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3639
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4400()Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 3645
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeSensorHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$4300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 3618
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
