.class public final Lcom/lge/media/TimedTextEx$EraseDisplayMemory;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EraseDisplayMemory"
.end annotation


# instance fields
.field public final erase:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "erase"

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput p1, p0, Lcom/lge/media/TimedTextEx$EraseDisplayMemory;->erase:I

    .line 521
    return-void
.end method
