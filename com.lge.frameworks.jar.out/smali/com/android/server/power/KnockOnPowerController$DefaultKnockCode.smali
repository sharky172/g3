.class public Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;
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
    name = "DefaultKnockCode"
.end annotation


# instance fields
.field private mMatchedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;

.field private verifier:Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;


# direct methods
.method public constructor <init>(Lcom/android/server/power/KnockOnPowerController;Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;)V
    .locals 2
    .parameter
    .parameter "v"

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1832
    iput-object p2, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->verifier:Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;

    .line 1833
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->verifier:Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->verifier:Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;

    invoke-interface {v0, p0}, Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;->register(Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;)V

    .line 1836
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    .line 1837
    return-void
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .locals 9
    .parameter "passwords"

    .prologue
    const/4 v8, 0x1

    .line 1840
    const/4 v2, 0x0

    .line 1841
    .local v2, matched:Z
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1842
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 1843
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1844
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$4200()I

    move-result v4

    .line 1845
    .local v4, result:I
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$4300()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1846
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->checkPasswordsGetUsers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1847
    .local v5, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v5, :cond_8

    .line 1848
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1849
    const/4 v2, 0x0

    .line 1865
    :cond_0
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_4

    .line 1866
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$4500()I

    move-result v4

    .line 1867
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 1868
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8, v6}, Lcom/android/internal/widget/LockPatternUtilsEx;->setDupulicatedKnockCode(ZI)V

    .line 1867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1851
    .end local v0           #i:I
    :cond_1
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSettingUserInfo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/power/KnockOnPowerController;->access$4400(Lcom/android/server/power/KnockOnPowerController;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1852
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 1853
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1854
    .local v3, matcheduserinfo:Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSettingUserInfo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/power/KnockOnPowerController;->access$4400(Lcom/android/server/power/KnockOnPowerController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1855
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSettingUserInfo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/power/KnockOnPowerController;->access$4400(Lcom/android/server/power/KnockOnPowerController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;

    iget v6, v6, Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;->userId:I

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mSettingUserInfo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/power/KnockOnPowerController;->access$4400(Lcom/android/server/power/KnockOnPowerController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;

    iget-boolean v6, v6, Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;->knockCodeSetting:Z

    if-eqz v6, :cond_3

    .line 1857
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1858
    const/4 v2, 0x1

    .line 1852
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1854
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1870
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #matcheduserinfo:Landroid/content/pm/UserInfo;
    :cond_4
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v8, :cond_6

    .line 1871
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$4600()I

    move-result v4

    .line 1876
    :cond_5
    :goto_3
    sget-boolean v6, Lcom/android/server/power/KnockOnPowerController;->NOTUSER_DEBUG:Z

    if-eqz v6, :cond_8

    .line 1877
    sget-object v6, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v7, "checkPassword = {"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 1879
    sget-object v7, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1873
    .end local v0           #i:I
    :cond_6
    sget-boolean v6, Lcom/android/server/power/KnockOnPowerController;->NOTUSER_DEBUG:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v7, "no matched users!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1881
    .restart local v0       #i:I
    :cond_7
    sget-object v6, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v7, " }"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    .end local v0           #i:I
    .end local v4           #result:I
    .end local v5           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :goto_5
    return v2

    .line 1885
    .restart local v4       #result:I
    :cond_9
    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->checkPasswords(Ljava/lang/String;)Z

    move-result v2

    goto :goto_5

    .line 1889
    .end local v4           #result:I
    :cond_a
    sget-object v6, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v7, "could\'t check passwords"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getMatchedUsers()Ljava/util/ArrayList;
    .locals 1
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
    .line 1960
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public launch()V
    .locals 10

    .prologue
    const/16 v9, 0x400

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 1895
    invoke-static {}, Lcom/android/server/power/KnockOnPowerController;->access$4300()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1896
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->getCurrentUserId()I
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$4700(Lcom/android/server/power/KnockOnPowerController;)I

    move-result v0

    .line 1897
    .local v0, currentUserId:I
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 1898
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1899
    .local v3, matchedUser:Landroid/content/pm/UserInfo;
    const/4 v4, 0x0

    .line 1900
    .local v4, verified:Z
    sget-boolean v5, Lcom/android/server/power/KnockOnPowerController;->NOTUSER_DEBUG:Z

    if-eqz v5, :cond_0

    .line 1901
    sget-object v5, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentUserId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", matchedUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :cond_0
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v0, :cond_3

    .line 1904
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->verifyFailedAttempts(I)Z
    invoke-static {v5, v0}, Lcom/android/server/power/KnockOnPowerController;->access$200(Lcom/android/server/power/KnockOnPowerController;I)Z

    move-result v4

    .line 1905
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->isDupulicatedKnockCode(I)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    .line 1908
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    #calls: Lcom/android/server/power/KnockOnPowerController;->reportSuccessfulPasswordAttempt(I)V
    invoke-static {v5, v6}, Lcom/android/server/power/KnockOnPowerController;->access$400(Lcom/android/server/power/KnockOnPowerController;I)V

    .line 1909
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->keyguardDone()V
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$500(Lcom/android/server/power/KnockOnPowerController;)V

    .line 1911
    :cond_1
    if-nez v4, :cond_2

    .line 1912
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I
    invoke-static {v5, v8}, Lcom/android/server/power/KnockOnPowerController;->access$302(Lcom/android/server/power/KnockOnPowerController;I)I

    .line 1957
    .end local v0           #currentUserId:I
    .end local v3           #matchedUser:Landroid/content/pm/UserInfo;
    .end local v4           #verified:Z
    :cond_2
    :goto_0
    return-void

    .line 1915
    .restart local v0       #currentUserId:I
    .restart local v3       #matchedUser:Landroid/content/pm/UserInfo;
    .restart local v4       #verified:Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->registerUserSwitchObserver()V
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$4800(Lcom/android/server/power/KnockOnPowerController;)V

    .line 1916
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    #calls: Lcom/android/server/power/KnockOnPowerController;->verifyFailedAttempts(I)Z
    invoke-static {v5, v6}, Lcom/android/server/power/KnockOnPowerController;->access$200(Lcom/android/server/power/KnockOnPowerController;I)Z

    move-result v4

    .line 1917
    if-eqz v4, :cond_5

    .line 1918
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    const/16 v6, 0x200

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I
    invoke-static {v5, v6}, Lcom/android/server/power/KnockOnPowerController;->access$302(Lcom/android/server/power/KnockOnPowerController;I)I

    .line 1919
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtilsEx;->isDupulicatedKnockCode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1921
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I
    invoke-static {v5, v9}, Lcom/android/server/power/KnockOnPowerController;->access$302(Lcom/android/server/power/KnockOnPowerController;I)I

    .line 1926
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$1;

    invoke-direct {v6, p0, v3}, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$1;-><init>(Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;Landroid/content/pm/UserInfo;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1924
    :cond_5
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I
    invoke-static {v5, v8}, Lcom/android/server/power/KnockOnPowerController;->access$302(Lcom/android/server/power/KnockOnPowerController;I)I

    goto :goto_1

    .line 1934
    .end local v3           #matchedUser:Landroid/content/pm/UserInfo;
    .end local v4           #verified:Z
    :cond_6
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v8, v5, :cond_7

    .line 1935
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #setter for: Lcom/android/server/power/KnockOnPowerController;->mWakeupReason:I
    invoke-static {v5, v9}, Lcom/android/server/power/KnockOnPowerController;->access$302(Lcom/android/server/power/KnockOnPowerController;I)I

    .line 1936
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1937
    .local v2, matched1stUser:Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, v0, :cond_2

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->isDupulicatedKnockCode(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1939
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1940
    .local v1, id:I
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mHandler:Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$700(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$2;

    invoke-direct {v6, p0, v1}, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$2;-><init>(Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1948
    .end local v1           #id:I
    .end local v2           #matched1stUser:Landroid/content/pm/UserInfo;
    :cond_7
    sget-object v5, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v6, "omg! can\'t be here!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1951
    .end local v0           #currentUserId:I
    :cond_8
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1952
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #getter for: Lcom/android/server/power/KnockOnPowerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$100(Lcom/android/server/power/KnockOnPowerController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtilsEx;->rollbackLockSettingForNormalMode()V

    .line 1954
    :cond_9
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->reportSuccessfulPasswordAttempt()V
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$4900(Lcom/android/server/power/KnockOnPowerController;)V

    .line 1955
    iget-object v5, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    #calls: Lcom/android/server/power/KnockOnPowerController;->keyguardDone()V
    invoke-static {v5}, Lcom/android/server/power/KnockOnPowerController;->access$500(Lcom/android/server/power/KnockOnPowerController;)V

    goto/16 :goto_0
.end method
