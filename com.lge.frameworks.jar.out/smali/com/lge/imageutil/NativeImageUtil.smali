.class public Lcom/lge/imageutil/NativeImageUtil;
.super Ljava/lang/Object;
.source "NativeImageUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "nativeImageUtil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeGetBlur(Landroid/graphics/Bitmap;I)I
.end method

.method public static native nativeGetBlurredImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method public static native nativeGetBrightness(Landroid/graphics/Bitmap;)I
.end method

.method public static native nativeGetBrightnessWithRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
.end method

.method public static native nativeGetCartoonizedImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native nativeGetContourMarkedImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method public static native nativeGetContourRatio(Landroid/graphics/Bitmap;I)I
.end method

.method public static native nativeGetContourRatioWithRect(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)I
.end method

.method public static native nativeGetGrayscaledImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native nativeGetMeanColor(Landroid/graphics/Bitmap;)I
.end method

.method public static native nativeGetModeColor(Landroid/graphics/Bitmap;I)I
.end method

.method public static native nativeGetSharpenImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method public static native nativeIsBrightByFrequency(Landroid/graphics/Bitmap;I)Z
.end method

.method public static native nativeIsBrightByMean(Landroid/graphics/Bitmap;I)Z
.end method
