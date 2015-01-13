.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagerEx.java"


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
    .line 3823
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3825
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3826
    .local v0, action:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHasEmotionalLed:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    const-string v4, "com.lge.android.intent.action.ACTION_KNOCK_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3828
    const-string v4, "com.lge.intent.extra.LPWG_TYPE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3829
    .local v1, mode:I
    const-string v4, "com.lge.intent.extra.LPWG_RESULT"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3830
    .local v2, result:Z
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    if-nez v2, :cond_0

    .line 3832
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "KnockCoceReceiver"

    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 3833
    .local v3, wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3834
    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3835
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLgeHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3842
    .end local v1           #mode:I
    .end local v2           #result:Z
    .end local v3           #wakeLock:Landroid/os/PowerManager$WakeLock;
    :cond_0
    return-void
.end method
