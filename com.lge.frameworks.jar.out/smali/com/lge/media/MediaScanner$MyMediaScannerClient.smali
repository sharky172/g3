.class Lcom/lge/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mIsLGEVdieo:I

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mProtectedType:I

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field private mlatitude:F

.field private mlongitude:F

.field private mparseLatLonSuccess:Z

.field final synthetic this$0:Lcom/lge/media/MediaScanner;


# direct methods
.method private constructor <init>(Lcom/lge/media/MediaScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/media/MediaScanner;Lcom/lge/media/MediaScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;-><init>(Lcom/lge/media/MediaScanner;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "input"
    .parameter "expected"

    .prologue
    .line 839
    invoke-virtual {p0, p1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, output:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 841
    const/4 v1, 0x1

    .line 844
    :goto_0
    return v1

    .line 843
    :cond_0
    const-string v1, "com.lge.MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private convertRationalLatLonToFloat(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "rationalString"
    .parameter "isLat"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, Ref:I
    const/4 v2, 0x0

    .line 743
    .local v2, result:F
    const/4 v1, 0x0

    .line 745
    .local v1, length:I
    if-nez p1, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v3

    .line 748
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 750
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2

    .line 751
    const/4 v0, 0x1

    .line 758
    :goto_1
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 759
    const-string v3, "com.lge.MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertRational LatLonToFloat float = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    if-ne p2, v4, :cond_3

    .line 762
    const-string v3, "com.lge.MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertRational LatLonToFloat isLat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    int-to-float v3, v0

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mlatitude:F

    .line 770
    :goto_2
    const-string v3, "com.lge.MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertRational LatLonToFloat succeed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 772
    goto :goto_0

    .line 752
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    .line 753
    const/4 v0, -0x1

    goto :goto_1

    .line 766
    :cond_3
    const-string v3, "com.lge.MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertRational LatLonToFloat isLon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    int-to-float v3, v0

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mlongitude:F

    goto :goto_2
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 1431
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1432
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1433
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Lcom/lge/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 41
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1031
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1034
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-eqz v4, :cond_4

    .line 1035
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mProtectedType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    .line 1036
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mProtectedType:I

    .line 1045
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFileEx;->isDMBFileType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1046
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mProtectedType:I

    .line 1051
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 1052
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1053
    .local v40, title:Ljava/lang/String;
    if-eqz v40, :cond_5

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1054
    :cond_5
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1055
    const-string v4, "title"

    move-object/from16 v0, v40

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :cond_6
    const-string v4, "album"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1058
    .local v10, album:Ljava/lang/String;
    const-string v4, "<unknown>"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1059
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1061
    const/16 v4, 0x2f

    invoke-virtual {v10, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v25

    .line 1062
    .local v25, lastSlash:I
    if-ltz v25, :cond_8

    .line 1063
    const/16 v32, 0x0

    .line 1065
    .local v32, previousSlash:I
    :goto_1
    const/16 v4, 0x2f

    add-int/lit8 v5, v32, 0x1

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v23

    .line 1066
    .local v23, idx:I
    if-ltz v23, :cond_7

    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_1a

    .line 1071
    :cond_7
    if-eqz v32, :cond_8

    .line 1072
    add-int/lit8 v4, v32, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1073
    const-string v4, "album"

    invoke-virtual {v7, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    .end local v23           #idx:I
    .end local v25           #lastSlash:I
    .end local v32           #previousSlash:I
    :cond_8
    const/16 v18, 0x0

    .line 1079
    .local v18, drmImage:Z
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v4, :cond_a

    .line 1080
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v21

    .line 1081
    .local v21, fileType:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_1b

    .line 1082
    const/16 v4, 0x515

    move/from16 v0, v21

    if-lt v0, v4, :cond_9

    const/16 v4, 0x51a

    move/from16 v0, v21

    if-gt v0, v4, :cond_9

    .line 1083
    const/16 v18, 0x1

    .line 1100
    :cond_9
    :goto_2
    const/16 v4, 0x515

    move/from16 v0, v21

    if-ne v0, v4, :cond_a

    .line 1101
    const/16 v4, 0xc

    invoke-static {v4}, Lcom/lge/lgdrm/DrmManager;->isSupportedAgent(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_a

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->getFileTypeFromDrm(Ljava/lang/String;)Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    move-result-object v27

    .line 1104
    .local v27, mediaFileType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    if-eqz v27, :cond_a

    .line 1106
    const-string v4, "mime_type"

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    .end local v21           #fileType:I
    .end local v27           #mediaFileType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    :cond_a
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lge/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v34, v0

    .line 1114
    .local v34, rowId:J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_20

    const-wide/16 v4, 0x0

    cmp-long v4, v34, v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$700(Lcom/lge/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_20

    .line 1121
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/SFR.mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/Anticipation.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 1122
    :cond_c
    const-string v4, "VDF"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1123
    const/16 p2, 0x1

    .line 1138
    :cond_d
    :goto_3
    const-string v4, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1139
    const-string v4, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1140
    const-string v4, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1141
    const-string v4, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1142
    const-string v4, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1199
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1500(Lcom/lge/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v37

    .line 1200
    .local v37, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1600(Lcom/lge/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v24

    .line 1201
    .local v24, inserter:Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_f

    .line 1202
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1700(Lcom/lge/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v37

    .line 1210
    :cond_f
    :goto_5
    const/4 v6, 0x0

    .line 1211
    .local v6, result:Landroid/net/Uri;
    const/16 v29, 0x0

    .line 1212
    .local v29, needToSetSettings:Z
    const-wide/16 v4, 0x0

    cmp-long v4, v34, v4

    if-nez v4, :cond_34

    .line 1213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$700(Lcom/lge/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_10

    .line 1214
    const-string v4, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v5}, Lcom/lge/media/MediaScanner;->access$700(Lcom/lge/media/MediaScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1216
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1500(Lcom/lge/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v37

    if-ne v0, v4, :cond_12

    .line 1217
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/media/MediaScanner$FileEntry;->mFormat:I

    move/from16 v22, v0

    .line 1218
    .local v22, format:I
    if-nez v22, :cond_11

    .line 1219
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 1221
    :cond_11
    const-string v4, "format"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1226
    .end local v22           #format:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$2000(Lcom/lge/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1227
    if-eqz p3, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$2100(Lcom/lge/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$2200(Lcom/lge/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/media/MediaScanner;->access$2200(Lcom/lge/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1230
    :cond_13
    const/16 v29, 0x1

    .line 1286
    :cond_14
    :goto_6
    if-eqz v24, :cond_15

    if-eqz v29, :cond_32

    .line 1287
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$2700(Lcom/lge/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-interface {v4, v5, v0, v7}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1294
    :goto_7
    if-eqz v6, :cond_16

    .line 1295
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v34

    .line 1296
    move-wide/from16 v0, v34

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/lge/media/MediaScanner$FileEntry;->mRowId:J

    .line 1336
    :cond_16
    :goto_8
    if-eqz v29, :cond_17

    .line 1337
    if-eqz p3, :cond_3c

    .line 1338
    const-string v4, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1340
    const-string v4, "notification_sound_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1341
    const-string v4, "com.lge.MediaScanner"

    const-string v5, "Set a default 2nd sim noti sound"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    const/4 v5, 0x1

    #setter for: Lcom/lge/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4, v5}, Lcom/lge/media/MediaScanner;->access$2102(Lcom/lge/media/MediaScanner;Z)Z

    .line 1411
    :cond_17
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2060025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 1412
    .local v16, chameleonSupported:Z
    const-string v4, "ro.config.ringtone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1413
    .local v33, roRingtone:Ljava/lang/String;
    const-string v11, "default_ringer.mp3"

    .line 1415
    .local v11, carrierRingtone:Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v34, v4

    if-eqz v4, :cond_18

    .line 1416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1417
    if-eqz v16, :cond_18

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://media/internal/audio/media/99999"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1419
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ringtone"

    move-object/from16 v0, v37

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1427
    :cond_18
    return-object v6

    .line 1038
    .end local v6           #result:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v10           #album:Ljava/lang/String;
    .end local v11           #carrierRingtone:Ljava/lang/String;
    .end local v16           #chameleonSupported:Z
    .end local v18           #drmImage:Z
    .end local v24           #inserter:Landroid/media/MediaInserter;
    .end local v29           #needToSetSettings:Z
    .end local v33           #roRingtone:Ljava/lang/String;
    .end local v34           #rowId:J
    .end local v37           #tableUri:Landroid/net/Uri;
    .end local v40           #title:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v27

    .line 1039
    .local v27, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v27, :cond_3

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #calls: Lcom/lge/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$200(Lcom/lge/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, v27

    iget v4, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1041
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mProtectedType:I

    goto/16 :goto_0

    .line 1069
    .end local v27           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local v10       #album:Ljava/lang/String;
    .restart local v23       #idx:I
    .restart local v25       #lastSlash:I
    .restart local v32       #previousSlash:I
    .restart local v40       #title:Ljava/lang/String;
    :cond_1a
    move/from16 v32, v23

    .line 1070
    goto/16 :goto_1

    .line 1085
    .end local v23           #idx:I
    .end local v25           #lastSlash:I
    .end local v32           #previousSlash:I
    .restart local v18       #drmImage:Z
    .restart local v21       #fileType:I
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1086
    const/16 v4, 0x515

    move/from16 v0, v21

    if-lt v0, v4, :cond_9

    const/16 v4, 0x51a

    move/from16 v0, v21

    if-gt v0, v4, :cond_9

    .line 1093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2060025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v36

    .line 1094
    .local v36, sprintSupported:Z
    if-eqz v36, :cond_9

    .line 1095
    const/16 p2, 0x1

    goto/16 :goto_2

    .line 1125
    .end local v21           #fileType:I
    .end local v36           #sprintSupported:Z
    .restart local v34       #rowId:J
    :cond_1c
    const/16 p2, 0x0

    goto/16 :goto_3

    .line 1129
    :cond_1d
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/t-mobile_ring.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/Cosmote_Backringtone.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 1130
    :cond_1e
    const-string v4, "TMO"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "COM"

    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1131
    const/16 p2, 0x1

    goto/16 :goto_3

    .line 1133
    :cond_1f
    const/16 p2, 0x0

    goto/16 :goto_3

    .line 1143
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_e

    if-nez v18, :cond_e

    .line 1148
    const/16 v19, 0x0

    .line 1150
    .local v19, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v20, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v19           #exif:Landroid/media/ExifInterface;
    .local v20, exif:Landroid/media/ExifInterface;
    move-object/from16 v19, v20

    .line 1154
    .end local v20           #exif:Landroid/media/ExifInterface;
    .restart local v19       #exif:Landroid/media/ExifInterface;
    :goto_a
    if-eqz v19, :cond_e

    .line 1155
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v26, v0

    .line 1156
    .local v26, latlng:[F
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1157
    const-string v4, "latitude"

    const/4 v5, 0x0

    aget v5, v26, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1158
    const-string v4, "longitude"

    const/4 v5, 0x1

    aget v5, v26, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1161
    :cond_21
    invoke-virtual/range {v19 .. v19}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v38

    .line 1162
    .local v38, time:J
    const-wide/16 v4, -0x1

    cmp-long v4, v38, v4

    if-eqz v4, :cond_23

    .line 1163
    const-string v4, "datetaken"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1175
    :cond_22
    :goto_b
    const-string v4, "Orientation"

    const/4 v5, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v31

    .line 1177
    .local v31, orientation:I
    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_e

    .line 1180
    packed-switch v31, :pswitch_data_0

    .line 1191
    :pswitch_0
    const/16 v17, 0x0

    .line 1194
    .local v17, degree:I
    :goto_c
    const-string v4, "orientation"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 1169
    .end local v17           #degree:I
    .end local v31           #orientation:I
    :cond_23
    invoke-virtual/range {v19 .. v19}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v38

    .line 1170
    const-wide/16 v4, -0x1

    cmp-long v4, v38, v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    sub-long v4, v4, v38

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-ltz v4, :cond_22

    .line 1171
    const-string v4, "datetaken"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_b

    .line 1182
    .restart local v31       #orientation:I
    :pswitch_1
    const/16 v17, 0x5a

    .line 1183
    .restart local v17       #degree:I
    goto :goto_c

    .line 1185
    .end local v17           #degree:I
    :pswitch_2
    const/16 v17, 0xb4

    .line 1186
    .restart local v17       #degree:I
    goto :goto_c

    .line 1188
    .end local v17           #degree:I
    :pswitch_3
    const/16 v17, 0x10e

    .line 1189
    .restart local v17       #degree:I
    goto :goto_c

    .line 1204
    .end local v17           #degree:I
    .end local v19           #exif:Landroid/media/ExifInterface;
    .end local v26           #latlng:[F
    .end local v31           #orientation:I
    .end local v38           #time:J
    .restart local v24       #inserter:Landroid/media/MediaInserter;
    .restart local v37       #tableUri:Landroid/net/Uri;
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1800(Lcom/lge/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v37

    goto/16 :goto_5

    .line 1206
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1900(Lcom/lge/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v37

    goto/16 :goto_5

    .line 1234
    .restart local v6       #result:Landroid/net/Uri;
    .restart local v29       #needToSetSettings:Z
    :cond_26
    if-eqz p2, :cond_2b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/SFR.mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/Anticipation.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    .line 1235
    :cond_27
    const-string v4, "VDF"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "COM"

    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1236
    const-string v4, "persist.sys.mcc-list"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1237
    .local v30, ntCodeMCC:Ljava/lang/String;
    const-string v12, "SFR.mp3"

    .line 1238
    .local v12, carrierRingtone_SFR:Ljava/lang/String;
    const-string v15, "Anticipation.ogg"

    .line 1239
    .local v15, carrierRingtone_VDF:Ljava/lang/String;
    if-eqz v30, :cond_29

    const-string v4, "208"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    const-string v4, "647"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    :cond_28
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1241
    const/16 v29, 0x1

    goto/16 :goto_6

    .line 1242
    :cond_29
    if-eqz v30, :cond_14

    const-string v4, "208"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "647"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    :cond_2a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1244
    const/16 v29, 0x1

    goto/16 :goto_6

    .line 1252
    .end local v12           #carrierRingtone_SFR:Ljava/lang/String;
    .end local v15           #carrierRingtone_VDF:Ljava/lang/String;
    .end local v30           #ntCodeMCC:Ljava/lang/String;
    :cond_2b
    if-eqz p2, :cond_2e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/t-mobile_ring.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/Cosmote_Backringtone.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .line 1253
    :cond_2c
    const-string v4, "TMO"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "COM"

    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1254
    const-string v4, "persist.sys.mcc-list"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1255
    .restart local v30       #ntCodeMCC:Ljava/lang/String;
    const-string v13, "t-mobile_ring.ogg"

    .line 1256
    .local v13, carrierRingtone_TMO:Ljava/lang/String;
    const-string v14, "Cosmote_Backringtone.ogg"

    .line 1257
    .local v14, carrierRingtone_TMO_GR:Ljava/lang/String;
    if-eqz v30, :cond_2d

    const-string v4, "202"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1259
    const/16 v29, 0x1

    goto/16 :goto_6

    .line 1260
    :cond_2d
    if-eqz v30, :cond_14

    const-string v4, "202"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1262
    const/16 v29, 0x1

    goto/16 :goto_6

    .line 1268
    .end local v13           #carrierRingtone_TMO:Ljava/lang/String;
    .end local v14           #carrierRingtone_TMO_GR:Ljava/lang/String;
    .end local v30           #ntCodeMCC:Ljava/lang/String;
    :cond_2e
    if-eqz p2, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$2300(Lcom/lge/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$2400(Lcom/lge/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/media/MediaScanner;->access$2400(Lcom/lge/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1271
    :cond_2f
    const/16 v29, 0x1

    goto/16 :goto_6

    .line 1273
    :cond_30
    if-eqz p4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$2500(Lcom/lge/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$2600(Lcom/lge/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/media/MediaScanner;->access$2600(Lcom/lge/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1276
    :cond_31
    const/16 v29, 0x1

    goto/16 :goto_6

    .line 1288
    :cond_32
    move-object/from16 v0, p1

    iget v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-ne v4, v5, :cond_33

    .line 1289
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_7

    .line 1291
    :cond_33
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_7

    .line 1300
    :cond_34
    move-object/from16 v0, v37

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1303
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1305
    const/16 v28, 0x0

    .line 1306
    .local v28, mediaType:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 1307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v21

    .line 1309
    .restart local v21       #fileType:I
    if-nez v21, :cond_35

    .line 1310
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v27

    .line 1311
    .restart local v27       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v27, :cond_35

    .line 1312
    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v21, v0

    .line 1318
    .end local v27           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #calls: Lcom/lge/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$200(Lcom/lge/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-static/range {v21 .. v21}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1319
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v21

    .line 1322
    :cond_36
    invoke-static/range {v21 .. v21}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1323
    const/16 v28, 0x2

    .line 1331
    :cond_37
    :goto_d
    const-string v4, "media_type"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1333
    .end local v21           #fileType:I
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$2700(Lcom/lge/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1324
    .restart local v21       #fileType:I
    :cond_39
    invoke-static/range {v21 .. v21}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1325
    const/16 v28, 0x3

    goto :goto_d

    .line 1326
    :cond_3a
    invoke-static/range {v21 .. v21}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1327
    const/16 v28, 0x1

    goto :goto_d

    .line 1328
    :cond_3b
    invoke-static/range {v21 .. v21}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1329
    const/16 v28, 0x4

    goto :goto_d

    .line 1346
    .end local v21           #fileType:I
    .end local v28           #mediaType:I
    :cond_3c
    if-eqz p2, :cond_41

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_41

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/SFR.mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3d

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/Anticipation.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_41

    .line 1347
    :cond_3d
    const-string v4, "VDF"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "COM"

    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1348
    const-string v4, "persist.sys.mcc-list"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1349
    .restart local v30       #ntCodeMCC:Ljava/lang/String;
    const-string v12, "SFR.mp3"

    .line 1350
    .restart local v12       #carrierRingtone_SFR:Ljava/lang/String;
    const-string v15, "Anticipation.ogg"

    .line 1351
    .restart local v15       #carrierRingtone_VDF:Ljava/lang/String;
    if-eqz v30, :cond_3f

    const-string v4, "208"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3e

    const-string v4, "647"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3f

    :cond_3e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ringtone"

    move-object/from16 v0, v37

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1355
    const-string v4, "ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1356
    const-string v4, "ringtone_videocall"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    goto/16 :goto_9

    .line 1358
    :cond_3f
    if-eqz v30, :cond_17

    const-string v4, "214"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_40

    const-string v4, "222"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_40

    const-string v4, "262"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    :cond_40
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ringtone"

    move-object/from16 v0, v37

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1362
    const-string v4, "ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1363
    const-string v4, "ringtone_videocall"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    goto/16 :goto_9

    .line 1372
    .end local v12           #carrierRingtone_SFR:Ljava/lang/String;
    .end local v15           #carrierRingtone_VDF:Ljava/lang/String;
    .end local v30           #ntCodeMCC:Ljava/lang/String;
    :cond_41
    if-eqz p2, :cond_44

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_44

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/t-mobile_ring.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_42

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "/system/media/audio/ringtones/Cosmote_Backringtone.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_44

    .line 1373
    :cond_42
    const-string v4, "TMO"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "COM"

    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1374
    const-string v4, "persist.sys.mcc-list"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1375
    .restart local v30       #ntCodeMCC:Ljava/lang/String;
    const-string v13, "t-mobile_ring.ogg"

    .line 1376
    .restart local v13       #carrierRingtone_TMO:Ljava/lang/String;
    const-string v14, "Cosmote_Backringtone.ogg"

    .line 1377
    .restart local v14       #carrierRingtone_TMO_GR:Ljava/lang/String;
    if-eqz v30, :cond_43

    const-string v4, "202"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_43

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ringtone"

    move-object/from16 v0, v37

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1381
    const-string v4, "ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1382
    const-string v4, "ringtone_videocall"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    goto/16 :goto_9

    .line 1384
    :cond_43
    if-eqz v30, :cond_17

    const-string v4, "202"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lge/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ringtone"

    move-object/from16 v0, v37

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1388
    const-string v4, "ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1389
    const-string v4, "ringtone_videocall"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    goto/16 :goto_9

    .line 1394
    .end local v13           #carrierRingtone_TMO:Ljava/lang/String;
    .end local v14           #carrierRingtone_TMO_GR:Ljava/lang/String;
    .end local v30           #ntCodeMCC:Ljava/lang/String;
    :cond_44
    if-eqz p2, :cond_45

    .line 1395
    const-string v4, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1397
    const-string v4, "ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1398
    const-string v4, "com.lge.MediaScanner"

    const-string v5, "Set a default 2nd sim ringtone"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const-string v4, "ringtone_videocall"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1400
    const-string v4, "com.lge.MediaScanner"

    const-string v5, "Set a default video call ringtone for KT"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    const/4 v5, 0x1

    #setter for: Lcom/lge/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4, v5}, Lcom/lge/media/MediaScanner;->access$2302(Lcom/lge/media/MediaScanner;Z)Z

    goto/16 :goto_9

    .line 1403
    :cond_45
    if-eqz p4, :cond_17

    .line 1404
    const-string v4, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    const/4 v5, 0x1

    #setter for: Lcom/lge/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4, v5}, Lcom/lge/media/MediaScanner;->access$2502(Lcom/lge/media/MediaScanner;Z)Z

    goto/16 :goto_9

    .line 1151
    .end local v6           #result:Landroid/net/Uri;
    .end local v24           #inserter:Landroid/media/MediaInserter;
    .end local v29           #needToSetSettings:Z
    .end local v37           #tableUri:Landroid/net/Uri;
    .restart local v19       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v4

    goto/16 :goto_a

    .line 1180
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 6
    .parameter "path"

    .prologue
    .line 1450
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #calls: Lcom/lge/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$200(Lcom/lge/media/MediaScanner;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1451
    const/4 v2, 0x0

    .line 1479
    :cond_0
    :goto_0
    return v2

    .line 1454
    :cond_1
    const/4 v2, 0x0

    .line 1457
    .local v2, resultFileType:I
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v3, :cond_3

    .line 1458
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->getFileTypeFromDrm(Ljava/lang/String;)Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    move-result-object v1

    .line 1459
    .local v1, mediaFileType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    if-eqz v1, :cond_2

    .line 1460
    iget v2, v1, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->fileType:I

    goto :goto_0

    .line 1462
    :cond_2
    const-string v3, "drm.service.enabled"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1468
    .end local v1           #mediaFileType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    :cond_3
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$2800(Lcom/lge/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1469
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    new-instance v4, Landroid/drm/DrmManagerClient;

    iget-object v5, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/lge/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3, v4}, Lcom/lge/media/MediaScanner;->access$2802(Lcom/lge/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1472
    :cond_4
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$2800(Lcom/lge/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1473
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$2800(Lcom/lge/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1474
    .local v0, drmMimetype:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1475
    iput-object v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1476
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 683
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 684
    .local v1, length:I
    if-ne p2, v1, :cond_0

    .line 703
    .end local p3
    :goto_0
    return p3

    .line 688
    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 690
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .line 691
    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .line 694
    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 695
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 696
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 697
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    .line 698
    goto :goto_0

    .line 700
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 703
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 920
    :try_start_0
    iget-object v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/lge/media/MediaScanner;->access$1300(Lcom/lge/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 921
    iget-object v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/lge/media/MediaScanner;->access$1300(Lcom/lge/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 922
    iget-object v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/lge/media/MediaScanner;->access$1300(Lcom/lge/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 923
    iget-object v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/lge/media/MediaScanner;->access$1300(Lcom/lge/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 924
    iget-object v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/lge/media/MediaScanner;->access$1300(Lcom/lge/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :goto_0
    return-void

    .line 925
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 1439
    iget-object v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1444
    iget-object v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/media/MediaScanner;->access$1400(Lcom/lge/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1447
    :cond_0
    return-void
.end method

.method private splitLatLon(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "rationalString"
    .parameter "isLat"

    .prologue
    const/4 v2, 0x0

    .line 712
    const/4 v0, 0x0

    .line 714
    .local v0, length:I
    if-nez p1, :cond_0

    move-object v1, v2

    .line 736
    :goto_0
    return-object v1

    .line 717
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 718
    const/4 v1, 0x0

    .line 719
    .local v1, result:Ljava/lang/String;
    const-string v3, "com.lge.MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertRational LatLonToString rationalString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/16 v3, 0x12

    if-lt v0, v3, :cond_1

    move-object v1, v2

    .line 722
    goto :goto_0

    .line 724
    :cond_1
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3

    .line 730
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    .line 731
    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 727
    goto :goto_0

    .line 733
    :cond_4
    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 848
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 849
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 850
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 851
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 852
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 853
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 854
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 855
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 856
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 857
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 858
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 859
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 860
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 861
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 862
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 964
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 966
    .local v0, map:Landroid/content/ContentValues;
    const-string v2, "_data"

    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v2, "title"

    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v2, "date_modified"

    iget-wide v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 969
    const-string v2, "_size"

    iget-wide v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 970
    const-string v2, "mime_type"

    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v2, "is_drm"

    iget-boolean v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 973
    const/4 v1, 0x0

    .line 974
    .local v1, resolution:Ljava/lang/String;
    iget v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    .line 975
    const-string v2, "width"

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 976
    const-string v2, "height"

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 981
    :cond_0
    const-string v2, "protected_type"

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mProtectedType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 983
    iget-boolean v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_2

    .line 984
    iget v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 986
    iget-boolean v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mparseLatLonSuccess:Z

    if-eqz v2, :cond_1

    .line 987
    const-string v2, "latitude"

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mlatitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 988
    const-string v2, "longitude"

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mlongitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 991
    :cond_1
    const-string v3, "artist"

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v3, "album"

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v2, "duration"

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 996
    if-eqz v1, :cond_2

    .line 997
    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_2
    :goto_2
    return-object v0

    .line 991
    :cond_3
    const-string v2, "<unknown>"

    goto :goto_0

    .line 993
    :cond_4
    const-string v2, "<unknown>"

    goto :goto_1

    .line 1002
    :cond_5
    iget v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1004
    iget v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1005
    const-string v3, "artist"

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v3, "album_artist"

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v3, "album"

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const-string v2, "composer"

    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const-string v2, "genre"

    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_6

    .line 1014
    const-string v2, "year"

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1016
    :cond_6
    const-string v2, "track"

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1017
    const-string v2, "duration"

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    const-string v2, "compilation"

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 1005
    :cond_7
    const-string v2, "<unknown>"

    goto :goto_3

    .line 1007
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 1009
    :cond_9
    const-string v2, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Lcom/lge/media/MediaScanner$FileEntry;
    .locals 15
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 505
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 506
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 507
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 509
    if-nez p7, :cond_3

    .line 510
    if-nez p8, :cond_0

    #calls: Lcom/lge/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static/range {p1 .. p1}, Lcom/lge/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    const/16 p8, 0x1

    .line 513
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 516
    if-eqz p2, :cond_1

    .line 517
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 521
    :cond_1
    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 522
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .line 523
    .local v13, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v13, :cond_2

    .line 524
    iget v3, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 525
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 526
    iget-object v3, v13, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 531
    .end local v13           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #calls: Lcom/lge/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$200(Lcom/lge/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 532
    invoke-direct/range {p0 .. p1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 537
    :cond_3
    move-object/from16 v11, p1

    .line 538
    .local v11, key:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 540
    .local v12, lowpath:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$300(Lcom/lge/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 541
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 543
    :cond_4
    const-string v3, "/dcim/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_5

    const-string v3, "/my_sounds/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_9

    .line 544
    :cond_5
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/lge/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Lcom/lge/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 550
    .local v2, entry:Lcom/lge/media/MediaScanner$FileEntry;
    :goto_0
    if-eqz v2, :cond_a

    iget-wide v3, v2, Lcom/lge/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v9, p3, v3

    .line 551
    .local v9, delta:J
    :goto_1
    const-wide/16 v3, 0x1

    cmp-long v3, v9, v3

    if-gtz v3, :cond_6

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-gez v3, :cond_b

    :cond_6
    const/4 v14, 0x1

    .line 552
    .local v14, wasModified:Z
    :goto_2
    if-eqz v2, :cond_7

    if-eqz v14, :cond_8

    .line 553
    :cond_7
    if-eqz v14, :cond_c

    .line 554
    move-wide/from16 v0, p3

    iput-wide v0, v2, Lcom/lge/media/MediaScanner$FileEntry;->mLastModified:J

    .line 559
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/lge/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 562
    :cond_8
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$500(Lcom/lge/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 563
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$600(Lcom/lge/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    const/4 v2, 0x0

    .line 596
    .end local v2           #entry:Lcom/lge/media/MediaScanner$FileEntry;
    :goto_4
    return-object v2

    .line 546
    .end local v9           #delta:J
    .end local v14           #wasModified:Z
    :cond_9
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$400(Lcom/lge/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/media/MediaScanner$FileEntry;

    .restart local v2       #entry:Lcom/lge/media/MediaScanner$FileEntry;
    goto :goto_0

    .line 550
    :cond_a
    const-wide/16 v9, 0x0

    goto :goto_1

    .line 551
    .restart local v9       #delta:J
    :cond_b
    const/4 v14, 0x0

    goto :goto_2

    .line 556
    .restart local v14       #wasModified:Z
    :cond_c
    new-instance v2, Lcom/lge/media/MediaScanner$FileEntry;

    .end local v2           #entry:Lcom/lge/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_d

    const/16 v8, 0x3001

    :goto_5
    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/lge/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2       #entry:Lcom/lge/media/MediaScanner$FileEntry;
    goto :goto_3

    .end local v2           #entry:Lcom/lge/media/MediaScanner$FileEntry;
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 569
    .restart local v2       #entry:Lcom/lge/media/MediaScanner$FileEntry;
    :cond_e
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 570
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 571
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 572
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 573
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 574
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 575
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 576
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 577
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 578
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 579
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 580
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 581
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 582
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 583
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 584
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 586
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mProtectedType:I

    .line 589
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mparseLatLonSuccess:Z

    .line 590
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mlatitude:F

    .line 591
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mlongitude:F

    .line 594
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mIsLGEVdieo:I

    goto :goto_4
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 21
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "scanAlways"
    .parameter "noMedia"

    .prologue
    .line 609
    const/16 v19, 0x0

    .local v19, result:Landroid/net/Uri;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p9

    .line 612
    :try_start_0
    invoke-virtual/range {v3 .. v11}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Lcom/lge/media/MediaScanner$FileEntry;

    move-result-object v4

    .line 618
    .local v4, entry:Lcom/lge/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$700(Lcom/lge/media/MediaScanner;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Lcom/lge/media/MediaScanner$FileEntry;->mRowId:J

    .line 622
    :cond_0
    if-eqz v4, :cond_2

    iget-boolean v3, v4, Lcom/lge/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_1

    if-eqz p8, :cond_2

    .line 623
    :cond_1
    if-eqz p9, :cond_3

    .line 624
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->endFile(Lcom/lge/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v19

    .line 679
    .end local v4           #entry:Lcom/lge/media/MediaScanner$FileEntry;
    :cond_2
    :goto_0
    return-object v19

    .line 626
    .restart local v4       #entry:Lcom/lge/media/MediaScanner$FileEntry;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 627
    .local v18, lowpath:Ljava/lang/String;
    const-string v3, "/ringtones/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_b

    const/4 v5, 0x1

    .line 628
    .local v5, ringtones:Z
    :goto_1
    const-string v3, "/notifications/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_c

    const/4 v6, 0x1

    .line 629
    .local v6, notifications:Z
    :goto_2
    const-string v3, "/alarms/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_d

    const/4 v7, 0x1

    .line 630
    .local v7, alarms:Z
    :goto_3
    const-string v3, "/podcasts/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_e

    const/4 v9, 0x1

    .line 633
    .local v9, podcasts:Z
    :goto_4
    const-string v3, "/my_sounds/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_f

    const-string v3, "3GP"

    const-string v10, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "AMR"

    const-string v10, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_4
    const/16 v20, 0x1

    .line 638
    .local v20, voicerecording:Z
    :goto_5
    const-string v3, "/music/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_5

    if-nez v5, :cond_10

    if-nez v6, :cond_10

    if-nez v7, :cond_10

    if-nez v9, :cond_10

    if-nez v20, :cond_10

    :cond_5
    const/4 v8, 0x1

    .line 646
    .local v8, music:Z
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v15

    .line 647
    .local v15, isaudio:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v17

    .line 648
    .local v17, isvideo:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v16

    .line 650
    .local v16, isimage:Z
    if-nez v15, :cond_6

    if-nez v17, :cond_6

    if-eqz v16, :cond_7

    .line 651
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mExternalIsEmulated:Z
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$800(Lcom/lge/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$900(Lcom/lge/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v10}, Lcom/lge/media/MediaScanner;->access$900(Lcom/lge/media/MediaScanner;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 655
    .local v12, directPath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 657
    move-object/from16 p1, v12

    .line 663
    .end local v12           #directPath:Ljava/lang/String;
    .end local v14           #f:Ljava/io/File;
    :cond_7
    if-nez v15, :cond_8

    if-eqz v17, :cond_9

    .line 664
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    #calls: Lcom/lge/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, v0, v1, v2}, Lcom/lge/media/MediaScanner;->access$1000(Lcom/lge/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 667
    :cond_9
    if-eqz v16, :cond_a

    .line 668
    invoke-direct/range {p0 .. p1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v3, p0

    .line 671
    invoke-direct/range {v3 .. v9}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->endFile(Lcom/lge/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    goto/16 :goto_0

    .line 627
    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v8           #music:Z
    .end local v9           #podcasts:Z
    .end local v15           #isaudio:Z
    .end local v16           #isimage:Z
    .end local v17           #isvideo:Z
    .end local v20           #voicerecording:Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 628
    .restart local v5       #ringtones:Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 629
    .restart local v6       #notifications:Z
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 630
    .restart local v7       #alarms:Z
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 633
    .restart local v9       #podcasts:Z
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 638
    .restart local v20       #voicerecording:Z
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 674
    .end local v4           #entry:Lcom/lge/media/MediaScanner$FileEntry;
    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v9           #podcasts:Z
    .end local v18           #lowpath:Ljava/lang/String;
    .end local v20           #voicerecording:Z
    :catch_0
    move-exception v13

    .line 675
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "com.lge.MediaScanner"

    const-string v10, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v10, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "genreTagValue"

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    .line 866
    if-nez p1, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-object v7

    .line 869
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 871
    .local v4, length:I
    if-lez v4, :cond_9

    .line 872
    const/4 v6, 0x0

    .line 873
    .local v6, parenthesized:Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 874
    .local v5, number:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 875
    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 876
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 877
    .local v0, c:C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    .line 878
    const/4 v6, 0x1

    .line 875
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 879
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 880
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 885
    .end local v0           #c:C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 886
    .local v1, charAfterNumber:C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 889
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 890
    .local v2, genreIndex:S
    if-ltz v2, :cond_9

    .line 891
    invoke-static {}, Lcom/lge/media/MediaScanner;->access$1200()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    .line 892
    invoke-static {}, Lcom/lge/media/MediaScanner;->access$1200()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .line 885
    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .line 893
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    :cond_7
    if-eq v2, v10, :cond_0

    .line 895
    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    .line 898
    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    .line 899
    add-int/lit8 v3, v3, 0x1

    .line 901
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 902
    .local v7, ret:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    .end local v3           #i:I
    .end local v5           #number:Ljava/lang/StringBuffer;
    .end local v6           #parenthesized:Z
    .end local v7           #ret:Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    .line 915
    goto :goto_0

    .line 907
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    .restart local v3       #i:I
    .restart local v5       #number:Ljava/lang/StringBuffer;
    .restart local v6       #parenthesized:Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 910
    .end local v2           #genreIndex:S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 777
    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 781
    :cond_0
    iput-object p2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 836
    :cond_1
    :goto_0
    return-void

    .line 782
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 783
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 784
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 786
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 787
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 788
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 789
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 790
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 791
    :cond_a
    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/lge/media/MediaScanner;

    #getter for: Lcom/lge/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Lcom/lge/media/MediaScanner;->access$1100(Lcom/lge/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 793
    :cond_b
    invoke-virtual {p0, p2}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 794
    :cond_c
    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 795
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 796
    :cond_e
    const-string v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 799
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 800
    .local v0, num:I
    iget v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 801
    .end local v0           #num:I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 805
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 806
    .restart local v0       #num:I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 807
    .end local v0           #num:I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 808
    invoke-direct {p0, p2, v2, v2}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 809
    :cond_13
    const-string v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 810
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 811
    :cond_15
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 812
    invoke-direct {p0, p2, v2, v2}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 813
    :cond_16
    const-string v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 814
    invoke-direct {p0, p2, v2, v2}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_1
    iput-boolean v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_1

    .line 815
    :cond_18
    const-string v3, "width"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 816
    invoke-direct {p0, p2, v2, v2}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 817
    :cond_19
    const-string v3, "height"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 818
    invoke-direct {p0, p2, v2, v2}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0

    .line 821
    :cond_1a
    const-string v3, "location"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 822
    invoke-direct {p0, p2, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->splitLatLon(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertRationalLatLonToFloat(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2, v2}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->splitLatLon(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->convertRationalLatLonToFloat(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    iput-boolean v1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mparseLatLonSuccess:Z

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 10
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 604
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 605
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 4
    .parameter "mimeType"

    .prologue
    .line 931
    const-string v2, "audio/mp4"

    iget-object v3, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 955
    :goto_0
    return-void

    .line 939
    :cond_0
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v2, :cond_5

    .line 940
    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    .line 942
    .local v1, fileType:I
    const/16 v2, 0x515

    if-lt v1, v2, :cond_1

    const/16 v2, 0x51a

    if-le v1, v2, :cond_3

    .line 943
    :cond_1
    iput-object p1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 954
    .end local v1           #fileType:I
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0

    .line 945
    .restart local v1       #fileType:I
    :cond_3
    iget-object v2, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 946
    .local v0, drmType:I
    const/16 v2, 0x501

    if-eq v0, v2, :cond_4

    const/16 v2, 0x1800

    if-ne v0, v2, :cond_2

    .line 947
    :cond_4
    iput-object p1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    goto :goto_1

    .line 952
    .end local v0           #drmType:I
    .end local v1           #fileType:I
    :cond_5
    iput-object p1, p0, Lcom/lge/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    goto :goto_1
.end method
