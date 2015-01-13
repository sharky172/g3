.class public Lcom/lge/imageutil/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final USE_NDK:Z = true

.field public static final VERSION:Ljava/lang/String; = "v0.1.7"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlur(Landroid/graphics/Bitmap;)I
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    const/16 v0, 0x2710

    .line 42
    .local v0, THRESHOLD:I
    const/16 v1, 0x2710

    invoke-static {p0, v1}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetBlur(Landroid/graphics/Bitmap;I)I

    move-result v1

    return v1
.end method

.method public static getBlurredImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bitmap"
    .parameter "window"

    .prologue
    .line 281
    if-nez p0, :cond_0

    .line 282
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 287
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 286
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    .local v0, resultBitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p1}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetBlurredImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 289
    return-object v0
.end method

.method public static getBrightness(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetBrightness(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public static getBrightness(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 2
    .parameter "bitmap"
    .parameter "rect"

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-static {p0, p1}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetBrightnessWithRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public static getCatoonizedImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 258
    if-nez p0, :cond_0

    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 264
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 263
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    .local v0, resultBitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetCartoonizedImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 266
    return-object v0
.end method

.method public static getContourMarkedImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bitmap"
    .parameter "threshold"

    .prologue
    .line 328
    if-nez p0, :cond_0

    .line 329
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 334
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 333
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    .local v0, resultBitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p1}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetContourMarkedImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 336
    return-object v0
.end method

.method public static getContourRatio(Landroid/graphics/Bitmap;I)I
    .locals 2
    .parameter "bitmap"
    .parameter "threshold"

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    invoke-static {p0, p1}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetContourRatio(Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method public static getContourRatio(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)I
    .locals 2
    .parameter "bitmap"
    .parameter "threshold"
    .parameter "rect"

    .prologue
    .line 198
    if-nez p0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetContourRatioWithRect(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public static getGrayscaledImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 236
    if-nez p0, :cond_0

    .line 237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 242
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 241
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    .local v0, resultBitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetGrayscaledImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 244
    return-object v0
.end method

.method public static getMeanColor(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetMeanColor(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public static getModeColor(Landroid/graphics/Bitmap;I)I
    .locals 2
    .parameter "bitmap"
    .parameter "threshold"

    .prologue
    .line 218
    if-nez p0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    invoke-static {p0, p1}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetModeColor(Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method public static getSharpenImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bitmap"
    .parameter "window"

    .prologue
    .line 304
    if-nez p0, :cond_0

    .line 305
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 310
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 309
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    .local v0, resultBitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p1}, Lcom/lge/imageutil/NativeImageUtil;->nativeGetSharpenImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 312
    return-object v0
.end method

.method public static isBright(Landroid/graphics/Bitmap;I)Z
    .locals 1
    .parameter "bitmap"
    .parameter "threshold"

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/lge/imageutil/ImageUtil;->isBrightByFrequency(Landroid/graphics/Bitmap;I)Z

    move-result v0

    return v0
.end method

.method public static isBrightByFrequency(Landroid/graphics/Bitmap;I)Z
    .locals 2
    .parameter "bitmap"
    .parameter "threshold"

    .prologue
    .line 135
    if-nez p0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-static {p0, p1}, Lcom/lge/imageutil/NativeImageUtil;->nativeIsBrightByFrequency(Landroid/graphics/Bitmap;I)Z

    move-result v0

    return v0
.end method

.method public static isBrightByMean(Landroid/graphics/Bitmap;I)Z
    .locals 2
    .parameter "bitmap"
    .parameter "threshold"

    .prologue
    .line 113
    if-nez p0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-static {p0, p1}, Lcom/lge/imageutil/NativeImageUtil;->nativeIsBrightByMean(Landroid/graphics/Bitmap;I)Z

    move-result v0

    return v0
.end method
