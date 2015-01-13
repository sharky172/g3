.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;
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
    .line 2097
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2101
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.lge.statusbar.expanded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2102
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsExpandedNotificationPanel:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$1102(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 2106
    :cond_0
    :goto_0
    return-void

    .line 2103
    :cond_1
    const-string v1, "com.lge.statusbar.collapsed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2104
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsExpandedNotificationPanel:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$1102(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    goto :goto_0
.end method
