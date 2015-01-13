.class public Lcom/lge/imageutil/JavaImageUtil;
.super Ljava/lang/Object;
.source "JavaImageUtil.java"


# static fields
.field private static final MAX_SAMPLE_PIXELS:I = 0x1d4c0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcBrightness(I)I
    .locals 2
    .parameter "color"

    .prologue
    .line 501
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x12b

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x24b

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x72

    add-int/2addr v0, v1

    return v0
.end method

.method public static getBlur(Landroid/graphics/Bitmap;I)I
    .locals 51
    .parameter "bitmap"
    .parameter "threshold"

    .prologue
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 18
    .local v5, org_w:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 19
    .local v9, org_h:I
    mul-int v41, v5, v9

    .line 20
    .local v41, num:I
    move/from16 v0, v41

    new-array v3, v0, [I

    .line 22
    .local v3, pixels:[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 25
    const/16 v34, 0x0

    .local v34, idx:I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, v41

    if-lt v0, v1, :cond_0

    .line 29
    shr-int/lit8 v26, v5, 0x4

    .line 30
    .local v26, edge_w:I
    shr-int/lit8 v24, v9, 0x4

    .line 31
    .local v24, edge_h:I
    mul-int v25, v26, v24

    .line 33
    .local v25, edge_num:I
    const/4 v2, 0x3

    move/from16 v0, v25

    filled-new-array {v2, v0}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [[I

    .line 35
    .local v28, emaxs:[[I
    move/from16 v36, v5

    .line 36
    .local v36, level_w:I
    move/from16 v35, v9

    .line 38
    .local v35, level_h:I
    const/16 v33, 0x0

    .local v33, i:I
    :goto_1
    const/4 v2, 0x3

    move/from16 v0, v33

    if-lt v0, v2, :cond_1

    .line 88
    const/16 v39, 0x0

    .local v39, nE:I
    const/16 v38, 0x0

    .local v38, nDA:I
    const/16 v40, 0x0

    .local v40, nRG:I
    const/16 v37, 0x0

    .line 89
    .local v37, nBRG:I
    const/16 v48, 0x0

    .local v48, yIdx:I
    :goto_2
    move/from16 v0, v48

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    .line 117
    move/from16 v0, v38

    int-to-double v6, v0

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v49, v0

    div-double v42, v6, v49

    .line 118
    .local v42, per:D
    move/from16 v0, v37

    int-to-double v6, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v49, v0

    div-double v10, v6, v49

    .line 119
    .local v10, blurExtent:D
    mul-int v2, v24, v26

    int-to-double v0, v2

    move-wide/from16 v45, v0

    .line 121
    .local v45, total:D
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "### resolution "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " x "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "### total "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v45

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " nE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " nDA "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " nRG "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " nBRG "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "### percent : edge "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v39

    int-to-double v6, v0

    div-double v6, v6, v45

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sharpen "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v38

    int-to-double v6, v0

    div-double v6, v6, v45

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " smooth "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v40

    int-to-double v6, v0

    .line 124
    div-double v6, v6, v45

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " blurred smooth "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v37

    int-to-double v6, v0

    div-double v6, v6, v45

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "### per "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v42

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " blur extent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/imageutil/Log;->i(Ljava/lang/String;)V

    .line 127
    const-wide v6, 0x408f400000000000L

    mul-double/2addr v6, v10

    double-to-int v2, v6

    return v2

    .line 26
    .end local v10           #blurExtent:D
    .end local v24           #edge_h:I
    .end local v25           #edge_num:I
    .end local v26           #edge_w:I
    .end local v28           #emaxs:[[I
    .end local v33           #i:I
    .end local v35           #level_h:I
    .end local v36           #level_w:I
    .end local v37           #nBRG:I
    .end local v38           #nDA:I
    .end local v39           #nE:I
    .end local v40           #nRG:I
    .end local v42           #per:D
    .end local v45           #total:D
    .end local v48           #yIdx:I
    :cond_0
    aget v2, v3, v34

    invoke-static {v2}, Lcom/lge/imageutil/JavaImageUtil;->calcBrightness(I)I

    move-result v2

    aput v2, v3, v34

    .line 25
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_0

    .line 39
    .restart local v24       #edge_h:I
    .restart local v25       #edge_num:I
    .restart local v26       #edge_w:I
    .restart local v28       #emaxs:[[I
    .restart local v33       #i:I
    .restart local v35       #level_h:I
    .restart local v36       #level_w:I
    :cond_1
    aget-object v27, v28, v33

    .line 40
    .local v27, emax:[I
    shr-int/lit8 v2, v36, 0x1

    div-int v44, v2, v26

    .line 41
    .local v44, size:I
    const/16 v17, 0x0

    .local v17, d_yIdx:I
    const/16 v23, 0x0

    .line 43
    .local v23, e_yIdx:I
    const/16 v48, 0x0

    .restart local v48       #yIdx:I
    :goto_3
    add-int/lit8 v2, v35, -0x1

    move/from16 v0, v48

    if-lt v0, v2, :cond_3

    .line 84
    :cond_2
    shr-int/lit8 v36, v36, 0x1

    .line 85
    shr-int/lit8 v35, v35, 0x1

    .line 38
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_1

    .line 44
    :cond_3
    const/16 v22, 0x0

    .line 45
    .local v22, e_xIdx:I
    const/16 v16, 0x0

    .line 46
    .local v16, d_xIdx:I
    mul-int v34, v48, v5

    .line 47
    const/16 v47, 0x0

    .local v47, xIdx:I
    :goto_4
    add-int/lit8 v2, v36, -0x1

    move/from16 v0, v47

    if-lt v0, v2, :cond_6

    .line 76
    :cond_4
    add-int/lit8 v17, v17, 0x1

    .line 77
    rem-int v2, v17, v44

    if-nez v2, :cond_5

    .line 78
    add-int/lit8 v23, v23, 0x1

    .line 79
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 43
    :cond_5
    add-int/lit8 v48, v48, 0x2

    goto :goto_3

    .line 48
    :cond_6
    aget v29, v3, v34

    .line 49
    .local v29, g0:I
    add-int/lit8 v2, v34, 0x1

    aget v30, v3, v2

    .line 50
    .local v30, g1:I
    add-int v2, v34, v5

    aget v31, v3, v2

    .line 51
    .local v31, g2:I
    add-int v2, v34, v5

    add-int/lit8 v2, v2, 0x1

    aget v32, v3, v2

    .line 54
    .local v32, g3:I
    add-int v2, v29, v30

    add-int v2, v2, v31

    add-int v2, v2, v32

    shr-int/lit8 v12, v2, 0x2

    .line 55
    .local v12, c0:I
    sub-int v2, v29, v30

    add-int v2, v2, v31

    sub-int v2, v2, v32

    shr-int/lit8 v13, v2, 0x2

    .line 56
    .local v13, c1:I
    add-int v2, v29, v30

    sub-int v2, v2, v31

    sub-int v2, v2, v32

    shr-int/lit8 v14, v2, 0x2

    .line 57
    .local v14, c2:I
    sub-int v2, v29, v30

    sub-int v2, v2, v31

    add-int v2, v2, v32

    shr-int/lit8 v15, v2, 0x2

    .line 60
    .local v15, c3:I
    mul-int v2, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v2, v4

    mul-int v4, v15, v15

    add-int/2addr v2, v4

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v18, v0

    .line 61
    .local v18, e:I
    mul-int v2, v23, v26

    add-int v2, v2, v22

    aget v2, v27, v2

    move/from16 v0, v18

    if-le v0, v2, :cond_7

    .line 62
    mul-int v2, v23, v26

    add-int v2, v2, v22

    aput v18, v27, v2

    .line 65
    :cond_7
    mul-int v2, v17, v5

    add-int v2, v2, v16

    aput v12, v3, v2

    .line 67
    add-int/lit8 v16, v16, 0x1

    .line 68
    rem-int v2, v16, v44

    if-nez v2, :cond_8

    .line 69
    add-int/lit8 v22, v22, 0x1

    .line 70
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 74
    :cond_8
    add-int/lit8 v34, v34, 0x2

    .line 47
    add-int/lit8 v47, v47, 0x2

    goto :goto_4

    .line 90
    .end local v12           #c0:I
    .end local v13           #c1:I
    .end local v14           #c2:I
    .end local v15           #c3:I
    .end local v16           #d_xIdx:I
    .end local v17           #d_yIdx:I
    .end local v18           #e:I
    .end local v22           #e_xIdx:I
    .end local v23           #e_yIdx:I
    .end local v27           #emax:[I
    .end local v29           #g0:I
    .end local v30           #g1:I
    .end local v31           #g2:I
    .end local v32           #g3:I
    .end local v44           #size:I
    .end local v47           #xIdx:I
    .restart local v37       #nBRG:I
    .restart local v38       #nDA:I
    .restart local v39       #nE:I
    .restart local v40       #nRG:I
    :cond_9
    mul-int v34, v48, v26

    .line 91
    const/16 v47, 0x0

    .restart local v47       #xIdx:I
    :goto_5
    move/from16 v0, v47

    move/from16 v1, v26

    if-lt v0, v1, :cond_a

    .line 89
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_2

    .line 92
    :cond_a
    const/4 v2, 0x0

    aget-object v2, v28, v2

    aget v19, v2, v34

    .line 93
    .local v19, e1:I
    const/4 v2, 0x1

    aget-object v2, v28, v2

    aget v20, v2, v34

    .line 94
    .local v20, e2:I
    const/4 v2, 0x2

    aget-object v2, v28, v2

    aget v21, v2, v34

    .line 97
    .local v21, e3:I
    move/from16 v0, v19

    move/from16 v1, p1

    if-gt v0, v1, :cond_b

    move/from16 v0, v20

    move/from16 v1, p1

    if-gt v0, v1, :cond_b

    move/from16 v0, v21

    move/from16 v1, p1

    if-le v0, v1, :cond_f

    .line 98
    :cond_b
    add-int/lit8 v39, v39, 0x1

    .line 100
    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 101
    add-int/lit8 v38, v38, 0x1

    .line 104
    :cond_c
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_e

    :cond_d
    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 105
    :cond_e
    add-int/lit8 v40, v40, 0x1

    .line 108
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_f

    .line 109
    add-int/lit8 v37, v37, 0x1

    .line 113
    :cond_f
    add-int/lit8 v34, v34, 0x1

    .line 91
    add-int/lit8 v47, v47, 0x1

    goto :goto_5
.end method

.method public static getBrightness(Landroid/graphics/Bitmap;)I
    .locals 18
    .parameter "bitmap"

    .prologue
    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 132
    .local v4, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 133
    .local v9, height:I
    mul-int v1, v4, v9

    invoke-static {v1}, Lcom/lge/imageutil/JavaImageUtil;->getSamplingOffset(I)I

    move-result v16

    .line 134
    .local v16, samplingOffset:I
    const/4 v15, 0x0

    .line 135
    .local v15, samplingCount:I
    const/4 v14, 0x0

    .line 136
    .local v14, lineSamplingCount:I
    new-array v2, v4, [I

    .line 137
    .local v2, pixels:[I
    const-wide/16 v10, 0x0

    .line 138
    .local v10, imageAverage:J
    const-wide/16 v12, 0x0

    .line 140
    .local v12, lineAverage:J
    const/4 v6, 0x0

    .local v6, y:I
    :goto_0
    if-lt v6, v9, :cond_0

    .line 152
    mul-int/lit16 v1, v14, 0x3e8

    int-to-long v7, v1

    div-long/2addr v10, v7

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "### resolution "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " x "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int v3, v4, v9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "### sub-sampling "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " x "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : 1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    mul-int v3, v15, v14

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "### average brightness "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 158
    long-to-int v1, v10

    return v1

    .line 141
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 142
    const/4 v15, 0x0

    .line 143
    const-wide/16 v12, 0x0

    .line 144
    const/16 v17, 0x0

    .local v17, x:I
    :goto_1
    move/from16 v0, v17

    if-lt v0, v4, :cond_1

    .line 148
    int-to-long v7, v15

    div-long v7, v12, v7

    add-long/2addr v10, v7

    .line 149
    add-int/lit8 v14, v14, 0x1

    .line 140
    add-int v6, v6, v16

    goto/16 :goto_0

    .line 145
    :cond_1
    aget v1, v2, v17

    invoke-static {v1}, Lcom/lge/imageutil/JavaImageUtil;->calcBrightness(I)I

    move-result v1

    int-to-long v7, v1

    add-long/2addr v12, v7

    .line 146
    add-int/lit8 v15, v15, 0x1

    .line 144
    add-int v17, v17, v16

    goto :goto_1
.end method

.method public static getBrightness(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 1
    .parameter "bitmap"
    .parameter "rect"

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public static getEdgeTypeMarkedImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 58
    .parameter "bitmap"

    .prologue
    .line 310
    if-nez p0, :cond_0

    .line 311
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "bitmap is null"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 314
    :cond_0
    const/16 v11, 0x2710

    .line 316
    .local v11, THRESHOLD:I
    const-string v5, "getEdgeTypeMarkedImage"

    invoke-static {v5}, Lcom/lge/imageutil/Log;->e(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 320
    .local v12, before:Ljava/lang/Long;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 321
    .local v6, org_w:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 322
    .local v10, org_h:I
    mul-int v48, v6, v10

    .line 323
    .local v48, num:I
    move/from16 v0, v48

    new-array v4, v0, [I

    .line 324
    .local v4, org:[I
    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v35, v0

    .line 325
    .local v35, gray1:[I
    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v36, v0

    .line 327
    .local v36, gray2:[I
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 330
    const/16 v40, 0x0

    .local v40, idx:I
    :goto_0
    move/from16 v0, v40

    move/from16 v1, v48

    if-lt v0, v1, :cond_2

    .line 335
    move/from16 v42, v6

    .line 336
    .local v42, level_w:I
    move/from16 v41, v10

    .line 338
    .local v41, level_h:I
    shr-int/lit8 v28, v6, 0x4

    .line 339
    .local v28, edge_w:I
    shr-int/lit8 v27, v10, 0x4

    .line 341
    .local v27, edge_h:I
    const/4 v5, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    filled-new-array {v5, v0, v1}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [[[I

    .line 343
    .local v30, emaxs:[[[I
    const/16 v39, 0x0

    .local v39, i:I
    :goto_1
    const/4 v5, 0x3

    move/from16 v0, v39

    if-lt v0, v5, :cond_3

    .line 409
    div-int v51, v6, v28

    .line 410
    .local v51, size:I
    const/16 v46, 0x0

    .local v46, nE:I
    const/16 v45, 0x0

    .local v45, nDA:I
    const/16 v47, 0x0

    .local v47, nRG:I
    const/16 v44, 0x0

    .line 411
    .local v44, nBRG:I
    filled-new-array/range {v27 .. v28}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [[I

    .line 412
    .local v26, edge:[[I
    const/16 v55, 0x0

    .local v55, yIdx:I
    :goto_2
    move/from16 v0, v55

    move/from16 v1, v27

    if-lt v0, v1, :cond_e

    .line 442
    move/from16 v0, v45

    int-to-double v7, v0

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v56, v0

    div-double v49, v7, v56

    .line 444
    .local v49, per:D
    move/from16 v0, v44

    int-to-double v7, v0

    move/from16 v0, v47

    int-to-double v0, v0

    move-wide/from16 v56, v0

    div-double v13, v7, v56

    .line 446
    .local v13, blurExtent:D
    mul-int v5, v27, v28

    int-to-double v0, v5

    move-wide/from16 v52, v0

    .line 448
    .local v52, total:D
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "per "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v49

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " blur extent "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "total "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v52

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " nE "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " nDA "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " nRG "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " nBRG "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "percent : edge "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v46

    int-to-double v7, v0

    div-double v7, v7, v52

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " sharpen "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v45

    int-to-double v7, v0

    div-double v7, v7, v52

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " smooth "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v47

    int-to-double v7, v0

    div-double v7, v7, v52

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 452
    const-string v7, " blurred smooth "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    int-to-double v7, v0

    div-double v7, v7, v52

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "### testBlur takes "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v56

    sub-long v7, v7, v56

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "### resolution "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " x "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int v7, v6, v10

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 457
    const/16 v55, 0x0

    :goto_3
    move/from16 v0, v55

    if-lt v0, v10, :cond_15

    .line 490
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v6, v10, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 491
    .local v3, save:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 493
    return-object v3

    .line 331
    .end local v3           #save:Landroid/graphics/Bitmap;
    .end local v13           #blurExtent:D
    .end local v26           #edge:[[I
    .end local v27           #edge_h:I
    .end local v28           #edge_w:I
    .end local v30           #emaxs:[[[I
    .end local v39           #i:I
    .end local v41           #level_h:I
    .end local v42           #level_w:I
    .end local v44           #nBRG:I
    .end local v45           #nDA:I
    .end local v46           #nE:I
    .end local v47           #nRG:I
    .end local v49           #per:D
    .end local v51           #size:I
    .end local v52           #total:D
    .end local v55           #yIdx:I
    :cond_2
    aget v5, v4, v40

    invoke-static {v5}, Lcom/lge/imageutil/JavaImageUtil;->calcBrightness(I)I

    move-result v5

    aput v5, v35, v40

    .line 330
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_0

    .line 345
    .restart local v27       #edge_h:I
    .restart local v28       #edge_w:I
    .restart local v30       #emaxs:[[[I
    .restart local v39       #i:I
    .restart local v41       #level_h:I
    .restart local v42       #level_w:I
    :cond_3
    const/16 v55, 0x0

    .restart local v55       #yIdx:I
    :goto_4
    move/from16 v0, v55

    move/from16 v1, v41

    if-lt v0, v1, :cond_5

    .line 362
    const/16 v54, 0x0

    .local v54, xIdx:I
    :goto_5
    move/from16 v0, v54

    move/from16 v1, v42

    if-lt v0, v1, :cond_7

    .line 377
    shr-int/lit8 v42, v42, 0x1

    .line 378
    shr-int/lit8 v41, v41, 0x1

    .line 381
    aget-object v29, v30, v39

    .line 382
    .local v29, emax:[[I
    div-int v51, v42, v28

    .line 383
    .restart local v51       #size:I
    const/16 v55, 0x0

    :goto_6
    move/from16 v0, v55

    move/from16 v1, v41

    if-lt v0, v1, :cond_9

    .line 343
    :cond_4
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_1

    .line 346
    .end local v29           #emax:[[I
    .end local v51           #size:I
    .end local v54           #xIdx:I
    :cond_5
    mul-int v40, v55, v6

    .line 347
    move/from16 v16, v40

    .line 348
    .local v16, cIdx:I
    shr-int/lit8 v5, v42, 0x1

    add-int v17, v16, v5

    .line 349
    .local v17, dIdx:I
    const/16 v54, 0x0

    .restart local v54       #xIdx:I
    :goto_7
    add-int/lit8 v5, v42, -0x1

    move/from16 v0, v54

    if-lt v0, v5, :cond_6

    .line 345
    add-int/lit8 v55, v55, 0x1

    goto :goto_4

    .line 350
    :cond_6
    add-int/lit8 v5, v40, 0x1

    aget v33, v35, v5

    .line 351
    .local v33, g2:I
    aget v32, v35, v40

    .line 352
    .local v32, g1:I
    add-int v5, v33, v32

    shr-int/lit8 v5, v5, 0x1

    aput v5, v36, v16

    .line 353
    sub-int v5, v33, v32

    shr-int/lit8 v5, v5, 0x1

    aput v5, v36, v17

    .line 355
    add-int/lit8 v16, v16, 0x1

    .line 356
    add-int/lit8 v17, v17, 0x1

    .line 357
    add-int/lit8 v40, v40, 0x2

    .line 349
    add-int/lit8 v54, v54, 0x2

    goto :goto_7

    .line 363
    .end local v16           #cIdx:I
    .end local v17           #dIdx:I
    .end local v32           #g1:I
    .end local v33           #g2:I
    :cond_7
    move/from16 v40, v54

    .line 364
    move/from16 v16, v54

    .line 365
    .restart local v16       #cIdx:I
    shr-int/lit8 v5, v41, 0x1

    mul-int/2addr v5, v6

    add-int v17, v16, v5

    .line 366
    .restart local v17       #dIdx:I
    const/16 v55, 0x0

    :goto_8
    add-int/lit8 v5, v41, -0x1

    move/from16 v0, v55

    if-lt v0, v5, :cond_8

    .line 362
    add-int/lit8 v54, v54, 0x1

    goto :goto_5

    .line 367
    :cond_8
    add-int v5, v40, v6

    aget v33, v36, v5

    .line 368
    .restart local v33       #g2:I
    aget v32, v36, v40

    .line 369
    .restart local v32       #g1:I
    add-int v5, v33, v32

    shr-int/lit8 v5, v5, 0x1

    aput v5, v35, v16

    .line 370
    sub-int v5, v33, v32

    shr-int/lit8 v5, v5, 0x1

    aput v5, v35, v17

    .line 372
    add-int v16, v16, v6

    .line 373
    add-int v17, v17, v6

    .line 374
    shl-int/lit8 v5, v6, 0x1

    add-int v40, v40, v5

    .line 366
    add-int/lit8 v55, v55, 0x2

    goto :goto_8

    .line 384
    .end local v16           #cIdx:I
    .end local v17           #dIdx:I
    .end local v32           #g1:I
    .end local v33           #g2:I
    .restart local v29       #emax:[[I
    .restart local v51       #size:I
    :cond_9
    mul-int v34, v55, v6

    .line 385
    .local v34, gIdx:I
    div-int v25, v55, v51

    .line 386
    .local v25, e_yIdx:I
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 389
    const/16 v23, -0x1

    .line 390
    .local v23, e_xIdx:I
    const/16 v54, 0x0

    :goto_9
    move/from16 v0, v54

    move/from16 v1, v42

    if-lt v0, v1, :cond_b

    .line 383
    :cond_a
    add-int/lit8 v55, v55, 0x1

    goto :goto_6

    .line 391
    :cond_b
    rem-int v5, v54, v51

    if-nez v5, :cond_c

    .line 392
    add-int/lit8 v23, v23, 0x1

    .line 393
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    .line 397
    :cond_c
    mul-int v5, v41, v6

    add-int v5, v5, v34

    aget v43, v35, v5

    .line 398
    .local v43, lh:I
    add-int v5, v34, v42

    aget v38, v35, v5

    .line 399
    .local v38, hl:I
    mul-int v5, v41, v6

    add-int v5, v5, v34

    add-int v5, v5, v41

    aget v37, v35, v5

    .line 400
    .local v37, hh:I
    mul-int v5, v43, v43

    mul-int v7, v38, v38

    add-int/2addr v5, v7

    mul-int v7, v37, v37

    add-int/2addr v5, v7

    int-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v0, v7

    move/from16 v18, v0

    .line 401
    .local v18, e:I
    aget-object v5, v29, v25

    aget v5, v5, v23

    move/from16 v0, v18

    if-le v0, v5, :cond_d

    .line 402
    aget-object v5, v29, v25

    aput v18, v5, v23

    .line 390
    :cond_d
    add-int/lit8 v54, v54, 0x1

    add-int/lit8 v34, v34, 0x1

    goto :goto_9

    .line 413
    .end local v18           #e:I
    .end local v23           #e_xIdx:I
    .end local v25           #e_yIdx:I
    .end local v29           #emax:[[I
    .end local v34           #gIdx:I
    .end local v37           #hh:I
    .end local v38           #hl:I
    .end local v43           #lh:I
    .end local v54           #xIdx:I
    .restart local v26       #edge:[[I
    .restart local v44       #nBRG:I
    .restart local v45       #nDA:I
    .restart local v46       #nE:I
    .restart local v47       #nRG:I
    :cond_e
    const/16 v54, 0x0

    .restart local v54       #xIdx:I
    :goto_a
    move/from16 v0, v54

    move/from16 v1, v28

    if-lt v0, v1, :cond_f

    .line 412
    add-int/lit8 v55, v55, 0x1

    goto/16 :goto_2

    .line 414
    :cond_f
    const/4 v5, 0x0

    aget-object v5, v30, v5

    aget-object v5, v5, v55

    aget v19, v5, v54

    .line 415
    .local v19, e1:I
    const/4 v5, 0x1

    aget-object v5, v30, v5

    aget-object v5, v5, v55

    aget v20, v5, v54

    .line 416
    .local v20, e2:I
    const/4 v5, 0x2

    aget-object v5, v30, v5

    aget-object v5, v5, v55

    aget v21, v5, v54

    .line 419
    .local v21, e3:I
    const/16 v5, 0x2710

    move/from16 v0, v19

    if-gt v0, v5, :cond_10

    const/16 v5, 0x2710

    move/from16 v0, v20

    if-gt v0, v5, :cond_10

    const/16 v5, 0x2710

    move/from16 v0, v21

    if-le v0, v5, :cond_14

    .line 420
    :cond_10
    add-int/lit8 v46, v46, 0x1

    .line 421
    aget-object v5, v26, v55

    const/4 v7, 0x1

    aput v7, v5, v54

    .line 423
    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_11

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_11

    .line 424
    aget-object v5, v26, v55

    aget v7, v5, v54

    or-int/lit8 v7, v7, 0x2

    aput v7, v5, v54

    .line 425
    add-int/lit8 v45, v45, 0x1

    .line 428
    :cond_11
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_13

    :cond_12
    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_14

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_14

    .line 429
    :cond_13
    aget-object v5, v26, v55

    aget v7, v5, v54

    or-int/lit8 v7, v7, 0x4

    aput v7, v5, v54

    .line 430
    add-int/lit8 v47, v47, 0x1

    .line 433
    const/16 v5, 0x2710

    move/from16 v0, v19

    if-ge v0, v5, :cond_14

    .line 434
    aget-object v5, v26, v55

    aget v7, v5, v54

    or-int/lit8 v7, v7, 0x8

    aput v7, v5, v54

    .line 435
    add-int/lit8 v44, v44, 0x1

    .line 413
    :cond_14
    add-int/lit8 v54, v54, 0x1

    goto/16 :goto_a

    .line 458
    .end local v19           #e1:I
    .end local v20           #e2:I
    .end local v21           #e3:I
    .end local v54           #xIdx:I
    .restart local v13       #blurExtent:D
    .restart local v49       #per:D
    .restart local v52       #total:D
    :cond_15
    div-int v24, v55, v51

    .line 459
    .local v24, e_y:I
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 462
    const/16 v54, 0x0

    .restart local v54       #xIdx:I
    :goto_b
    move/from16 v0, v54

    if-lt v0, v6, :cond_17

    .line 457
    :cond_16
    add-int/lit8 v55, v55, 0x1

    goto/16 :goto_3

    .line 463
    :cond_17
    div-int v22, v54, v51

    .line 464
    .local v22, e_x:I
    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_16

    .line 468
    mul-int v5, v55, v6

    add-int v5, v5, v54

    aget v5, v4, v5

    invoke-static {v5}, Lcom/lge/imageutil/JavaImageUtil;->calcBrightness(I)I

    move-result v5

    div-int/lit16 v0, v5, 0x3e8

    move/from16 v31, v0

    .line 470
    .local v31, g:I
    aget-object v5, v26, v24

    aget v18, v5, v22

    .line 471
    .restart local v18       #e:I
    and-int/lit8 v5, v18, 0x8

    if-eqz v5, :cond_18

    .line 473
    const/16 v5, 0xff

    mul-int/lit8 v7, v31, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v31

    move/from16 v1, v31

    invoke-static {v5, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    .line 486
    .local v15, c:I
    :goto_c
    mul-int v5, v55, v6

    add-int v5, v5, v54

    aput v15, v4, v5

    .line 462
    add-int/lit8 v54, v54, 0x1

    goto :goto_b

    .line 474
    .end local v15           #c:I
    :cond_18
    and-int/lit8 v5, v18, 0x4

    if-eqz v5, :cond_19

    .line 476
    const/16 v5, 0xff

    mul-int/lit8 v7, v31, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v7, 0xff

    mul-int/lit8 v8, v31, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move/from16 v0, v31

    invoke-static {v5, v7, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    .line 477
    .restart local v15       #c:I
    goto :goto_c

    .end local v15           #c:I
    :cond_19
    and-int/lit8 v5, v18, 0x2

    if-eqz v5, :cond_1a

    .line 479
    const/16 v5, 0xff

    mul-int/lit8 v7, v31, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v31

    move/from16 v1, v31

    invoke-static {v0, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    .line 480
    .restart local v15       #c:I
    goto :goto_c

    .end local v15           #c:I
    :cond_1a
    and-int/lit8 v5, v18, 0x1

    if-eqz v5, :cond_1b

    .line 482
    const/16 v5, 0xff

    mul-int/lit8 v7, v31, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v31

    move/from16 v1, v31

    invoke-static {v0, v5, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    .line 483
    .restart local v15       #c:I
    goto :goto_c

    .line 484
    .end local v15           #c:I
    :cond_1b
    move/from16 v0, v31

    move/from16 v1, v31

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    .restart local v15       #c:I
    goto :goto_c
.end method

.method public static getMeanColor(Landroid/graphics/Bitmap;)I
    .locals 15
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 220
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 221
    .local v10, height:I
    const/4 v12, 0x0

    .line 222
    .local v12, samplingCount:I
    const/4 v11, 0x0

    .local v11, red:I
    const/4 v9, 0x0

    .local v9, green:I
    const/4 v8, 0x0

    .line 223
    .local v8, blue:I
    mul-int v0, v3, v10

    invoke-static {v0}, Lcom/lge/imageutil/JavaImageUtil;->getSamplingOffset(I)I

    move-result v13

    .line 224
    .local v13, samplingOffset:I
    new-array v1, v3, [I

    .line 226
    .local v1, pixels:[I
    const/4 v5, 0x0

    .local v5, y:I
    :goto_0
    if-lt v5, v10, :cond_0

    .line 236
    div-int/2addr v11, v12

    .line 237
    div-int/2addr v9, v12

    .line 238
    div-int/2addr v8, v12

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "### resolution "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int v2, v3, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "### sub-sampling "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : 1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "### mean color is rgb("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/imageutil/Log;->i(Ljava/lang/String;)V

    .line 245
    invoke-static {v11, v9, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    .line 227
    :cond_0
    const/4 v7, 0x1

    move-object v0, p0

    move v4, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 228
    const/4 v14, 0x0

    .local v14, x:I
    :goto_1
    if-lt v14, v3, :cond_1

    .line 226
    add-int/2addr v5, v13

    goto/16 :goto_0

    .line 229
    :cond_1
    aget v0, v1, v14

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    add-int/2addr v11, v0

    .line 230
    aget v0, v1, v14

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    add-int/2addr v9, v0

    .line 231
    aget v0, v1, v14

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    add-int/2addr v8, v0

    .line 232
    add-int/lit8 v12, v12, 0x1

    .line 228
    add-int/2addr v14, v13

    goto :goto_1
.end method

.method public static getModeColor(Landroid/graphics/Bitmap;I)I
    .locals 24
    .parameter "bitmap"
    .parameter "threshold"

    .prologue
    .line 250
    invoke-static/range {p1 .. p1}, Lcom/lge/imageutil/JavaImageUtil;->getRoundUpToPowerOf2Bit(I)I

    move-result v19

    .line 251
    .local v19, quantizeBit:I
    rsub-int/lit8 v16, v19, 0x8

    .line 252
    .local v16, inverseQuantizeBit:I
    const/16 v1, 0x100

    shr-int v14, v1, v19

    .line 253
    .local v14, histogramCount:I
    mul-int v1, v14, v14

    mul-int/2addr v14, v1

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 255
    .local v4, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 256
    .local v12, height:I
    new-array v13, v14, [I

    .line 257
    .local v13, histogram:[I
    new-array v2, v4, [I

    .line 258
    .local v2, pixels:[I
    mul-int v1, v4, v12

    invoke-static {v1}, Lcom/lge/imageutil/JavaImageUtil;->getSamplingOffset(I)I

    move-result v22

    .line 259
    .local v22, samplingOffset:I
    const/16 v21, 0x0

    .line 261
    .local v21, samplingCount:I
    const/4 v6, 0x0

    .local v6, yIdx:I
    :goto_0
    if-lt v6, v12, :cond_0

    .line 272
    const/16 v17, 0x0

    .line 273
    .local v17, max:I
    const/16 v18, 0x0

    .line 274
    .local v18, maxIdx:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-lt v15, v14, :cond_2

    .line 281
    shl-int/lit8 v1, v16, 0x1

    shr-int v1, v18, v1

    shl-int v1, v1, v19

    and-int/lit16 v0, v1, 0xff

    move/from16 v20, v0

    .line 282
    .local v20, r:I
    shr-int v1, v18, v16

    shl-int v1, v1, v19

    and-int/lit16 v11, v1, 0xff

    .line 283
    .local v11, g:I
    shl-int v1, v18, v19

    and-int/lit16 v9, v1, 0xff

    .line 295
    .local v9, b:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "### resolution "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " x "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int v3, v4, v12

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "### sub-sampling "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " x "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : 1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    move/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "### mode color is rgb("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/imageutil/Log;->i(Ljava/lang/String;)V

    .line 299
    move/from16 v0, v20

    invoke-static {v0, v11, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    return v1

    .line 262
    .end local v9           #b:I
    .end local v11           #g:I
    .end local v15           #i:I
    .end local v17           #max:I
    .end local v18           #maxIdx:I
    .end local v20           #r:I
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 263
    const/16 v23, 0x0

    .local v23, xIdx:I
    :goto_2
    move/from16 v0, v23

    if-lt v0, v4, :cond_1

    .line 261
    add-int v6, v6, v22

    goto/16 :goto_0

    .line 264
    :cond_1
    aget v10, v2, v23

    .line 265
    .local v10, c:I
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v1

    shr-int v1, v1, v19

    shl-int/lit8 v3, v16, 0x1

    shl-int/2addr v1, v3

    .line 266
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v3

    shr-int v3, v3, v19

    shl-int v3, v3, v16

    or-int/2addr v1, v3

    .line 267
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    shr-int v3, v3, v19

    or-int/2addr v1, v3

    .line 265
    aget v3, v13, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v13, v1

    .line 268
    add-int/lit8 v21, v21, 0x1

    .line 263
    add-int v23, v23, v22

    goto :goto_2

    .line 275
    .end local v10           #c:I
    .end local v23           #xIdx:I
    .restart local v15       #i:I
    .restart local v17       #max:I
    .restart local v18       #maxIdx:I
    :cond_2
    aget v1, v13, v15

    move/from16 v0, v17

    if-le v1, v0, :cond_3

    .line 276
    aget v17, v13, v15

    .line 277
    move/from16 v18, v15

    .line 274
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1
.end method

.method private static getRoundUpToPowerOf2Bit(I)I
    .locals 2
    .parameter "given"

    .prologue
    .line 505
    const/4 v1, 0x1

    .line 506
    .local v1, temp:I
    const/4 v0, 0x0

    .line 507
    .local v0, bit:I
    :goto_0
    if-lt v1, p0, :cond_0

    .line 511
    return v0

    .line 508
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getSamplingOffset(I)I
    .locals 3
    .parameter "imagePixels"

    .prologue
    .line 515
    const/4 v0, 0x1

    .line 516
    .local v0, result:I
    :goto_0
    mul-int v1, v0, v0

    div-int v1, p0, v1

    const v2, 0x1d4c0

    if-gt v1, v2, :cond_0

    .line 519
    return v0

    .line 517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isBrightByFreqency(Landroid/graphics/Bitmap;I)Z
    .locals 13
    .parameter "bitmap"
    .parameter "threshold"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 183
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 184
    .local v9, height:I
    const/4 v8, 0x0

    .line 185
    .local v8, dark:I
    const/4 v10, 0x0

    .line 186
    .local v10, light:I
    mul-int v0, v3, v9

    invoke-static {v0}, Lcom/lge/imageutil/JavaImageUtil;->getSamplingOffset(I)I

    move-result v11

    .line 187
    .local v11, samplingOffset:I
    new-array v1, v3, [I

    .line 189
    .local v1, pixels:[I
    invoke-static {p1}, Lcom/lge/imageutil/JavaImageUtil;->proveThreshold(I)I

    move-result p1

    .line 191
    const/4 v5, 0x0

    .local v5, y:I
    :goto_0
    if-lt v5, v9, :cond_0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "### resolution "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " x "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int v4, v3, v9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "### sub-sampling "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " x "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " : 1 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    add-int v4, v8, v10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "### brightness threshold "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "### dark : light = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 208
    if-lt v8, v10, :cond_3

    .line 209
    const-string v0, "### it is dark image"

    invoke-static {v0}, Lcom/lge/imageutil/Log;->i(Ljava/lang/String;)V

    .line 213
    :goto_1
    return v2

    :cond_0
    move-object v0, p0

    move v4, v2

    move v6, v3

    .line 192
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 193
    const/4 v12, 0x0

    .local v12, x:I
    :goto_2
    if-lt v12, v3, :cond_1

    .line 191
    add-int/2addr v5, v11

    goto/16 :goto_0

    .line 194
    :cond_1
    aget v0, v1, v12

    invoke-static {v0}, Lcom/lge/imageutil/JavaImageUtil;->calcBrightness(I)I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 195
    add-int/lit8 v8, v8, 0x1

    .line 193
    :goto_3
    add-int/2addr v12, v11

    goto :goto_2

    .line 197
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 212
    .end local v12           #x:I
    :cond_3
    const-string v0, "### it is light image"

    invoke-static {v0}, Lcom/lge/imageutil/Log;->i(Ljava/lang/String;)V

    move v2, v7

    .line 213
    goto :goto_1
.end method

.method public static isBrightByMean(Landroid/graphics/Bitmap;I)Z
    .locals 3
    .parameter "bitmap"
    .parameter "threshold"

    .prologue
    .line 169
    invoke-static {p0}, Lcom/lge/imageutil/JavaImageUtil;->getBrightness(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 170
    .local v0, mean:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### brightness threshold "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;)V

    .line 172
    if-gt v0, p1, :cond_0

    .line 173
    const-string v1, "### it is dark image"

    invoke-static {v1}, Lcom/lge/imageutil/Log;->i(Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x0

    .line 177
    :goto_0
    return v1

    .line 176
    :cond_0
    const-string v1, "### it is light image"

    invoke-static {v1}, Lcom/lge/imageutil/Log;->i(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static proveThreshold(I)I
    .locals 1
    .parameter "threshold"

    .prologue
    .line 497
    const/16 v0, 0xff

    if-le p0, v0, :cond_0

    const v0, 0x3e418

    :goto_0
    return v0

    :cond_0
    if-gez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    mul-int/lit16 v0, p0, 0x3e8

    goto :goto_0
.end method
