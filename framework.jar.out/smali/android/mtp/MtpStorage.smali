.class public Landroid/mtp/MtpStorage;
.super Ljava/lang/Object;
.source "MtpStorage.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mMaxFileSize:J

.field private final mPath:Ljava/lang/String;

.field private mReadOnly:Z

.field private final mRemovable:Z

.field private final mReserveSpace:J

.field private final mStorageId:I


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V
    .locals 4
    .parameter "volume"
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x400

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v0

    iput v0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    .line 43
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getDescriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/mtp/MtpStorage;->mReserveSpace:J

    .line 46
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    .line 48
    return-void
.end method

.method public static getStorageId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 68
    add-int/lit8 v0, p0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getReserveSpace()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mReserveSpace:J

    return-wide v0
.end method

.method public final getStorageId()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    return v0
.end method

.method public final isRemovable()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    return v0
.end method

.method public setAccessCapability(Z)V
    .locals 0
    .parameter "readOnly"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/mtp/MtpStorage;->mReadOnly:Z

    .line 120
    return-void
.end method
