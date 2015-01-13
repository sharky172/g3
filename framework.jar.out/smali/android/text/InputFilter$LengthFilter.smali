.class public Landroid/text/InputFilter$LengthFilter;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    .line 82
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 86
    iget v3, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    sub-int v5, p6, p5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 88
    .local v2, keep:I
    if-gtz v2, :cond_0

    .line 89
    const-string v3, ""

    .line 116
    :goto_0
    return-object v3

    .line 90
    :cond_0
    sub-int v3, p3, p2

    if-lt v2, v3, :cond_1

    .line 91
    const/4 v3, 0x0

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {}, Lcom/lge/cappuccino/EmojiUtil;->getInstance()Lcom/lge/cappuccino/IEmojiUtil;

    move-result-object v1

    .line 95
    .local v1, emojiUtil:Lcom/lge/cappuccino/IEmojiUtil;
    add-int/2addr v2, p2

    .line 96
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    add-int/lit8 v2, v2, -0x1

    .line 99
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, -0x2

    if-lt v3, p2, :cond_2

    .line 100
    add-int/lit8 v3, v2, -0x2

    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 102
    .local v0, codePoint:I
    if-eqz v1, :cond_2

    add-int/lit8 v3, v2, -0x2

    invoke-interface {v1, p1, v3}, Lcom/lge/cappuccino/IEmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    add-int/lit8 v2, v2, -0x2

    .line 106
    .end local v0           #codePoint:I
    :cond_2
    if-ne v2, p2, :cond_4

    .line 107
    const-string v3, ""

    goto :goto_0

    .line 109
    :cond_3
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v3, :cond_4

    add-int/lit8 v3, v2, -0x1

    if-lt v3, p2, :cond_4

    if-eqz v1, :cond_4

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, p1, v3}, Lcom/lge/cappuccino/IEmojiUtil;->isDiacriticalMark(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    add-int/lit8 v2, v2, -0x1

    .line 112
    if-ne v2, p2, :cond_4

    .line 113
    const-string v3, ""

    goto :goto_0

    .line 116
    :cond_4
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method
