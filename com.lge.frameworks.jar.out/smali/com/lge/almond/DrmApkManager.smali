.class public final Lcom/lge/almond/DrmApkManager;
.super Ljava/lang/Object;
.source "DrmApkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/almond/DrmApkManager$DrmApkInfo;
    }
.end annotation


# static fields
.field public static final DRM_VERSION:Ljava/lang/String; = "1.0.1"

.field public static final LGDRM_ALMOND:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "lgalmond"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const-string v0, "ro.lge.capp_almond"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/almond/DrmApkManager;->LGDRM_ALMOND:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getProtectionInfo(Ljava/lang/String;)Lcom/lge/almond/DrmApkManager$DrmApkInfo;
    .locals 4
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 125
    sget-boolean v3, Lcom/lge/almond/DrmApkManager;->LGDRM_ALMOND:Z

    if-nez v3, :cond_1

    move-object v0, v2

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    if-nez p0, :cond_2

    .line 130
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter filename is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_2
    const-string v3, ".apk"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v2

    .line 135
    goto :goto_0

    .line 138
    :cond_3
    new-instance v0, Lcom/lge/almond/DrmApkManager$DrmApkInfo;

    invoke-direct {v0}, Lcom/lge/almond/DrmApkManager$DrmApkInfo;-><init>()V

    .line 139
    .local v0, dexInfo:Lcom/lge/almond/DrmApkManager$DrmApkInfo;
    invoke-static {p0, v0}, Lcom/lge/almond/DrmApkManager;->nativeGetProtectionInfo(Ljava/lang/String;Lcom/lge/almond/DrmApkManager$DrmApkInfo;)I

    move-result v1

    .line 140
    .local v1, retVal:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    move-object v0, v2

    .line 142
    goto :goto_0

    .line 145
    :cond_4
    if-nez v1, :cond_0

    move-object v0, v2

    .line 147
    goto :goto_0
.end method

.method public static isProtected(Ljava/lang/String;)Z
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 100
    sget-boolean v1, Lcom/lge/almond/DrmApkManager;->LGDRM_ALMOND:Z

    if-nez v1, :cond_0

    .line 112
    :goto_0
    return v0

    .line 104
    :cond_0
    if-nez p0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    const-string v1, ".odex"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v2, v1, :cond_2

    .line 109
    invoke-static {p0, v2}, Lcom/lge/almond/DrmApkManager;->nativeIsProtected(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {p0, v0}, Lcom/lge/almond/DrmApkManager;->nativeIsProtected(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static native nativeGetProtectionInfo(Ljava/lang/String;Lcom/lge/almond/DrmApkManager$DrmApkInfo;)I
.end method

.method private static native nativeIsProtected(Ljava/lang/String;Z)Z
.end method
