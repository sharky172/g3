.class public final Lcom/lge/media/TimedTextEx$FormFeed;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormFeed"
.end annotation


# instance fields
.field public final formFeed:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "formFeed"

    .prologue
    .line 1399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1400
    iput p1, p0, Lcom/lge/media/TimedTextEx$FormFeed;->formFeed:I

    .line 1401
    return-void
.end method
