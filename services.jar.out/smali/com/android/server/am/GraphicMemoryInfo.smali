.class public Lcom/android/server/am/GraphicMemoryInfo;
.super Ljava/lang/Object;
.source "GraphicMemoryInfo.java"


# static fields
.field static final LINUX_MEM_AREA_ALLOC_PAGES:Ljava/lang/String; = "LINUX_MEM_AREA_ALLOC_PAGES"

.field static final LINUX_MEM_AREA_VMALLOC:Ljava/lang/String; = "LINUX_MEM_AREA_VMALLOC"

.field static final TAG:Ljava/lang/String; = "GraphicMemoryInfo"

.field static bKgsl:Z

.field static bMali:Z

.field static bNvmap:Z

.field static bPvr:Z


# instance fields
.field final ION_FILEPATH:Ljava/lang/String;

.field final KGSL_FILEPATH:Ljava/lang/String;

.field final MALI_FILEPATH:Ljava/lang/String;

.field final NVMAP_FILEPATHES:[Ljava/lang/String;

.field final PVR_FILEPATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 42
    sput-boolean v0, Lcom/android/server/am/GraphicMemoryInfo;->bKgsl:Z

    .line 44
    sput-boolean v0, Lcom/android/server/am/GraphicMemoryInfo;->bNvmap:Z

    .line 46
    sput-boolean v0, Lcom/android/server/am/GraphicMemoryInfo;->bPvr:Z

    .line 48
    sput-boolean v0, Lcom/android/server/am/GraphicMemoryInfo;->bMali:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "/sys/class/kgsl/kgsl"

    iput-object v0, p0, Lcom/android/server/am/GraphicMemoryInfo;->KGSL_FILEPATH:Ljava/lang/String;

    .line 52
    const-string v0, "/sys/kernel/debug/ion"

    iput-object v0, p0, Lcom/android/server/am/GraphicMemoryInfo;->ION_FILEPATH:Ljava/lang/String;

    .line 54
    const-string v0, "/proc/pvr/mem_areas"

    iput-object v0, p0, Lcom/android/server/am/GraphicMemoryInfo;->PVR_FILEPATH:Ljava/lang/String;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/d/nvmap/iovmm/clients"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/d/nvmap/iovmm/allocations"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/am/GraphicMemoryInfo;->NVMAP_FILEPATHES:[Ljava/lang/String;

    .line 58
    const-string v0, "/proc/mali/memory_usage"

    iput-object v0, p0, Lcom/android/server/am/GraphicMemoryInfo;->MALI_FILEPATH:Ljava/lang/String;

    return-void
.end method

.method private canCheckNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "filename"

    .prologue
    .line 266
    const-string v3, "^\\d+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 267
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 268
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 269
    .local v0, bPID:Z
    return v0
.end method

.method private convertByteToKB(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "byteString"

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 281
    .local v1, killoByte:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v1, v2, 0x400
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "GraphicMemoryInfo"

    const-string v3, "NumberFormatException - can\'t parse Integer"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProcFileNumber(Ljava/io/File;)I
    .locals 4
    .parameter "procdir"

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 137
    .local v1, files:[Ljava/io/File;
    const/4 v0, 0x0

    .line 138
    .local v0, countDirNumber:I
    if-eqz v1, :cond_1

    .line 139
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 140
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 139
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v2           #i:I
    :cond_1
    return v0
.end method

.method private makeFileList(Ljava/io/File;Ljava/util/List;)V
    .locals 3
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 157
    .local v0, files:[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 158
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 159
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    aget-object v2, v0, v1

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private makeIONMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;
    .locals 9
    .parameter "filepath"
    .parameter "bAllProc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 299
    .local v6, strBuffer:Ljava/lang/StringBuffer;
    const-string v7, "\n--------------------------------------------ION Heap Start------------------------------------------\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v5, rootdir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 302
    const-string v7, "ION information doesn\'t exist. try again after $mount -t debugfs debugfs /sys/kernel/debug\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 327
    .end local v6           #strBuffer:Ljava/lang/StringBuffer;
    :goto_0
    return-object v6

    .line 306
    .restart local v6       #strBuffer:Ljava/lang/StringBuffer;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v2, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, v5, v2}, Lcom/android/server/am/GraphicMemoryInfo;->makeFileList(Ljava/io/File;Ljava/util/List;)V

    .line 310
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 311
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/heaps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v3, heapsdir:Ljava/io/File;
    invoke-direct {p0, v3, v2}, Lcom/android/server/am/GraphicMemoryInfo;->makeFileList(Ljava/io/File;Ljava/util/List;)V

    .line 315
    .end local v3           #heapsdir:Ljava/io/File;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 316
    .local v1, file:Ljava/io/File;
    if-nez p2, :cond_3

    .line 318
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/am/GraphicMemoryInfo;->canCheckNumber(Ljava/lang/String;)Z

    move-result v0

    .line 319
    .local v0, bPID:Z
    if-nez v0, :cond_2

    .line 323
    .end local v0           #bPID:Z
    :cond_3
    const/4 v7, 0x0

    invoke-direct {p0, v1, v6, v7}, Lcom/android/server/am/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 324
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 326
    .end local v1           #file:Ljava/io/File;
    :cond_4
    const-string v7, "--------------------------------------------ION Heap End--------------------------------------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private makeKgslMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;
    .locals 20
    .parameter "filepath"
    .parameter "bAllFiles"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 341
    .local v15, strBuffer:Ljava/lang/StringBuffer;
    const-string v17, "\n--------------------------------------------KGSL Heap Start-----------------------------------------\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v14, rootdir:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 344
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/server/am/GraphicMemoryInfo;->bKgsl:Z

    .line 345
    const-string v17, "KGSL information doesn\'t exist\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 398
    .end local v15           #strBuffer:Ljava/lang/StringBuffer;
    :goto_0
    return-object v15

    .line 347
    .restart local v15       #strBuffer:Ljava/lang/StringBuffer;
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v16, systemWide:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v12, procList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    if-eqz p2, :cond_1

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/android/server/am/GraphicMemoryInfo;->makeFileList(Ljava/io/File;Ljava/util/List;)V

    .line 353
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 354
    .local v4, files:Ljava/io/File;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v15, v1}, Lcom/android/server/am/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 355
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    const-string v17, "GraphicMemoryInfo"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "has read"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 360
    .end local v4           #files:Ljava/io/File;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v13, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/proc"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v13, procdir:Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/server/am/GraphicMemoryInfo;->makeProcFileList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 365
    .local v10, pidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 368
    .local v7, pid:I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 369
    .local v9, pidLength:I
    const/4 v8, 0x0

    .line 370
    .local v8, pidIndex:I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 371
    .local v11, procDirLength:I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/am/GraphicMemoryInfo;->getProcFileNumber(Ljava/io/File;)I

    move-result v17

    div-int v2, v11, v17

    .line 373
    .local v2, devideNumber:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v11, :cond_4

    .line 376
    rem-int v17, v5, v2

    if-nez v17, :cond_2

    .line 379
    if-ge v8, v9, :cond_2

    .line 380
    :try_start_0
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 381
    add-int/lit8 v8, v8, 0x1

    .line 389
    :cond_2
    :goto_3
    if-nez p2, :cond_3

    .line 391
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "kernel"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 373
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 383
    :catch_0
    move-exception v3

    .line 384
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v17, "GraphicMemoryInfo"

    const-string v18, "NumberFormatException - can\'t parse Integer"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 385
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 386
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v17, "GraphicMemoryInfo"

    const-string v18, "IndexOutOfBoundsException - can\'t find index"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 395
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v7}, Lcom/android/server/am/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    goto :goto_4

    .line 397
    :cond_4
    const-string v17, "--------------------------------------------KGSL Heap End-------------------------------------------"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private makeMaliMemoryInfo(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 560
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 561
    .local v1, strBuffer:Ljava/lang/StringBuffer;
    const-string v2, "\n--------------------------------------------MALI Heap start-----------------------------------------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, file_memory_usage:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    sput-boolean v3, Lcom/android/server/am/GraphicMemoryInfo;->bMali:Z

    .line 566
    const-string v2, "MALI information doesn\'t exist\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 572
    .end local v1           #strBuffer:Ljava/lang/StringBuffer;
    :goto_0
    return-object v1

    .line 569
    .restart local v1       #strBuffer:Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/am/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 570
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 571
    const-string v2, "--------------------------------------------MALI Heap End-------------------------------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private makeNvmapMemoryInfo([Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 409
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 410
    .local v2, strBuffer:Ljava/lang/StringBuffer;
    const-string v3, "\n--------------------------------------------NVMAP Heap start----------------------------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    new-instance v1, Ljava/io/File;

    aget-object v3, p1, v4

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .local v1, file_client:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, file_allocations:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 415
    sput-boolean v4, Lcom/android/server/am/GraphicMemoryInfo;->bNvmap:Z

    .line 416
    const-string v3, "NVMAP information doesn\'t exist\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 422
    .end local v2           #strBuffer:Ljava/lang/StringBuffer;
    :goto_0
    return-object v2

    .line 419
    .restart local v2       #strBuffer:Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/am/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 420
    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/am/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 421
    const-string v3, "--------------------------------------------NVMAP Heap End------------------------------------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private makeProcFileList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 176
    .local v1, files:[Ljava/io/File;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v5, subDir:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v4, procDir:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 180
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_1

    .line 181
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 182
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_0
    aget-object v7, v1, v2

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v2           #i:I
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 192
    .local v6, subDirLength:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 194
    :try_start_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 196
    .local v3, index:I
    if-eqz v1, :cond_2

    .line 197
    aget-object v7, v1, v3

    invoke-direct {p0, v7, p2}, Lcom/android/server/am/GraphicMemoryInfo;->makeProcFileList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v3           #index:I
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v7, "GraphicMemoryInfo"

    const-string v8, "NumberFormatException - can\'t parse Integer"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 204
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_3
    return-object v4
.end method

.method private makePvrMemoryInfo(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 9
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 432
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 433
    .local v6, strBuffer:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 434
    .local v4, pidAllocPage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 435
    .local v5, pidVmalloc:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v7, "\n--------------------------------------------PVR Heap start------------------------------------------\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, file_client:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 438
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/server/am/GraphicMemoryInfo;->bPvr:Z

    .line 439
    const-string v7, "PVR information doesn\'t exist.\nenable pvr debug feature(DEBUG_LINUX_MEM_AREAS)\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 463
    .end local v6           #strBuffer:Ljava/lang/StringBuffer;
    :goto_0
    return-object v6

    .line 444
    .restart local v6       #strBuffer:Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/am/GraphicMemoryInfo;->parsePVRByPID(Ljava/io/File;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 447
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 449
    .local v2, itrAlloc:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 451
    .local v3, itrVmalloc:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const-string v7, "<LINUX_MEM_AREA_ALLOC_PAGES>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 453
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 454
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[KB]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 457
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    const-string v7, "<LINUX_MEM_AREA_VMALLOC>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 459
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 460
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[KB]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 462
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    const-string v7, "--------------------------------------------PVR Heap End--------------------------------------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private mountDebugfs()V
    .locals 4

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, process:Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "adb shell mount -t debugfs debugfs /sys/kernel/debug"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "GraphicMemoryInfo"

    const-string v3, "IOException - Can\'t mount debugfs"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    if-eqz v1, :cond_0

    .line 123
    throw v1

    goto :goto_0

    .line 122
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 123
    throw v1

    :cond_1
    throw v2
.end method

.method private parsePVRByPID(Ljava/io/File;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 20
    .parameter "file"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p2, alloc_pageMmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, vmallocMmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 469
    .local v4, br:Ljava/io/BufferedReader;
    const-string v11, "([a-z0-9]+)\\s+(\\d+)\\s+(\\d+)\\s+"

    .line 470
    .local v11, page_allpcRegx:Ljava/lang/String;
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 471
    .local v10, page_allocPattern:Ljava/util/regex/Pattern;
    const-string v17, "([a-z0-9]+)\\s+([a-z0-9]+)\\s+(\\d+)\\s+(\\d+)\\s+"

    .line 472
    .local v17, vmallocRegx:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    .line 473
    .local v16, vmallocPattern:Ljava/util/regex/Pattern;
    const/4 v8, 0x0

    .line 474
    .local v8, matcher:Ljava/util/regex/Matcher;
    const/4 v12, 0x0

    .line 475
    .local v12, pid:I
    const/4 v14, 0x0

    .line 477
    .local v14, size:I
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 478
    .end local v4           #br:Ljava/io/BufferedReader;
    .local v5, br:Ljava/io/BufferedReader;
    if-eqz v5, :cond_3

    .line 479
    const/4 v13, 0x0

    .line 481
    .local v13, s:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 483
    const-string v18, "LINUX_MEM_AREA_ALLOC_PAGES"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 487
    invoke-virtual {v10, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 488
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v18

    if-eqz v18, :cond_1

    .line 490
    const/16 v18, 0x3

    :try_start_2
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 491
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    .line 498
    :cond_1
    :goto_1
    :try_start_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 499
    const/4 v6, 0x0

    .line 500
    .local v6, currentSize:I
    const/4 v9, 0x0

    .line 501
    .local v9, newSize:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 502
    .local v3, alloc_pageMmapSize:Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 503
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 505
    :cond_2
    add-int v9, v6, v14

    .line 506
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 539
    .end local v3           #alloc_pageMmapSize:Ljava/lang/Integer;
    .end local v6           #currentSize:I
    .end local v9           #newSize:I
    :catch_0
    move-exception v18

    .line 543
    .end local v13           #s:Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_b

    .line 545
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v4, v5

    .line 550
    .end local v5           #br:Ljava/io/BufferedReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    :cond_4
    :goto_2
    return-void

    .line 492
    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v5       #br:Ljava/io/BufferedReader;
    .restart local v13       #s:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 493
    .local v7, e:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v18, "GraphicMemoryInfo"

    const-string v19, "NullPointerException - Can\'t get group information regarding Page_alloc:"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 541
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v18

    move-object v4, v5

    .line 543
    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v13           #s:Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    :goto_3
    if-eqz v4, :cond_4

    .line 545
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 546
    :catch_3
    move-exception v18

    goto :goto_2

    .line 508
    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v5       #br:Ljava/io/BufferedReader;
    .restart local v13       #s:Ljava/lang/String;
    :cond_5
    :try_start_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 543
    :catchall_0
    move-exception v18

    move-object v4, v5

    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v13           #s:Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    :goto_4
    if-eqz v4, :cond_6

    .line 545
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 547
    :cond_6
    :goto_5
    throw v18

    .line 510
    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v5       #br:Ljava/io/BufferedReader;
    .restart local v13       #s:Ljava/lang/String;
    :cond_7
    :try_start_9
    const-string v18, "LINUX_MEM_AREA_VMALLOC"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 514
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 515
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    move-result v18

    if-eqz v18, :cond_8

    .line 517
    const/16 v18, 0x4

    :try_start_a
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 518
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    move-result v14

    .line 525
    :cond_8
    :goto_6
    :try_start_b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 526
    const/4 v6, 0x0

    .line 527
    .restart local v6       #currentSize:I
    const/4 v9, 0x0

    .line 528
    .restart local v9       #newSize:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 529
    .local v15, vmallocMmapSize:Ljava/lang/Integer;
    if-eqz v15, :cond_9

    .line 530
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 532
    :cond_9
    add-int v9, v6, v14

    .line 533
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 519
    .end local v6           #currentSize:I
    .end local v9           #newSize:I
    .end local v15           #vmallocMmapSize:Ljava/lang/Integer;
    :catch_4
    move-exception v7

    .line 520
    .restart local v7       #e:Ljava/lang/NumberFormatException;
    const-string v18, "GraphicMemoryInfo"

    const-string v19, "NullPointerException - Can\'t get group information regarding Vmalloc:"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 535
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .line 546
    .end local v13           #s:Ljava/lang/String;
    :catch_5
    move-exception v18

    move-object v4, v5

    .line 547
    .end local v5           #br:Ljava/io/BufferedReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 546
    :catch_6
    move-exception v19

    goto/16 :goto_5

    .line 543
    :catchall_1
    move-exception v18

    goto/16 :goto_4

    .line 541
    :catch_7
    move-exception v18

    goto/16 :goto_3

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v5       #br:Ljava/io/BufferedReader;
    :cond_b
    move-object v4, v5

    .end local v5           #br:Ljava/io/BufferedReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V
    .locals 8
    .parameter "file"
    .parameter "strBuffer"
    .parameter "pid"

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, br:Ljava/io/BufferedReader;
    if-lez p3, :cond_2

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 224
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    if-eqz v2, :cond_0

    .line 225
    const/4 v4, 0x0

    .line 227
    .local v4, s:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 228
    if-lez p3, :cond_4

    .line 229
    invoke-direct {p0, v4}, Lcom/android/server/am/GraphicMemoryInfo;->canCheckNumber(Ljava/lang/String;)Z

    move-result v0

    .line 230
    .local v0, bNumber:Z
    if-eqz v0, :cond_3

    .line 231
    invoke-direct {p0, v4}, Lcom/android/server/am/GraphicMemoryInfo;->convertByteToKB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<KB>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    .end local v0           #bNumber:Z
    :goto_2
    const/16 v5, 0xa

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 241
    :catch_0
    move-exception v3

    .line 242
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    const-string v5, "GraphicMemoryInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException - Can\'t read file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 248
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_6

    .line 250
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v2

    .line 256
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_1
    :goto_3
    return-void

    .line 219
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 234
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #bNumber:Z
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #s:Ljava/lang/String;
    :cond_3
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 245
    .end local v0           #bNumber:Z
    :catch_1
    move-exception v3

    move-object v1, v2

    .line 246
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v5, "GraphicMemoryInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException - can\'t find file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 248
    if-eqz v1, :cond_1

    .line 250
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 251
    :catch_2
    move-exception v3

    .line 252
    .local v3, e:Ljava/io/IOException;
    const-string v5, "GraphicMemoryInfo"

    const-string v6, "IOException - Can\'t close bufferead"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 237
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #s:Ljava/lang/String;
    :cond_4
    :try_start_7
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 248
    :catchall_0
    move-exception v5

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :goto_5
    if-eqz v1, :cond_5

    .line 250
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 253
    :cond_5
    :goto_6
    throw v5

    .line 251
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .line 252
    .restart local v3       #e:Ljava/io/IOException;
    const-string v5, "GraphicMemoryInfo"

    const-string v6, "IOException - Can\'t close bufferead"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 253
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 251
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 252
    .restart local v3       #e:Ljava/io/IOException;
    const-string v6, "GraphicMemoryInfo"

    const-string v7, "IOException - Can\'t close bufferead"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 248
    .end local v3           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    goto :goto_5

    .line 245
    :catch_5
    move-exception v3

    goto :goto_4

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :cond_6
    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method


# virtual methods
.method public printGraphicMemory()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x1fa0

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 69
    .local v1, strBuffer:Ljava/lang/StringBuffer;
    sget-boolean v2, Lcom/android/server/am/GraphicMemoryInfo;->bKgsl:Z

    if-eqz v2, :cond_0

    .line 71
    :try_start_0
    const-string v2, "/sys/class/kgsl/kgsl"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/GraphicMemoryInfo;->makeKgslMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/server/am/GraphicMemoryInfo;->bNvmap:Z

    if-eqz v2, :cond_1

    .line 79
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/GraphicMemoryInfo;->NVMAP_FILEPATHES:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/am/GraphicMemoryInfo;->makeNvmapMemoryInfo([Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :cond_1
    :goto_1
    sget-boolean v2, Lcom/android/server/am/GraphicMemoryInfo;->bPvr:Z

    if-eqz v2, :cond_2

    .line 89
    :try_start_2
    const-string v2, "/proc/pvr/mem_areas"

    invoke-direct {p0, v2}, Lcom/android/server/am/GraphicMemoryInfo;->makePvrMemoryInfo(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 95
    :cond_2
    :goto_2
    sget-boolean v2, Lcom/android/server/am/GraphicMemoryInfo;->bMali:Z

    if-eqz v2, :cond_3

    .line 97
    :try_start_3
    const-string v2, "/proc/mali/memory_usage"

    invoke-direct {p0, v2}, Lcom/android/server/am/GraphicMemoryInfo;->makeMaliMemoryInfo(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 104
    :cond_3
    :goto_3
    :try_start_4
    const-string v2, "/sys/kernel/debug/ion"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/GraphicMemoryInfo;->makeIONMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 109
    :goto_4
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 81
    .restart local v0       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 90
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 91
    .restart local v0       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 98
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .line 99
    .restart local v0       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 105
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4
    move-exception v0

    .line 106
    .restart local v0       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method
