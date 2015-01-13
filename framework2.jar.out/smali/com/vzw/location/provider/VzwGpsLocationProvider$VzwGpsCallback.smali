.class Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;
.super Ljava/lang/Object;
.source "VzwGpsLocationProvider.java"

# interfaces
.implements Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/provider/VzwGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VzwGpsCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwGpsLocationProvider.VzwGpsCallback"


# instance fields
.field private DEBUG:Z

.field private mVzwLocationManagerSrv:Lcom/vzw/location/IVzwLocationManager;

.field final synthetic this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/vzw/location/provider/VzwGpsLocationProvider;Lcom/vzw/location/IVzwLocationManager;)V
    .locals 2
    .parameter
    .parameter "lm"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    .line 338
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[VzwGpsCallback] Start create VzwGpsCallback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iput-object p2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->mVzwLocationManagerSrv:Lcom/vzw/location/IVzwLocationManager;

    .line 340
    return-void
.end method

.method private isFlagSetForLocationField(II)Z
    .locals 1
    .parameter "flags"
    .parameter "flag"

    .prologue
    .line 334
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ReportEngineStatus(I)V
    .locals 5
    .parameter "statusCode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 343
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] Start ReportEngineStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v0

    .line 346
    .local v0, wasNavigating:Z
    packed-switch p1, :pswitch_data_0

    .line 377
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$900(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4

    .line 378
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] Acquiring wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_3
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 383
    :cond_4
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 385
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ReportEngineStatus] wasNavigating != mNavigating. Set EngineStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->getStringForEngineStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_5
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineStatus:I
    invoke-static {v1, p1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1002(Lcom/vzw/location/provider/VzwGpsLocationProvider;I)I

    .line 389
    :cond_6
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$900(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 390
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] Releasing wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_7
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 393
    :cond_8
    return-void

    .line 348
    :pswitch_0
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] GPS_STATUS_NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 352
    :pswitch_1
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] GPS_STATUS_SESSION_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_9
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1, v4}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$802(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    .line 354
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z
    invoke-static {v1, v4}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$902(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    goto/16 :goto_0

    .line 358
    :pswitch_2
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] GPS_STATUS_SESSION_END"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_a
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$802(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    goto/16 :goto_0

    .line 363
    :pswitch_3
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] GPS_STATUS_ENGINE_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_b
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z
    invoke-static {v1, v4}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$902(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    goto/16 :goto_0

    .line 368
    :pswitch_4
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_c

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] GPS_STATUS_ENGINE_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_c
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z
    invoke-static {v1, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$902(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    .line 370
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$802(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    goto/16 :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public ReportGpsStatus(I)V
    .locals 3
    .parameter "statusCode"

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReportGpsStatus] Start ReportGpsStatus - reportVzwEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    .line 575
    :cond_1
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportGpsStatus] - GPS_EVENT_GENERAL_FAILURE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_2
    return-void
.end method

.method public ReportLocation(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V
    .locals 14
    .parameter "location"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x2

    .line 397
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] Start ReportLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] reportLocation from native engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLastFixTime:J
    invoke-static {v0, v1, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1102(Lcom/vzw/location/provider/VzwGpsLocationProvider;J)J

    .line 402
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSessionId()I

    move-result v10

    .line 403
    .local v10, sessionIdBack:I
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getValidFieldMask()I

    move-result v9

    .line 405
    .local v9, flags:I
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v11

    monitor-enter v11

    .line 406
    :try_start_0
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] Create VzwLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 410
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocation;->setAltitude(D)V

    .line 412
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setAltitudeWrtEllipsoid(F)V

    .line 414
    const/4 v0, 0x4

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getAltitudeWrtSeaLevel()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setAltituteWrtSeaLevel(F)V

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setBearing(F)V

    .line 420
    const v0, 0x8000

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMagneticVariation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setMagneticVariation(F)V

    .line 424
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 425
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocation;->setLatitude(D)V

    .line 428
    :cond_5
    const/4 v0, 0x2

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 429
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocation;->setLongitude(D)V

    .line 432
    :cond_6
    const/16 v0, 0x4000

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 434
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget v0, v0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    if-ne v0, v13, :cond_12

    .line 435
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getFixMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setFixMode(I)V

    .line 442
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setSpeed(F)V

    .line 444
    const/high16 v0, 0x1

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 445
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocation;->setTime(J)V

    .line 448
    :cond_8
    const/16 v0, 0x20

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 449
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getVerticalDilutionOfPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setVerticalDilutionOfPrecision(F)V

    .line 452
    :cond_9
    const/16 v0, 0x8

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 453
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getPositionDilutionOfPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setPositionDilutionOfPrecision(F)V

    .line 456
    :cond_a
    const/16 v0, 0x10

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 457
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getHorizontalDilutionOfPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setHorizontalDilutionOfPrecision(F)V

    .line 460
    :cond_b
    const/16 v0, 0x80

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x40

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x100

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 463
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getHorizontalConfidence()F

    move-result v1

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getVerticalAccuracy()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMajorAxis()F

    move-result v3

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMajorAxisAngle()F

    move-result v4

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMinorAxis()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/vzw/location/VzwLocation;->setPositionUncertaintyError(FFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_c
    :try_start_1
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] Pass VzwLocation to VzwLocationManagerService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_d
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->mVzwLocationManagerSrv:Lcom/vzw/location/IVzwLocationManager;

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Lcom/vzw/location/IVzwLocationManager;->reportLocation(Landroid/location/Location;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 478
    :cond_e
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewAzimuth()[F

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewElevation()[F

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewPRNs()[I

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewSignalToNoiseRatio()[F

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesUsedPRN()[I

    move-result-object v0

    if-eqz v0, :cond_10

    .line 484
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] There is updated Satellites Info from Native."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    :cond_f
    :try_start_3
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesUsedPRN()[I

    move-result-object v1

    array-length v1, v1

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvUsedInView:I
    invoke-static {v0, v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1302(Lcom/vzw/location/provider/VzwGpsLocationProvider;I)I

    .line 487
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->mVzwLocationManagerSrv:Lcom/vzw/location/IVzwLocationManager;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesUsedPRN()[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewPRNs()[I

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesUsedPRN()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewPRNs()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewElevation()[F

    move-result-object v5

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewAzimuth()[F

    move-result-object v6

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewSignalToNoiseRatio()[F

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/vzw/location/IVzwLocationManager;->reportSvStatusChanged(II[I[I[F[F[F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 503
    :cond_10
    :goto_2
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 504
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwStatus:I
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1400(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v0

    if-eq v0, v12, :cond_11

    .line 505
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #calls: Lcom/vzw/location/provider/VzwGpsLocationProvider;->requestIconFix(Z)V
    invoke-static {v0, v13}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1500(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)V

    .line 506
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvCount:I
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1600(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v1

    #calls: Lcom/vzw/location/provider/VzwGpsLocationProvider;->updateStatus(II)V
    invoke-static {v0, v12, v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1700(Lcom/vzw/location/provider/VzwGpsLocationProvider;II)V

    .line 508
    :cond_11
    return-void

    .line 437
    :cond_12
    :try_start_5
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget v0, v0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    if-ne v0, v12, :cond_7

    .line 438
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getFixMode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setFixMode(I)V

    goto/16 :goto_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 474
    :catch_0
    move-exception v8

    .line 475
    .local v8, e:Landroid/os/RemoteException;
    :try_start_6
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] ReportLocation to VzwLocationManager failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 494
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 495
    .restart local v8       #e:Landroid/os/RemoteException;
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "reportSvStatusChanged to VzwLocationManager failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 499
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    .line 500
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public ReportSvStatus(Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;)V
    .locals 14
    .parameter "svSvInfo"

    .prologue
    const-wide/16 v12, 0x1

    .line 512
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportSvStatus] Start ReportSvStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    .line 516
    .local v0, deviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesWithEphemeris()[I

    move-result-object v10

    .line 517
    .local v10, svs_with_ephemeris:[I
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesWithAlmanac()[I

    move-result-object v9

    .line 519
    .local v9, svs_with_almanac:[I
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getNumSatellitesInView()I

    move-result v2

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvInView:I
    invoke-static {v1, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1802(Lcom/vzw/location/provider/VzwGpsLocationProvider;I)I

    .line 521
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewPRNs()[I

    move-result-object v2

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvsInView:[I
    invoke-static {v1, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1902(Lcom/vzw/location/provider/VzwGpsLocationProvider;[I)[I

    .line 522
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewSignalToNoiseRatio()[F

    move-result-object v2

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewSnr:[F
    invoke-static {v1, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$2002(Lcom/vzw/location/provider/VzwGpsLocationProvider;[F)[F

    .line 523
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewElevation()[F

    move-result-object v2

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewElevation:[F
    invoke-static {v1, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$2102(Lcom/vzw/location/provider/VzwGpsLocationProvider;[F)[F

    .line 524
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewAzimuth()[F

    move-result-object v2

    #setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewAzimuths:[F
    invoke-static {v1, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$2202(Lcom/vzw/location/provider/VzwGpsLocationProvider;[F)[F

    .line 527
    const-wide/16 v3, 0x0

    .line 528
    .local v3, emphemerisMask:J
    const-wide/16 v5, 0x0

    .line 529
    .local v5, almanacsMask:J
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v1, v10

    if-ge v8, v1, :cond_1

    .line 530
    aget v1, v10, v8

    add-int/lit8 v1, v1, -0x1

    shl-long v1, v12, v1

    or-long/2addr v3, v1

    .line 529
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 532
    :cond_1
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ReportSvStatus] Converted emphemerisMask="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_2
    const/4 v8, 0x0

    :goto_1
    array-length v1, v9

    if-ge v8, v1, :cond_3

    .line 534
    aget v1, v9, v8

    add-int/lit8 v1, v1, -0x1

    shl-long v1, v12, v1

    or-long/2addr v5, v1

    .line 533
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 536
    :cond_3
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ReportSvStatus] Converted almanacsMask="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_4
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineStatus:I
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGpsDeviceStatus;->setHwState(I)V

    .line 540
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ReportSvStatus] EngineStatus="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v11, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineStatus:I
    invoke-static {v11}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v11

    invoke-static {v11}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->getStringForEngineStatus(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_5
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewSnr:[F
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$2000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvsInView:[I
    invoke-static {v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1900(Lcom/vzw/location/provider/VzwGpsLocationProvider;)[I

    move-result-object v2

    invoke-virtual/range {v0 .. v6}, Lcom/vzw/location/VzwGpsDeviceStatus;->setStatus([F[IJJ)V

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->mVzwLocationManagerSrv:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, v0}, Lcom/vzw/location/IVzwLocationManager;->reportGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_6
    :goto_2
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ReportSvStatus] updateStatus will be called. updateStatus(mVzwStatus, mNumSvInView) mNumSvInView="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v11, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvInView:I
    invoke-static {v11}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_7
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwStatus:I
    invoke-static {v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1400(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v2

    iget-object v11, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvUsedInView:I
    invoke-static {v11}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1300(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v11

    #calls: Lcom/vzw/location/provider/VzwGpsLocationProvider;->updateStatus(II)V
    invoke-static {v1, v2, v11}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1700(Lcom/vzw/location/provider/VzwGpsLocationProvider;II)V

    .line 553
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwStatus:I
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1400(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLastFixTime:J
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1100(Lcom/vzw/location/provider/VzwGpsLocationProvider;)J

    move-result-wide v1

    const-wide/16 v11, 0x0

    cmp-long v1, v1, v11

    if-lez v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v11, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLastFixTime:J
    invoke-static {v11}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1100(Lcom/vzw/location/provider/VzwGpsLocationProvider;)J

    move-result-wide v11

    sub-long/2addr v1, v11

    const-wide/16 v11, 0x2710

    cmp-long v1, v1, v11

    if-lez v1, :cond_9

    .line 558
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportSvStatus] Send an intent to notify that the GPS is no longer receiving fixes."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_8
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    const/4 v2, 0x0

    #calls: Lcom/vzw/location/provider/VzwGpsLocationProvider;->requestIconFix(Z)V
    invoke-static {v1, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1500(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)V

    .line 560
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    const/4 v2, 0x1

    iget-object v11, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvCount:I
    invoke-static {v11}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1600(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v11

    #calls: Lcom/vzw/location/provider/VzwGpsLocationProvider;->updateStatus(II)V
    invoke-static {v1, v2, v11}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1700(Lcom/vzw/location/provider/VzwGpsLocationProvider;II)V

    .line 562
    :cond_9
    return-void

    .line 546
    :catch_0
    move-exception v7

    .line 547
    .local v7, e:Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "reportGpsDeviceStatusChanged to VzwLocationManager failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
