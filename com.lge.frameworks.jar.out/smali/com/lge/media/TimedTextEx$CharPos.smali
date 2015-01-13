.class public final Lcom/lge/media/TimedTextEx$CharPos;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharPos"
.end annotation


# instance fields
.field public final endChar:I

.field public final startChar:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "startChar"
    .parameter "endChar"

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Lcom/lge/media/TimedTextEx$CharPos;->startChar:I

    .line 284
    iput p2, p0, Lcom/lge/media/TimedTextEx$CharPos;->endChar:I

    .line 285
    return-void
.end method
