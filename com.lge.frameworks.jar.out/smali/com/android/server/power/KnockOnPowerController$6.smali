.class Lcom/android/server/power/KnockOnPowerController$6;
.super Ljava/lang/Object;
.source "KnockOnPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockOnPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$6;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1152
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$6;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$3200(Lcom/android/server/power/KnockOnPowerController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1153
    const/4 v0, -0x1

    .line 1154
    .local v0, rotation:I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$6;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mOrientationListener:Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$3500(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1155
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$6;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mOrientationListener:Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$3500(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->getRotation()I

    move-result v0

    .line 1157
    :cond_0
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKnockCodeWaker: rotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/server/power/PasswordConverter;->setOrientation(I)V

    .line 1159
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$6;->this$0:Lcom/android/server/power/KnockOnPowerController;

    iget-object v3, p0, Lcom/android/server/power/KnockOnPowerController$6;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mTouchedPoints:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/KnockOnPowerController;->access$3600(Lcom/android/server/power/KnockOnPowerController;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Lcom/android/server/power/KnockOnPowerController;->wakeUpByKnockCodeLocked(Ljava/util/ArrayList;)V
    invoke-static {v1, v3}, Lcom/android/server/power/KnockOnPowerController;->access$3700(Lcom/android/server/power/KnockOnPowerController;Ljava/util/ArrayList;)V

    .line 1160
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$6;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mOrientationListener:Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$3500(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1161
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$6;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mOrientationListener:Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$3500(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/KnockOnPowerController$MyOrientatioinListener;->disable()V

    .line 1163
    :cond_1
    monitor-exit v2

    .line 1164
    return-void

    .line 1158
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$6;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mCurrentRotation:I
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$3100(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v1

    goto :goto_0

    .line 1163
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
