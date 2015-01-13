.class public Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;
.super Ljava/lang/Object;
.source "KnockOnPowerController.java"

# interfaces
.implements Lcom/android/server/power/KnockOnPowerController$IKnockCodeChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockOnPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnockCodeChecker"
.end annotation


# instance fields
.field private mKnockCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/KnockOnPowerController;)V
    .locals 1
    .parameter

    .prologue
    .line 1767
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    .line 1769
    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    .locals 5
    .parameter "passwords"

    .prologue
    .line 1788
    const/4 v2, 0x0

    .line 1789
    .local v2, kcb:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    iget-object v3, p0, Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1790
    iget-object v3, p0, Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;

    .line 1791
    .local v1, kc:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;->checkPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1792
    move-object v2, v1

    .line 1797
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #kc:Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
    :cond_1
    if-nez v2, :cond_2

    .line 1798
    sget-object v3, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    const-string v4, "no matched passwords"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :cond_2
    return-object v2
.end method

.method public register(Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;)V
    .locals 1
    .parameter "kc"

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    .line 1779
    :cond_0
    :goto_0
    return-void

    .line 1775
    :cond_1
    if-eqz p1, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregister(Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;)V
    .locals 1
    .parameter "kc"

    .prologue
    .line 1782
    if-eqz p1, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1785
    :cond_0
    return-void
.end method
