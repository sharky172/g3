.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# static fields
.field public static final ALARM_TIME_POWEROFF_CANCEL:I = -0x1

.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final RTC:I = 0x1

.field public static final RTC_POWEROFF_WAKEUP:I = 0x4

.field public static final RTC_WAKEUP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field public static final WINDOW_EXACT:J = 0x0L

.field public static final WINDOW_HEURISTIC:J = -0x1L


# instance fields
.field private final mAlwaysExact:Z

.field private final mService:Landroid/app/IAlarmManager;


# direct methods
.method constructor <init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "ctx"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 122
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 123
    .local v0, sdkVersion:I
    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private legacyExactLength()J
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 10
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "windowMillis"
    .parameter "intervalMillis"
    .parameter "operation"
    .parameter "workSource"

    .prologue
    .line 361
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 369
    const-wide/16 p2, 0x0

    .line 373
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/app/IAlarmManager;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancel(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 489
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 0
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "windowMillis"
    .parameter "intervalMillis"
    .parameter "operation"
    .parameter "workSource"

    .prologue
    .line 356
    invoke-direct/range {p0 .. p9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 357
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 10
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "operation"

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 202
    return-void
.end method

.method public setExact(IJLandroid/app/PendingIntent;)V
    .locals 10
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "operation"

    .prologue
    const-wide/16 v4, 0x0

    .line 350
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, v4

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 351
    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 10
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "intervalMillis"
    .parameter "operation"

    .prologue
    .line 474
    const-wide/16 v4, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 475
    return-void
.end method

.method public setPowerOffAlarmEnabled(Z)V
    .locals 1
    .parameter "isOn"

    .prologue
    .line 525
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setPowerOffAlarmEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 10
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "intervalMillis"
    .parameter "operation"

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 263
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 502
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1
    .parameter "timeZone"

    .prologue
    .line 515
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWindow(IJJLandroid/app/PendingIntent;)V
    .locals 10
    .parameter "type"
    .parameter "windowStartMillis"
    .parameter "windowLengthMillis"
    .parameter "operation"

    .prologue
    .line 312
    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 313
    return-void
.end method
