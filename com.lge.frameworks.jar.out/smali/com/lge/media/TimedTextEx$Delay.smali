.class public final Lcom/lge/media/TimedTextEx$Delay;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delay"
.end annotation


# instance fields
.field public final delay:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iput p1, p0, Lcom/lge/media/TimedTextEx$Delay;->delay:I

    .line 1320
    return-void
.end method
