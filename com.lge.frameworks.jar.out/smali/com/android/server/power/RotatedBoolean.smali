.class public Lcom/android/server/power/RotatedBoolean;
.super Ljava/lang/Object;
.source "RotatedBoolean.java"


# static fields
.field static final DIST_MAX_FACTOR:F = 1.5f

.field static final DIST_MIN_FACTOR:F = -0.6f

.field static final HORIZONTAL:F = 0.9659258f

.field static final MAX_0:F = -0.8660254f

.field static final MAX_45:F = -0.25881898f

.field static final MAX_90:F = 0.49999997f

.field static final MIN_45:F = -0.9396926f

.field static final MIN_90:F = -0.70710677f

.field public static final ROTATE:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 9
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/power/RotatedBoolean;->ROTATE:[[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static addRotations([II)V
    .locals 8
    .parameter "currentSequence"
    .parameter "size"

    .prologue
    const/4 v7, 0x0

    .line 630
    aget v5, p0, v7

    .line 631
    .local v5, numSeq:I
    mul-int/lit8 v6, v5, 0x4

    aput v6, p0, v7

    .line 632
    mul-int v2, v5, p1

    .line 633
    .local v2, fullLength:I
    add-int/lit8 v0, v2, 0x1

    .line 635
    .local v0, curBaseIndex:I
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    const/4 v6, 0x3

    if-gt v3, v6, :cond_1

    .line 636
    sget-object v6, Lcom/android/server/power/RotatedBoolean;->ROTATE:[[I

    aget-object v1, v6, v3

    .line 637
    .local v1, curRotation:[I
    const/4 v4, 0x1

    .local v4, j:I
    :goto_1
    if-gt v4, v2, :cond_0

    .line 638
    aget v6, p0, v4

    add-int/lit8 v6, v6, -0x1

    aget v6, v1, v6

    aput v6, p0, v0

    .line 639
    add-int/lit8 v0, v0, 0x1

    .line 637
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 635
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    .end local v1           #curRotation:[I
    .end local v4           #j:I
    :cond_1
    return-void
.end method

.method public static getFirstSequence(Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;)Ljava/util/List;
    .locals 12
    .parameter "a0"
    .parameter "a1"
    .parameter "a2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v3, nextSequence:Ljava/util/List;,"Ljava/util/List<[I>;"
    iget v8, p1, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    iget v9, p0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    sub-float v4, v8, v9

    .line 192
    .local v4, p0x:F
    iget v8, p1, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    iget v9, p0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    sub-float v5, v8, v9

    .line 193
    .local v5, p0y:F
    iget v8, p2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    iget v9, p1, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    sub-float v6, v8, v9

    .line 194
    .local v6, p1x:F
    iget v8, p2, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    iget v9, p1, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    sub-float v7, v8, v9

    .line 196
    .local v7, p1y:F
    mul-float v8, v4, v4

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 197
    .local v1, d0:F
    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 199
    .local v2, d1:F
    mul-float v8, v4, v6

    mul-float v9, v5, v7

    add-float/2addr v8, v9

    mul-float v9, v1, v2

    div-float v0, v8, v9

    .line 202
    .local v0, cosAngle:F
    neg-float v8, v5

    mul-float/2addr v8, v6

    mul-float v9, v4, v7

    add-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 205
    const v8, 0x3ecccccc

    mul-float/2addr v8, v1

    cmpg-float v8, v8, v2

    if-gez v8, :cond_0

    const/high16 v8, 0x4020

    mul-float/2addr v8, v1

    cmpl-float v8, v8, v2

    if-lez v8, :cond_0

    const v8, -0x40cafb0d

    cmpg-float v8, v8, v0

    if-gez v8, :cond_0

    const v8, 0x3effffff

    cmpl-float v8, v8, v0

    if-lez v8, :cond_0

    .line 208
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    const v8, 0x3ecccccc

    mul-float/2addr v8, v1

    cmpg-float v8, v8, v2

    if-gez v8, :cond_1

    const/high16 v8, 0x4020

    mul-float/2addr v8, v1

    cmpl-float v8, v8, v2

    if-lez v8, :cond_1

    const v8, -0x40a24c29

    cmpl-float v8, v8, v0

    if-lez v8, :cond_1

    .line 215
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_2

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_3

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_1
    float-to-double v8, v1

    const-wide v10, 0x3fea0e021475a31aL

    mul-double/2addr v8, v10

    float-to-double v10, v2

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    float-to-double v8, v1

    const-wide v10, 0x4007504d551d68c6L

    mul-double/2addr v8, v10

    float-to-double v10, v2

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    const v8, -0x408f704e

    cmpg-float v8, v8, v0

    if-gez v8, :cond_2

    const v8, -0x417b7c14

    cmpl-float v8, v8, v0

    if-lez v8, :cond_2

    .line 224
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_4

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_2
    float-to-double v8, v1

    const-wide v10, 0x3fbb6b5cdfc5cdd8L

    mul-double/2addr v8, v10

    float-to-double v10, v2

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    float-to-double v8, v1

    const-wide v10, 0x4001a827b6fe2e6fL

    mul-double/2addr v8, v10

    float-to-double v10, v2

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    const v8, -0x408f704e

    cmpg-float v8, v8, v0

    if-gez v8, :cond_3

    const v8, -0x417b7c14

    cmpl-float v8, v8, v0

    if-lez v8, :cond_3

    .line 231
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_5

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_3
    :goto_0
    return-object v3

    .line 240
    :cond_4
    const v8, 0x3ecccccc

    mul-float/2addr v8, v1

    cmpg-float v8, v8, v2

    if-gez v8, :cond_5

    const/high16 v8, 0x4020

    mul-float/2addr v8, v1

    cmpl-float v8, v8, v2

    if-lez v8, :cond_5

    const v8, -0x40cafb0d

    cmpg-float v8, v8, v0

    if-gez v8, :cond_5

    const v8, 0x3effffff

    cmpl-float v8, v8, v0

    if-lez v8, :cond_5

    .line 243
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_6

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_5
    const v8, 0x3ecccccc

    mul-float/2addr v8, v1

    cmpg-float v8, v8, v2

    if-gez v8, :cond_6

    const/high16 v8, 0x4020

    mul-float/2addr v8, v1

    cmpl-float v8, v8, v2

    if-lez v8, :cond_6

    const v8, -0x40a24c29

    cmpl-float v8, v8, v0

    if-lez v8, :cond_6

    .line 250
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_7

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_9

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_6
    float-to-double v8, v1

    const-wide v10, 0x3fea0e021475a31aL

    mul-double/2addr v8, v10

    float-to-double v10, v2

    cmpg-double v8, v8, v10

    if-gez v8, :cond_7

    float-to-double v8, v1

    const-wide v10, 0x4007504d551d68c6L

    mul-double/2addr v8, v10

    float-to-double v10, v2

    cmpl-double v8, v8, v10

    if-lez v8, :cond_7

    const v8, -0x408f704e

    cmpg-float v8, v8, v0

    if-gez v8, :cond_7

    const v8, -0x417b7c14

    cmpl-float v8, v8, v0

    if-lez v8, :cond_7

    .line 259
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_a

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_7
    float-to-double v8, v1

    const-wide v10, 0x3fbb6b5cdfc5cdd8L

    mul-double/2addr v8, v10

    float-to-double v10, v2

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    float-to-double v8, v1

    const-wide v10, 0x4001a827b6fe2e6fL

    mul-double/2addr v8, v10

    float-to-double v10, v2

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    const v8, -0x408f704e

    cmpg-float v8, v8, v0

    if-gez v8, :cond_3

    const v8, -0x417b7c14

    cmpl-float v8, v8, v0

    if-lez v8, :cond_3

    .line 266
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_b

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 208
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 215
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 216
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 217
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 224
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 231
    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 243
    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 250
    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 251
    :array_8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 252
    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 259
    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 266
    :array_b
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getNextSequence(Ljava/util/List;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;)Ljava/util/List;
    .locals 24
    .parameter
    .parameter "a0"
    .parameter "a1"
    .parameter "a2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, currentSequence:Ljava/util/List;,"Ljava/util/List<[I>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v10, nextSequence:Ljava/util/List;,"Ljava/util/List<[I>;"
    const/16 v20, 0x9

    move/from16 v0, v20

    new-array v7, v0, [Z

    .line 297
    .local v7, directionsToAdd:[Z
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    move/from16 v21, v0

    sub-float v11, v20, v21

    .line 298
    .local v11, p0x:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    move/from16 v21, v0

    sub-float v12, v20, v21

    .line 299
    .local v12, p0y:F
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    move/from16 v21, v0

    sub-float v15, v20, v21

    .line 300
    .local v15, p1x:F
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    move/from16 v21, v0

    sub-float v16, v20, v21

    .line 303
    .local v16, p1y:F
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    .line 304
    .local v3, curSeqSize:I
    new-array v6, v3, [I

    .line 305
    .local v6, directionType:[I
    new-array v14, v3, [I

    .line 306
    .local v14, p1p2:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 307
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 308
    .local v18, sequence:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x2

    aget v13, v18, v20

    .line 309
    .local v13, p1:I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget v17, v18, v20

    .line 310
    .local v17, p2:I
    mul-int/lit8 v20, v13, 0x4

    add-int v20, v20, v17

    aput v20, v14, v8

    .line 311
    add-int v20, v13, v17

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 312
    const/16 v20, 0x2

    aput v20, v6, v8

    .line 306
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 314
    :cond_1
    aget v20, v14, v8

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    aget v20, v14, v8

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    aget v20, v14, v8

    const/16 v21, 0x13

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    aget v20, v14, v8

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 316
    :cond_2
    const/16 v20, 0x1

    aput v20, v6, v8

    goto :goto_1

    .line 322
    .end local v13           #p1:I
    .end local v17           #p2:I
    .end local v18           #sequence:[I
    :cond_3
    mul-float v20, v11, v11

    mul-float v21, v12, v12

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v4, v0

    .line 323
    .local v4, d0:F
    mul-float v20, v15, v15

    mul-float v21, v16, v16

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v5, v0

    .line 325
    .local v5, d1:F
    mul-float v20, v11, v15

    mul-float v21, v12, v16

    add-float v20, v20, v21

    mul-float v21, v4, v5

    div-float v2, v20, v21

    .line 328
    .local v2, cosAngle:F
    neg-float v0, v12

    move/from16 v20, v0

    mul-float v20, v20, v15

    mul-float v21, v11, v16

    add-float v20, v20, v21

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_8

    .line 331
    const v20, 0x3ecccccc

    mul-float v20, v20, v4

    cmpg-float v20, v20, v5

    if-gez v20, :cond_4

    const/high16 v20, 0x4020

    mul-float v20, v20, v4

    cmpl-float v20, v20, v5

    if-lez v20, :cond_4

    const v20, -0x40cafb0d

    cmpg-float v20, v20, v2

    if-gez v20, :cond_4

    const v20, 0x3effffff

    cmpl-float v20, v20, v2

    if-lez v20, :cond_4

    .line 334
    const/16 v20, 0x5

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 338
    :cond_4
    const v20, 0x3ecccccc

    mul-float v20, v20, v4

    cmpg-float v20, v20, v5

    if-gez v20, :cond_5

    const/high16 v20, 0x4020

    mul-float v20, v20, v4

    cmpl-float v20, v20, v5

    if-lez v20, :cond_5

    const v20, -0x40a24c29

    cmpl-float v20, v20, v2

    if-lez v20, :cond_5

    .line 341
    const/16 v20, 0x0

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 342
    const/16 v20, 0x3

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 343
    const/16 v20, 0x7

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 347
    :cond_5
    float-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide v22, 0x3fea0e021475a31aL

    mul-double v20, v20, v22

    float-to-double v0, v5

    move-wide/from16 v22, v0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_6

    float-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide v22, 0x4007504d551d68c6L

    mul-double v20, v20, v22

    float-to-double v0, v5

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_6

    const v20, -0x408f704e

    cmpg-float v20, v20, v2

    if-gez v20, :cond_6

    const v20, -0x417b7c14

    cmpl-float v20, v20, v2

    if-lez v20, :cond_6

    .line 350
    const/16 v20, 0x4

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 354
    :cond_6
    float-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide v22, 0x3fbb6b5cdfc5cdd8L

    mul-double v20, v20, v22

    float-to-double v0, v5

    move-wide/from16 v22, v0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_7

    float-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide v22, 0x4001a827b6fe2e6fL

    mul-double v20, v20, v22

    float-to-double v0, v5

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_7

    const v20, -0x408f704e

    cmpg-float v20, v20, v2

    if-gez v20, :cond_7

    const v20, -0x417b7c14

    cmpl-float v20, v20, v2

    if-lez v20, :cond_7

    .line 357
    const/16 v20, 0x6

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 396
    :cond_7
    :goto_2
    const/16 v20, 0x0

    aget-boolean v20, v7, v20

    if-eqz v20, :cond_e

    .line 397
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_e

    .line 398
    aget v20, v6, v8

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 399
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 400
    .restart local v18       #sequence:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 402
    .local v19, toAdd:[I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_4
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_c

    .line 403
    aget v20, v18, v9

    aput v20, v19, v9

    .line 402
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 366
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_8
    const v20, 0x3ecccccc

    mul-float v20, v20, v4

    cmpg-float v20, v20, v5

    if-gez v20, :cond_9

    const/high16 v20, 0x4020

    mul-float v20, v20, v4

    cmpl-float v20, v20, v5

    if-lez v20, :cond_9

    const v20, -0x40cafb0d

    cmpg-float v20, v20, v2

    if-gez v20, :cond_9

    const v20, 0x3effffff

    cmpl-float v20, v20, v2

    if-lez v20, :cond_9

    .line 369
    const/16 v20, 0x2

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 373
    :cond_9
    const v20, 0x3ecccccc

    mul-float v20, v20, v4

    cmpg-float v20, v20, v5

    if-gez v20, :cond_a

    const/high16 v20, 0x4020

    mul-float v20, v20, v4

    cmpl-float v20, v20, v5

    if-lez v20, :cond_a

    const v20, -0x40a24c29

    cmpl-float v20, v20, v2

    if-lez v20, :cond_a

    .line 376
    const/16 v20, 0x0

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 377
    const/16 v20, 0x3

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 378
    const/16 v20, 0x7

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 382
    :cond_a
    float-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide v22, 0x3fea0e021475a31aL

    mul-double v20, v20, v22

    float-to-double v0, v5

    move-wide/from16 v22, v0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_b

    float-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide v22, 0x4007504d551d68c6L

    mul-double v20, v20, v22

    float-to-double v0, v5

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_b

    const v20, -0x408f704e

    cmpg-float v20, v20, v2

    if-gez v20, :cond_b

    const v20, -0x417b7c14

    cmpl-float v20, v20, v2

    if-lez v20, :cond_b

    .line 385
    const/16 v20, 0x1

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 389
    :cond_b
    float-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide v22, 0x3fbb6b5cdfc5cdd8L

    mul-double v20, v20, v22

    float-to-double v0, v5

    move-wide/from16 v22, v0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_7

    float-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide v22, 0x4001a827b6fe2e6fL

    mul-double v20, v20, v22

    float-to-double v0, v5

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_7

    const v20, -0x408f704e

    cmpg-float v20, v20, v2

    if-gez v20, :cond_7

    const v20, -0x417b7c14

    cmpl-float v20, v20, v2

    if-lez v20, :cond_7

    .line 392
    const/16 v20, 0x8

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    goto/16 :goto_2

    .line 405
    .restart local v9       #j:I
    .restart local v18       #sequence:[I
    .restart local v19       #toAdd:[I
    :cond_c
    add-int/lit8 v20, v9, -0x2

    aget v20, v18, v20

    aput v20, v19, v9

    .line 406
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 411
    :cond_e
    const/16 v20, 0x1

    aget-boolean v20, v7, v20

    if-eqz v20, :cond_11

    .line 412
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v3, :cond_11

    .line 413
    aget v20, v6, v8

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 414
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 415
    .restart local v18       #sequence:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 417
    .restart local v19       #toAdd:[I
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_6
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_f

    .line 418
    aget v20, v18, v9

    aput v20, v19, v9

    .line 417
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 420
    :cond_f
    aget v20, v14, v8

    sparse-switch v20, :sswitch_data_0

    .line 436
    :goto_7
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 422
    .restart local v9       #j:I
    .restart local v18       #sequence:[I
    .restart local v19       #toAdd:[I
    :sswitch_0
    const/16 v20, 0x3

    aput v20, v19, v9

    goto :goto_7

    .line 425
    :sswitch_1
    const/16 v20, 0x1

    aput v20, v19, v9

    goto :goto_7

    .line 428
    :sswitch_2
    const/16 v20, 0x2

    aput v20, v19, v9

    goto :goto_7

    .line 431
    :sswitch_3
    const/16 v20, 0x4

    aput v20, v19, v9

    goto :goto_7

    .line 441
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_11
    const/16 v20, 0x2

    aget-boolean v20, v7, v20

    if-eqz v20, :cond_14

    .line 442
    const/4 v8, 0x0

    :goto_8
    if-ge v8, v3, :cond_14

    .line 443
    aget v20, v6, v8

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 444
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 445
    .restart local v18       #sequence:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 447
    .restart local v19       #toAdd:[I
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_9
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_12

    .line 448
    aget v20, v18, v9

    aput v20, v19, v9

    .line 447
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 450
    :cond_12
    aget v20, v14, v8

    sparse-switch v20, :sswitch_data_1

    .line 466
    :goto_a
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 452
    .restart local v9       #j:I
    .restart local v18       #sequence:[I
    .restart local v19       #toAdd:[I
    :sswitch_4
    const/16 v20, 0x4

    aput v20, v19, v9

    goto :goto_a

    .line 455
    :sswitch_5
    const/16 v20, 0x3

    aput v20, v19, v9

    goto :goto_a

    .line 458
    :sswitch_6
    const/16 v20, 0x1

    aput v20, v19, v9

    goto :goto_a

    .line 461
    :sswitch_7
    const/16 v20, 0x2

    aput v20, v19, v9

    goto :goto_a

    .line 471
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_14
    const/16 v20, 0x3

    aget-boolean v20, v7, v20

    if-eqz v20, :cond_17

    .line 472
    const/4 v8, 0x0

    :goto_b
    if-ge v8, v3, :cond_17

    .line 473
    aget v20, v6, v8

    if-nez v20, :cond_16

    .line 474
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 475
    .restart local v18       #sequence:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 477
    .restart local v19       #toAdd:[I
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_c
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_15

    .line 478
    aget v20, v18, v9

    aput v20, v19, v9

    .line 477
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 480
    :cond_15
    add-int/lit8 v20, v9, -0x2

    aget v20, v18, v20

    aput v20, v19, v9

    .line 481
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 486
    :cond_17
    const/16 v20, 0x4

    aget-boolean v20, v7, v20

    if-eqz v20, :cond_1a

    .line 487
    const/4 v8, 0x0

    :goto_d
    if-ge v8, v3, :cond_1a

    .line 488
    aget v20, v6, v8

    if-nez v20, :cond_19

    .line 489
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 490
    .restart local v18       #sequence:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 492
    .restart local v19       #toAdd:[I
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_e
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_18

    .line 493
    aget v20, v18, v9

    aput v20, v19, v9

    .line 492
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 495
    :cond_18
    aget v20, v14, v8

    sparse-switch v20, :sswitch_data_2

    .line 511
    :goto_f
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 497
    .restart local v9       #j:I
    .restart local v18       #sequence:[I
    .restart local v19       #toAdd:[I
    :sswitch_8
    const/16 v20, 0x2

    aput v20, v19, v9

    goto :goto_f

    .line 500
    :sswitch_9
    const/16 v20, 0x1

    aput v20, v19, v9

    goto :goto_f

    .line 503
    :sswitch_a
    const/16 v20, 0x3

    aput v20, v19, v9

    goto :goto_f

    .line 506
    :sswitch_b
    const/16 v20, 0x4

    aput v20, v19, v9

    goto :goto_f

    .line 516
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_1a
    const/16 v20, 0x5

    aget-boolean v20, v7, v20

    if-eqz v20, :cond_1d

    .line 517
    const/4 v8, 0x0

    :goto_10
    if-ge v8, v3, :cond_1d

    .line 518
    aget v20, v6, v8

    if-nez v20, :cond_1c

    .line 519
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 520
    .restart local v18       #sequence:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 522
    .restart local v19       #toAdd:[I
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_11
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_1b

    .line 523
    aget v20, v18, v9

    aput v20, v19, v9

    .line 522
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 525
    :cond_1b
    aget v20, v14, v8

    sparse-switch v20, :sswitch_data_3

    .line 541
    :goto_12
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_1c
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 527
    .restart local v9       #j:I
    .restart local v18       #sequence:[I
    .restart local v19       #toAdd:[I
    :sswitch_c
    const/16 v20, 0x4

    aput v20, v19, v9

    goto :goto_12

    .line 530
    :sswitch_d
    const/16 v20, 0x2

    aput v20, v19, v9

    goto :goto_12

    .line 533
    :sswitch_e
    const/16 v20, 0x1

    aput v20, v19, v9

    goto :goto_12

    .line 536
    :sswitch_f
    const/16 v20, 0x3

    aput v20, v19, v9

    goto :goto_12

    .line 546
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_1d
    const/16 v20, 0x6

    aget-boolean v20, v7, v20

    if-eqz v20, :cond_20

    .line 547
    const/4 v8, 0x0

    :goto_13
    if-ge v8, v3, :cond_20

    .line 548
    aget v20, v6, v8

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f

    .line 549
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 550
    .restart local v18       #sequence:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 552
    .restart local v19       #toAdd:[I
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_14
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_1e

    .line 553
    aget v20, v18, v9

    aput v20, v19, v9

    .line 552
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 555
    :cond_1e
    aget v20, v14, v8

    sparse-switch v20, :sswitch_data_4

    .line 570
    :goto_15
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_1f
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 557
    .restart local v9       #j:I
    .restart local v18       #sequence:[I
    .restart local v19       #toAdd:[I
    :sswitch_10
    const/16 v20, 0x2

    aput v20, v19, v9

    goto :goto_15

    .line 560
    :sswitch_11
    const/16 v20, 0x4

    aput v20, v19, v9

    goto :goto_15

    .line 563
    :sswitch_12
    const/16 v20, 0x3

    aput v20, v19, v9

    goto :goto_15

    .line 566
    :sswitch_13
    const/16 v20, 0x1

    aput v20, v19, v9

    goto :goto_15

    .line 575
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_20
    const/16 v20, 0x7

    aget-boolean v20, v7, v20

    if-eqz v20, :cond_23

    .line 576
    const/4 v8, 0x0

    :goto_16
    if-ge v8, v3, :cond_23

    .line 577
    aget v20, v6, v8

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_22

    .line 578
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 579
    .restart local v18       #sequence:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 581
    .restart local v19       #toAdd:[I
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_17
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_21

    .line 582
    aget v20, v18, v9

    aput v20, v19, v9

    .line 581
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 584
    :cond_21
    add-int/lit8 v20, v9, -0x2

    aget v20, v18, v20

    aput v20, v19, v9

    .line 585
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_22
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 590
    :cond_23
    const/16 v20, 0x8

    aget-boolean v20, v7, v20

    if-eqz v20, :cond_26

    .line 591
    const/4 v8, 0x0

    :goto_18
    if-ge v8, v3, :cond_26

    .line 592
    aget v20, v6, v8

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_25

    .line 593
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 594
    .restart local v18       #sequence:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 596
    .restart local v19       #toAdd:[I
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_19
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_24

    .line 597
    aget v20, v18, v9

    aput v20, v19, v9

    .line 596
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 599
    :cond_24
    aget v20, v14, v8

    sparse-switch v20, :sswitch_data_5

    .line 615
    :goto_1a
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    .line 601
    .restart local v9       #j:I
    .restart local v18       #sequence:[I
    .restart local v19       #toAdd:[I
    :sswitch_14
    const/16 v20, 0x3

    aput v20, v19, v9

    goto :goto_1a

    .line 604
    :sswitch_15
    const/16 v20, 0x1

    aput v20, v19, v9

    goto :goto_1a

    .line 607
    :sswitch_16
    const/16 v20, 0x2

    aput v20, v19, v9

    goto :goto_1a

    .line 610
    :sswitch_17
    const/16 v20, 0x4

    aput v20, v19, v9

    goto :goto_1a

    .line 619
    .end local v9           #j:I
    .end local v18           #sequence:[I
    .end local v19           #toAdd:[I
    :cond_26
    return-object v10

    .line 420
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_3
        0x13 -> :sswitch_2
    .end sparse-switch

    .line 450
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_7
        0x13 -> :sswitch_6
    .end sparse-switch

    .line 495
    :sswitch_data_2
    .sparse-switch
        0x7 -> :sswitch_8
        0x9 -> :sswitch_b
        0x10 -> :sswitch_9
        0x12 -> :sswitch_a
    .end sparse-switch

    .line 525
    :sswitch_data_3
    .sparse-switch
        0x7 -> :sswitch_c
        0x9 -> :sswitch_f
        0x10 -> :sswitch_d
        0x12 -> :sswitch_e
    .end sparse-switch

    .line 555
    :sswitch_data_4
    .sparse-switch
        0x8 -> :sswitch_10
        0xb -> :sswitch_11
        0xe -> :sswitch_13
        0x11 -> :sswitch_12
    .end sparse-switch

    .line 599
    :sswitch_data_5
    .sparse-switch
        0x8 -> :sswitch_14
        0xb -> :sswitch_15
        0xe -> :sswitch_17
        0x11 -> :sswitch_16
    .end sparse-switch
.end method

.method public static getStrictSequence(Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;Lcom/android/server/power/EasyKnockPassword$EasyKnockType;)Ljava/util/List;
    .locals 19
    .parameter "a0"
    .parameter "a1"
    .parameter "a2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            "Lcom/android/server/power/EasyKnockPassword$EasyKnockType;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v6, nextSequence:Ljava/util/List;,"Ljava/util/List<[I>;"
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    sub-float v7, v13, v14

    .line 58
    .local v7, p0x:F
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    sub-float v8, v13, v14

    .line 59
    .local v8, p0y:F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    sub-float v9, v13, v14

    .line 60
    .local v9, p1x:F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    sub-float v10, v13, v14

    .line 61
    .local v10, p1y:F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->x_coord:F

    sub-float v11, v13, v14

    .line 62
    .local v11, p2x:F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;->y_coord:F

    sub-float v12, v13, v14

    .line 64
    .local v12, p2y:F
    mul-float v13, v7, v7

    mul-float v14, v8, v8

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v3, v13

    .line 65
    .local v3, d0:F
    mul-float v13, v9, v9

    mul-float v14, v10, v10

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v4, v13

    .line 66
    .local v4, d1:F
    mul-float v13, v11, v11

    mul-float v14, v12, v12

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v5, v13

    .line 68
    .local v5, d2:F
    mul-float v13, v7, v9

    mul-float v14, v8, v10

    add-float/2addr v13, v14

    mul-float v14, v3, v4

    div-float v2, v13, v14

    .line 69
    .local v2, cosAngle:F
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Angle : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    float-to-double v15, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->acos(D)D

    move-result-wide v15

    const-wide v17, 0x4066800000000000L

    mul-double v15, v15, v17

    const-wide v17, 0x400921fb54442d18L

    div-double v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    const v13, 0x3ecccccc

    mul-float/2addr v13, v3

    cmpg-float v13, v13, v4

    if-gez v13, :cond_c

    const/high16 v13, 0x4020

    mul-float/2addr v13, v3

    cmpl-float v13, v13, v4

    if-lez v13, :cond_c

    float-to-double v13, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v15

    float-to-double v15, v15

    const-wide v17, 0x3fd999999999999aL

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_c

    .line 72
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3f7746ea

    mul-float/2addr v14, v3

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3f7746ea

    mul-float/2addr v14, v4

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_1

    :cond_0
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3feee8dd392b9ab8L

    float-to-double v0, v3

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3feee8dd392b9ab8L

    float-to-double v0, v4

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_4

    :cond_1
    const v13, -0x40cafb0d

    cmpg-float v13, v13, v2

    if-gez v13, :cond_4

    const v13, 0x3effffff

    cmpl-float v13, v13, v2

    if-lez v13, :cond_4

    .line 75
    neg-float v13, v8

    mul-float/2addr v13, v9

    mul-float v14, v7, v10

    add-float/2addr v13, v14

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    .line 76
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_0

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_2
    :goto_0
    return-object v6

    .line 78
    :cond_3
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_1

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_4
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3f7746ea

    mul-float/2addr v14, v3

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3f7746ea

    mul-float/2addr v14, v5

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_6

    :cond_5
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3feee8dd392b9ab8L

    float-to-double v0, v3

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_8

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3feee8dd392b9ab8L

    float-to-double v0, v5

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_8

    .line 83
    :cond_6
    neg-float v13, v8

    mul-float/2addr v13, v9

    mul-float v14, v7, v10

    add-float/2addr v13, v14

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    .line 84
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_2

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_7
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_3

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_8
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3f7746ea

    mul-float/2addr v14, v4

    cmpl-float v13, v13, v14

    if-lez v13, :cond_9

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3f7746ea

    mul-float/2addr v14, v5

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_a

    :cond_9
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3f7746ea

    mul-float/2addr v14, v4

    cmpl-float v13, v13, v14

    if-lez v13, :cond_c

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3f7746ea

    mul-float/2addr v14, v5

    cmpl-float v13, v13, v14

    if-lez v13, :cond_c

    .line 92
    :cond_a
    neg-float v13, v8

    mul-float/2addr v13, v9

    mul-float v14, v7, v10

    add-float/2addr v13, v14

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_b

    .line 93
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_4

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 95
    :cond_b
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_5

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 101
    :cond_c
    neg-float v13, v8

    mul-float/2addr v13, v9

    mul-float v14, v7, v10

    add-float/2addr v13, v14

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_10

    .line 102
    const/high16 v13, 0x4020

    mul-float/2addr v13, v3

    cmpl-float v13, v13, v4

    if-lez v13, :cond_e

    .line 104
    const v13, 0x3ecccccc

    mul-float/2addr v13, v3

    cmpg-float v13, v13, v4

    if-gez v13, :cond_d

    const v13, -0x40cafb0d

    cmpg-float v13, v13, v2

    if-gez v13, :cond_d

    const v13, 0x3effffff

    cmpl-float v13, v13, v2

    if-lez v13, :cond_d

    .line 106
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_6

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_d
    const v13, 0x3ecccccc

    mul-float/2addr v13, v3

    cmpg-float v13, v13, v4

    if-gez v13, :cond_e

    const v13, -0x40a24c29

    cmpl-float v13, v13, v2

    if-lez v13, :cond_e

    .line 112
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_7

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_8

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_9

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_e
    const v13, -0x408f704e

    cmpg-float v13, v13, v2

    if-gez v13, :cond_2

    const v13, -0x417b7c14

    cmpl-float v13, v13, v2

    if-lez v13, :cond_2

    .line 119
    float-to-double v13, v3

    const-wide v15, 0x3fea0e021475a31aL

    mul-double/2addr v13, v15

    float-to-double v15, v4

    cmpg-double v13, v13, v15

    if-gez v13, :cond_f

    float-to-double v13, v3

    const-wide v15, 0x4007504d551d68c6L

    mul-double/2addr v13, v15

    float-to-double v15, v4

    cmpl-double v13, v13, v15

    if-lez v13, :cond_f

    .line 121
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_a

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_f
    float-to-double v13, v3

    const-wide v15, 0x3fbb6b5cdfc5cdd8L

    mul-double/2addr v13, v15

    float-to-double v15, v4

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    float-to-double v13, v3

    const-wide v15, 0x4001a827b6fe2e6fL

    mul-double/2addr v13, v15

    float-to-double v15, v4

    cmpl-double v13, v13, v15

    if-lez v13, :cond_2

    .line 127
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_b

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 134
    :cond_10
    const v13, 0x3ecccccc

    mul-float/2addr v13, v3

    cmpg-float v13, v13, v4

    if-gez v13, :cond_12

    const/high16 v13, 0x4020

    mul-float/2addr v13, v3

    cmpl-float v13, v13, v4

    if-lez v13, :cond_12

    .line 137
    const v13, -0x40cafb0d

    cmpg-float v13, v13, v2

    if-gez v13, :cond_11

    const v13, 0x3effffff

    cmpl-float v13, v13, v2

    if-lez v13, :cond_11

    .line 138
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_c

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_11
    const v13, -0x40a24c29

    cmpl-float v13, v13, v2

    if-lez v13, :cond_12

    .line 144
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_d

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_e

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_f

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_12
    const v13, -0x408f704e

    cmpg-float v13, v13, v2

    if-gez v13, :cond_2

    const v13, -0x417b7c14

    cmpl-float v13, v13, v2

    if-lez v13, :cond_2

    .line 151
    float-to-double v13, v3

    const-wide v15, 0x3fea0e021475a31aL

    mul-double/2addr v13, v15

    float-to-double v15, v4

    cmpg-double v13, v13, v15

    if-gez v13, :cond_13

    float-to-double v13, v3

    const-wide v15, 0x4007504d551d68c6L

    mul-double/2addr v13, v15

    float-to-double v15, v4

    cmpl-double v13, v13, v15

    if-lez v13, :cond_13

    .line 153
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_10

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_13
    float-to-double v13, v3

    const-wide v15, 0x3fbb6b5cdfc5cdd8L

    mul-double/2addr v13, v15

    float-to-double v15, v4

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    float-to-double v13, v3

    const-wide v15, 0x4001a827b6fe2e6fL

    mul-double/2addr v13, v15

    float-to-double v15, v4

    cmpl-double v13, v13, v15

    if-lez v13, :cond_2

    .line 159
    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_11

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 76
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 78
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 84
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 86
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 93
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 95
    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 106
    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 112
    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 113
    :array_8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 121
    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 127
    :array_b
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 138
    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 144
    :array_d
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 145
    :array_e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 146
    :array_f
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 153
    :array_10
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 159
    :array_11
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method
