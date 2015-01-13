.class public Lcom/android/server/power/EasyKnockPassword$EasyKnockType;
.super Ljava/lang/Object;
.source "EasyKnockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/EasyKnockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EasyKnockType"
.end annotation


# instance fields
.field public x_coord:F

.field public y_coord:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "x_coord"
    .parameter "y_coord"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    .line 51
    iput p2, p0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    .line 52
    return-void
.end method
