.class public final Lcom/lge/media/TimedTextEx$HyperText;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HyperText"
.end annotation


# instance fields
.field public final URL:Ljava/lang/String;

.field public final altString:Ljava/lang/String;

.field public final endChar:I

.field public final startChar:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "startChar"
    .parameter "endChar"
    .parameter "url"
    .parameter "alt"

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput p1, p0, Lcom/lge/media/TimedTextEx$HyperText;->startChar:I

    .line 496
    iput p2, p0, Lcom/lge/media/TimedTextEx$HyperText;->endChar:I

    .line 497
    iput-object p3, p0, Lcom/lge/media/TimedTextEx$HyperText;->URL:Ljava/lang/String;

    .line 498
    iput-object p4, p0, Lcom/lge/media/TimedTextEx$HyperText;->altString:Ljava/lang/String;

    .line 499
    return-void
.end method
