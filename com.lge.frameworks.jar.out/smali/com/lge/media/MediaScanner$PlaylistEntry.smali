.class Lcom/lge/media/MediaScanner$PlaylistEntry;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistEntry"
.end annotation


# instance fields
.field bestmatchid:J

.field bestmatchlevel:I

.field path:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/media/MediaScanner$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/lge/media/MediaScanner$PlaylistEntry;-><init>()V

    return-void
.end method
