.class public Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;
.super Ljava/lang/Object;
.source "KnockOnPowerController.java"

# interfaces
.implements Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockOnPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KidsModeKnockCode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;

.field private verifier:Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;


# direct methods
.method public constructor <init>(Lcom/android/server/power/KnockOnPowerController;Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;)V
    .locals 1
    .parameter
    .parameter "v"

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1971
    iput-object p2, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->verifier:Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;

    .line 1972
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->verifier:Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->verifier:Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;

    invoke-interface {v0, p0}, Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;->register(Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;)V

    .line 1975
    :cond_0
    return-void
.end method

.method private launchKidsMode()V
    .locals 5

    .prologue
    .line 2010
    sget-object v2, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v3, "launch kids mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2013
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2014
    const/high16 v2, 0x1081

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2017
    const-string v2, "com.lge.launcher2"

    const-string v3, "com.lge.launcher2.plushome.kidshome.LGKidsHome"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2019
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$4000(Lcom/android/server/power/KnockOnPowerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2022
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/KnockOnPowerController;->access$4000(Lcom/android/server/power/KnockOnPowerController;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    :goto_0
    return-void

    .line 2024
    :catch_0
    move-exception v0

    .line 2025
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v3, "sendBroadcast fail(com.lge.lockscreen.intent.action.START_KIDSHOME)"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .locals 6
    .parameter "passwords"

    .prologue
    .line 1978
    const/4 v2, 0x0

    .line 1979
    .local v2, matched:Z
    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-virtual {v4}, Lcom/android/server/power/KnockOnPowerController;->hasBootCompletedIntentPosted()Z

    move-result v0

    .line 1980
    .local v0, isBootCompleted:Z
    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-virtual {v4}, Lcom/android/server/power/KnockOnPowerController;->isEnabledKidsModeSetting()Z

    move-result v1

    .line 1981
    .local v1, isKidsModeEnabled:Z
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$4200()I

    move-result v3

    .line 1982
    .local v3, result:I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1983
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v4}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v4}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v4

    const-string v5, "unlock_set_knockcode"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtilsEx;->savedKidsModeFileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v4}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v4

    const-string v5, "unlock_set_knockcode"

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/widget/LockPatternUtilsEx;->checkPasswordsKidsMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1987
    const/4 v2, 0x1

    .line 1988
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$4600()I

    move-result v3

    .line 1993
    :cond_0
    :goto_0
    return v2

    .line 1991
    :cond_1
    sget-object v4, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v5, "could\'t check kidsmode passwords"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMatchedUsers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2031
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public launch()V
    .locals 2

    .prologue
    .line 1998
    const-string v0, "service.plushome.currenthome"

    const-string v1, "kids"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->changeLockSettingForKidsMode()V

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->reportSuccessfulPasswordAttempt()V
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$4900(Lcom/android/server/power/KnockOnPowerController;)V

    .line 2003
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->keyguardDone()V
    invoke-static {v0}, Lcom/android/server/power/KnockOnPowerController;->access$500(Lcom/android/server/power/KnockOnPowerController;)V

    .line 2006
    invoke-direct {p0}, Lcom/android/server/power/KnockOnPowerController$KidsModeKnockCode;->launchKidsMode()V

    .line 2007
    return-void
.end method
