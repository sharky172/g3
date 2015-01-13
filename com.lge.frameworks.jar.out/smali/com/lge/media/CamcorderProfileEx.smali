.class public Lcom/lge/media/CamcorderProfileEx;
.super Ljava/lang/Object;
.source "CamcorderProfileEx.java"


# static fields
.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_4kDCI:I = 0xd

.field public static final QUALITY_4kUHD:I = 0xc

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_960P:I = 0xe

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_FWVGA:I = 0x8

.field public static final QUALITY_HFR1080P:I = 0x10

.field public static final QUALITY_HFR720P:I = 0x11

.field public static final QUALITY_HIGH:I = 0x1

.field private static final QUALITY_LIST_END:I = 0x11

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_SVGA:I = 0xf

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_4kDCI:I = 0x3f5

.field public static final QUALITY_TIME_LAPSE_4kUHD:I = 0x3f4

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_960P:I = 0x3f6

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_FWVGA:I = 0x3f0

.field public static final QUALITY_TIME_LAPSE_HFR1080P:I = 0x3f8

.field public static final QUALITY_TIME_LAPSE_HFR720P:I = 0x3f9

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field private static final QUALITY_TIME_LAPSE_LIST_END:I = 0x3f9

.field private static final QUALITY_TIME_LAPSE_LIST_START:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef

.field public static final QUALITY_TIME_LAPSE_SVGA:I = 0x3f7

.field public static final QUALITY_TIME_LAPSE_VGA:I = 0x3f2

.field public static final QUALITY_TIME_LAPSE_WQVGA:I = 0x3f3

.field public static final QUALITY_TIME_LAPSE_WVGA:I = 0x3f1

.field public static final QUALITY_TIME_LAPSE_hfr1080P:I = 0x3f8

.field public static final QUALITY_VGA:I = 0xa

.field public static final QUALITY_WQVGA:I = 0xb

.field public static final QUALITY_WVGA:I = 0x9

.field public static final QUALITY_hfr1080P:I = 0x10


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 413
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/lge/media/CamcorderProfileEx;->native_init()V

    .line 415
    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .locals 0
    .parameter "duration"
    .parameter "quality"
    .parameter "fileFormat"
    .parameter "videoCodec"
    .parameter "videoBitRate"
    .parameter "videoFrameRate"
    .parameter "videoWidth"
    .parameter "videoHeight"
    .parameter "audioCodec"
    .parameter "audioBitRate"
    .parameter "audioSampleRate"
    .parameter "audioChannels"

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput p1, p0, Lcom/lge/media/CamcorderProfileEx;->duration:I

    .line 432
    iput p2, p0, Lcom/lge/media/CamcorderProfileEx;->quality:I

    .line 433
    iput p3, p0, Lcom/lge/media/CamcorderProfileEx;->fileFormat:I

    .line 434
    iput p4, p0, Lcom/lge/media/CamcorderProfileEx;->videoCodec:I

    .line 435
    iput p5, p0, Lcom/lge/media/CamcorderProfileEx;->videoBitRate:I

    .line 436
    iput p6, p0, Lcom/lge/media/CamcorderProfileEx;->videoFrameRate:I

    .line 437
    iput p7, p0, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    .line 438
    iput p8, p0, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    .line 439
    iput p9, p0, Lcom/lge/media/CamcorderProfileEx;->audioCodec:I

    .line 440
    iput p10, p0, Lcom/lge/media/CamcorderProfileEx;->audioBitRate:I

    .line 441
    iput p11, p0, Lcom/lge/media/CamcorderProfileEx;->audioSampleRate:I

    .line 442
    iput p12, p0, Lcom/lge/media/CamcorderProfileEx;->audioChannels:I

    .line 443
    return-void
.end method

.method public static get(I)Lcom/lge/media/CamcorderProfileEx;
    .locals 4
    .parameter "quality"

    .prologue
    .line 324
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 325
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 326
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 327
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 328
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 329
    invoke-static {v1, p0}, Lcom/lge/media/CamcorderProfileEx;->get(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v3

    .line 332
    :goto_1
    return-object v3

    .line 326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static get(II)Lcom/lge/media/CamcorderProfileEx;
    .locals 3
    .parameter "cameraId"
    .parameter "quality"

    .prologue
    .line 375
    if-ltz p1, :cond_0

    const/16 v1, 0x11

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    const/16 v1, 0x3f9

    if-le p1, v1, :cond_2

    .line 379
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported quality level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, errMessage:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    .end local v0           #errMessage:Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1}, Lcom/lge/media/CamcorderProfileEx;->native_get_camcorder_profile(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v1

    return-object v1
.end method

.method public static hasProfile(I)Z
    .locals 4
    .parameter "quality"

    .prologue
    .line 391
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 392
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 393
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 394
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 395
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 396
    invoke-static {v1, p0}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v3

    .line 399
    :goto_1
    return v3

    .line 393
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static hasProfile(II)Z
    .locals 1
    .parameter "cameraId"
    .parameter "quality"

    .prologue
    .line 409
    invoke-static {p0, p1}, Lcom/lge/media/CamcorderProfileEx;->native_has_camcorder_profile(II)Z

    move-result v0

    return v0
.end method

.method private static final native native_get_camcorder_profile(II)Lcom/lge/media/CamcorderProfileEx;
.end method

.method private static final native native_has_camcorder_profile(II)Z
.end method

.method private static final native native_init()V
.end method
