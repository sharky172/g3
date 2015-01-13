.class public Lcom/lge/systemservice/core/LGSDEncManager;
.super Ljava/lang/Object;
.source "LGSDEncManager.java"


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.sdencryption"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/ILGSDEncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/lge/systemservice/core/LGSDEncManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getSDEncSupportStatus(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 370
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nosdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    :cond_0
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final getService()Lcom/lge/systemservice/core/ILGSDEncManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v0, :cond_0

    .line 29
    const-string v0, "lgsdencryption"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    return-object v0
.end method


# virtual methods
.method public MDMStorageEncryptionStatus()Z
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 348
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->MDMStorageEncryptionStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 355
    :goto_0
    return v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 354
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public StorageEncryptionStatus()I
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 280
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->StorageEncryptionStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_0
    return v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardCheckMemory()I
    .locals 3

    .prologue
    .line 386
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 390
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardCheckMemory()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    :goto_0
    return v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 396
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardDisableEncryption(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 79
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardDisableEncryption(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardEnableEncryption(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 51
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardEnableEncryption(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 59
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardFullDisableEncryption(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 133
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardFullDisableEncryption(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardFullEnableEncryption(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 106
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardFullEnableEncryption(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardFullTotalMemory(J)I
    .locals 3
    .parameter "totalMemory"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 157
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardFullTotalMemory(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 164
    :goto_0
    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardMediaDisableEncryption()I
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 201
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardMediaDisableEncryption()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 208
    :goto_0
    return v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardMediaDisableEncryption(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->externalSDCardMediaDisableEncryption()I

    move-result v0

    return v0
.end method

.method public externalSDCardMediaEnableEncryption()I
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 179
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardMediaEnableEncryption()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    :goto_0
    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardMediaEnableEncryption(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->externalSDCardMediaEnableEncryption()I

    move-result v0

    return v0
.end method

.method public externalSDCardMountComplete(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 255
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardMountComplete(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 262
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 261
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getExternalSDCardMountPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 324
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->getExternalSDCardMountPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 331
    :goto_0
    return-object v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 330
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInternalSDCardMountPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 302
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->getInternalSDCardMountPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 309
    :goto_0
    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 308
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProgressing()Z
    .locals 3

    .prologue
    .line 429
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 433
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->isProgressing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 440
    :goto_0
    return v1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 439
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProgressing(Z)I
    .locals 3
    .parameter "isProgressing"

    .prologue
    .line 407
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 411
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->setProgressing(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 418
    :goto_0
    return v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 417
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v1, -0x1

    goto :goto_0
.end method
