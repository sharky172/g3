.class public Lcom/lge/media/MediaPlayerEx$TrackInfoEx;
.super Landroid/media/MediaPlayer$TrackInfo;
.source "MediaPlayerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaPlayerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfoEx"
.end annotation


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/media/MediaPlayerEx$TrackInfoEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIA_TRACK_TYPE_TIMEDTEXT_EX:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 645
    new-instance v0, Lcom/lge/media/MediaPlayerEx$TrackInfoEx$1;

    invoke-direct {v0}, Lcom/lge/media/MediaPlayerEx$TrackInfoEx$1;-><init>()V

    sput-object v0, Lcom/lge/media/MediaPlayerEx$TrackInfoEx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/media/MediaFormat;)V
    .locals 0
    .parameter "type"
    .parameter "format"

    .prologue
    .line 627
    invoke-direct {p0}, Landroid/media/MediaPlayer$TrackInfo;-><init>()V

    .line 628
    iput p1, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    .line 629
    iput-object p2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 630
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 617
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TrackInfo;-><init>(Landroid/os/Parcel;)V

    .line 619
    const-string v0, "MediaPlayerEX"

    const-string v1, "TrackInfoEx Contructor / after super(in)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 622
    const-string v0, "MediaPlayerEX"

    const-string v1, "TrackInfoEx/ KEY_MIME /MEDIA_MIMETYPE_TEXT_EX "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    const-string v2, "text/ex"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_0
    return-void
.end method


# virtual methods
.method public getFormat()Landroid/media/MediaFormat;
    .locals 2

    .prologue
    .line 633
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 634
    const-string v0, "MediaPlayerEX"

    const-string v1, "TrackInfoEx getFormat / MEDIA_TRACK_TYPE_TIMEDTEXT_EX"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 638
    :goto_0
    return-object v0

    .line 637
    :cond_0
    const-string v0, "MediaPlayerEX"

    const-string v1, "TrackInfoEx getFormat / super.getFormat()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-super {p0}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    goto :goto_0
.end method
