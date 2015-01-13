.class Lcom/android/server/wm/WindowAnimator$2;
.super Landroid/content/BroadcastReceiver;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$2;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.lge.android.intent.action.VSYNC_BOOST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator$2;->this$0:Lcom/android/server/wm/WindowAnimator;

    const-string v4, "mode"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    #setter for: Lcom/android/server/wm/WindowAnimator;->mVsyncBoost:Z
    invoke-static {v3, v1}, Lcom/android/server/wm/WindowAnimator;->access$102(Lcom/android/server/wm/WindowAnimator;Z)Z

    .line 164
    const-string v1, "WindowAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DFPS enable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator$2;->this$0:Lcom/android/server/wm/WindowAnimator;

    #getter for: Lcom/android/server/wm/WindowAnimator;->mVsyncBoost:Z
    invoke-static {v3}, Lcom/android/server/wm/WindowAnimator;->access$100(Lcom/android/server/wm/WindowAnimator;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 163
    goto :goto_0
.end method
