.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;
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
    .line 3230
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3232
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEccMode:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$2900(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3259
    :cond_0
    :goto_0
    return-void

    .line 3235
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRearSideKeyEnable:Z

    if-eqz v0, :cond_2

    .line 3236
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setSensorEnabled(Z)V
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)V

    .line 3239
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mProximityNear:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLightCovered:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    if-nez v0, :cond_2

    .line 3240
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "HW_SENSOR : [Key_Exception] No use LongVolumeDown action"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/16 v1, 0x19

    const/4 v2, 0x7

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingVolumeLongKeyAction(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;II)V

    .line 3243
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3400(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3244
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3400(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 3248
    :cond_2
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "volumeDownLongPress triggered!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3252
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3254
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3258
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->launchVolumeDownLongPressAction()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3600(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    goto :goto_0

    .line 3255
    :catch_0
    move-exception v0

    goto :goto_1
.end method
