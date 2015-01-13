.class public final Lcom/lge/media/TimedTextEx$Reset;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reset"
.end annotation


# instance fields
.field public final reset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "reset"

    .prologue
    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1360
    iput p1, p0, Lcom/lge/media/TimedTextEx$Reset;->reset:I

    .line 1361
    return-void
.end method
