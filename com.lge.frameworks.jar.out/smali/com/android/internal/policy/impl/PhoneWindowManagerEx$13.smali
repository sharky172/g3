.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;
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
    .line 2744
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2747
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickclipPressed:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$1902(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 2748
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyCustomizing:Z

    if-eqz v1, :cond_2

    .line 2749
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 2750
    .local v0, isScreenOn:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyLongPressEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 2751
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptHotKeyLong(Z)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$2000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)V

    .line 2760
    .end local v0           #isScreenOn:Z
    :goto_0
    return-void

    .line 2753
    .restart local v0       #isScreenOn:Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const-string v2, "com.android.settings"

    const-string v3, "com.lge.settings.HOTKEY_SETTINGS"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->excuteQuickMemoHotKey(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$2100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2755
    .end local v0           #isScreenOn:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_3

    .line 2756
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->toggleQuickClipFromHotKey()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$2200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    goto :goto_0

    .line 2758
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->excuteQuickVoice()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$2300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    goto :goto_0
.end method
