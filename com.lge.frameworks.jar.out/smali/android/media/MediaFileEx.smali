.class public Landroid/media/MediaFileEx;
.super Ljava/lang/Object;
.source "MediaFileEx.java"


# static fields
.field private static final FIRST_AUDIO_FILE_TYPE_EX:I = 0x3e9

.field private static final FIRST_DRM_FILE_TYPE_EX:I = 0x515

.field private static final FIRST_IMAGE_FILE_TYPE_EX:I = 0x4b1

.field private static final FIRST_VIDEO_FILE_TYPE_EX:I = 0x44d

.field private static final LAST_AUDIO_FILE_TYPE_EX:I = 0x3f0

.field private static final LAST_DRM_FILE_TYPE_EX:I = 0x51a

.field private static final LAST_IMAGE_FILE_TYPE_EX:I = 0x4b3

.field private static final LAST_VIDEO_FILE_TYPE_EX:I = 0x456

.field private static final TAG:Ljava/lang/String; = "MediaFileEx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addLGFileType()V
    .locals 9

    .prologue
    const/16 v8, 0x44f

    const/16 v7, 0x44e

    const/16 v6, 0x3f0

    const/16 v5, 0x3e9

    const/16 v4, 0x1c

    .line 52
    const-string v0, "WAV"

    const/16 v1, 0x3ec

    const-string v2, "audio/wav"

    const/16 v3, 0x3008

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 53
    const-string v0, "QCP"

    const/16 v1, 0x3ea

    const-string v2, "audio/qcelp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    const-string v0, "OGA"

    const/4 v1, 0x7

    const-string v2, "audio/ogg"

    const v3, 0xb902

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 55
    const-string v0, "3GPP"

    const-string v1, "audio/3gpp"

    const v2, 0xb984

    invoke-static {v0, v5, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 56
    const-string v0, "3GA"

    const-string v1, "audio/3gpp"

    invoke-static {v0, v5, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    const-string v0, "DIVX"

    const/16 v1, 0x450

    const-string v2, "video/divx"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    const-string v0, "SKM"

    const/16 v1, 0x451

    const-string v2, "video/skm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    const-string v0, "K3G"

    const/16 v1, 0x452

    const-string v2, "video/k3g"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    const-string v0, "FLV"

    const-string v1, "video/flv"

    invoke-static {v0, v7, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    const-string v0, "F4V"

    const-string v1, "video/flv"

    invoke-static {v0, v7, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    const-string v0, "OGM"

    const-string v1, "video/ogm"

    invoke-static {v0, v8, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    const-string v0, "OGV"

    const-string v1, "video/ogm"

    invoke-static {v0, v8, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    const-string v0, "TTS"

    const-string v1, "video/mp2ts"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    const-string v0, "MPG"

    const-string v1, "video/mp2ts"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    const-string v0, "AVI"

    const/16 v1, 0x1d

    const-string v2, "video/avi"

    const/16 v3, 0x300a

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 73
    invoke-static {}, Landroid/media/MediaFileEx;->isWMVEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "ASF"

    const/16 v1, 0x1a

    const-string v2, "video/x-ms-asf"

    const/16 v3, 0x300c

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 76
    :cond_0
    const-string v0, "DMB"

    const/16 v1, 0x44d

    const-string v2, "video/dmb"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    const-string v0, "BDMB"

    const/16 v1, 0x453

    const-string v2, "video/bdmb"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    const-string v0, "DCI"

    const/16 v1, 0x4b1

    const-string v2, "image/dci"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    const-string v0, "JPS"

    const/16 v1, 0x4b2

    const-string v2, "image/jps"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    const-string v0, "MPO"

    const/16 v1, 0x4b3

    const-string v2, "image/mpo"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    const-string v0, "RA"

    const-string v1, "audio/rm"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    const-string v0, "RAM"

    const-string v1, "audio/rm"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    const-string v0, "RM"

    const/16 v1, 0x454

    const-string v2, "video/rm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    const-string v0, "RV"

    const/16 v1, 0x455

    const-string v2, "video/rm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    const-string v0, "RMVB"

    const/16 v1, 0x454

    const-string v2, "video/rm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    const-string v0, "true"

    const-string v1, "mmp.enable.mov"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MOV"

    const/16 v1, 0x456

    const-string v2, "video/mov"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "QT"

    const/16 v1, 0x456

    const-string v2, "video/quicktime"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    const-string v0, "MP2"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 93
    const-string v0, "M2TS"

    const-string v1, "video/mp2ts"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    const-string v0, "TP"

    const-string v1, "video/mp2ts"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    const-string v0, "AC3"

    const/16 v1, 0x3ed

    const-string v2, "audio/ac3"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    const-string v0, "EC3"

    const/16 v1, 0x3ee

    const-string v2, "audio/eac3"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    const-string v0, "DTS"

    const/16 v1, 0x3ef

    const-string v2, "audio/dts"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    const-string v0, "ADTS"

    const/16 v1, 0x8

    const-string v2, "audio/aac-adts"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 104
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v0, :cond_2

    .line 105
    const-string v0, "DM"

    const/16 v1, 0x515

    const-string v2, "application/vnd.oma.drm.message"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    const-string v0, "DCF"

    const/16 v1, 0x516

    const-string v2, "application/vnd.oma.drm.content"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    const-string v0, "ODF"

    const/16 v1, 0x517

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    const-string v0, "O4A"

    const/16 v1, 0x519

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    const-string v0, "O4V"

    const/16 v1, 0x518

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    const-string v0, "O4I"

    const/16 v1, 0x51a

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    :cond_2
    return-void
.end method

.method static duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 33
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFile$MediaFileType;

    .line 34
    .local v0, type:Landroid/media/MediaFile$MediaFileType;
    if-eqz v0, :cond_0

    .line 35
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "MediaFileEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method static duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "mtpFormatCode"

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method static isAudioFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 128
    const/16 v0, 0x3e9

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3f0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDMBFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 148
    const/16 v0, 0x44d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x453

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4b1

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isDrmFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 144
    const/16 v0, 0x515

    if-lt p0, v0, :cond_0

    const/16 v0, 0x51a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 140
    const/16 v0, 0x4b1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x4b3

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method static isVideoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 132
    const/16 v0, 0x44d

    if-lt p0, v0, :cond_0

    const/16 v0, 0x456

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWMVEnabled()Z
    .locals 5

    .prologue
    .line 116
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 117
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 119
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 120
    .local v1, decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v4, :cond_0

    .line 121
    const/4 v4, 0x1

    .line 124
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :goto_1
    return v4

    .line 118
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
