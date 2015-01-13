.class public final Lcom/lge/media/TimedTextEx$SetCurrentWindow;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetCurrentWindow"
.end annotation


# instance fields
.field public final windowID:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "windowID"

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput p1, p0, Lcom/lge/media/TimedTextEx$SetCurrentWindow;->windowID:I

    .line 848
    return-void
.end method
