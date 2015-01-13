.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$Brace;,
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final LAST_SPAN:I = 0x17

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field private static MirroredPuncStart:[I = null

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static final ZWNBS_CHAR:C = '\ufeff'

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 673
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 1597
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/TextUtils;->MirroredPuncStart:[I

    .line 2069
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 2071
    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 2073
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 2077
    const-string v0, "Arab"

    sput-object v0, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 2078
    const-string v0, "Hebr"

    sput-object v0, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-void

    .line 1597
    :array_0
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static changeBracketRun([C[BII)V
    .locals 22
    .parameter "ch"
    .parameter "chInfo"
    .parameter "para"
    .parameter "n"

    .prologue
    .line 1651
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 1652
    .local v15, openingStack:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/text/TextUtils$Brace;>;"
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 1653
    .local v7, closingStack:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/text/TextUtils$Brace;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v10, v0, :cond_11

    .line 1654
    aget-char v6, p0, v10

    .line 1655
    .local v6, c:C
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-eq v6, v0, :cond_0

    const/16 v20, 0x23

    move/from16 v0, v20

    if-eq v6, v0, :cond_0

    const/16 v20, 0x2a

    move/from16 v0, v20

    if-ne v6, v0, :cond_5

    .line 1656
    :cond_0
    if-ltz v10, :cond_1

    sub-int v20, p3, v10

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 1657
    add-int/lit8 v20, v10, 0x1

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->isDigitsOnly([CII)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1658
    if-nez v10, :cond_4

    .line 1659
    aget-byte v8, p1, v10

    .line 1660
    .local v8, currentLevel:B
    add-int/lit8 v20, v10, 0x1

    aget-byte v14, p1, v20

    .line 1661
    .local v14, nextLevel:B
    invoke-static {v8}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-static {v14}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1662
    aput-byte v14, p1, v10

    .line 1690
    .end local v8           #currentLevel:B
    .end local v14           #nextLevel:B
    :cond_1
    :goto_1
    sget-object v20, Landroid/text/TextUtils;->MirroredPuncStart:[I

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 1691
    .local v11, indexOfPunc:I
    if-ltz v11, :cond_3

    .line 1692
    rem-int/lit8 v20, v11, 0x2

    if-eqz v20, :cond_2

    if-nez v11, :cond_7

    .line 1693
    :cond_2
    new-instance v20, Landroid/text/TextUtils$Brace;

    aget-byte v21, p1, v10

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v11, v10, v1}, Landroid/text/TextUtils$Brace;-><init>(IIB)V

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1665
    .end local v11           #indexOfPunc:I
    :cond_4
    add-int/lit8 v20, v10, -0x1

    aget-byte v18, p1, v20

    .line 1666
    .local v18, previousLevel:B
    aget-byte v8, p1, v10

    .line 1667
    .restart local v8       #currentLevel:B
    add-int/lit8 v20, v10, 0x1

    aget-byte v14, p1, v20

    .line 1668
    .restart local v14       #nextLevel:B
    move/from16 v0, v18

    if-ne v0, v8, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-static {v14}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1669
    aput-byte v14, p1, v10

    goto :goto_1

    .line 1675
    .end local v8           #currentLevel:B
    .end local v14           #nextLevel:B
    .end local v18           #previousLevel:B
    :cond_5
    const/16 v20, 0x20

    move/from16 v0, v20

    if-eq v6, v0, :cond_6

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_1

    .line 1676
    :cond_6
    if-lez v10, :cond_1

    add-int/lit8 v20, p3, -0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_1

    .line 1677
    add-int/lit8 v20, v10, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->isDigitsOnly([CII)Z

    move-result v20

    if-eqz v20, :cond_1

    add-int/lit8 v20, v10, -0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->isDigitsOnly([CII)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1678
    add-int/lit8 v20, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->isColon([CII)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1679
    aget-byte v8, p1, v10

    .line 1680
    .restart local v8       #currentLevel:B
    add-int/lit8 v20, v10, 0x1

    aget-byte v14, p1, v20

    .line 1681
    .restart local v14       #nextLevel:B
    add-int/lit8 v20, v10, -0x1

    aget-byte v18, p1, v20

    .line 1682
    .restart local v18       #previousLevel:B
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-static {v14}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1683
    aput-byte v14, p1, v10

    goto/16 :goto_1

    .line 1695
    .end local v8           #currentLevel:B
    .end local v14           #nextLevel:B
    .end local v18           #previousLevel:B
    .restart local v11       #indexOfPunc:I
    :cond_7
    invoke-virtual {v15}, Ljava/util/Stack;->empty()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1747
    .end local v6           #c:C
    .end local v11           #indexOfPunc:I
    :cond_8
    :goto_3
    return-void

    .line 1699
    .restart local v6       #c:C
    .restart local v11       #indexOfPunc:I
    :cond_9
    new-instance v12, Landroid/text/TextUtils$Brace;

    aget-byte v20, p1, v10

    move/from16 v0, v20

    invoke-direct {v12, v11, v10, v0}, Landroid/text/TextUtils$Brace;-><init>(IIB)V

    .line 1700
    .local v12, innerC:Landroid/text/TextUtils$Brace;
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/text/TextUtils$Brace;

    .line 1702
    .local v13, innerO:Landroid/text/TextUtils$Brace;
    invoke-virtual {v13, v12}, Landroid/text/TextUtils$Brace;->isMatchedPartner(Landroid/text/TextUtils$Brace;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1703
    iget-byte v5, v13, Landroid/text/TextUtils$Brace;->level:B

    .line 1704
    .local v5, OLevel:B
    iget-byte v3, v12, Landroid/text/TextUtils$Brace;->level:B

    .line 1705
    .local v3, CLevel:B
    const/4 v9, -0x1

    .line 1706
    .local v9, finalPairLevel:B
    if-ne v5, v3, :cond_b

    .line 1707
    move v9, v5

    .line 1721
    :cond_a
    :goto_4
    iput-byte v9, v12, Landroid/text/TextUtils$Brace;->level:B

    .line 1722
    iget v0, v13, Landroid/text/TextUtils$Brace;->positionOfChar:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v12, Landroid/text/TextUtils$Brace;->positionOfOBrace:I

    .line 1723
    invoke-virtual {v7, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1709
    :cond_b
    invoke-static {v5}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-static {v3}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-nez v20, :cond_d

    :cond_c
    invoke-static {v5}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-nez v20, :cond_f

    invoke-static {v3}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-nez v20, :cond_f

    .line 1711
    :cond_d
    if-ge v5, v3, :cond_e

    .line 1712
    move v9, v5

    goto :goto_4

    .line 1713
    :cond_e
    if-le v5, v3, :cond_a

    .line 1714
    move v9, v3

    goto :goto_4

    .line 1717
    :cond_f
    invoke-static {v5}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-eqz v20, :cond_10

    move v9, v5

    .line 1718
    :cond_10
    invoke-static {v3}, Landroid/text/TextUtils;->isEven(B)Z

    move-result v20

    if-eqz v20, :cond_a

    move v9, v3

    goto :goto_4

    .line 1731
    .end local v3           #CLevel:B
    .end local v5           #OLevel:B
    .end local v6           #c:C
    .end local v9           #finalPairLevel:B
    .end local v11           #indexOfPunc:I
    .end local v12           #innerC:Landroid/text/TextUtils$Brace;
    .end local v13           #innerO:Landroid/text/TextUtils$Brace;
    :cond_11
    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_8

    .line 1734
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v19

    .line 1736
    .local v19, size:I
    const/4 v10, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v10, v0, :cond_12

    .line 1737
    invoke-virtual {v7, v10}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/TextUtils$Brace;

    .line 1738
    .local v4, Cb:Landroid/text/TextUtils$Brace;
    iget v0, v4, Landroid/text/TextUtils$Brace;->positionOfChar:I

    move/from16 v16, v0

    .line 1739
    .local v16, position:I
    iget v0, v4, Landroid/text/TextUtils$Brace;->positionOfOBrace:I

    move/from16 v17, v0

    .line 1740
    .local v17, positionO:I
    iget-byte v0, v4, Landroid/text/TextUtils$Brace;->level:B

    move/from16 v20, v0

    aput-byte v20, p1, v16

    .line 1741
    iget-byte v0, v4, Landroid/text/TextUtils$Brace;->level:B

    move/from16 v20, v0

    aput-byte v20, p1, v17

    .line 1736
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1743
    .end local v4           #Cb:Landroid/text/TextUtils$Brace;
    .end local v16           #position:I
    .end local v17           #positionO:I
    :cond_12
    invoke-virtual {v15}, Ljava/util/Stack;->clear()V

    .line 1744
    invoke-virtual {v7}, Ljava/util/Stack;->clear()V

    .line 1745
    const/4 v15, 0x0

    .line 1746
    const/4 v7, 0x0

    .line 1747
    goto/16 :goto_3
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "oneMore"
    .parameter "more"

    .prologue
    .line 1259
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 22
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "oneMore"
    .parameter "more"
    .parameter "textDir"

    .prologue
    .line 1269
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v2

    .line 1271
    .local v2, mt:Landroid/text/MeasuredText;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1272
    .local v6, len:I
    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    .line 1273
    .local v20, width:F
    cmpg-float v3, v20, p2

    if-gtz v3, :cond_0

    .line 1327
    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0
    :goto_0
    return-object p0

    .line 1277
    .restart local p0
    :cond_0
    :try_start_1
    iget-object v8, v2, Landroid/text/MeasuredText;->mChars:[C

    .line 1279
    .local v8, buf:[C
    const/4 v9, 0x0

    .line 1280
    .local v9, commaCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v6, :cond_2

    .line 1281
    aget-char v3, v8, v12

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    .line 1282
    add-int/lit8 v9, v9, 0x1

    .line 1280
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1286
    :cond_2
    add-int/lit8 v17, v9, 0x1

    .line 1288
    .local v17, remaining:I
    const/4 v14, 0x0

    .line 1289
    .local v14, ok:I
    const-string v15, ""

    .line 1291
    .local v15, okFormat:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1292
    .local v19, w:I
    const/4 v10, 0x0

    .line 1293
    .local v10, count:I
    iget-object v0, v2, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v21, v0

    .line 1295
    .local v21, widths:[F
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v18

    .line 1296
    .local v18, tempMt:Landroid/text/MeasuredText;
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v6, :cond_5

    .line 1297
    move/from16 v0, v19

    int-to-float v3, v0

    aget v4, v21, v12

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v19, v0

    .line 1299
    aget-char v3, v8, v12

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_3

    .line 1300
    add-int/lit8 v10, v10, 0x1

    .line 1305
    add-int/lit8 v17, v17, -0x1

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_4

    .line 1306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1312
    .local v11, format:Ljava/lang/String;
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v11, v3, v4, v1}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1313
    move-object/from16 v0, v18

    iget v3, v0, Landroid/text/MeasuredText;->mLen:I

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 1315
    .local v13, moreWid:F
    move/from16 v0, v19

    int-to-float v3, v0

    add-float/2addr v3, v13

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_3

    .line 1316
    add-int/lit8 v14, v12, 0x1

    .line 1317
    move-object v15, v11

    .line 1296
    .end local v11           #format:Ljava/lang/String;
    .end local v13           #moreWid:F
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1308
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #format:Ljava/lang/String;
    goto :goto_3

    .line 1321
    .end local v11           #format:Ljava/lang/String;
    :cond_5
    invoke-static/range {v18 .. v18}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1323
    new-instance v16, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1324
    .local v16, out:Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1, v4, v14}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1327
    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v16

    goto/16 :goto_0

    .end local v6           #len:I
    .end local v8           #buf:[C
    .end local v9           #commaCount:I
    .end local v10           #count:I
    .end local v12           #i:I
    .end local v14           #ok:I
    .end local v15           #okFormat:Ljava/lang/String;
    .end local v16           #out:Landroid/text/SpannableStringBuilder;
    .end local v17           #remaining:I
    .end local v18           #tempMt:Landroid/text/MeasuredText;
    .end local v19           #w:I
    .end local v20           #width:F
    .end local v21           #widths:[F
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v3
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 1444
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1445
    const-string v0, ""

    .line 1481
    :goto_0
    return-object v0

    .line 1448
    :cond_0
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1449
    aget-object v0, p0, v1

    goto :goto_0

    .line 1452
    :cond_1
    const/4 v8, 0x0

    .line 1453
    .local v8, spanned:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, p0

    if-ge v6, v0, :cond_2

    .line 1454
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    .line 1455
    const/4 v8, 0x1

    .line 1460
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1461
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_2
    array-length v0, p0

    if-ge v6, v0, :cond_4

    .line 1462
    aget-object v0, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1461
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1453
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1465
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    :cond_4
    if-nez v8, :cond_5

    .line 1466
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1469
    :cond_5
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1470
    .local v4, ss:Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 1471
    .local v5, off:I
    const/4 v6, 0x0

    :goto_3
    array-length v0, p0

    if-ge v6, v0, :cond_7

    .line 1472
    aget-object v0, p0, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1474
    .local v2, len:I
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    .line 1475
    aget-object v0, p0, v6

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1478
    :cond_6
    add-int/2addr v5, v2

    .line 1471
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1481
    .end local v2           #len:I
    :cond_7
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 8
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "kind"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 1066
    if-nez p3, :cond_0

    .line 1067
    const-class p3, Ljava/lang/Object;

    .line 1070
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1072
    .local v3, spans:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 1073
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1074
    .local v4, st:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1075
    .local v0, en:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 1077
    .local v1, fl:I
    if-ge v4, p1, :cond_1

    .line 1078
    move v4, p1

    .line 1079
    :cond_1
    if-le v0, p2, :cond_2

    .line 1080
    move v0, p2

    .line 1082
    :cond_2
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1072
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1085
    .end local v0           #en:I
    .end local v1           #fl:I
    .end local v4           #st:I
    :cond_3
    return-void
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .parameter "delimitedString"
    .parameter "delimiter"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1916
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 1934
    :cond_1
    :goto_0
    return v3

    .line 1919
    :cond_2
    const/4 v2, -0x1

    .line 1920
    .local v2, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1921
    .local v1, length:I
    :cond_3
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 1922
    if-lez v2, :cond_4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    .line 1925
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v2, v5

    .line 1926
    .local v0, expectedDelimiterPos:I
    if-eq v0, v1, :cond_1

    .line 1930
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    .end local v0           #expectedDelimiterPos:I
    :cond_5
    move v3, v4

    .line 1934
    goto :goto_0
.end method

.method static doesNotNeedBidi(Ljava/lang/CharSequence;II)Z
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1361
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1362
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x590

    if-lt v1, v2, :cond_0

    .line 1363
    const/4 v1, 0x0

    .line 1366
    :goto_1
    return v1

    .line 1361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1366
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static doesNotNeedBidi([CII)Z
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 1371
    move v1, p1

    .local v1, i:I
    add-int v0, v1, p2

    .local v0, e:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1372
    aget-char v2, p0, v1

    const/16 v3, 0x590

    if-lt v2, v3, :cond_0

    .line 1373
    const/4 v2, 0x0

    .line 1376
    :goto_1
    return v2

    .line 1371
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1376
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7
    .parameter "cs"
    .parameter "printer"
    .parameter "prefix"

    .prologue
    .line 812
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    move-object v3, p0

    .line 813
    check-cast v3, Landroid/text/Spanned;

    .line 814
    .local v3, sp:Landroid/text/Spanned;
    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 816
    .local v2, os:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 817
    aget-object v1, v2, v0

    .line 818
    .local v1, o:Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 826
    .end local v0           #i:I
    .end local v1           #o:Ljava/lang/Object;
    .end local v2           #os:[Ljava/lang/Object;
    .end local v3           #sp:Landroid/text/Spanned;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": (no spans)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 828
    :cond_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "where"

    .prologue
    .line 1115
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "text"
    .parameter "paint"
    .parameter "avail"
    .parameter "where"
    .parameter "preserveLength"
    .parameter "callback"

    .prologue
    .line 1136
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1140
    .local v7, ellipsis:Ljava/lang/String;
    :goto_0
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1136
    .end local v7           #ellipsis:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 22
    .parameter "text"
    .parameter "paint"
    .parameter "avail"
    .parameter "where"
    .parameter "preserveLength"
    .parameter "callback"
    .parameter "textDir"
    .parameter "ellipsis"

    .prologue
    .line 1165
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 1167
    .local v15, len:I
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1169
    .local v3, mt:Landroid/text/MeasuredText;
    const/4 v6, 0x0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v21

    .line 1171
    .local v21, width:F
    cmpg-float v5, v21, p2

    if-gtz v5, :cond_1

    .line 1172
    if-eqz p5, :cond_0

    .line 1173
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    :cond_0
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0
    :goto_0
    return-object p0

    .line 1181
    .restart local p0
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 1182
    .local v11, ellipsiswid:F
    sub-float p2, p2, v11

    .line 1184
    const/4 v13, 0x0

    .line 1185
    .local v13, left:I
    move/from16 v17, v15

    .line 1186
    .local v17, right:I
    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_3

    move v14, v13

    .line 1198
    .end local v13           #left:I
    .local v14, left:I
    :goto_1
    if-eqz p5, :cond_2

    .line 1199
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v14, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1202
    :cond_2
    iget-object v10, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1203
    .local v10, buf:[C
    move-object/from16 v0, p0

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    move-object v4, v5

    .line 1205
    .local v4, sp:Landroid/text/Spanned;
    :goto_2
    sub-int v5, v17, v14

    sub-int v16, v15, v5

    .line 1206
    .local v16, remaining:I
    if-eqz p4, :cond_a

    .line 1207
    if-lez v16, :cond_d

    .line 1208
    add-int/lit8 v13, v14, 0x1

    .end local v14           #left:I
    .restart local v13       #left:I
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v10, v14

    .line 1210
    :goto_3
    move v12, v13

    .local v12, i:I
    :goto_4
    move/from16 v0, v17

    if-ge v12, v0, :cond_8

    .line 1211
    const v5, 0xfeff

    aput-char v5, v10, v12

    .line 1210
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1188
    .end local v4           #sp:Landroid/text/Spanned;
    .end local v10           #buf:[C
    .end local v12           #i:I
    .end local v16           #remaining:I
    :cond_3
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_4

    .line 1189
    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    move v14, v13

    .end local v13           #left:I
    .restart local v14       #left:I
    goto :goto_1

    .line 1190
    .end local v14           #left:I
    .restart local v13       #left:I
    :cond_4
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-eq v0, v5, :cond_5

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_6

    .line 1191
    :cond_5
    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    .end local v13           #left:I
    .restart local v14       #left:I
    goto :goto_1

    .line 1193
    .end local v14           #left:I
    .restart local v13       #left:I
    :cond_6
    const/4 v5, 0x0

    const/high16 v6, 0x4000

    div-float v6, p2, v6

    invoke-virtual {v3, v15, v5, v6}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    .line 1194
    move/from16 v0, v17

    invoke-virtual {v3, v0, v15}, Landroid/text/MeasuredText;->measure(II)F

    move-result v5

    sub-float p2, p2, v5

    .line 1195
    const/4 v5, 0x1

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v3, v0, v5, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    .end local v13           #left:I
    .restart local v14       #left:I
    goto :goto_1

    .line 1203
    .restart local v10       #buf:[C
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 1213
    .end local v14           #left:I
    .restart local v4       #sp:Landroid/text/Spanned;
    .restart local v12       #i:I
    .restart local v13       #left:I
    .restart local v16       #remaining:I
    :cond_8
    new-instance v18, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v10, v5, v15}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    .local v18, s:Ljava/lang/String;
    if-nez v4, :cond_9

    .line 1240
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v18

    goto/16 :goto_0

    .line 1217
    :cond_9
    :try_start_2
    new-instance v8, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1218
    .local v8, ss:Landroid/text/SpannableString;
    const/4 v5, 0x0

    const-class v7, Ljava/lang/Object;

    const/4 v9, 0x0

    move v6, v15

    invoke-static/range {v4 .. v9}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1240
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v8

    goto/16 :goto_0

    .line 1222
    .end local v8           #ss:Landroid/text/SpannableString;
    .end local v12           #i:I
    .end local v13           #left:I
    .end local v18           #s:Ljava/lang/String;
    .restart local v14       #left:I
    :cond_a
    if-nez v16, :cond_b

    .line 1223
    :try_start_3
    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1240
    .end local p0
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_0

    .line 1226
    .restart local p0
    :cond_b
    if-nez v4, :cond_c

    .line 1227
    :try_start_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, v16

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1228
    .local v19, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v5, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1229
    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    sub-int v5, v15, v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object p0

    .line 1240
    .end local p0
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_0

    .line 1234
    .end local v19           #sb:Ljava/lang/StringBuilder;
    .restart local p0
    :cond_c
    :try_start_5
    new-instance v20, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1235
    .local v20, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1236
    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1237
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1240
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v20

    goto/16 :goto_0

    .end local v4           #sp:Landroid/text/Spanned;
    .end local v10           #buf:[C
    .end local v11           #ellipsiswid:F
    .end local v14           #left:I
    .end local v16           #remaining:I
    .end local v17           #right:I
    .end local v20           #ssb:Landroid/text/SpannableStringBuilder;
    .end local v21           #width:F
    :catchall_0
    move-exception v5

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v5

    .restart local v4       #sp:Landroid/text/Spanned;
    .restart local v10       #buf:[C
    .restart local v11       #ellipsiswid:F
    .restart local v14       #left:I
    .restart local v16       #remaining:I
    .restart local v17       #right:I
    .restart local v21       #width:F
    :cond_d
    move v13, v14

    .end local v14           #left:I
    .restart local v13       #left:I
    goto/16 :goto_3
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 494
    if-ne p0, p1, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v2

    .line 496
    :cond_1
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, length:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 497
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_2

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 498
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 500
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 501
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    move v2, v3

    goto :goto_0

    .line 500
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #length:I
    :cond_4
    move v2, v3

    .line 506
    goto :goto_0
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "template"
    .parameter "values"

    .prologue
    const/16 v6, 0x5e

    .line 882
    array-length v4, p1

    const/16 v5, 0x9

    if-le v4, v5, :cond_0

    .line 883
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "max of 9 values are supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 886
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 889
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 890
    .local v0, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 891
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_5

    .line 892
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 893
    .local v1, next:C
    if-ne v1, v6, :cond_1

    .line 894
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 895
    add-int/lit8 v0, v0, 0x1

    .line 896
    goto :goto_0

    .line 897
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 898
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 899
    .local v3, which:I
    if-gez v3, :cond_3

    .line 900
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 915
    .end local v1           #next:C
    .end local v3           #which:I
    :catch_0
    move-exception v4

    .line 918
    :cond_2
    return-object v2

    .line 903
    .restart local v1       #next:C
    .restart local v3       #which:I
    :cond_3
    array-length v4, p1

    if-lt v3, v4, :cond_4

    .line 904
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 908
    :cond_4
    add-int/lit8 v4, v0, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 909
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v0, v4

    .line 910
    goto/16 :goto_0

    .line 913
    .end local v1           #next:C
    .end local v3           #which:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 10
    .parameter "cs"
    .parameter "off"
    .parameter "reqModes"

    .prologue
    const/16 v9, 0x27

    const/16 v8, 0x22

    const/16 v7, 0x2e

    .line 1820
    if-gez p1, :cond_1

    .line 1821
    const/4 v4, 0x0

    .line 1905
    :cond_0
    :goto_0
    return v4

    .line 1826
    :cond_1
    const/4 v4, 0x0

    .line 1828
    .local v4, mode:I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_2

    .line 1829
    or-int/lit16 v4, v4, 0x1000

    .line 1831
    :cond_2
    and-int/lit16 v5, p2, 0x6000

    if-eqz v5, :cond_0

    .line 1837
    move v1, p1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_3

    .line 1838
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1840
    .local v0, c:C
    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_5

    .line 1848
    .end local v0           #c:C
    :cond_3
    move v2, v1

    .line 1849
    .local v2, j:I
    :goto_2
    if-lez v2, :cond_6

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_4

    const/16 v5, 0x9

    if-ne v0, v5, :cond_6

    .line 1850
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1837
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1852
    .end local v0           #c:C
    .restart local v2       #j:I
    :cond_6
    if-eqz v2, :cond_7

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    .line 1853
    :cond_7
    or-int/lit16 v4, v4, 0x2000

    goto :goto_0

    .line 1858
    :cond_8
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_9

    .line 1859
    if-eq v1, v2, :cond_0

    or-int/lit16 v4, v4, 0x2000

    goto :goto_0

    .line 1865
    :cond_9
    if-eq v1, v2, :cond_0

    .line 1871
    :goto_3
    if-lez v2, :cond_a

    .line 1872
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1874
    .restart local v0       #c:C
    if-eq v0, v8, :cond_d

    if-eq v0, v9, :cond_d

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_d

    .line 1880
    .end local v0           #c:C
    :cond_a
    if-lez v2, :cond_0

    .line 1881
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1883
    .restart local v0       #c:C
    if-eq v0, v7, :cond_b

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_b

    const/16 v5, 0x21

    if-ne v0, v5, :cond_0

    .line 1887
    :cond_b
    if-ne v0, v7, :cond_c

    .line 1888
    add-int/lit8 v3, v2, -0x2

    .local v3, k:I
    :goto_4
    if-ltz v3, :cond_c

    .line 1889
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1891
    if-eq v0, v7, :cond_0

    .line 1895
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1901
    .end local v3           #k:I
    :cond_c
    or-int/lit16 v4, v4, 0x4000

    goto/16 :goto_0

    .line 1871
    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1888
    .restart local v3       #k:I
    :cond_e
    add-int/lit8 v3, v3, -0x1

    goto :goto_4
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 81
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_0

    .line 82
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 93
    :goto_0
    return-void

    .line 83
    .restart local p0
    :cond_0
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_1

    .line 84
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_0

    .line 85
    .restart local p0
    :cond_1
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_2

    .line 86
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_0

    .line 87
    .restart local p0
    :cond_2
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_3

    .line 88
    check-cast p0, Landroid/text/GetChars;

    .end local p0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_0

    .line 90
    .restart local p0
    :cond_3
    move v2, p1

    .local v2, i:I
    move v1, p4

    .end local p4
    .local v1, destoff:I
    :goto_1
    if-ge v2, p2, :cond_4

    .line 91
    add-int/lit8 p4, v1, 0x1

    .end local v1           #destoff:I
    .restart local p4
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 90
    add-int/lit8 v2, v2, 0x1

    move v1, p4

    .end local p4
    .restart local v1       #destoff:I
    goto :goto_1

    :cond_4
    move p4, v1

    .end local v1           #destoff:I
    .restart local p4
    goto :goto_0
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .locals 2
    .parameter "locale"

    .prologue
    const/4 v0, 0x0

    .line 2058
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2065
    :goto_0
    return v0

    .line 2061
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2058
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 4
    .parameter "locale"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2028
    if-eqz p0, :cond_2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2029
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/icu/ICU;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2030
    .local v0, scriptSubtag:Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result v1

    .line 2038
    .end local v0           #scriptSubtag:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2032
    .restart local v0       #scriptSubtag:Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2038
    .end local v0           #scriptSubtag:Ljava/lang/String;
    :cond_2
    const-string v3, "debug.force_rtl"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 13
    .parameter "text"
    .parameter "offset"

    .prologue
    const v12, 0xdfff

    const v11, 0xdc00

    const v10, 0xdbff

    const v9, 0xd800

    .line 985
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 987
    .local v5, len:I
    if-ne p1, v5, :cond_1

    .line 1045
    .end local v5           #len:I
    :cond_0
    :goto_0
    return v5

    .line 989
    .restart local v5       #len:I
    :cond_1
    add-int/lit8 v8, v5, -0x1

    if-eq p1, v8, :cond_0

    .line 992
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 994
    .local v0, c:C
    invoke-static {}, Lcom/lge/cappuccino/EmojiUtil;->getInstance()Lcom/lge/cappuccino/IEmojiUtil;

    move-result-object v2

    .line 996
    .local v2, emojiUtil:Lcom/lge/cappuccino/IEmojiUtil;
    sget-boolean v8, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v8, :cond_a

    if-eqz v2, :cond_a

    .line 997
    invoke-interface {v2, p0, p1}, Lcom/lge/cappuccino/IEmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 998
    add-int/lit8 p1, p1, 0x4

    .line 1032
    :goto_1
    instance-of v8, p0, Landroid/text/Spanned;

    if-eqz v8, :cond_d

    move-object v8, p0

    .line 1033
    check-cast v8, Landroid/text/Spanned;

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/ReplacementSpan;

    .line 1036
    .local v6, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v8, v6

    if-ge v4, v8, :cond_d

    move-object v8, p0

    .line 1037
    check-cast v8, Landroid/text/Spanned;

    aget-object v9, v6, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .local v7, start:I
    move-object v8, p0

    .line 1038
    check-cast v8, Landroid/text/Spanned;

    aget-object v9, v6, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1040
    .local v3, end:I
    if-ge v7, p1, :cond_2

    if-le v3, p1, :cond_2

    .line 1041
    move p1, v3

    .line 1036
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 999
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v6           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v7           #start:I
    :cond_3
    add-int/lit8 v8, p1, -0x1

    invoke-interface {v2, p0, v8}, Lcom/lge/cappuccino/IEmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1000
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    .line 1001
    :cond_4
    add-int/lit8 v8, p1, -0x2

    invoke-interface {v2, p0, v8}, Lcom/lge/cappuccino/IEmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1002
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    .line 1003
    :cond_5
    add-int/lit8 v8, p1, -0x3

    invoke-interface {v2, p0, v8}, Lcom/lge/cappuccino/IEmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1004
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1006
    :cond_6
    if-lt v0, v9, :cond_8

    if-gt v0, v10, :cond_8

    .line 1007
    add-int/lit8 v8, p1, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1009
    .local v1, c1:C
    if-lt v1, v11, :cond_7

    if-gt v1, v12, :cond_7

    .line 1010
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    .line 1012
    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1014
    .end local v1           #c1:C
    :cond_8
    invoke-interface {v2, p0, p1}, Lcom/lge/cappuccino/IEmojiUtil;->isDiacriticalMark(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1015
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    .line 1017
    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1020
    :cond_a
    if-lt v0, v9, :cond_c

    if-gt v0, v10, :cond_c

    .line 1021
    add-int/lit8 v8, p1, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1023
    .restart local v1       #c1:C
    if-lt v1, v11, :cond_b

    if-gt v1, v12, :cond_b

    .line 1024
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    .line 1026
    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    .line 1028
    .end local v1           #c1:C
    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_d
    move v5, p1

    .line 1045
    goto/16 :goto_0
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 13
    .parameter "text"
    .parameter "offset"

    .prologue
    const v12, 0xdfff

    const v11, 0xdc00

    const v10, 0xdbff

    const v9, 0xd800

    const/4 v7, 0x0

    .line 922
    if-nez p1, :cond_1

    .line 981
    :cond_0
    :goto_0
    return v7

    .line 924
    :cond_1
    const/4 v8, 0x1

    if-eq p1, v8, :cond_0

    .line 927
    add-int/lit8 v7, p1, -0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 929
    .local v0, c:C
    invoke-static {}, Lcom/lge/cappuccino/EmojiUtil;->getInstance()Lcom/lge/cappuccino/IEmojiUtil;

    move-result-object v2

    .line 931
    .local v2, emojiUtil:Lcom/lge/cappuccino/IEmojiUtil;
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v7, :cond_a

    if-eqz v2, :cond_a

    .line 932
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v2, p0, v7}, Lcom/lge/cappuccino/IEmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 933
    add-int/lit8 p1, p1, -0x1

    .line 968
    :goto_1
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_d

    move-object v7, p0

    .line 969
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 972
    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v7, v5

    if-ge v4, v7, :cond_d

    move-object v7, p0

    .line 973
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v4

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .local v6, start:I
    move-object v7, p0

    .line 974
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v4

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 976
    .local v3, end:I
    if-ge v6, p1, :cond_2

    if-le v3, p1, :cond_2

    .line 977
    move p1, v6

    .line 972
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 934
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    :cond_3
    add-int/lit8 v7, p1, -0x2

    invoke-interface {v2, p0, v7}, Lcom/lge/cappuccino/IEmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 935
    add-int/lit8 p1, p1, -0x2

    goto :goto_1

    .line 936
    :cond_4
    add-int/lit8 v7, p1, -0x3

    invoke-interface {v2, p0, v7}, Lcom/lge/cappuccino/IEmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 937
    add-int/lit8 p1, p1, -0x3

    goto :goto_1

    .line 938
    :cond_5
    add-int/lit8 v7, p1, -0x4

    invoke-interface {v2, p0, v7}, Lcom/lge/cappuccino/IEmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 939
    add-int/lit8 p1, p1, -0x4

    goto :goto_1

    .line 941
    :cond_6
    if-lt v0, v11, :cond_8

    if-gt v0, v12, :cond_8

    .line 942
    add-int/lit8 v7, p1, -0x2

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 944
    .local v1, c1:C
    if-lt v1, v9, :cond_7

    if-gt v1, v10, :cond_7

    .line 945
    add-int/lit8 p1, p1, -0x2

    goto :goto_1

    .line 947
    :cond_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 949
    .end local v1           #c1:C
    :cond_8
    add-int/lit8 v7, p1, -0x2

    invoke-interface {v2, p0, v7}, Lcom/lge/cappuccino/IEmojiUtil;->isDiacriticalMark(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 950
    add-int/lit8 p1, p1, -0x2

    goto :goto_1

    .line 952
    :cond_9
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 956
    :cond_a
    if-lt v0, v11, :cond_c

    if-gt v0, v12, :cond_c

    .line 957
    add-int/lit8 v7, p1, -0x2

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 959
    .restart local v1       #c1:C
    if-lt v1, v9, :cond_b

    if-gt v1, v10, :cond_b

    .line 960
    add-int/lit8 p1, p1, -0x2

    goto :goto_1

    .line 962
    :cond_b
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_1

    .line 964
    .end local v1           #c1:C
    :cond_c
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_1

    :cond_d
    move v7, p1

    .line 981
    goto/16 :goto_0
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 512
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x20

    .line 470
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 472
    .local v1, len:I
    const/4 v2, 0x0

    .line 473
    .local v2, start:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_0

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    :cond_0
    move v0, v1

    .line 478
    .local v0, end:I
    :goto_1
    if-le v0, v2, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_1

    .line 479
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 482
    :cond_1
    sub-int v3, v0, v2

    return v3
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 1408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1410
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1411
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1412
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 1433
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1410
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1414
    :sswitch_0
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1417
    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1420
    :sswitch_2
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1427
    :sswitch_3
    const-string v3, "&#39;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1430
    :sswitch_4
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1436
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1412
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .parameter "s"
    .parameter "ch"
    .parameter "start"

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 102
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 103
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 105
    :goto_0
    return v1

    .restart local p0
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 8
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, -0x1

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 111
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_0

    const-class v7, Ljava/lang/StringBuffer;

    if-eq v1, v7, :cond_0

    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_0

    const-class v7, Ljava/lang/String;

    if-ne v1, v7, :cond_6

    .line 113
    :cond_0
    const/16 v0, 0x1f4

    .line 114
    .local v0, INDEX_INCREMENT:I
    const/16 v7, 0x1f4

    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    .line 116
    .local v5, temp:[C
    :goto_0
    if-ge p2, p3, :cond_5

    .line 117
    add-int/lit16 v4, p2, 0x1f4

    .line 118
    .local v4, segend:I
    if-le v4, p3, :cond_1

    .line 119
    move v4, p3

    .line 121
    :cond_1
    const/4 v7, 0x0

    invoke-static {p0, p2, v4, v5, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 123
    sub-int v2, v4, p2

    .line 124
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 125
    aget-char v7, v5, v3

    if-ne v7, p1, :cond_3

    .line 126
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    .line 127
    add-int/2addr v3, p2

    .line 142
    .end local v0           #INDEX_INCREMENT:I
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    .end local v5           #temp:[C
    :cond_2
    :goto_2
    return v3

    .line 124
    .restart local v0       #INDEX_INCREMENT:I
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #segend:I
    .restart local v5       #temp:[C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    :cond_4
    move p2, v4

    .line 132
    goto :goto_0

    .line 134
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    move v3, v6

    .line 135
    goto :goto_2

    .line 138
    .end local v0           #INDEX_INCREMENT:I
    .end local v5           #temp:[C
    :cond_6
    move v3, p2

    .restart local v3       #i:I
    :goto_3
    if-ge v3, p3, :cond_7

    .line 139
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, p1, :cond_2

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v3, v6

    .line 142
    goto :goto_2
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .parameter "s"
    .parameter "needle"

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "s"
    .parameter "needle"
    .parameter "start"

    .prologue
    .line 208
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5
    .parameter "s"
    .parameter "needle"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 213
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 214
    .local v1, nlen:I
    if-nez v1, :cond_1

    move v2, p2

    .line 235
    :cond_0
    :goto_0
    return v2

    .line 217
    :cond_1
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 220
    .local v0, c:C
    :goto_1
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 221
    sub-int v3, p3, v1

    if-gt p2, v3, :cond_0

    .line 225
    if-ltz p2, :cond_0

    .line 229
    invoke-static {p0, p2, p1, v4, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, p2

    .line 230
    goto :goto_0

    .line 233
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method private static isColon([CII)Z
    .locals 5
    .parameter "ch"
    .parameter "start"
    .parameter "n"

    .prologue
    const/4 v2, 0x0

    .line 1544
    add-int/lit8 v0, p1, 0x3

    .line 1545
    .local v0, end:I
    if-le v0, p2, :cond_1

    .line 1553
    :cond_0
    :goto_0
    return v2

    .line 1548
    :cond_1
    move v1, p1

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 1549
    aget-char v3, p0, v1

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_2

    .line 1550
    const/4 v2, 0x1

    goto :goto_0

    .line 1548
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isDigit(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 1557
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1558
    const/4 v0, 0x1

    .line 1560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 1530
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1531
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1532
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1533
    const/4 v2, 0x0

    .line 1536
    :goto_1
    return v2

    .line 1531
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1536
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isDigitsOnly([CII)Z
    .locals 3
    .parameter "ch"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 1564
    array-length v2, p0

    if-gt p2, v2, :cond_0

    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 1565
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1567
    :cond_1
    move v1, p1

    .local v1, i:I
    add-int v0, p1, p2

    .local v0, end:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1568
    aget-char v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1569
    const/4 v2, 0x0

    .line 1572
    :goto_1
    return v2

    .line 1567
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1572
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 458
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEven(B)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 1752
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1753
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGraphic(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 1516
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1517
    .local v0, gc:I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "str"

    .prologue
    const/4 v4, 0x1

    .line 1488
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1489
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1490
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v1

    .line 1491
    .local v1, gc:I
    const/16 v5, 0xf

    if-eq v1, v5, :cond_1

    const/16 v5, 0x10

    if-eq v1, v5, :cond_1

    const/16 v5, 0x13

    if-eq v1, v5, :cond_1

    if-eqz v1, :cond_1

    const/16 v5, 0xd

    if-eq v1, v5, :cond_1

    const/16 v5, 0xe

    if-eq v1, v5, :cond_1

    const/16 v5, 0xc

    if-eq v1, v5, :cond_1

    .line 1509
    .end local v1           #gc:I
    :cond_0
    :goto_1
    return v4

    .line 1489
    .restart local v1       #gc:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1502
    .end local v1           #gc:I
    :cond_2
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v5, :cond_3

    .line 1503
    invoke-static {}, Lcom/lge/cappuccino/EmojiUtil;->getInstance()Lcom/lge/cappuccino/IEmojiUtil;

    move-result-object v0

    .line 1504
    .local v0, emojiUtil:Lcom/lge/cappuccino/IEmojiUtil;
    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/lge/cappuccino/IEmojiUtil;->hasEmoji(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1509
    .end local v0           #emojiUtil:Lcom/lge/cappuccino/IEmojiUtil;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isPrintableAscii(C)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 1760
    const/16 v0, 0x20

    .line 1761
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 1762
    .local v1, asciiLast:I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_0

    const/16 v2, 0x7e

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0xd

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 1769
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1770
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1771
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1772
    const/4 v2, 0x0

    .line 1775
    :goto_1
    return v2

    .line 1770
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1775
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, list:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/CharSequence;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040561

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 289
    .local v0, delimiter:Ljava/lang/CharSequence;
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 319
    .local v0, firstTime:Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 320
    .local v3, token:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 325
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 327
    .end local v3           #token:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 300
    .local v1, firstTime:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 301
    .local v5, token:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 302
    const/4 v1, 0x0

    .line 306
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 308
    .end local v5           #token:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 146
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .parameter "s"
    .parameter "ch"
    .parameter "last"

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 152
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 153
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 155
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 9
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "last"

    .prologue
    const/4 v7, -0x1

    .line 160
    if-gez p3, :cond_1

    move v4, v7

    .line 200
    :cond_0
    :goto_0
    return v4

    .line 162
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lt p3, v8, :cond_2

    .line 163
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 165
    :cond_2
    add-int/lit8 v3, p3, 0x1

    .line 167
    .local v3, end:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 169
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v8, p0, Landroid/text/GetChars;

    if-nez v8, :cond_3

    const-class v8, Ljava/lang/StringBuffer;

    if-eq v1, v8, :cond_3

    const-class v8, Ljava/lang/StringBuilder;

    if-eq v1, v8, :cond_3

    const-class v8, Ljava/lang/String;

    if-ne v1, v8, :cond_8

    .line 171
    :cond_3
    const/16 v0, 0x1f4

    .line 172
    .local v0, INDEX_INCREMENT:I
    const/16 v8, 0x1f4

    invoke-static {v8}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    .line 174
    .local v6, temp:[C
    :goto_1
    if-ge p2, v3, :cond_7

    .line 175
    add-int/lit16 v5, v3, -0x1f4

    .line 176
    .local v5, segstart:I
    if-ge v5, p2, :cond_4

    .line 177
    move v5, p2

    .line 179
    :cond_4
    const/4 v8, 0x0

    invoke-static {p0, v5, v3, v6, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 181
    sub-int v2, v3, v5

    .line 182
    .local v2, count:I
    add-int/lit8 v4, v2, -0x1

    .local v4, i:I
    :goto_2
    if-ltz v4, :cond_6

    .line 183
    aget-char v8, v6, v4

    if-ne v8, p1, :cond_5

    .line 184
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 185
    add-int/2addr v4, v5

    goto :goto_0

    .line 182
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 189
    :cond_6
    move v3, v5

    .line 190
    goto :goto_1

    .line 192
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #segstart:I
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    move v4, v7

    .line 193
    goto :goto_0

    .line 196
    .end local v0           #INDEX_INCREMENT:I
    .end local v6           #temp:[C
    :cond_8
    add-int/lit8 v4, v3, -0x1

    .restart local v4       #i:I
    :goto_3
    if-lt v4, p2, :cond_9

    .line 197
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v8, p1, :cond_0

    .line 196
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_9
    move v4, v7

    .line 200
    goto :goto_0
.end method

.method static obtain(I)[C
    .locals 3
    .parameter "len"

    .prologue
    .line 1382
    sget-object v2, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1383
    :try_start_0
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1384
    .local v0, buf:[C
    const/4 v1, 0x0

    sput-object v1, Landroid/text/TextUtils;->sTemp:[C

    .line 1385
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p0, :cond_1

    .line 1388
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v1

    new-array v0, v1, [C

    .line 1390
    :cond_1
    return-object v0

    .line 1385
    .end local v0           #buf:[C
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static packRangeInLong(II)J
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1994
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 1049
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1050
    return-void
.end method

.method static recycle([C)V
    .locals 2
    .parameter "temp"

    .prologue
    .line 1394
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1397
    :cond_0
    sget-object v1, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1398
    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1399
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 5
    .parameter "one"
    .parameter "toffset"
    .parameter "two"
    .parameter "ooffset"
    .parameter "len"

    .prologue
    .line 241
    mul-int/lit8 v3, p4, 0x2

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    .line 243
    .local v2, temp:[C
    add-int v3, p1, p4

    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v2, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 244
    add-int v3, p3, p4

    invoke-static {p2, p3, v3, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 246
    const/4 v1, 0x1

    .line 247
    .local v1, match:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 248
    aget-char v3, v2, v0

    add-int v4, v0, p4

    aget-char v4, v2, v4

    if-eq v3, v4, :cond_1

    .line 249
    const/4 v1, 0x0

    .line 254
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    .line 255
    return v1

    .line 247
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter "spanned"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, spans:[Ljava/lang/Object;,"[TT;"
    .local p2, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 1956
    const/4 v0, 0x0

    .line 1957
    .local v0, copy:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .line 1959
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_2

    .line 1960
    aget-object v5, p0, v3

    .line 1961
    .local v5, span:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1962
    .local v6, start:I
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1964
    .local v2, end:I
    if-ne v6, v2, :cond_1

    .line 1965
    if-nez v0, :cond_0

    .line 1966
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    .line 1967
    invoke-static {p0, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1968
    move v1, v3

    .line 1959
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1971
    :cond_1
    if-eqz v0, :cond_0

    .line 1972
    aput-object v5, v0, v1

    .line 1973
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1978
    .end local v2           #end:I
    .end local v5           #span:Ljava/lang/Object;,"TT;"
    .end local v6           #start:I
    :cond_2
    if-eqz v0, :cond_3

    .line 1979
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 1980
    .local v4, result:[Ljava/lang/Object;,"[TT;"
    invoke-static {v0, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1983
    .end local v4           #result:[Ljava/lang/Object;,"[TT;"
    :goto_2
    return-object v4

    :cond_3
    move-object v4, p0

    goto :goto_2
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "template"
    .parameter "sources"
    .parameter "destinations"

    .prologue
    .line 837
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 839
    .local v3, tb:Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 840
    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 842
    .local v4, where:I
    if-ltz v4, :cond_0

    .line 843
    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 839
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    .end local v4           #where:I
    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 848
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 849
    .local v2, start:I
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 851
    .local v0, end:I
    if-ltz v2, :cond_2

    .line 852
    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 847
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 856
    .end local v0           #end:I
    .end local v2           #start:I
    :cond_3
    return-object v3
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 8
    .parameter "mt"
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "textDir"

    .prologue
    const/4 v6, 0x0

    .line 1334
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1337
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    check-cast p2, Landroid/text/Spanned;

    .end local p2
    move-object v1, p2

    .line 1338
    .local v1, sp:Landroid/text/Spanned;
    :goto_0
    sub-int v0, p4, p3

    .line 1339
    .local v0, len:I
    if-nez v1, :cond_2

    .line 1340
    invoke-virtual {p0, p1, v0, v6}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    .line 1354
    .local v5, width:F
    :cond_0
    return v5

    .end local v0           #len:I
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v5           #width:F
    .restart local p2
    :cond_1
    move-object v1, v6

    .line 1337
    goto :goto_0

    .line 1342
    .end local p2
    .restart local v0       #len:I
    .restart local v1       #sp:Landroid/text/Spanned;
    :cond_2
    const/4 v5, 0x0

    .line 1344
    .restart local v5       #width:F
    const/4 v3, 0x0

    .local v3, spanStart:I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 1345
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v3, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 1347
    .local v2, spanEnd:I
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v3, v2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1349
    .local v4, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v4, v1, v7}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1350
    .restart local v4       #spans:[Landroid/text/style/MetricAffectingSpan;
    sub-int v7, v2, v3

    invoke-virtual {p0, p1, v4, v7, v6}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v7

    add-float/2addr v5, v7

    .line 1344
    move v3, v2

    goto :goto_1
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "expression"

    .prologue
    .line 341
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 342
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 344
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "pattern"

    .prologue
    .line 358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 359
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 361
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "source"

    .prologue
    .line 442
    if-nez p0, :cond_1

    .line 443
    const/4 p0, 0x0

    .line 449
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 444
    .restart local p0
    :cond_1
    instance-of v0, p0, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    .line 446
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 447
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 266
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 267
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    .line 268
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 269
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    .restart local p0
    :cond_1
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_2

    .line 271
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    .restart local p0
    :cond_2
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 274
    .local v1, temp:[C
    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 275
    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 276
    .local v0, ret:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public static unpackRangeEndFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 2014
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 2004
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 12
    .parameter "cs"
    .parameter "p"
    .parameter "parcelableFlags"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 621
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5

    .line 622
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p0

    .line 625
    check-cast v5, Landroid/text/Spanned;

    .line 626
    .local v5, sp:Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v5, v10, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 633
    .local v2, os:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_4

    .line 634
    aget-object v1, v2, v0

    .line 635
    .local v1, o:Ljava/lang/Object;
    aget-object v3, v2, v0

    .line 637
    .local v3, prop:Ljava/lang/Object;
    instance-of v7, v3, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    .line 638
    check-cast v3, Landroid/text/style/CharacterStyle;

    .end local v3           #prop:Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v3

    .line 641
    :cond_0
    instance-of v7, v3, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_2

    move-object v4, v3

    .line 642
    check-cast v4, Landroid/text/ParcelableSpan;

    .line 643
    .local v4, ps:Landroid/text/ParcelableSpan;
    invoke-interface {v4}, Landroid/text/ParcelableSpan;->getSpanTypeId()I

    move-result v6

    .line 644
    .local v6, spanTypeId:I
    if-lt v6, v11, :cond_1

    const/16 v7, 0x17

    if-le v6, v7, :cond_3

    .line 645
    :cond_1
    const-string v7, "TextUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "external class \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" is attempting to use the frameworks-only ParcelableSpan"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interface"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .end local v4           #ps:Landroid/text/ParcelableSpan;
    .end local v6           #spanTypeId:I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    .restart local v4       #ps:Landroid/text/ParcelableSpan;
    .restart local v6       #spanTypeId:I
    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    invoke-interface {v4, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 651
    invoke-static {p1, v5, v1}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_1

    .line 656
    .end local v1           #o:Ljava/lang/Object;
    .end local v4           #ps:Landroid/text/ParcelableSpan;
    .end local v6           #spanTypeId:I
    :cond_4
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    .end local v0           #i:I
    .end local v2           #os:[Ljava/lang/Object;
    .end local v5           #sp:Landroid/text/Spanned;
    :goto_2
    return-void

    .line 658
    :cond_5
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    if-eqz p0, :cond_6

    .line 660
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 662
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 668
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    return-void
.end method
