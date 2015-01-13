.class public Lcom/lge/bnr/framework/LGBackupZip;
.super Ljava/lang/Object;
.source "LGBackupZip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final COMPRESSION_LEVEL:I = 0x0

.field public static final EXTERNAL_STORAGE:Ljava/lang/String; = "/external@"

#the value of this static final field might be set in the static constructor
.field private static final FS:C = '\u0000'

.field public static final INTERNAL_STORAGE:Ljava/lang/String; = "/internal@"

.field private static final LOG_TAG:Ljava/lang/String; = "[BNRZip]"

.field public static final ONLYEXTERNAL_STORAGE:Ljava/lang/String; = "/onlyExternal@"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/lge/bnr/framework/LGBackupZip;->FS:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private calculateProgressRatio(Ljava/util/List;I)Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    .locals 15
    .parameter
    .parameter "progressRange"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;I)",
            "Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 58
    .local p1, pSrcFileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    new-instance v9, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v9, p0, v12}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;-><init>(Lcom/lge/bnr/framework/LGBackupZip;I)V

    .line 60
    .local v9, progress:Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    invoke-direct/range {p0 .. p1}, Lcom/lge/bnr/framework/LGBackupZip;->getTotalFileSize(Ljava/util/List;)J

    move-result-wide v5

    .line 62
    .local v5, lTotalFileSize:J
    const/4 v11, 0x0

    .line 63
    .local v11, total_Progress:I
    const/4 v7, 0x0

    .line 64
    .local v7, max:I
    const/4 v8, 0x0

    .line 65
    .local v8, max_index:I
    const/4 v1, 0x0

    .line 67
    .local v1, belowOneCnt:B
    const-wide/16 v12, 0x0

    cmp-long v12, v5, v12

    if-gtz v12, :cond_0

    .line 68
    new-instance v12, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v13, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-direct {v12, v13}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;)V

    throw v12

    .line 72
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_2

    .line 74
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 76
    .local v2, filesize:J
    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v12

    move/from16 v0, p2

    int-to-long v13, v0

    mul-long/2addr v13, v2

    div-long/2addr v13, v5

    long-to-int v13, v13

    aput v13, v12, v4

    .line 78
    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v12

    aget v12, v12, v4

    const/4 v13, 0x1

    if-ge v12, v13, :cond_1

    .line 79
    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v12

    const/4 v13, 0x1

    aput v13, v12, v4

    .line 80
    add-int/lit8 v12, v1, 0x1

    int-to-byte v1, v12

    .line 83
    :cond_1
    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v12

    aget v12, v12, v4

    add-int/2addr v11, v12

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    .end local v2           #filesize:J
    :cond_2
    move/from16 v0, p2

    if-le v11, v0, :cond_5

    .line 88
    const/4 v4, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    .line 89
    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v12

    aget v12, v12, v4

    if-le v12, v7, :cond_3

    .line 90
    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v12

    aget v7, v12, v4

    .line 91
    move v8, v4

    .line 88
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 95
    :cond_4
    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v12

    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v13, v13, v8

    sub-int/2addr v13, v1

    aput v13, v12, v8

    .line 98
    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_7

    .line 99
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 101
    .restart local v2       #filesize:J
    const-wide/16 v12, 0x800

    div-long v12, v2, v12

    long-to-int v10, v12

    .line 103
    .local v10, step:I
    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v12

    aget v12, v12, v4

    if-gtz v12, :cond_6

    .line 105
    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v12

    const/4 v13, 0x1

    aput v13, v12, v4

    .line 108
    :cond_6
    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->stepPerOneProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$100(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v12

    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v9}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v13, v13, v4

    div-int v13, v10, v13

    aput v13, v12, v4

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 112
    .end local v2           #filesize:J
    .end local v10           #step:I
    :cond_7
    return-object v9
.end method

.method private getTotalFileSize(Ljava/util/List;)J
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, pSrcFileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const-wide/16 v1, 0x0

    .line 48
    .local v1, lTotalFileSize:J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 49
    .local v3, srcFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_0

    .line 52
    .end local v3           #srcFile:Ljava/io/File;
    :cond_0
    return-wide v1
.end method

