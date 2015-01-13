.class public final Lcom/lge/media/TimedTextEx$DelayCancel;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelayCancel"
.end annotation


# instance fields
.field public final delayCancel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "delayCancel"

    .prologue
    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput p1, p0, Lcom/lge/media/TimedTextEx$DelayCancel;->delayCancel:I

    .line 1340
    return-void
.end method
