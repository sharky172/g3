.class Landroid/text/TextUtils$Brace;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Brace"
.end annotation


# instance fields
.field indexInMirrorArray:I

.field level:B

.field positionOfChar:I

.field positionOfOBrace:I


# direct methods
.method public constructor <init>(IIB)V
    .locals 1
    .parameter "indexOfPunc"
    .parameter "i"
    .parameter "l"

    .prologue
    const/4 v0, -0x1

    .line 1580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1576
    iput v0, p0, Landroid/text/TextUtils$Brace;->indexInMirrorArray:I

    .line 1577
    iput v0, p0, Landroid/text/TextUtils$Brace;->positionOfChar:I

    .line 1578
    iput v0, p0, Landroid/text/TextUtils$Brace;->positionOfOBrace:I

    .line 1579
    iput-byte v0, p0, Landroid/text/TextUtils$Brace;->level:B

    .line 1581
    iput p1, p0, Landroid/text/TextUtils$Brace;->indexInMirrorArray:I

    .line 1582
    iput p2, p0, Landroid/text/TextUtils$Brace;->positionOfChar:I

    .line 1583
    iput-byte p3, p0, Landroid/text/TextUtils$Brace;->level:B

    .line 1584
    return-void
.end method


# virtual methods
.method public isMatchedPartner(Landroid/text/TextUtils$Brace;)Z
    .locals 3
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    .line 1587
    iget v1, p0, Landroid/text/TextUtils$Brace;->indexInMirrorArray:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/text/TextUtils$Brace;->indexInMirrorArray:I

    if-nez v1, :cond_2

    .line 1588
    :cond_0
    iget v1, p1, Landroid/text/TextUtils$Brace;->indexInMirrorArray:I

    iget v2, p0, Landroid/text/TextUtils$Brace;->indexInMirrorArray:I

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1594
    :cond_1
    :goto_0
    return v0

    .line 1591
    :cond_2
    iget v1, p1, Landroid/text/TextUtils$Brace;->indexInMirrorArray:I

    iget v2, p0, Landroid/text/TextUtils$Brace;->indexInMirrorArray:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1594
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
