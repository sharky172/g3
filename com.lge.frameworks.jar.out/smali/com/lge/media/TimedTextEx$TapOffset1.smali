.class public final Lcom/lge/media/TimedTextEx$TapOffset1;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TapOffset1"
.end annotation


# instance fields
.field public final tapOffset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "tapOffset"

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput p1, p0, Lcom/lge/media/TimedTextEx$TapOffset1;->tapOffset:I

    .line 580
    return-void
.end method
