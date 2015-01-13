.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartCoverReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 3562
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3562
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3565
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3566
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3567
    const-string v2, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3569
    .local v1, extra:I
    if-ne v1, v4, :cond_2

    .line 3570
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSmartCoverClosed:Z

    .line 3571
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverType:I

    if-ne v2, v4, :cond_1

    .line 3572
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    .line 3581
    .end local v1           #extra:I
    :cond_0
    :goto_0
    return-void

    .line 3574
    .restart local v1       #extra:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    goto :goto_0

    .line 3576
    :cond_2
    if-nez v1, :cond_0

    .line 3577
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSmartCoverClosed:Z

    .line 3578
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SmartCoverReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    goto :goto_0
.end method
