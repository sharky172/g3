.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$31;
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
    .line 3778
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3781
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3782
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3783
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v2, 0x1

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setBasicSensorEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)V

    .line 3787
    :cond_0
    :goto_0
    return-void

    .line 3784
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3785
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->setBasicSensorEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)V

    goto :goto_0
.end method
