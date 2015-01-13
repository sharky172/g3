.class public final Lcom/lge/media/TimedTextEx$EraseNondisplayMemory;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EraseNondisplayMemory"
.end annotation


# instance fields
.field public final erase:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "erase"

    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    iput p1, p0, Lcom/lge/media/TimedTextEx$EraseNondisplayMemory;->erase:I

    .line 721
    return-void
.end method
