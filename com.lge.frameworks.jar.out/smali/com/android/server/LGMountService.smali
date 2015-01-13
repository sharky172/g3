.class Lcom/android/server/LGMountService;
.super Lcom/android/server/MountService;
.source "LGMountService.java"


# static fields
.field static final NOSDCARD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nosdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LGMountService;->NOSDCARD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected readStorageListLocked()V
    .locals 15

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    invoke-super {p0}, Lcom/android/server/MountService;->readStorageListLocked()V

    .line 30
    sget-boolean v1, Lcom/android/server/LGMountService;->NOSDCARD:Z

    if-ne v1, v4, :cond_1

    .line 46
    :cond_0
    return-void

    .line 34
    :cond_1
    new-instance v0, Landroid/os/storage/StorageVolume;

    new-instance v1, Ljava/io/File;

    const-string v2, "/storage/external_SD"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v2, 0x20d030a

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v10}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 35
    .local v0, volumesd:Landroid/os/storage/StorageVolume;
    const-string v1, "MountService"

    const-string v2, "/storage/external_SD, 34407178, false, true, false, 0, false, 0, null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_3

    move v12, v4

    .line 41
    .local v12, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/StorageVolume;

    .line 42
    .local v14, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .local v13, index:I
    invoke-virtual {v14, v12}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_1

    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #index:I
    .end local v14           #volume:Landroid/os/storage/StorageVolume;
    :cond_3
    move v12, v3

    .line 40
    goto :goto_0
.end method
