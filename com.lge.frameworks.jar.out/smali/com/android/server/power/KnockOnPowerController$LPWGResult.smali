.class Lcom/android/server/power/KnockOnPowerController$LPWGResult;
.super Ljava/lang/Object;
.source "KnockOnPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockOnPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LPWGResult"
.end annotation


# static fields
.field static final FAIL:Ljava/lang/String; = "0"

.field static final SEND_RESULT_WAIT_TIME_MS:I = 0x1f4

.field static final SUCCESS:Ljava/lang/String; = "1"


# instance fields
.field private mDelayTimeMs:J

.field private mResult:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 2
    .parameter

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->mResult:Ljava/lang/String;

    .line 1311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->mDelayTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/KnockOnPowerController;Lcom/android/server/power/KnockOnPowerController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1305
    invoke-direct {p0, p1}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;-><init>(Lcom/android/server/power/KnockOnPowerController;)V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 1

    .prologue
    .line 1323
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->mResult:Ljava/lang/String;

    .line 1324
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1314
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->mResult:Ljava/lang/String;

    .line 1315
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->mDelayTimeMs:J

    .line 1316
    return-void
.end method

.method public send()V
    .locals 3

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->mResult:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->mDelayTimeMs:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->send(Ljava/lang/String;J)V

    .line 1336
    return-void
.end method

.method public send(Ljava/lang/String;J)V
    .locals 2
    .parameter "result"
    .parameter "delay"

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/KnockOnPowerController$LPWGResult$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/KnockOnPowerController$LPWGResult$1;-><init>(Lcom/android/server/power/KnockOnPowerController$LPWGResult;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1346
    return-void
.end method

.method public setDelay()V
    .locals 2

    .prologue
    .line 1327
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->setDelay(J)V

    .line 1328
    return-void
.end method

.method public setDelay(J)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 1331
    iput-wide p1, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->mDelayTimeMs:J

    .line 1332
    return-void
.end method

.method public success()V
    .locals 1

    .prologue
    .line 1319
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->mResult:Ljava/lang/String;

    .line 1320
    return-void
.end method
