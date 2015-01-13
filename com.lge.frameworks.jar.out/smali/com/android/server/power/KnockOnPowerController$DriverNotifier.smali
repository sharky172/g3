.class Lcom/android/server/power/KnockOnPowerController$DriverNotifier;
.super Ljava/lang/Object;
.source "KnockOnPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockOnPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DriverNotifier"
.end annotation


# static fields
.field private static final SET_1ST_2ND_DUP:I = 0x8

.field private static final SET_ACTIVE_TOUCH_AREA:I = 0x3

.field private static final SET_LCD_SIZE:I = 0x2

.field private static final SET_LENGTH_BETWEEN_TAP:I = 0x5

.field private static final SET_LWPG_MODE:I = 0x1

.field private static final SET_LWPG_MODE2:I = 0x9

.field private static final SET_SENSOR_STATUS:I = 0x7

.field private static final SET_TAP_COUNT:I = 0x4

.field private static final SET_WAKEUP_SUSPEND:I = 0x6


# instance fields
.field private mActiveTouch1:Landroid/graphics/Point;

.field private mActiveTouch2:Landroid/graphics/Point;

.field private mCoverView1:Landroid/graphics/Point;

.field private mCoverView2:Landroid/graphics/Point;

.field private mLCDsize:Landroid/graphics/Point;

.field private mMode:I

.field private mPasswordLength:I

.field private mScreenOn:Z

.field private mSensorStatus:I

.field private mType:I

.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 1
    .parameter

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1399
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    .line 1400
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mPasswordLength:I

    .line 1401
    return-void
.end method

.method private setActiveTouchArea()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 1500
    const-string v0, ""

    .line 1501
    .local v0, value:Ljava/lang/String;
    iput v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    .line 1502
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mActiveTouch1:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mActiveTouch2:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    .line 1503
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d %d %d %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mActiveTouch1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mActiveTouch2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mActiveTouch1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mActiveTouch2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1506
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const-string v2, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    #calls: Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v0}, Lcom/android/server/power/KnockOnPowerController;->access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1507
    return-void
.end method

.method private setLCDSize()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1494
    iput v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    .line 1495
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1496
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const-string v2, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    #calls: Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v0}, Lcom/android/server/power/KnockOnPowerController;->access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1497
    return-void
.end method

.method private setLPWGmode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1461
    iput v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    .line 1462
    iget v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 1463
    :cond_0
    iput v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    .line 1465
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1466
    .local v0, value:Ljava/lang/String;
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const-string v2, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    #calls: Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v0}, Lcom/android/server/power/KnockOnPowerController;->access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1468
    iget v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    if-gez v1, :cond_2

    .line 1469
    iput v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    .line 1471
    :cond_2
    iget v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    if-le v1, v5, :cond_3

    .line 1472
    iput v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    .line 1474
    :cond_3
    const/4 v0, 0x0

    .line 1475
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1476
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const-string v2, "/sys/devices/virtual/input/lge_touch/touch_gesture"

    #calls: Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v0}, Lcom/android/server/power/KnockOnPowerController;->access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1478
    :cond_4
    return-void
.end method

.method private setLPWGmode2()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1486
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    .line 1487
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d %d %d %d %d"

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    iget v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v7, 0x2

    iget-boolean v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mScreenOn:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x3

    iget v7, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mSensorStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x4

    iget-object v7, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z
    invoke-static {v7}, Lcom/android/server/power/KnockOnPowerController;->access$1300(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    .local v0, value:Ljava/lang/String;
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setLPWGmode2] current mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const-string v2, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    #calls: Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v0}, Lcom/android/server/power/KnockOnPowerController;->access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1491
    return-void

    .end local v0           #value:Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 1487
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1
.end method

.method private setLengthBetweenTouch(I)V
    .locals 6
    .parameter "len"

    .prologue
    .line 1516
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    .line 1517
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1518
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const-string v2, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    #calls: Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v0}, Lcom/android/server/power/KnockOnPowerController;->access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1519
    return-void
.end method

.method private setScreenState()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1531
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    .line 1532
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-boolean v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mScreenOn:Z

    if-eqz v6, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1533
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const-string v2, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    #calls: Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v0}, Lcom/android/server/power/KnockOnPowerController;->access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1534
    return-void
.end method

.method private setSensorStatus()V
    .locals 6

    .prologue
    .line 1525
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    .line 1526
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mSensorStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1527
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const-string v2, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    #calls: Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v0}, Lcom/android/server/power/KnockOnPowerController;->access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1528
    return-void
.end method

.method private setTapCount()V
    .locals 6

    .prologue
    .line 1510
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    .line 1511
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mPasswordLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1512
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const-string v2, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    #calls: Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v0}, Lcom/android/server/power/KnockOnPowerController;->access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1513
    return-void
.end method


