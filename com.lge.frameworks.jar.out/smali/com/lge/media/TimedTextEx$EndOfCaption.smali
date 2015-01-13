.class public final Lcom/lge/media/TimedTextEx$EndOfCaption;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndOfCaption"
.end annotation


# instance fields
.field public final end:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "end"

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput p1, p0, Lcom/lge/media/TimedTextEx$EndOfCaption;->end:I

    .line 561
    return-void
.end method
