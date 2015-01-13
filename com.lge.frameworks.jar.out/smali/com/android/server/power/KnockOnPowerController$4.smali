.class Lcom/android/server/power/KnockOnPowerController$4;
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
    .line 710
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$4;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 714
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$4;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->setLightSensorEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/server/power/KnockOnPowerController;->access$1500(Lcom/android/server/power/KnockOnPowerController;Z)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$4;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->setProximitySensorEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/server/power/KnockOnPowerController;->access$1600(Lcom/android/server/power/KnockOnPowerController;Z)V

    .line 719
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$4;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mProximity:I
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$1800(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$4;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLight:I
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$2700(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v0

    if-nez v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$4;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const/4 v1, -0x1

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mProximity:I
    invoke-static {v0, v1}, Lcom/android/server/power/KnockOnPowerController;->access$1802(Lcom/android/server/power/KnockOnPowerController;I)I

    .line 721
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$4;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mLight:I
    invoke-static {v0, v2}, Lcom/android/server/power/KnockOnPowerController;->access$2702(Lcom/android/server/power/KnockOnPowerController;I)I

    .line 722
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$4;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$1100(Lcom/android/server/power/KnockOnPowerController;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 724
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToSleep : proximity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$4;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mProximity:I
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$1800(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_1
    return-void
.end method
