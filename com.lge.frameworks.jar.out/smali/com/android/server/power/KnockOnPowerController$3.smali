.class Lcom/android/server/power/KnockOnPowerController$3;
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
    .line 642
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$3;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, positive:Z
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@mRunnableCheckLight: mLight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/KnockOnPowerController$3;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLight:I
    invoke-static {v3}, Lcom/android/server/power/KnockOnPowerController;->access$2700(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mProximity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/KnockOnPowerController$3;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mProximity:I
    invoke-static {v3}, Lcom/android/server/power/KnockOnPowerController;->access$1800(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$3;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLight:I
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2700(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$3;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mProximity:I
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$1800(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v1

    if-nez v1, :cond_1

    .line 648
    const/4 v0, 0x0

    .line 653
    :goto_0
    sget-object v1, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@mRunnableCheckLight: positive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$3;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2300(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$3;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mNotifier:Lcom/android/server/power/KnockOnPowerController$DriverNotifier;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$2300(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$DriverNotifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/power/KnockOnPowerController$DriverNotifier;->updateProximitySensorChangedLocked(Z)V

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$3;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const/4 v2, 0x0

    #calls: Lcom/android/server/power/KnockOnPowerController;->setLightSensorEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/server/power/KnockOnPowerController;->access$1500(Lcom/android/server/power/KnockOnPowerController;Z)V

    .line 658
    return-void

    .line 650
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
