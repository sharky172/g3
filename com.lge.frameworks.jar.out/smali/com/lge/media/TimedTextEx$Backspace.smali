.class public final Lcom/lge/media/TimedTextEx$Backspace;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Backspace"
.end annotation


# instance fields
.field public final backSpace:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "backSpace"

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput p1, p0, Lcom/lge/media/TimedTextEx$Backspace;->backSpace:I

    .line 741
    return-void
.end method