# virtual methods
.method public init()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1404
    sget-object v6, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v7, "set driver init ..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mDeviceLCDsize:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/android/server/power/KnockOnPowerController;->access$3900(Lcom/android/server/power/KnockOnPowerController;)Landroid/graphics/Point;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    .line 1408
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->setLCDSize()V

    .line 1410
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/power/KnockOnPowerController;->access$4000(Lcom/android/server/power/KnockOnPowerController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1411
    .local v2, resources:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 1412
    .local v3, w:I
    const/4 v1, 0x0

    .line 1413
    .local v1, h:I
    const/4 v4, 0x0

    .line 1414
    .local v4, x:I
    const/4 v5, 0x0

    .line 1415
    .local v5, y:I
    iput-boolean v8, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mScreenOn:Z

    .line 1416
    iput v8, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mSensorStatus:I

    .line 1418
    const v6, 0x206004f

    :try_start_0
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1419
    const v6, 0x20c0055

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1420
    const v6, 0x20c0056

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1421
    const v6, 0x20c0057

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1422
    if-gez v4, :cond_0

    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    if-eqz v6, :cond_0

    .line 1423
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    .line 1425
    :cond_0
    const v6, 0x20c0058

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 1426
    if-gez v5, :cond_1

    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    if-eqz v6, :cond_1

    .line 1427
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    div-int/lit8 v5, v6, 0x2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    :cond_1
    :goto_0
    sget-object v6, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cover info : w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mCoverView1:Landroid/graphics/Point;

    .line 1448
    new-instance v6, Landroid/graphics/Point;

    add-int v7, v4, v3

    add-int v8, v5, v1

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mCoverView2:Landroid/graphics/Point;

    .line 1451
    invoke-virtual {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->updateCoverStateChangedLocked()V

    .line 1455
    return-void

    .line 1430
    :cond_2
    const v6, 0x20c0051

    :try_start_1
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1431
    const v6, 0x20c0052

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1432
    const v6, 0x20c0053

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1433
    if-gez v4, :cond_3

    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    if-eqz v6, :cond_3

    .line 1434
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    .line 1436
    :cond_3
    const v6, 0x20c0054

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 1437
    if-gez v5, :cond_1

    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    if-eqz v6, :cond_1

    .line 1438
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    div-int/lit8 v5, v6, 0x2
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v6, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find resource"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 1444
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->y:I

    goto/16 :goto_0
.end method

.method public update1st2ndTap(Z)V
    .locals 7
    .parameter "same"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1646
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    .line 1647
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const-string v2, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    #calls: Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v0}, Lcom/android/server/power/KnockOnPowerController;->access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1649
    return-void
.end method

.method public updateCoverStateChangedLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1582
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mCoverOpened:Z
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$1300(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mActiveTouch1:Landroid/graphics/Point;

    .line 1584
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mActiveTouch2:Landroid/graphics/Point;

    .line 1589
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->setActiveTouchArea()V

    .line 1590
    return-void

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mCoverView1:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mActiveTouch1:Landroid/graphics/Point;

    .line 1587
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mCoverView2:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mActiveTouch2:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public updateCoverStateChangedLocked(ZI)V
    .locals 2
    .parameter "state"
    .parameter "type"

    .prologue
    .line 1561
    const/4 v0, 0x0

    .line 1562
    .local v0, mode:I
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2000(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1563
    const/4 v0, 0x1

    .line 1565
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mKnockCodeSetting:Z
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2100(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1566
    const/4 v0, 0x2

    .line 1568
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSupportSmartCover:Z
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$4100(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 1570
    :cond_2
    const/4 v0, 0x0

    .line 1572
    :cond_3
    iput v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    .line 1573
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->setLPWGmode()V

    .line 1574
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->setLPWGmode2()V

    .line 1575
    invoke-virtual {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->updateCoverStateChangedLocked()V

    .line 1576
    return-void
.end method

.method public updatePasswordLength(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 1625
    iput p1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mPasswordLength:I

    .line 1626
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->setTapCount()V

    .line 1627
    return-void
.end method

.method public updateProximitySensorChangedLocked(Z)V
    .locals 2
    .parameter "positive"

    .prologue
    .line 1601
    const/4 v0, 0x0

    .line 1602
    .local v0, mode:I
    if-eqz p1, :cond_1

    .line 1603
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2000(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1604
    const/4 v0, 0x1

    .line 1606
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mKnockCodeSetting:Z
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2100(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1607
    const/4 v0, 0x2

    .line 1610
    :cond_1
    iput v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    .line 1611
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->setLPWGmode()V

    .line 1613
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mSensorStatus:I

    .line 1614
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->setSensorStatus()V

    .line 1616
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->setLPWGmode2()V

    .line 1617
    return-void

    .line 1613
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateScreenState(Z)V
    .locals 0
    .parameter "screenon"

    .prologue
    .line 1635
    iput-boolean p1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mScreenOn:Z

    .line 1636
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->setScreenState()V

    .line 1638
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->setLPWGmode2()V

    .line 1639
    return-void
.end method

.method public updateSettingsLocked(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1542
    const/4 v0, 0x0

    .line 1543
    .local v0, mode:I
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mKnockOnSetting:Z
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2000(Lcom/android/server/power/KnockOnPowerController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1544
    const/4 v0, 0x1

    .line 1546
    :cond_0
    if-eqz p1, :cond_1

    .line 1547
    const/4 v0, 0x2

    .line 1549
    :cond_1
    iput v0, p0, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->mMode:I

    .line 1550
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->setLPWGmode()V

    .line 1551
    return-void
.end method
