.class public Lcom/lge/systemservice/core/VolumeVibratorManager;
.super Ljava/lang/Object;
.source "VolumeVibratorManager.java"

# interfaces
.implements Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.volumevibrator"

.field private static final TAG:Ljava/lang/String; = null

.field public static final VIBRATE_DEFAULT_VOLUME:I = 0x5

.field public static final VIBRATE_MAX_VOLUME:I = 0x7

.field public static final VIBRATE_NONE_VOLUME:I = -0x1

.field public static final VIBRATE_NUM_TYPE:I = 0x3

.field public static final VIBRATE_TYPE_HAPTIC:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RING:I

.field private static sVolumeVibratorManager:Lcom/lge/systemservice/core/IVolumeVibratorManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mToken:Landroid/os/Binder;

.field private mVolumeValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/lge/systemservice/core/VolumeVibratorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    .line 61
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    .line 73
    const-string v3, "ro.lge.vib_magnitude_index"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, vibrateVolume:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 75
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.lge.vib_magnitude_index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, vibteteVolumeIndex:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 79
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialize mVolumeValue["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0           #i:I
    .end local v2           #vibteteVolumeIndex:[Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mContext:Landroid/content/Context;

    .line 83
    return-void

    .line 61
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
        0xedt 0x17t 0x0t 0x0t
        0x6bt 0x1dt 0x0t 0x0t
        0x80t 0x38t 0x1t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/IVolumeVibratorManager;)Lcom/lge/systemservice/core/IVolumeVibratorManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    sput-object p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVolumeVibratorManager:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    return-object p0
.end method

.method private static getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 87
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVolumeVibratorManager:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    if-nez v2, :cond_0

    .line 89
    :try_start_0
    const-string v2, "volumevibrator"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v2

    sput-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVolumeVibratorManager:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    .line 90
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVolumeVibratorManager:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/lge/systemservice/core/VolumeVibratorManager$1;

    invoke-direct {v3}, Lcom/lge/systemservice/core/VolumeVibratorManager$1;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVolumeVibratorManager:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "VolumeVibratorService is null"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 98
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getService() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVolumeVibratorManager:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sput-object v1, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVolumeVibratorManager:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 178
    invoke-static {}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 179
    .local v1, service:Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "cancel()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to cancel vibration."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVibrateVolume()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-static {}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 221
    .local v1, service:Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_0

    .line 228
    :goto_0
    return v2

    .line 224
    :cond_0
    :try_start_0
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "getVibrateVolume"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-interface {v1}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->getVibrateVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to getVibrateVolume."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVibrateVolume(I)I
    .locals 7
    .parameter "vibrateType"

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-static {}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v2

    .line 267
    .local v2, service:Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v2, :cond_0

    .line 277
    :goto_0
    return v3

    .line 270
    :cond_0
    const/4 v1, 0x5

    .line 271
    .local v1, mVolume:I
    if-ltz p1, :cond_1

    const/4 v4, 0x3

    if-ge p1, v4, :cond_1

    .line 273
    :try_start_0
    sget-object v4, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVibrateVolume vibrateType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->getVibrateVolumeType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to setVibrateVolume."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 280
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public setVibrateMute(Z)V
    .locals 6
    .parameter "state"

    .prologue
    .line 292
    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, callingPackage:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v2

    .line 294
    .local v2, service:Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v2, :cond_0

    .line 303
    :goto_0
    return-void

    .line 298
    :cond_0
    :try_start_0
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVibrateMute() change to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " called by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    invoke-interface {v2, p1, v0, v3}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->setVibrateMute(ZLjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to setVibrateMute."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrateVolume(I)V
    .locals 5
    .parameter "volumeIndex"

    .prologue
    .line 197
    invoke-static {}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 198
    .local v1, service:Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 200
    :cond_0
    if-ltz p1, :cond_1

    const/4 v2, 0x7

    if-gt p1, v2, :cond_1

    .line 202
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->setVibrateVolume(I)V

    .line 203
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVibrateVolume() volumeIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to setVibrateVolume."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 208
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public setVibrateVolume(II)V
    .locals 5
    .parameter "vibrateType"
    .parameter "volumeIndex"

    .prologue
    .line 241
    invoke-static {}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 242
    .local v1, service:Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 244
    :cond_0
    if-ltz p2, :cond_1

    const/4 v2, 0x7

    if-gt p2, v2, :cond_1

    if-ltz p1, :cond_1

    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    .line 247
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->setVibrateVolumeType(II)V

    .line 248
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVibrateVolume vibrateType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volumeIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to setVibrateVolume."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 253
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public vibrate(JI)V
    .locals 5
    .parameter "milliseconds"
    .parameter "volumeIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 118
    .local v1, service:Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 120
    :cond_0
    if-ltz p3, :cond_1

    const/4 v2, 0x7

    if-gt p3, v2, :cond_1

    .line 122
    :try_start_0
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrate() milliseconds "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volumeIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget v2, v2, p3

    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->vibrate(JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to vibrate."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public vibrate([JI[I)V
    .locals 7
    .parameter "pattern"
    .parameter "repeat"
    .parameter "volumeIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v3

    .line 151
    .local v3, service:Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v3, :cond_0

    .line 170
    :goto_0
    return-void

    .line 156
    :cond_0
    array-length v4, p1

    if-ge p2, v4, :cond_2

    array-length v4, p1

    array-length v5, p3

    if-ne v4, v5, :cond_2

    .line 158
    :try_start_0
    array-length v4, p3

    new-array v0, v4, [I

    .line 159
    .local v0, NaturalVolumeIndex:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p3

    if-ge v2, v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget v5, p3, v2

    aget v4, v4, v5

    aput v4, v0, v2

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    :cond_1
    sget-object v4, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vibratePattern()  volumeIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v4, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    invoke-interface {v3, p1, p2, v0, v4}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->vibratePattern([JI[ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v0           #NaturalVolumeIndex:[I
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to vibrate."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 168
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4
.end method
