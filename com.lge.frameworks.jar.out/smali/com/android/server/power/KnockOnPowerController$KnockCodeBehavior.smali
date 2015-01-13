.class public interface abstract Lcom/android/server/power/KnockOnPowerController$KnockCodeBehavior;
.super Ljava/lang/Object;
.source "KnockOnPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockOnPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KnockCodeBehavior"
.end annotation


# virtual methods
.method public abstract checkPassword(Ljava/lang/String;)Z
.end method

.method public abstract getMatchedUsers()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract launch()V
.end method