.method private writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    .locals 2
    .parameter "packageName"
    .parameter "fileName"
    .parameter "baos"
    .parameter "bnr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, zipOutput:[B
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 123
    array-length v1, v0

    if-lez v1, :cond_0

    .line 125
    array-length v1, v0

    invoke-interface {p4, p1, p2, v0, v1}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->transferByteArray(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 126
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public closeStreamSilently(Ljava/io/InputStream;)V
    .locals 1
    .parameter "pInStreamObj"

    .prologue
    .line 415
    if-eqz p1, :cond_0

    .line 417
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public closeStreamSilently(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "pOutStreamObj"

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 407
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public unzip(Ljava/lang/String;Ljava/lang/String;Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/lang/String;JJII)Ljava/util/ArrayList;
    .locals 32
    .parameter "pZipFileName"
    .parameter "pUnZipDirPath"
    .parameter "bnr"
    .parameter "packageName"
    .parameter "offset"
    .parameter "zipSrcLength"
    .parameter "startProgress"
    .parameter "endProgress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/bnr/framework/IBNRFrameworkAPI;",
            "Ljava/lang/String;",
            "JJII)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v20, sUnzipFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 269
    .local v17, raf:Ljava/io/RandomAccessFile;
    const/16 v26, 0x0

    .line 270
    .local v26, zipInputStream:Ljava/util/zip/ZipInputStream;
    const/4 v11, 0x0

    .line 271
    .local v11, fis:Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 273
    .local v13, fos:Ljava/io/FileOutputStream;
    move/from16 v3, p9

    .line 275
    .local v3, accumulateProgress:I
    const-wide/16 v21, 0x0

    .line 277
    .local v21, stepPerOneProgress:J
    const-wide/16 v28, 0x1

    mul-long v9, p7, v28

    .line 279
    .local v9, estimateZipOutLength:J
    sub-int v6, p10, p9

    .line 281
    .local v6, completeProgress:I
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ge v6, v0, :cond_0

    .line 282
    const/16 p9, 0x0

    .line 283
    const/16 p10, 0x64

    .line 284
    sub-int v6, p10, p9

    .line 287
    :cond_0
    const-wide/16 v28, 0x200

    div-long v28, v9, v28

    int-to-long v0, v6

    move-wide/from16 v30, v0

    div-long v21, v28, v30

    .line 289
    const-wide/16 v24, 0x0

    .line 293
    .local v24, writeCnt:J
    :try_start_0
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string v28, "r"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 295
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .local v18, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    move-object/from16 v0, v18

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 297
    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 299
    .end local v11           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v27, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v27

    invoke-direct {v0, v12}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .local v27, zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v14, v13

    .line 303
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .local v14, fos:Ljava/io/FileOutputStream;
    :goto_0
    if-nez v27, :cond_3

    .line 304
    const/16 v20, 0x0

    .line 377
    .end local v20           #sUnzipFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v28, "JGZIP"

    const-string v29, "unZipfile = finally"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v18, :cond_2

    .line 381
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 384
    if-eqz v27, :cond_1

    .line 385
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 395
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 401
    :cond_2
    return-object v20

    .line 307
    .restart local v20       #sUnzipFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_5
    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 309
    .local v8, entry:Ljava/util/zip/ZipEntry;
    if-nez v8, :cond_5

    .line 310
    const-string v28, "JGZIP"

    const-string v29, "no more Zip file entry"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v1, v2}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setRestoreProgress(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 377
    const-string v28, "JGZIP"

    const-string v29, "unZipfile = finally"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v18, :cond_2

    .line 381
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 384
    if-eqz v27, :cond_4

    .line 385
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 395
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    goto :goto_2

    .line 315
    :cond_5
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    .line 316
    .local v19, sCurrentEntry:Ljava/lang/String;
    const-string v28, "JGZIP"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "sCurrentEntry "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-nez p2, :cond_8

    .line 321
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v23, targetFile:Ljava/io/File;
    :goto_4
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v16, parentFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_6

    .line 329
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 331
    :cond_6
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 333
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 334
    .local v15, iCount:I
    const/16 v28, 0x800

    :try_start_9
    move/from16 v0, v28

    new-array v5, v0, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    .line 336
    .local v5, buffer:[B
    if-eqz v27, :cond_c

    move v4, v3

    .line 337
    .end local v3           #accumulateProgress:I
    .local v4, accumulateProgress:I
    :cond_7
    :goto_5
    const/16 v28, 0x0

    const/16 v29, 0x800

    :try_start_a
    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v5, v1, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    move-result v15

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v15, v0, :cond_b

    .line 340
    const/16 v28, 0x0

    :try_start_b
    move/from16 v0, v28

    invoke-virtual {v13, v5, v0, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1

    .line 348
    const-wide/16 v28, 0x1

    add-long v24, v24, v28

    cmp-long v28, v24, v21

    if-nez v28, :cond_7

    .line 349
    move/from16 v0, p10

    if-ge v4, v0, :cond_d

    .line 350
    add-int/lit8 v3, v4, 0x1

    .end local v4           #accumulateProgress:I
    .restart local v3       #accumulateProgress:I
    :try_start_c
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v4}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setRestoreProgress(Ljava/lang/String;I)V

    .line 351
    const-string v28, "JGZIP"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "bnr.setRestoreProgress(packageName, accumulateProgress) "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    .line 355
    :goto_6
    const-wide/16 v24, 0x0

    move v4, v3

    .end local v3           #accumulateProgress:I
    .restart local v4       #accumulateProgress:I
    goto :goto_5

    .line 323
    .end local v4           #accumulateProgress:I
    .end local v5           #buffer:[B
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v15           #iCount:I
    .end local v16           #parentFile:Ljava/io/File;
    .end local v23           #targetFile:Ljava/io/File;
    .restart local v3       #accumulateProgress:I
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :cond_8
    :try_start_d
    new-instance v23, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-char v29, Lcom/lge/bnr/framework/LGBackupZip;->FS:C

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .restart local v23       #targetFile:Ljava/io/File;
    goto/16 :goto_4

    .line 341
    .end local v3           #accumulateProgress:I
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #accumulateProgress:I
    .restart local v5       #buffer:[B
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v15       #iCount:I
    .restart local v16       #parentFile:Ljava/io/File;
    :catch_0
    move-exception v7

    .line 342
    .local v7, e:Ljava/io/IOException;
    :try_start_e
    const-string v28, "JGZIP"

    const-string v29, "removed sd card or no space"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 344
    new-instance v28, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v29, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_WRITE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v28
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 366
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    move v3, v4

    .end local v4           #accumulateProgress:I
    .restart local v3       #accumulateProgress:I
    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v26       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object/from16 v17, v18

    .line 367
    .end local v5           #buffer:[B
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v15           #iCount:I
    .end local v16           #parentFile:Ljava/io/File;
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .end local v19           #sCurrentEntry:Ljava/lang/String;
    .end local v23           #targetFile:Ljava/io/File;
    .local v7, e:Ljava/io/FileNotFoundException;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    :goto_7
    :try_start_f
    const-string v28, "JGZIP"

    const-string v29, "unZipfile = FileNotFoundException"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 369
    new-instance v28, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v29, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v28
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 377
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v28

    :goto_8
    const-string v29, "JGZIP"

    const-string v30, "unZipfile = finally"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v17, :cond_a

    .line 381
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    .line 384
    if-eqz v26, :cond_9

    .line 385
    :try_start_11
    invoke-virtual/range {v26 .. v26}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 395
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 377
    :cond_a
    throw v28

    .end local v3           #accumulateProgress:I
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v4       #accumulateProgress:I
    .restart local v5       #buffer:[B
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v15       #iCount:I
    .restart local v16       #parentFile:Ljava/io/File;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v19       #sCurrentEntry:Ljava/lang/String;
    .restart local v23       #targetFile:Ljava/io/File;
    .restart local v27       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :cond_b
    move v3, v4

    .line 360
    .end local v4           #accumulateProgress:I
    .restart local v3       #accumulateProgress:I
    :cond_c
    :try_start_12
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 362
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    move-object v14, v13

    .line 364
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 370
    .end local v5           #buffer:[B
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v12           #fis:Ljava/io/FileInputStream;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .end local v15           #iCount:I
    .end local v16           #parentFile:Ljava/io/File;
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .end local v19           #sCurrentEntry:Ljava/lang/String;
    .end local v23           #targetFile:Ljava/io/File;
    .end local v27           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    .restart local v26       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v7

    .line 371
    .local v7, e:Ljava/io/IOException;
    :goto_b
    :try_start_13
    const-string v28, "JGZIP"

    const-string v29, "unZipfile = IOException"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 373
    new-instance v28, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v29, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_READ:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v28
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 387
    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 388
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_14
    const-string v29, "JGZIP"

    const-string v30, "zipInputStream close exception"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4

    goto :goto_9

    .line 391
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 392
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_15
    const-string v29, "JGZIP"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    goto :goto_a

    .end local v7           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v28

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 395
    throw v28

    .line 387
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v20           #sUnzipFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v27       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_5
    move-exception v7

    .line 388
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_16
    const-string v28, "JGZIP"

    const-string v29, "zipInputStream close exception"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_1

    .line 391
    .end local v7           #e:Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 392
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_17
    const-string v28, "JGZIP"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .end local v7           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v28

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 395
    throw v28

    .line 387
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v20       #sUnzipFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_7
    move-exception v7

    .line 388
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_18
    const-string v28, "JGZIP"

    const-string v29, "zipInputStream close exception"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8

    goto/16 :goto_3

    .line 391
    .end local v7           #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 392
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_19
    const-string v28, "JGZIP"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .end local v7           #e:Ljava/io/IOException;
    :catchall_3
    move-exception v28

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 395
    throw v28

    .line 377
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v12           #fis:Ljava/io/FileInputStream;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .end local v27           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v26       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catchall_4
    move-exception v28

    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :catchall_5
    move-exception v28

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v27       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catchall_6
    move-exception v28

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v26       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v15       #iCount:I
    .restart local v16       #parentFile:Ljava/io/File;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v19       #sCurrentEntry:Ljava/lang/String;
    .restart local v23       #targetFile:Ljava/io/File;
    .restart local v27       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catchall_7
    move-exception v28

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v26       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .end local v3           #accumulateProgress:I
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v4       #accumulateProgress:I
    .restart local v5       #buffer:[B
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v27       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catchall_8
    move-exception v28

    move v3, v4

    .end local v4           #accumulateProgress:I
    .restart local v3       #accumulateProgress:I
    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v26       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .line 370
    .end local v5           #buffer:[B
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v15           #iCount:I
    .end local v16           #parentFile:Ljava/io/File;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v19           #sCurrentEntry:Ljava/lang/String;
    .end local v23           #targetFile:Ljava/io/File;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v7

    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_b

    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v7

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_b

    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v27       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_b
    move-exception v7

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v26       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_b

    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v15       #iCount:I
    .restart local v16       #parentFile:Ljava/io/File;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v19       #sCurrentEntry:Ljava/lang/String;
    .restart local v23       #targetFile:Ljava/io/File;
    .restart local v27       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_c
    move-exception v7

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v26       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_b

    .end local v3           #accumulateProgress:I
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v4       #accumulateProgress:I
    .restart local v5       #buffer:[B
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v27       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_d
    move-exception v7

    move v3, v4

    .end local v4           #accumulateProgress:I
    .restart local v3       #accumulateProgress:I
    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v26       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_b

    .line 366
    .end local v5           #buffer:[B
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v15           #iCount:I
    .end local v16           #parentFile:Ljava/io/File;
    .end local v19           #sCurrentEntry:Ljava/lang/String;
    .end local v23           #targetFile:Ljava/io/File;
    :catch_e
    move-exception v7

    goto/16 :goto_7

    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :catch_f
    move-exception v7

    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_7

    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :catch_10
    move-exception v7

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_7

    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v27       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_11
    move-exception v7

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v26       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_7

    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v15       #iCount:I
    .restart local v16       #parentFile:Ljava/io/File;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v19       #sCurrentEntry:Ljava/lang/String;
    .restart local v23       #targetFile:Ljava/io/File;
    .restart local v27       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_12
    move-exception v7

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v26       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object/from16 v17, v18

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_7

    .end local v3           #accumulateProgress:I
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .end local v26           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v4       #accumulateProgress:I
    .restart local v5       #buffer:[B
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    .restart local v27       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :cond_d
    move v3, v4

    .end local v4           #accumulateProgress:I
    .restart local v3       #accumulateProgress:I
    goto/16 :goto_6
.end method

.method public zipAIDL(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/lang/String;II)V
    .locals 27
    .parameter "pZipFileName"
    .parameter
    .parameter "rootPath"
    .parameter "bnr"
    .parameter "packageName"
    .parameter "startProgress"
    .parameter "endProgress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/lge/bnr/framework/IBNRFrameworkAPI;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 135
    .local p2, pSrcFileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const/16 v21, 0x0

    .line 136
    .local v21, zipOutputStream:Ljava/util/zip/ZipOutputStream;
    const/4 v14, 0x0

    .line 137
    .local v14, inputStream:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 138
    .local v5, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v13, 0x0

    .line 139
    .local v13, iEntryCount:I
    const/4 v10, 0x0

    .line 140
    .local v10, fileIndex:I
    const/16 v16, 0x0

    .line 142
    .local v16, numWriteCnt:I
    sub-int v8, p7, p6

    .line 144
    .local v8, completeProgress:I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ge v8, v0, :cond_0

    .line 145
    const/16 p6, 0x0

    .line 146
    const/16 p7, 0x64

    .line 147
    sub-int v8, p7, p6

    .line 150
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/lge/bnr/framework/LGBackupZip;->calculateProgressRatio(Ljava/util/List;I)Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;

    move-result-object v17

    .line 152
    .local v17, progress:Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    move/from16 v4, p6

    .line 155
    .local v4, accumulateProgress:I
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 156
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v22, Ljava/util/zip/ZipOutputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 157
    .end local v21           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .local v22, zipOutputStream:Ljava/util/zip/ZipOutputStream;
    const/16 v23, 0x0

    :try_start_2
    invoke-virtual/range {v22 .. v23}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 159
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    move-object v15, v14

    .end local v14           #inputStream:Ljava/io/BufferedInputStream;
    .local v15, inputStream:Ljava/io/BufferedInputStream;
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/io/File;

    .line 160
    .local v18, srcfile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 164
    const-string v23, "JGZIP"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "File "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Size "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 167
    .end local v15           #inputStream:Ljava/io/BufferedInputStream;
    .restart local v14       #inputStream:Ljava/io/BufferedInputStream;
    const/16 v20, 0x0

    .line 168
    .local v20, zipEntyPath:Ljava/lang/String;
    if-nez p3, :cond_2

    .line 169
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    .line 173
    :goto_1
    const-string v23, "JGZIP"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "zipEntyPath "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-nez v20, :cond_3

    move-object v15, v14

    .line 176
    .end local v14           #inputStream:Ljava/io/BufferedInputStream;
    .restart local v15       #inputStream:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 171
    .end local v15           #inputStream:Ljava/io/BufferedInputStream;
    .restart local v14       #inputStream:Ljava/io/BufferedInputStream;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    .line 178
    :cond_3
    new-instance v19, Ljava/util/zip/ZipEntry;

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 179
    .local v19, zentry:Ljava/util/zip/ZipEntry;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 180
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 181
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "file count = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 183
    if-nez v22, :cond_5

    .line 248
    const/16 v23, 0x0

    sput-boolean v23, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    .line 249
    const-string v23, "JGZIP"

    const-string v24, "Zipfile = finally"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v22, :cond_4

    if-lez v13, :cond_4

    .line 252
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 258
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 262
    .end local v18           #srcfile:Ljava/io/File;
    .end local v19           #zentry:Ljava/util/zip/ZipEntry;
    .end local v20           #zipEntyPath:Ljava/lang/String;
    :goto_3
    return-void

    .line 186
    .restart local v18       #srcfile:Ljava/io/File;
    .restart local v19       #zentry:Ljava/util/zip/ZipEntry;
    .restart local v20       #zipEntyPath:Ljava/lang/String;
    :cond_5
    :try_start_6
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 188
    const/4 v12, 0x0

    .line 189
    .local v12, iCount:I
    const/16 v23, 0x800

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 191
    .local v7, buffer:[B
    :cond_6
    :goto_4
    const/16 v23, 0x0

    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v7, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v12

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_9

    .line 194
    :try_start_7
    sget-boolean v23, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    if-eqz v23, :cond_8

    .line 195
    new-instance v23, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v24, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_CANCEL_ALL:Lcom/lge/bnr/framework/LGBackupErrorCode;

    const-string v25, "cancle"

    invoke-direct/range {v23 .. v25}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 202
    :catch_0
    move-exception v9

    .line 203
    .local v9, e:Ljava/io/IOException;
    :try_start_8
    const-string v23, "JGZIP"

    const-string v24, "removed sd card or no space"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 205
    :try_start_9
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V

    .line 206
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    .line 210
    :goto_5
    :try_start_a
    new-instance v23, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v24, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_WRITE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 241
    .end local v7           #buffer:[B
    .end local v9           #e:Ljava/io/IOException;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #iCount:I
    .end local v18           #srcfile:Ljava/io/File;
    .end local v19           #zentry:Ljava/util/zip/ZipEntry;
    .end local v20           #zipEntyPath:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v5, v6

    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v21, v22

    .line 242
    .end local v22           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .local v9, e:Ljava/io/FileNotFoundException;
    .restart local v21       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :goto_6
    :try_start_b
    const-string v23, "JGZIP"

    const-string v24, "Zipfile = FileNotFoundException"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v23, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v24, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 248
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v23

    :goto_7
    const/16 v24, 0x0

    sput-boolean v24, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    .line 249
    const-string v24, "JGZIP"

    const-string v25, "Zipfile = finally"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v21, :cond_7

    if-lez v13, :cond_7

    .line 252
    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 258
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 248
    throw v23

    .line 199
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v21           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buffer:[B
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #iCount:I
    .restart local v18       #srcfile:Ljava/io/File;
    .restart local v19       #zentry:Ljava/util/zip/ZipEntry;
    .restart local v20       #zipEntyPath:Ljava/lang/String;
    .restart local v22       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :cond_8
    const/16 v23, 0x0

    :try_start_d
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v7, v1, v12}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1

    .line 214
    add-int/lit8 v16, v16, 0x1

    .line 216
    :try_start_e
    #getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->stepPerOneProgress:[I
    invoke-static/range {v17 .. v17}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$100(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v23

    aget v23, v23, v10

    move/from16 v0, v16

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    .line 217
    add-int/lit8 v4, v4, 0x1

    .line 218
    const/16 v16, 0x0

    .line 219
    move/from16 v0, p7

    if-ge v4, v0, :cond_6

    .line 220
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v0, v1, v4}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setBackupProgress(Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_4

    .line 244
    .end local v7           #buffer:[B
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #iCount:I
    .end local v18           #srcfile:Ljava/io/File;
    .end local v19           #zentry:Ljava/util/zip/ZipEntry;
    .end local v20           #zipEntyPath:Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v5, v6

    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v21, v22

    .line 245
    .end local v22           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .local v9, e:Ljava/io/IOException;
    .restart local v21       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :goto_9
    :try_start_f
    const-string v23, "JGZIP"

    const-string v24, "Zipfile = IOException"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v23, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v24, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_READ:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v23
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 227
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #e:Ljava/io/IOException;
    .end local v21           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buffer:[B
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #iCount:I
    .restart local v18       #srcfile:Ljava/io/File;
    .restart local v19       #zentry:Ljava/util/zip/ZipEntry;
    .restart local v20       #zipEntyPath:Ljava/lang/String;
    .restart local v22       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 228
    :try_start_10
    const-string v23, "JGZIP"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "filindex "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ne v10, v0, :cond_a

    move/from16 v0, p7

    if-eq v4, v0, :cond_a

    .line 232
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-interface {v0, v1, v2}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setBackupProgress(Ljava/lang/String;I)V

    .line 235
    :cond_a
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V

    .line 236
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 238
    add-int/lit8 v13, v13, 0x1

    move-object v15, v14

    .line 240
    .end local v14           #inputStream:Ljava/io/BufferedInputStream;
    .restart local v15       #inputStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 248
    .end local v7           #buffer:[B
    .end local v12           #iCount:I
    .end local v18           #srcfile:Ljava/io/File;
    .end local v19           #zentry:Ljava/util/zip/ZipEntry;
    .end local v20           #zipEntyPath:Ljava/lang/String;
    :cond_b
    const/16 v23, 0x0

    sput-boolean v23, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    .line 249
    const-string v23, "JGZIP"

    const-string v24, "Zipfile = finally"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v22, :cond_c

    if-lez v13, :cond_c

    .line 252
    :try_start_11
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 258
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    move-object v14, v15

    .line 262
    .end local v15           #inputStream:Ljava/io/BufferedInputStream;
    .restart local v14       #inputStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .line 255
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v22           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :catch_3
    move-exception v9

    .line 256
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_12
    const-string v24, "[BNRZip]"

    const-string v25, "file_close exception"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    goto/16 :goto_8

    .end local v9           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 258
    throw v23

    .line 255
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v21           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v18       #srcfile:Ljava/io/File;
    .restart local v19       #zentry:Ljava/util/zip/ZipEntry;
    .restart local v20       #zipEntyPath:Ljava/lang/String;
    .restart local v22       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :catch_4
    move-exception v9

    .line 256
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_13
    const-string v23, "[BNRZip]"

    const-string v24, "file_close exception"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .end local v9           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 258
    throw v23

    .line 255
    .end local v14           #inputStream:Ljava/io/BufferedInputStream;
    .end local v18           #srcfile:Ljava/io/File;
    .end local v19           #zentry:Ljava/util/zip/ZipEntry;
    .end local v20           #zipEntyPath:Ljava/lang/String;
    .restart local v15       #inputStream:Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v9

    .line 256
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_14
    const-string v23, "[BNRZip]"

    const-string v24, "file_close exception"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    goto :goto_a

    .end local v9           #e:Ljava/io/IOException;
    :catchall_3
    move-exception v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 258
    throw v23

    .line 248
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #inputStream:Ljava/io/BufferedInputStream;
    .end local v22           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v14       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v21       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :catchall_4
    move-exception v23

    move-object v5, v6

    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7

    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v21           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v22       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :catchall_5
    move-exception v23

    move-object v5, v6

    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v21, v22

    .end local v22           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v21       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_7

    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #inputStream:Ljava/io/BufferedInputStream;
    .end local v21           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v22       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :catchall_6
    move-exception v23

    move-object v5, v6

    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v14, v15

    .end local v15           #inputStream:Ljava/io/BufferedInputStream;
    .restart local v14       #inputStream:Ljava/io/BufferedInputStream;
    move-object/from16 v21, v22

    .end local v22           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v21       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_7

    .line 244
    .end local v11           #i$:Ljava/util/Iterator;
    :catch_6
    move-exception v9

    goto/16 :goto_9

    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v9

    move-object v5, v6

    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_9

    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #inputStream:Ljava/io/BufferedInputStream;
    .end local v21           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v22       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :catch_8
    move-exception v9

    move-object v5, v6

    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v14, v15

    .end local v15           #inputStream:Ljava/io/BufferedInputStream;
    .restart local v14       #inputStream:Ljava/io/BufferedInputStream;
    move-object/from16 v21, v22

    .end local v22           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v21       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_9

    .line 241
    .end local v11           #i$:Ljava/util/Iterator;
    :catch_9
    move-exception v9

    goto/16 :goto_6

    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v9

    move-object v5, v6

    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_6

    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #inputStream:Ljava/io/BufferedInputStream;
    .end local v21           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v22       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :catch_b
    move-exception v9

    move-object v5, v6

    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v14, v15

    .end local v15           #inputStream:Ljava/io/BufferedInputStream;
    .restart local v14       #inputStream:Ljava/io/BufferedInputStream;
    move-object/from16 v21, v22

    .end local v22           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v21       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_6

    .line 207
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v21           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buffer:[B
    .restart local v9       #e:Ljava/io/IOException;
    .restart local v12       #iCount:I
    .restart local v18       #srcfile:Ljava/io/File;
    .restart local v19       #zentry:Ljava/util/zip/ZipEntry;
    .restart local v20       #zipEntyPath:Ljava/lang/String;
    .restart local v22       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :catch_c
    move-exception v23

    goto/16 :goto_5
.end method
