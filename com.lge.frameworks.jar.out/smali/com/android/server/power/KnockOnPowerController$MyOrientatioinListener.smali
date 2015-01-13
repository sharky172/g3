.class Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;
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
    name = "MyOrientatioinListener"
.end annotation


# static fields
.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x1e

.field private static final MAX_TILT:I = 0x3c

.field private static final RADIANS_TO_DEGREES:F = 57.29578f


# instance fields
.field private final TILT_TOLERANCE:[[I

.field private mOrienation:I

.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 730
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->mOrienation:I

    .line 738
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->TILT_TOLERANCE:[[I

    return-void

    :array_0
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .locals 5
    .parameter "rotation"
    .parameter "orientationAngle"

    .prologue
    const/4 v3, 0x0

    .line 777
    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mCurrentRotation:I
    invoke-static {v4}, Lcom/android/server/power/KnockOnPowerController;->access$3100(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v0

    .line 778
    .local v0, currentRotation:I
    if-ltz v0, :cond_5

    .line 783
    if-eq p1, v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_3

    .line 785
    :cond_0
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, -0x2d

    add-int/lit8 v1, v4, 0xf

    .line 787
    .local v1, lowerBound:I
    if-nez p1, :cond_2

    .line 788
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_3

    add-int/lit16 v4, v1, 0x168

    if-ge p2, v4, :cond_3

    .line 817
    .end local v1           #lowerBound:I
    :cond_1
    :goto_0
    return v3

    .line 792
    .restart local v1       #lowerBound:I
    :cond_2
    if-lt p2, v1, :cond_1

    .line 802
    .end local v1           #lowerBound:I
    :cond_3
    if-eq p1, v0, :cond_4

    add-int/lit8 v4, v0, 0x3

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_5

    .line 804
    :cond_4
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, 0x2d

    add-int/lit8 v2, v4, -0xf

    .line 806
    .local v2, upperBound:I
    if-nez p1, :cond_6

    .line 807
    const/16 v4, 0x2d

    if-gt p2, v4, :cond_5

    if-gt p2, v2, :cond_1

    .line 817
    .end local v2           #upperBound:I
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 811
    .restart local v2       #upperBound:I
    :cond_6
    if-le p2, v2, :cond_5

    goto :goto_0
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .locals 3
    .parameter "rotation"
    .parameter "tiltAngle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 824
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 756
    monitor-enter p0

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 760
    :cond_0
    monitor-exit p0

    .line 761
    return-void

    .line 760
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
    .line 747
    monitor-enter p0

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mOrientationSensor:Landroid/hardware/Sensor;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$3000(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2500(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mOrientationSensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$3000(Lcom/android/server/power/KnockOnPowerController;)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 752
    :cond_0
    monitor-exit p0

    .line 753
    return-void

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->mOrienation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 883
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    .line 830
    iget-object v7, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/power/KnockOnPowerController;->access$3200(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 831
    :try_start_0
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    aget v4, v7, v9

    .line 832
    .local v4, x:F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x1

    aget v5, v7, v9

    .line 833
    .local v5, y:F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x2

    aget v6, v7, v9

    .line 834
    .local v6, z:F
    mul-float v7, v4, v4

    mul-float v9, v5, v5

    add-float/2addr v7, v9

    mul-float v9, v6, v6

    add-float/2addr v7, v9

    invoke-static {v7}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 837
    .local v0, magnitude:F
    sget-object v7, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raw acceleration vector: x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", z="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", magnitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/high16 v7, 0x4110

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    .line 842
    sget-object v7, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v9, "abnormal sensor data!"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    monitor-exit v8

    .line 879
    :goto_0
    return-void

    .line 845
    :cond_0
    div-float v7, v6, v0

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    const-wide v11, 0x404ca5dc20000000L

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v3, v9

    .line 850
    .local v3, tiltAngle:I
    neg-float v7, v4

    float-to-double v9, v7

    float-to-double v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    neg-double v9, v9

    const-wide v11, 0x404ca5dc20000000L

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v2, v9

    .line 851
    .local v2, orientationAngle:I
    if-gez v2, :cond_1

    .line 853
    add-int/lit16 v2, v2, 0x168

    .line 857
    :cond_1
    add-int/lit8 v7, v2, 0x2d

    div-int/lit8 v1, v7, 0x5a

    .line 858
    .local v1, nearestRotation:I
    const/4 v7, 0x4

    if-ne v1, v7, :cond_2

    .line 859
    const/4 v1, 0x0

    .line 862
    :cond_2
    sget-object v7, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Result: orientationAngle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", tiltAngle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nearestRotation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0, v1, v3}, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->isTiltAngleAcceptableLocked(II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->isOrientationAngleAcceptableLocked(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 870
    iput v1, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->mOrienation:I

    .line 874
    :goto_1
    iget-object v7, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v7}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mKnockCodeWaker:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/power/KnockOnPowerController;->access$3300(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 875
    iget-object v7, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v7}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mKnockCodeWaker:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/power/KnockOnPowerController;->access$3300(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 876
    iget-object v7, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v7}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mKnockCodeWaker:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/power/KnockOnPowerController;->access$3300(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 878
    :cond_3
    monitor-exit v8

    goto/16 :goto_0

    .end local v0           #magnitude:F
    .end local v1           #nearestRotation:I
    .end local v2           #orientationAngle:I
    .end local v3           #tiltAngle:I
    .end local v4           #x:F
    .end local v5           #y:F
    .end local v6           #z:F
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 872
    .restart local v0       #magnitude:F
    .restart local v1       #nearestRotation:I
    .restart local v2       #orientationAngle:I
    .restart local v3       #tiltAngle:I
    .restart local v4       #x:F
    .restart local v5       #y:F
    .restart local v6       #z:F
    :cond_4
    const/4 v7, -0x1

    :try_start_1
    iput v7, p0, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->mOrienation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
