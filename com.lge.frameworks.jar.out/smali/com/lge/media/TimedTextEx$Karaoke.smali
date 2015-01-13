.class public final Lcom/lge/media/TimedTextEx$Karaoke;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Karaoke"
.end annotation


# instance fields
.field public final endChar:I

.field public final endTimeMs:I

.field public final startChar:I

.field public final startTimeMs:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "startTimeMs"
    .parameter "endTimeMs"
    .parameter "startChar"
    .parameter "endChar"

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput p1, p0, Lcom/lge/media/TimedTextEx$Karaoke;->startTimeMs:I

    .line 454
    iput p2, p0, Lcom/lge/media/TimedTextEx$Karaoke;->endTimeMs:I

    .line 455
    iput p3, p0, Lcom/lge/media/TimedTextEx$Karaoke;->startChar:I

    .line 456
    iput p4, p0, Lcom/lge/media/TimedTextEx$Karaoke;->endChar:I

    .line 457
    return-void
.end method
