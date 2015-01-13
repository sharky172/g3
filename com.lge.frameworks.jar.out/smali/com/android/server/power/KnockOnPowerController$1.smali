.class Lcom/android/server/power/KnockOnPowerController$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "KnockOnPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/KnockOnPowerController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$1;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 3
    .parameter "newUserId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$1;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$1;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->isDupulicatedKnockCode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$1;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->verifyFailedAttempts(I)Z
    invoke-static {v1, p1}, Lcom/android/server/power/KnockOnPowerController;->access$200(Lcom/android/server/power/KnockOnPowerController;I)Z

    move-result v0

    .line 272
    .local v0, verified:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$1;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$300(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v1

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$1;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->reportSuccessfulPasswordAttempt(I)V
    invoke-static {v1, p1}, Lcom/android/server/power/KnockOnPowerController;->access$400(Lcom/android/server/power/KnockOnPowerController;I)V

    .line 274
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$1;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->keyguardDone()V
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$500(Lcom/android/server/power/KnockOnPowerController;)V

    .line 277
    .end local v0           #verified:Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$1;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->unregisterUserSwitchObserver()V
    invoke-static {v1}, Lcom/android/server/power/KnockOnPowerController;->access$600(Lcom/android/server/power/KnockOnPowerController;)V

    .line 278
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .parameter "newUserId"
    .parameter "reply"

    .prologue
    .line 265
    return-void
.end method
