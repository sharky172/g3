.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$6;
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
    .line 2439
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2442
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v13

    .line 2443
    .local v13, im:Landroid/hardware/input/InputManager;
    if-eqz v13, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    const-string v0, "SearchPanel"

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2445
    .local v1, now:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2449
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2454
    .end local v1           #now:J
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsTripleHomeCheckMode:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$1702(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 2455
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapped:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$1802(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 2456
    return-void
.end method
