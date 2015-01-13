.class public final Lcom/lge/media/TimedTextEx$Justification;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Justification"
.end annotation


# instance fields
.field public final horizontalJustification:I

.field public final verticalJustification:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput p1, p0, Lcom/lge/media/TimedTextEx$Justification;->horizontalJustification:I

    .line 311
    iput p2, p0, Lcom/lge/media/TimedTextEx$Justification;->verticalJustification:I

    .line 312
    return-void
.end method
