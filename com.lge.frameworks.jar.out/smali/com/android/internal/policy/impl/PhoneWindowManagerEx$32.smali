.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$32;
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
    .line 3810
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 3812
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3813
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.lge.android.intent.action.MINIVIEW_SETTINGS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3814
    const-string v1, "com.lge.intent.extra.MINIVIEW_ALIVE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3815
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const-string v2, "com.lge.intent.extra.MINIVIEW_ALIVE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowDisabled:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5102(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 3820
    :cond_0
    :goto_0
    return-void

    .line 3817
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowDisabled:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5102(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    goto :goto_0
.end method
