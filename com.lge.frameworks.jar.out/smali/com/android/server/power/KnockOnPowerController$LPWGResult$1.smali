.class Lcom/android/server/power/KnockOnPowerController$LPWGResult$1;
.super Ljava/lang/Object;
.source "KnockOnPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/KnockOnPowerController$LPWGResult;->send(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockOnPowerController$LPWGResult;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult$1;->this$1:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    iput-object p2, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1342
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult$1;->val$result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult$1;->this$1:Lcom/android/server/power/KnockOnPowerController$LPWGResult;

    iget-object v0, v0, Lcom/android/server/power/KnockOnPowerController$LPWGResult;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const-string v1, "/sys/devices/virtual/input/lge_touch/lpwg_data"

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$LPWGResult$1;->val$result:Ljava/lang/String;

    #calls: Lcom/android/server/power/KnockOnPowerController;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/KnockOnPowerController;->access$3800(Lcom/android/server/power/KnockOnPowerController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1344
    return-void
.end method
