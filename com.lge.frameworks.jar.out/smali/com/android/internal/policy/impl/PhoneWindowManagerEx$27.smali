.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$27;
.super Ljava/lang/Object;
.source "PhoneWindowManagerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 3691
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3694
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setSensorEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)V

    .line 3695
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximityNear:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightCovered:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3400(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3696
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "HW_SENSOR : [Key_Exception] If pressed in darkness like In pocket, turn off PowerKeyPress."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 3702
    :cond_0
    return-void
.end method
