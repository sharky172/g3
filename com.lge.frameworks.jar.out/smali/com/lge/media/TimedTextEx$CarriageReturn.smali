.class public final Lcom/lge/media/TimedTextEx$CarriageReturn;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarriageReturn"
.end annotation


# instance fields
.field public final cr:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "cr"

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput p1, p0, Lcom/lge/media/TimedTextEx$CarriageReturn;->cr:I

    .line 700
    return-void
.end method
