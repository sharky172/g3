.class public Landroid/os/MemoryFile;
.super Ljava/lang/Object;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MemoryFile$1;,
        Landroid/os/MemoryFile$MemoryOutputStream;,
        Landroid/os/MemoryFile$MemoryInputStream;
    }
.end annotation


# static fields
.field protected static final PROT_READ:I = 0x1

.field protected static final PROT_WRITE:I = 0x2

.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected mAddress:I

.field private mAllowPurging:Z

.field protected mFD:Ljava/io/FileDescriptor;

.field protected mLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "MemoryFile"

    sput-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 76
    iput p2, p0, Landroid/os/MemoryFile;->mLength:I

    .line 77
    invoke-static {p1, p2}, Landroid/os/MemoryFile;->native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    .line 78
    if-lez p2, :cond_0

    .line 79
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    const/4 v1, 0x3

    invoke-static {v0, p2, v1}, Landroid/os/MemoryFile;->native_mmap(Ljava/io/FileDescriptor;II)I

    move-result v0

    iput v0, p0, Landroid/os/MemoryFile;->mAddress:I

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iput v1, p0, Landroid/os/MemoryFile;->mAddress:I

    goto :goto_0
.end method

.method public static getSize(Ljava/io/FileDescriptor;)I
    .locals 1
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeactivated()Z
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Landroid/os/MemoryFile;->mAddress:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native native_close(Ljava/io/FileDescriptor;)V
.end method

.method private static native native_get_size(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_mmap(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_munmap(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_pin(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_read(Ljava/io/FileDescriptor;I[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_write(Ljava/io/FileDescriptor;I[BIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized allowPurging(Z)Z
    .locals 3
    .parameter "allowPurging"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 163
    .local v0, oldValue:Z
    if-eq v0, p1, :cond_0

    .line 164
    iget-object v2, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)V

    .line 165
    iput-boolean p1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit p0

    return v0

    .line 164
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    .end local v0           #oldValue:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/os/MemoryFile;->deactivate()V

    .line 91
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/MemoryFile;->native_close(Ljava/io/FileDescriptor;)V

    .line 94
    :cond_0
    return-void
.end method

.method deactivate()V
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    :try_start_0
    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget v2, p0, Landroid/os/MemoryFile;->mLength:I

    invoke-static {v1, v2}, Landroid/os/MemoryFile;->native_munmap(II)V

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/MemoryFile;->mAddress:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, ex:Ljava/io/IOException;
    sget-object v1, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    const-string v1, "MemoryFile.finalize() called while ashmem still open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Landroid/os/MemoryFile;->close()V

    .line 134
    :cond_0
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/os/MemoryFile$MemoryInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/os/MemoryFile$MemoryOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public isPurgingAllowed()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    return v0
.end method

.method public readBytes([BIII)I
    .locals 7
    .parameter "buffer"
    .parameter "srcOffset"
    .parameter "destOffset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t read from deactivated memory file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    if-ltz p3, :cond_1

    array-length v0, p1

    if-gt p3, v0, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p2, v0, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    sub-int/2addr v0, p2

    if-le p4, v0, :cond_2

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 210
    :cond_2
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget-boolean v6, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/MemoryFile;->native_read(Ljava/io/FileDescriptor;I[BIIIZ)I

    move-result v0

    return v0
.end method

.method public writeBytes([BIII)V
    .locals 7
    .parameter "buffer"
    .parameter "srcOffset"
    .parameter "destOffset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t write to deactivated memory file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p4, v0, :cond_1

    if-ltz p3, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p3, v0, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    sub-int/2addr v0, p3

    if-le p4, v0, :cond_2

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 234
    :cond_2
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget-boolean v6, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/MemoryFile;->native_write(Ljava/io/FileDescriptor;I[BIIIZ)V

    .line 235
    return-void
.end method
