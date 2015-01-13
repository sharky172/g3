.class public final Lcom/lge/media/TimedTextEx$ResumeCaptionLoading;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResumeCaptionLoading"
.end annotation


# instance fields
.field public final resume:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "resume"

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput p1, p0, Lcom/lge/media/TimedTextEx$ResumeCaptionLoading;->resume:I

    .line 541
    return-void
.end method
