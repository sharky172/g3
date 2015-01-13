.class public Lcom/android/server/power/EasyKnockPassword;
.super Ljava/lang/Object;
.source "EasyKnockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/EasyKnockPassword$EasyKnockType;
    }
.end annotation


# static fields
.field static final CLUSTERING_THRESHOLD_VALUE:D = 0.1296

.field static final THRESHOLD_VALUE:D = 0.04

.field private static distanceMat:[D

.field static radiusSquared:D

.field public static rotate:[[I

.field public static twoSequenceVals:[[I


# instance fields
.field private mIsRotatationFixed:Z

.field private mScreenDPI:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 19
    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    .line 25
    new-array v0, v4, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/power/EasyKnockPassword;->rotate:[[I

    return-void

    .line 19
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 25
    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .locals 4
    .parameter "dpi"
    .parameter "rotation"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/EasyKnockPassword;->mScreenDPI:I

    .line 62
    iput p1, p0, Lcom/android/server/power/EasyKnockPassword;->mScreenDPI:I

    .line 63
    iput-boolean p2, p0, Lcom/android/server/power/EasyKnockPassword;->mIsRotatationFixed:Z

    .line 65
    iget v0, p0, Lcom/android/server/power/EasyKnockPassword;->mScreenDPI:I

    int-to-double v0, v0

    const-wide v2, 0x3fd1a36e2eb1c433L

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    .line 66
    sget-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    sget-wide v2, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    .line 67
    return-void
.end method

.method private static checkSequenceClustered([III[DD)Z
    .locals 6
    .parameter "result"
    .parameter "idx"
    .parameter "seqSize"
    .parameter "distMat"
    .parameter "distMax"

    .prologue
    .line 474
    const-wide v4, 0x3fc096bb98c7e282L

    mul-double v2, v4, p4

    .line 475
    .local v2, threshold:D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v4, p2, -0x1

    if-ge v0, v4, :cond_2

    .line 476
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_1
    if-ge v1, p2, :cond_1

    .line 477
    mul-int v4, p1, p2

    add-int/2addr v4, v0

    aget v4, p0, v4

    mul-int v5, p1, p2

    add-int/2addr v5, v1

    aget v5, p0, v5

    if-eq v4, v5, :cond_0

    .line 478
    mul-int v4, v0, p2

    add-int/2addr v4, v1

    aget-wide v4, p3, v4

    cmpg-double v4, v4, v2

    if-gez v4, :cond_0

    .line 479
    const/4 v4, 0x0

    .line 484
    .end local v1           #j:I
    :goto_2
    return v4

    .line 476
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 475
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    .end local v1           #j:I
    :cond_2
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private static fillArray([IIIIII)V
    .locals 2
    .parameter "toFill"
    .parameter "val1"
    .parameter "val2"
    .parameter "startPoint"
    .parameter "changeIndex"
    .parameter "length"

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-gt v0, p4, :cond_0

    .line 165
    add-int v1, p3, v0

    aput p1, p0, v1

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    :goto_1
    if-ge v0, p5, :cond_1

    .line 168
    add-int v1, p3, v0

    aput p2, p0, v1

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_1
    return-void
.end method

.method private static generateFinalCandidates(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ[Z)[I
    .locals 24
    .parameter
    .parameter
    .parameter
    .parameter "size"
    .parameter "rotation"
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ[Z)[I"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, newResult:Ljava/util/List;,"Ljava/util/List<[I>;"
    .local p1, easyKnock:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    .local p2, diffIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v13

    .line 317
    .local v13, numItems:I
    mul-int v22, v13, p3

    mul-int/lit8 v22, v22, 0x4

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 318
    .local v17, result:[I
    const/16 v22, 0x0

    aput v13, v17, v22

    .line 319
    const/4 v11, 0x1

    .line 321
    .local v11, index:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v13, :cond_3

    .line 322
    const/4 v8, 0x0

    .line 323
    .local v8, curIndex:I
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    .line 324
    .local v14, numList:[I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v12, v0, :cond_1

    .line 325
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    if-gt v8, v0, :cond_0

    .line 326
    aget v22, v14, v12

    aput v22, v17, v11

    .line 327
    add-int/lit8 v8, v8, 0x1

    .line 328
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 324
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 331
    :cond_1
    :goto_3
    move/from16 v0, p3

    if-ge v8, v0, :cond_2

    .line 332
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    aget v22, v14, v22

    aput v22, v17, v11

    .line 333
    add-int/lit8 v11, v11, 0x1

    .line 331
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 321
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 336
    .end local v8           #curIndex:I
    .end local v12           #j:I
    .end local v14           #numList:[I
    :cond_3
    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/server/power/RotatedBoolean;->addRotations([II)V

    .line 337
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 338
    .local v6, changeIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    add-int/lit8 v23, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/EasyKnockPassword;->getFirstOrientation(Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;)[Z

    move-result-object v16

    .line 340
    .local v16, possibleDirection:[Z
    if-eqz p4, :cond_6

    .line 342
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 343
    .local v19, tmp:[I
    const/4 v8, 0x1

    .line 344
    .restart local v8       #curIndex:I
    const/4 v10, 0x0

    :goto_4
    const/16 v22, 0x0

    aget v22, v17, v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_11

    .line 345
    mul-int v22, v10, p3

    add-int/lit8 v22, v22, 0x1

    add-int v22, v22, v6

    aget v22, v17, v22

    mul-int/lit8 v22, v22, 0x4

    mul-int v23, v10, p3

    add-int/lit8 v23, v23, 0x2

    add-int v23, v23, v6

    aget v23, v17, v23

    add-int v22, v22, v23

    aget-boolean v22, v16, v22

    if-eqz v22, :cond_4

    .line 347
    mul-int v22, v10, p3

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_5

    .line 348
    add-int v8, v8, p3

    .line 344
    :cond_4
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 350
    :cond_5
    mul-int v22, v10, p3

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v19

    move/from16 v3, v23

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    mul-int v22, v10, p3

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, p3

    invoke-static {v0, v8, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    add-int v8, v8, p3

    goto :goto_5

    .line 358
    .end local v8           #curIndex:I
    .end local v19           #tmp:[I
    :cond_6
    const/4 v7, 0x0

    .line 360
    .local v7, count:I
    const/4 v10, 0x0

    :goto_6
    const/16 v22, 0x0

    aget v22, v17, v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_8

    .line 361
    mul-int v22, v10, p3

    add-int/lit8 v22, v22, 0x1

    add-int v22, v22, v6

    aget v22, v17, v22

    mul-int/lit8 v22, v22, 0x4

    mul-int v23, v10, p3

    add-int/lit8 v23, v23, 0x2

    add-int v23, v23, v6

    aget v23, v17, v23

    add-int v22, v22, v23

    aget-boolean v22, v16, v22

    if-eqz v22, :cond_7

    .line 363
    add-int/lit8 v7, v7, 0x1

    .line 360
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 366
    :cond_8
    mul-int v22, v7, p3

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 367
    .local v21, untrimmedResult:[I
    const/16 v22, 0x0

    aput v7, v21, v22

    .line 368
    const/4 v8, 0x1

    .line 369
    .restart local v8       #curIndex:I
    const/4 v10, 0x0

    :goto_7
    const/16 v22, 0x0

    aget v22, v17, v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_a

    .line 370
    mul-int v22, v10, p3

    add-int/lit8 v22, v22, 0x1

    add-int v22, v22, v6

    aget v22, v17, v22

    mul-int/lit8 v22, v22, 0x4

    mul-int v23, v10, p3

    add-int/lit8 v23, v23, 0x2

    add-int v23, v23, v6

    aget v23, v17, v23

    add-int v22, v22, v23

    aget-boolean v22, v16, v22

    if-eqz v22, :cond_9

    .line 372
    mul-int v22, v10, p3

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    add-int v8, v8, p3

    .line 369
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 376
    :cond_a
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/power/EasyKnockPassword;->trimResult([ILjava/util/ArrayList;)[I

    move-result-object v20

    .line 377
    .local v20, trimmedResult:[I
    const/16 v22, 0x0

    aget v7, v20, v22

    .line 379
    const/4 v15, 0x0

    .line 380
    .local v15, orientationCount:I
    const/4 v10, 0x0

    :goto_8
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v10, v0, :cond_c

    .line 381
    aget-boolean v22, p5, v10

    if-eqz v22, :cond_b

    .line 382
    add-int/lit8 v15, v15, 0x1

    .line 380
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 385
    :cond_c
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_d

    const/16 v22, 0x0

    aget-boolean v22, p5, v22

    if-nez v22, :cond_10

    .line 386
    :cond_d
    mul-int v22, v7, p3

    mul-int v22, v22, v15

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 387
    const/16 v22, 0x0

    mul-int v23, v7, v15

    aput v23, v17, v22

    .line 388
    mul-int v5, p3, v7

    .line 389
    .local v5, baseIndex:I
    const/4 v9, 0x1

    .line 390
    .local v9, curIndex2:I
    const/4 v10, 0x0

    :goto_9
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v10, v0, :cond_f

    .line 391
    aget-boolean v22, p5, v10

    if-eqz v22, :cond_e

    .line 392
    sget-object v22, Lcom/android/server/power/EasyKnockPassword;->rotate:[[I

    aget-object v18, v22, v10

    .line 393
    .local v18, rotated:[I
    const/4 v12, 0x1

    .restart local v12       #j:I
    :goto_a
    if-gt v12, v5, :cond_e

    .line 394
    aget v22, v20, v12

    add-int/lit8 v22, v22, -0x1

    aget v22, v18, v22

    aput v22, v17, v9

    .line 395
    add-int/lit8 v9, v9, 0x1

    .line 393
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 390
    .end local v12           #j:I
    .end local v18           #rotated:[I
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_f
    move-object/from16 v20, v17

    .line 404
    .end local v5           #baseIndex:I
    .end local v7           #count:I
    .end local v9           #curIndex2:I
    .end local v15           #orientationCount:I
    .end local v20           #trimmedResult:[I
    .end local v21           #untrimmedResult:[I
    :cond_10
    :goto_b
    return-object v20

    .restart local v19       #tmp:[I
    :cond_11
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/power/EasyKnockPassword;->trimResult([ILjava/util/ArrayList;)[I

    move-result-object v20

    goto :goto_b
.end method

.method protected static getCandidates(Ljava/util/ArrayList;Ljava/util/ArrayList;Z[Z)[I
    .locals 1
    .parameter
    .parameter
    .parameter "rotation"
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ">;Z[Z)[I"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, diffIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p1, touchPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 241
    invoke-static {p1, p0, p2, p3}, Lcom/android/server/power/EasyKnockPassword;->getMultiSequence(Ljava/util/ArrayList;Ljava/util/ArrayList;Z[Z)[I

    move-result-object v0

    :goto_0
    return-object v0

    .line 237
    :pswitch_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/power/EasyKnockPassword;->getOneSequence(I)[I

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, p1, p0, p2, p3}, Lcom/android/server/power/EasyKnockPassword;->getTwoSequence(ILjava/util/ArrayList;Ljava/util/ArrayList;Z[Z)[I

    move-result-object v0

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getFirstOrientation(Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;)[Z
    .locals 10
    .parameter "a0"
    .parameter "a1"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 255
    iget v4, p1, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    iget v5, p0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    sub-float v1, v4, v5

    .line 256
    .local v1, p0x:F
    iget v4, p1, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    iget v5, p0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    sub-float v2, v4, v5

    .line 257
    .local v2, p0y:F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float v0, v1, v4

    .line 258
    .local v0, cosAngle:F
    const/16 v4, 0x14

    new-array v3, v4, [Z

    .line 259
    .local v3, result:[Z
    float-to-double v4, v0

    const-wide v6, 0x3febb645a1cac083L

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 260
    const/4 v4, 0x6

    aput-boolean v8, v3, v4

    .line 261
    const/16 v4, 0x10

    aput-boolean v8, v3, v4

    .line 275
    :cond_0
    :goto_0
    float-to-double v4, v0

    const-wide v6, 0x3fd09374bc6a7efaL

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    float-to-double v4, v0

    const-wide v6, 0x3feee978d4fdf3b6L

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    .line 276
    cmpl-float v4, v2, v9

    if-lez v4, :cond_5

    .line 277
    const/16 v4, 0x8

    aput-boolean v8, v3, v4

    .line 288
    :cond_1
    :goto_1
    return-object v3

    .line 262
    :cond_2
    float-to-double v4, v0

    const-wide v6, -0x401449ba5e353f7dL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 263
    const/16 v4, 0x9

    aput-boolean v8, v3, v4

    .line 264
    const/16 v4, 0x13

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 265
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 266
    cmpl-float v4, v2, v9

    if-lez v4, :cond_4

    .line 267
    const/4 v4, 0x7

    aput-boolean v8, v3, v4

    .line 268
    const/16 v4, 0xc

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 270
    :cond_4
    const/16 v4, 0xd

    aput-boolean v8, v3, v4

    .line 271
    const/16 v4, 0x12

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 279
    :cond_5
    const/16 v4, 0xe

    aput-boolean v8, v3, v4

    goto :goto_1

    .line 281
    :cond_6
    float-to-double v4, v0

    const-wide v6, -0x402f6c8b43958106L

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    float-to-double v4, v0

    const-wide v6, -0x401116872b020c4aL

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 282
    cmpl-float v4, v2, v9

    if-lez v4, :cond_7

    .line 283
    const/16 v4, 0xb

    aput-boolean v8, v3, v4

    goto :goto_1

    .line 285
    :cond_7
    const/16 v4, 0x11

    aput-boolean v8, v3, v4

    goto :goto_1
.end method

.method protected static getIndexList(Ljava/util/ArrayList;D)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter "radiusSquare"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ">;D)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, easyKnock:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, -0x1

    .line 134
    .local v0, curIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 135
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/power/EasyKnockPassword;->isNeighbor(Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    move v0, v1

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 141
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_1
    return-object v2

    .line 143
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getMultiSequence(Ljava/util/ArrayList;Ljava/util/ArrayList;Z[Z)[I
    .locals 7
    .parameter
    .parameter
    .parameter "rotation"
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z[Z)[I"
        }
    .end annotation

    .prologue
    .local p0, easyKnock:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    .local p1, diffIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 296
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-static {v1, v2, v3}, Lcom/android/server/power/RotatedBoolean;->getStrictSequence(Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;)Ljava/util/List;

    move-result-object v0

    .line 309
    .local v0, newResult:Ljava/util/List;,"Ljava/util/List<[I>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/EasyKnockPassword;->generateFinalCandidates(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ[Z)[I

    move-result-object v1

    return-object v1

    .line 300
    .end local v0           #newResult:Ljava/util/List;,"Ljava/util/List<[I>;"
    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-static {v1, v2, v3}, Lcom/android/server/power/RotatedBoolean;->getStrictSequence(Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;)Ljava/util/List;

    move-result-object v0

    .line 303
    .restart local v0       #newResult:Ljava/util/List;,"Ljava/util/List<[I>;"
    const/4 v6, 0x3

    .local v6, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 304
    add-int/lit8 v1, v6, -0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/RotatedBoolean;->getNextSequence(Ljava/util/List;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;)Ljava/util/List;

    move-result-object v0

    .line 303
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected static getOneSequence(I)[I
    .locals 6
    .parameter "size"

    .prologue
    const/4 v5, 0x4

    .line 149
    mul-int/lit8 v4, p0, 0x4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [I

    .line 150
    .local v3, result:[I
    const/4 v4, 0x0

    aput v5, v3, v4

    .line 151
    const/4 v1, 0x1

    .line 152
    .local v1, index:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v5, :cond_1

    .line 153
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, p0, :cond_0

    .line 154
    aput v0, v3, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v2           #j:I
    :cond_1
    return-object v3
.end method

.method public static getResult(Ljava/util/ArrayList;DZ[Z)[I
    .locals 2
    .parameter
    .parameter "radiusSquare"
    .parameter "rotation"
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ">;DZ[Z)[I"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, coords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    invoke-static {p0, p1, p2}, Lcom/android/server/power/EasyKnockPassword;->getIndexList(Ljava/util/ArrayList;D)Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    .local v0, indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v0, p0, p3, p4}, Lcom/android/server/power/EasyKnockPassword;->getCandidates(Ljava/util/ArrayList;Ljava/util/ArrayList;Z[Z)[I

    move-result-object v1

    return-object v1
.end method

.method protected static getTwoSequence(ILjava/util/ArrayList;Ljava/util/ArrayList;Z[Z)[I
    .locals 21
    .parameter "size"
    .parameter
    .parameter
    .parameter "rotation"
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z[Z)[I"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, touchPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    .local p2, diffIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .line 176
    .local v13, count:I
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 177
    .local v5, changeIndex:I
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-static {v2, v3}, Lcom/android/server/power/EasyKnockPassword;->getFirstOrientation(Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;)[Z

    move-result-object v18

    .line 180
    .local v18, possibleDirections:[Z
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    const/16 v2, 0x14

    if-ge v15, v2, :cond_1

    .line 181
    aget-boolean v2, v18, v15

    if-eqz v2, :cond_0

    .line 182
    add-int/lit8 v13, v13, 0x1

    .line 180
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 185
    :cond_1
    const/16 v17, 0x0

    .line 186
    .local v17, orientationCount:I
    const/4 v15, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v15, v2, :cond_3

    .line 187
    aget-boolean v2, p4, v15

    if-eqz v2, :cond_2

    .line 188
    add-int/lit8 v17, v17, 0x1

    .line 186
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 191
    :cond_3
    if-nez p3, :cond_5

    .line 192
    mul-int v2, p0, v13

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 197
    .local v1, result:[I
    :goto_2
    const/4 v4, 0x1

    .line 198
    .local v4, indexFront:I
    mul-int v2, p0, v13

    add-int/lit8 v9, v2, 0x1

    .line 200
    .local v9, indexBack:I
    const/4 v15, 0x0

    :goto_3
    sget-object v2, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    array-length v2, v2

    if-ge v15, v2, :cond_7

    .line 201
    sget-object v2, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v2, v2, v15

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x4

    sget-object v3, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v3, v3, v15

    const/4 v6, 0x1

    aget v3, v3, v6

    add-int/2addr v2, v3

    aget-boolean v2, v18, v2

    if-eqz v2, :cond_6

    .line 202
    sget-object v2, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v2, v2, v15

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v3, v3, v15

    const/4 v6, 0x1

    aget v3, v3, v6

    move/from16 v6, p0

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/EasyKnockPassword;->fillArray([IIIIII)V

    .line 204
    add-int v4, v4, p0

    .line 200
    :cond_4
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 194
    .end local v1           #result:[I
    .end local v4           #indexFront:I
    .end local v9           #indexBack:I
    :cond_5
    mul-int/lit8 v2, p0, 0xc

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 195
    .restart local v1       #result:[I
    const/4 v2, 0x0

    const/16 v3, 0xc

    aput v3, v1, v2

    goto :goto_2

    .line 206
    .restart local v4       #indexFront:I
    .restart local v9       #indexBack:I
    :cond_6
    if-eqz p3, :cond_4

    .line 207
    sget-object v2, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v2, v2, v15

    const/4 v3, 0x0

    aget v7, v2, v3

    sget-object v2, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v2, v2, v15

    const/4 v3, 0x1

    aget v8, v2, v3

    move-object v6, v1

    move v10, v5

    move/from16 v11, p0

    invoke-static/range {v6 .. v11}, Lcom/android/server/power/EasyKnockPassword;->fillArray([IIIIII)V

    .line 209
    add-int v9, v9, p0

    goto :goto_4

    .line 214
    :cond_7
    if-nez p3, :cond_a

    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    const/4 v2, 0x0

    aget-boolean v2, p4, v2

    if-nez v2, :cond_a

    .line 215
    :cond_8
    move-object/from16 v20, v1

    .line 216
    .local v20, tmpResult:[I
    mul-int v2, v13, p0

    mul-int v2, v2, v17

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 217
    const/4 v2, 0x0

    mul-int v3, v13, v17

    aput v3, v1, v2

    .line 218
    mul-int v12, p0, v13

    .line 219
    .local v12, baseIndex:I
    const/4 v14, 0x1

    .line 220
    .local v14, curIndex:I
    const/4 v15, 0x0

    :goto_5
    const/4 v2, 0x4

    if-ge v15, v2, :cond_a

    .line 221
    aget-boolean v2, p4, v15

    if-eqz v2, :cond_9

    .line 222
    sget-object v2, Lcom/android/server/power/EasyKnockPassword;->rotate:[[I

    aget-object v19, v2, v15

    .line 223
    .local v19, rotated:[I
    const/16 v16, 0x1

    .local v16, j:I
    :goto_6
    move/from16 v0, v16

    if-gt v0, v12, :cond_9

    .line 224
    aget v2, v20, v16

    add-int/lit8 v2, v2, -0x1

    aget v2, v19, v2

    aput v2, v1, v14

    .line 225
    add-int/lit8 v14, v14, 0x1

    .line 223
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 220
    .end local v16           #j:I
    .end local v19           #rotated:[I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 230
    .end local v12           #baseIndex:I
    .end local v14           #curIndex:I
    .end local v20           #tmpResult:[I
    :cond_a
    return-object v1
.end method

.method protected static isNeighbor(Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;D)Z
    .locals 4
    .parameter "a1"
    .parameter "a2"
    .parameter "radiusSquared"

    .prologue
    .line 539
    iget v2, p0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    iget v3, p1, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    sub-float v0, v2, v3

    .line 540
    .local v0, xd:F
    iget v2, p0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    iget v3, p1, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    sub-float v1, v2, v3

    .line 541
    .local v1, yd:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static returnOneResult([ILjava/util/ArrayList;)[I
    .locals 20
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, easyKnock:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 410
    .local v4, seqSize:I
    add-int/lit8 v2, v4, 0x1

    new-array v13, v2, [I

    .line 411
    .local v13, oneResult:[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v13, v2

    .line 412
    const/4 v2, 0x0

    aget v2, p0, v2

    add-int/lit8 v2, v2, 0x1

    new-array v15, v2, [I

    .line 413
    .local v15, twoSequence:[I
    const/4 v2, 0x0

    aget v2, p0, v2

    add-int/lit8 v2, v2, 0x1

    new-array v14, v2, [I

    .line 414
    .local v14, threeSequence:[I
    const/4 v2, 0x0

    aget v2, p0, v2

    add-int/lit8 v2, v2, 0x1

    new-array v8, v2, [I

    .line 415
    .local v8, fourSequence:[I
    mul-int v2, v4, v4

    new-array v5, v2, [D

    .line 416
    .local v5, distMat:[D
    const-wide/16 v6, 0x1

    .line 417
    .local v6, distMax:D
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    add-int/lit8 v2, v4, -0x1

    if-ge v9, v2, :cond_2

    .line 418
    add-int/lit8 v10, v9, 0x1

    .local v10, j:I
    :goto_1
    if-ge v10, v4, :cond_1

    .line 419
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    iget v3, v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    iget v2, v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    sub-float v16, v3, v2

    .line 420
    .local v16, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    iget v3, v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    iget v2, v2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    sub-float v17, v3, v2

    .line 421
    .local v17, y:F
    mul-int v2, v9, v4

    add-int/2addr v2, v10

    mul-float v3, v16, v16

    mul-float v18, v17, v17

    add-float v3, v3, v18

    float-to-double v0, v3

    move-wide/from16 v18, v0

    aput-wide v18, v5, v2

    .line 422
    mul-int v2, v9, v4

    add-int/2addr v2, v10

    aget-wide v2, v5, v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    .line 423
    mul-int v2, v9, v4

    add-int/2addr v2, v10

    aget-wide v6, v5, v2

    .line 418
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 417
    .end local v16           #x:F
    .end local v17           #y:F
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 427
    .end local v10           #j:I
    :cond_2
    const/4 v9, 0x0

    :goto_2
    const/4 v2, 0x0

    aget v2, p0, v2

    if-ge v9, v2, :cond_4

    .line 428
    const/4 v2, 0x4

    new-array v11, v2, [I

    .line 429
    .local v11, numDiff:[I
    const/4 v12, 0x0

    .line 430
    .local v12, numDiffCnt:I
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_3
    if-ge v10, v4, :cond_3

    .line 431
    mul-int v2, v9, v4

    add-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x1

    aget v2, p0, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    aput v3, v11, v2

    .line 430
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 433
    :cond_3
    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x1

    aget v3, v11, v3

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v11, v3

    add-int/2addr v2, v3

    const/4 v3, 0x3

    aget v3, v11, v3

    add-int v12, v2, v3

    .line 434
    packed-switch v12, :pswitch_data_0

    .line 427
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 436
    :pswitch_0
    const/4 v2, 0x0

    aget v3, v15, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v15, v2

    .line 437
    const/4 v2, 0x0

    aget v2, v15, v2

    aput v9, v15, v2

    goto :goto_4

    .line 440
    :pswitch_1
    const/4 v2, 0x0

    aget v3, v14, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v14, v2

    .line 441
    const/4 v2, 0x0

    aget v2, v14, v2

    aput v9, v14, v2

    goto :goto_4

    .line 444
    :pswitch_2
    const/4 v2, 0x0

    aget v3, v8, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v8, v2

    .line 445
    const/4 v2, 0x0

    aget v2, v8, v2

    aput v9, v8, v2

    goto :goto_4

    .line 451
    .end local v10           #j:I
    .end local v11           #numDiff:[I
    .end local v12           #numDiffCnt:I
    :cond_4
    const/4 v9, 0x0

    :goto_5
    const/4 v2, 0x0

    aget v2, v8, v2

    if-ge v9, v2, :cond_6

    .line 452
    add-int/lit8 v2, v9, 0x1

    aget v3, v8, v2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/EasyKnockPassword;->checkSequenceClustered([III[DD)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 453
    add-int/lit8 v2, v9, 0x1

    aget v2, v8, v2

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v13, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    .end local v13           #oneResult:[I
    :goto_6
    return-object v13

    .line 451
    .restart local v13       #oneResult:[I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 457
    :cond_6
    const/4 v9, 0x0

    :goto_7
    const/4 v2, 0x0

    aget v2, v14, v2

    if-ge v9, v2, :cond_8

    .line 458
    add-int/lit8 v2, v9, 0x1

    aget v3, v14, v2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/EasyKnockPassword;->checkSequenceClustered([III[DD)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 459
    add-int/lit8 v2, v9, 0x1

    aget v2, v14, v2

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v13, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 457
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 463
    :cond_8
    const/4 v9, 0x0

    :goto_8
    const/4 v2, 0x0

    aget v2, v15, v2

    if-ge v9, v2, :cond_a

    .line 464
    add-int/lit8 v2, v9, 0x1

    aget v3, v15, v2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/EasyKnockPassword;->checkSequenceClustered([III[DD)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 465
    add-int/lit8 v2, v9, 0x1

    aget v2, v15, v2

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v13, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 463
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_a
    move-object/from16 v13, p0

    .line 469
    goto :goto_6

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static trimResult([ILjava/util/ArrayList;)[I
    .locals 22
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, easyKnock:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    const-wide/16 v5, 0x1

    .line 489
    .local v5, distMax:D
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 490
    .local v12, pointSize:I
    mul-int v18, v12, v12

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    sput-object v18, Lcom/android/server/power/EasyKnockPassword;->distanceMat:[D

    .line 492
    mul-int v18, v12, v12

    move/from16 v0, v18

    new-array v14, v0, [I

    .line 493
    .local v14, sameClusterList:[I
    const/4 v15, 0x0

    .line 494
    .local v15, sameClusterListCnt:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    add-int/lit8 v18, v12, -0x1

    move/from16 v0, v18

    if-ge v7, v0, :cond_2

    .line 495
    add-int/lit8 v8, v7, 0x1

    .local v8, j:I
    :goto_1
    if-ge v8, v12, :cond_1

    .line 496
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    move/from16 v18, v0

    sub-float v10, v19, v18

    .line 497
    .local v10, pdelta_x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    move/from16 v18, v0

    sub-float v11, v19, v18

    .line 498
    .local v11, pdelta_y:F
    sget-object v18, Lcom/android/server/power/EasyKnockPassword;->distanceMat:[D

    mul-int v19, v7, v12

    add-int v19, v19, v8

    mul-float v20, v10, v10

    mul-float v21, v11, v11

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    aput-wide v20, v18, v19

    .line 499
    sget-object v18, Lcom/android/server/power/EasyKnockPassword;->distanceMat:[D

    mul-int v19, v7, v12

    add-int v19, v19, v8

    aget-wide v18, v18, v19

    cmpg-double v18, v5, v18

    if-gez v18, :cond_0

    .line 500
    sget-object v18, Lcom/android/server/power/EasyKnockPassword;->distanceMat:[D

    mul-int v19, v7, v12

    add-int v19, v19, v8

    aget-wide v5, v18, v19

    .line 495
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 494
    .end local v10           #pdelta_x:F
    .end local v11           #pdelta_y:F
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 504
    .end local v8           #j:I
    :cond_2
    sget-wide v18, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    const-wide v20, 0x3fa47ae147ae147bL

    mul-double v20, v20, v5

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 505
    .local v16, threshold:D
    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v18, v12, -0x1

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 506
    add-int/lit8 v8, v7, 0x1

    .restart local v8       #j:I
    :goto_3
    if-ge v8, v12, :cond_4

    .line 507
    sget-object v18, Lcom/android/server/power/EasyKnockPassword;->distanceMat:[D

    mul-int v19, v7, v12

    add-int v19, v19, v8

    aget-wide v18, v18, v19

    cmpg-double v18, v18, v16

    if-gez v18, :cond_3

    .line 508
    mul-int/lit8 v18, v15, 0x2

    aput v7, v14, v18

    .line 509
    mul-int/lit8 v18, v15, 0x2

    add-int/lit8 v18, v18, 0x1

    aput v8, v14, v18

    .line 510
    add-int/lit8 v15, v15, 0x1

    .line 506
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 505
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 514
    .end local v8           #j:I
    :cond_5
    const/16 v18, 0x0

    aget v18, p0, v18

    move/from16 v0, v18

    new-array v3, v0, [I

    .line 515
    .local v3, address:[I
    const/4 v4, 0x0

    .line 516
    .local v4, addressCnt:I
    const/4 v7, 0x0

    :goto_4
    const/16 v18, 0x0

    aget v18, p0, v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_9

    .line 517
    const/4 v13, 0x1

    .line 518
    .local v13, rightClustered:Z
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_5
    if-ge v8, v15, :cond_6

    .line 519
    mul-int v18, v7, v12

    add-int/lit8 v18, v18, 0x1

    mul-int/lit8 v19, v8, 0x2

    aget v19, v14, v19

    add-int v18, v18, v19

    aget v18, p0, v18

    mul-int v19, v7, v12

    add-int/lit8 v19, v19, 0x1

    mul-int/lit8 v20, v8, 0x2

    add-int/lit8 v20, v20, 0x1

    aget v20, v14, v20

    add-int v19, v19, v20

    aget v19, p0, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 521
    const/4 v13, 0x0

    .line 525
    :cond_6
    if-eqz v13, :cond_7

    .line 526
    aput v7, v3, v4

    .line 527
    add-int/lit8 v4, v4, 0x1

    .line 516
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 518
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 530
    .end local v8           #j:I
    .end local v13           #rightClustered:Z
    :cond_9
    mul-int v18, v4, v12

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    new-array v9, v0, [I

    .line 531
    .local v9, newResult:[I
    const/16 v18, 0x0

    aput v4, v9, v18

    .line 532
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v4, :cond_a

    .line 533
    aget v18, v3, v7

    mul-int v18, v18, v12

    add-int/lit8 v18, v18, 0x1

    mul-int v19, v7, v12

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 535
    :cond_a
    return-object v9
.end method


# virtual methods
.method public getAnswers(Ljava/util/ArrayList;)[I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, coords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    sget-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    iget-boolean v2, p0, Lcom/android/server/power/EasyKnockPassword;->mIsRotatationFixed:Z

    const/4 v3, 0x4

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/power/EasyKnockPassword;->getResult(Ljava/util/ArrayList;DZ[Z)[I

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public getAnswers(Ljava/util/ArrayList;ZZZZ)[I
    .locals 4
    .parameter
    .parameter "orientation0"
    .parameter "orientation90"
    .parameter "orientation180"
    .parameter "orientation270"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ">;ZZZZ)[I"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, coords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    const/4 v1, 0x4

    new-array v0, v1, [Z

    const/4 v1, 0x0

    aput-boolean p2, v0, v1

    const/4 v1, 0x1

    aput-boolean p3, v0, v1

    const/4 v1, 0x2

    aput-boolean p4, v0, v1

    const/4 v1, 0x3

    aput-boolean p5, v0, v1

    .line 102
    .local v0, orientation:[Z
    sget-wide v1, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    iget-boolean v3, p0, Lcom/android/server/power/EasyKnockPassword;->mIsRotatationFixed:Z

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/server/power/EasyKnockPassword;->getResult(Ljava/util/ArrayList;DZ[Z)[I

    move-result-object v1

    return-object v1
.end method

.method public getAnswers(Ljava/util/ArrayList;[Z)[I
    .locals 3
    .parameter
    .parameter "orientations"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ">;[Z)[I"
        }
    .end annotation

    .prologue
    .local p1, coords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    const/4 v1, 0x4

    .line 80
    if-eqz p2, :cond_0

    if-eqz p2, :cond_1

    array-length v0, p2

    if-eq v0, v1, :cond_1

    .line 81
    :cond_0
    const/4 p2, 0x0

    .line 82
    new-array p2, v1, [Z

    .end local p2
    fill-array-data p2, :array_0

    .line 84
    .restart local p2
    :cond_1
    sget-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    iget-boolean v2, p0, Lcom/android/server/power/EasyKnockPassword;->mIsRotatationFixed:Z

    invoke-static {p1, v0, v1, v2, p2}, Lcom/android/server/power/EasyKnockPassword;->getResult(Ljava/util/ArrayList;DZ[Z)[I

    move-result-object v0

    return-object v0

    .line 82
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
