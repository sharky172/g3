.class public final Lcom/lge/media/TimedTextEx$Style;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Style"
.end annotation


# instance fields
.field public final colorRGBA:I

.field public final endChar:I

.field public final fontID:I

.field public final fontSize:I

.field public final isBold:Z

.field public final isItalic:Z

.field public final isUnderlined:Z

.field public final startChar:I


# direct methods
.method public constructor <init>(IIIZZZII)V
    .locals 0
    .parameter "startChar"
    .parameter "endChar"
    .parameter "fontId"
    .parameter "isBold"
    .parameter "isItalic"
    .parameter "isUnderlined"
    .parameter "fontSize"
    .parameter "colorRGBA"

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput p1, p0, Lcom/lge/media/TimedTextEx$Style;->startChar:I

    .line 378
    iput p2, p0, Lcom/lge/media/TimedTextEx$Style;->endChar:I

    .line 379
    iput p3, p0, Lcom/lge/media/TimedTextEx$Style;->fontID:I

    .line 380
    iput-boolean p4, p0, Lcom/lge/media/TimedTextEx$Style;->isBold:Z

    .line 381
    iput-boolean p5, p0, Lcom/lge/media/TimedTextEx$Style;->isItalic:Z

    .line 382
    iput-boolean p6, p0, Lcom/lge/media/TimedTextEx$Style;->isUnderlined:Z

    .line 383
    iput p7, p0, Lcom/lge/media/TimedTextEx$Style;->fontSize:I

    .line 384
    iput p8, p0, Lcom/lge/media/TimedTextEx$Style;->colorRGBA:I

    .line 385
    return-void
.end method
