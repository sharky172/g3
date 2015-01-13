.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$21;
.super Landroid/os/UEventObserver;
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
    .line 3362
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 3365
    const-string v2, "CRACK"

    const-string v3, "TOUCH_WINDOW_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3366
    const-string v2, "PhoneWindowManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTouchCrackModeObserver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackMode:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3700(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I

    move-result v2

    if-nez v2, :cond_0

    .line 3368
    const-string v2, "PhoneWindowManagerEx"

    const-string v3, "launch TouchCrackSettingsActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackMode:I
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3702(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)I

    .line 3370
    const-string v2, "sys.lge.touchcrack_mode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3371
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHWKeyControlMode:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$3802(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 3373
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3374
    .local v1, startintent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.lge.TouchCrackSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3375
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3381
    .end local v1           #startintent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 3376
    :catch_0
    move-exception v0

    .line 3377
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "PhoneWindowManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTouchCrackModeObserver Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
