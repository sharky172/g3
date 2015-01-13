.class public final Lcom/lge/util/MatchingDigitsHelper;
.super Ljava/lang/Object;
.source "MatchingDigitsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;
    }
.end annotation


# static fields
.field private static final TAG_MATCHING:Ljava/lang/String; = "MatchingDigitsMechanism"

.field private static mMatchingMechanism:Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/util/MatchingDigitsHelper;->mMatchingMechanism:Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method public static compareForMatching(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "num1"
    .parameter "num2"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v0, v3

    .line 54
    :goto_0
    return v0

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v0, v3

    .line 36
    goto :goto_0

    .line 38
    :cond_3
    const/4 v0, 0x0

    .line 39
    .local v0, isEqual:Z
    invoke-static {}, Lcom/lge/util/MatchingDigitsHelper;->getMatchingMechanism()Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;

    move-result-object v1

    .line 41
    .local v1, matchingMechanism:Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;
    invoke-virtual {v1, p0}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;->preparePhoneNumberForMatching(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-virtual {v1, p1}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;->preparePhoneNumberForMatching(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    const-string v4, "MatchingDigitsMechanism"

    const-string v5, "[LGESP] num1 = %s and num2 = %s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p0, v6, v3

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {v1}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;->getOperatorPrefixes()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, prefixes:[Ljava/lang/String;
    if-eqz v2, :cond_4

    array-length v4, v2

    if-lez v4, :cond_4

    .line 48
    invoke-virtual {v1}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;->getMatchingDigitsNumber()I

    move-result v4

    invoke-virtual {v1}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v4, v5, v2}, Lcom/lge/util/MatchingDigitsHelper;->phoneNumbersEqual_VE(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 49
    const-string v4, "MatchingDigitsMechanism"

    const-string v5, "[LGESP] phoneNumbersEqual_VE(%s, %s, %s, %s, %s)"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    aput-object p1, v6, v7

    invoke-virtual {v1}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;->getMatchingDigitsNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    const/4 v3, 0x3

    invoke-virtual {v1}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x4

    invoke-virtual {v1}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;->getOperatorPrefixes()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_4
    const-string v4, "MatchingDigitsMechanism"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGESP] Matching digits compareForMatching result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_5

    const-string v3, "equal"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v3, "not equal"

    goto :goto_1
.end method

.method public static getCarrierVenezuela()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/lge/util/MatchingDigitsHelper;->getMatchingMechanism()Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;

    move-result-object v0

    .line 64
    .local v0, matchingMechanism:Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;
    invoke-virtual {v0}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMatchingMechanism()Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/lge/util/MatchingDigitsHelper;->mMatchingMechanism:Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;

    if-nez v0, :cond_0

    .line 18
    const-string v0, "MatchingDigitsMechanism"

    const-string v1, "[LGESP] Creating a new instance of MatchingDigitsMechanism"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;

    invoke-direct {v0}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;-><init>()V

    sput-object v0, Lcom/lge/util/MatchingDigitsHelper;->mMatchingMechanism:Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;

    .line 21
    :cond_0
    sget-object v0, Lcom/lge/util/MatchingDigitsHelper;->mMatchingMechanism:Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;

    return-object v0
.end method

.method public static getOperatorPrefixesVenezuela()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/lge/util/MatchingDigitsHelper;->getMatchingMechanism()Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;

    move-result-object v0

    .line 69
    .local v0, matchingMechanism:Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;
    invoke-virtual {v0}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;->getOperatorPrefixes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isVenezuela()Z
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/lge/util/MatchingDigitsHelper;->getMatchingMechanism()Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;

    move-result-object v0

    .line 59
    .local v0, matchingMechanism:Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;
    invoke-virtual {v0}, Lcom/lge/util/MatchingDigitsHelper$MatchingDigitsMechanism;->isVenezuela()Z

    move-result v1

    return v1
.end method

.method private static phoneNumbersEqual_VE(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "num1"
    .parameter "num2"
    .parameter "minMatch"
    .parameter "carrier"
    .parameter "prefixes"

    .prologue
    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, isEqual:Z
    const/4 v0, 0x1

    .line 76
    .local v0, callLogMatch:Z
    const/4 v5, 0x7

    .line 78
    .local v5, minMatch2:I
    const/4 v1, 0x0

    .line 79
    .local v1, i:I
    const-string v7, "Movistar"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v0, :cond_2

    .line 80
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 81
    const-string v7, "MatchingDigitsMechanism"

    const-string v8, "Carrier is Movistar"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    :goto_0
    return v3

    .line 83
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, p2, :cond_4

    .line 85
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 87
    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 88
    const/4 v4, 0x0

    .line 90
    .local v4, isPrefixEqual:Z
    const/4 v1, 0x0

    .line 91
    :goto_1
    array-length v7, p4

    if-ge v1, v7, :cond_3

    if-nez v4, :cond_3

    .line 92
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-object v7, p4, v1

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 93
    const/4 v4, 0x1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 96
    :cond_3
    if-eqz v4, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p0, p1, v5}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_0

    .line 104
    .end local v4           #isPrefixEqual:Z
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v5, :cond_6

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v5, :cond_5

    .line 107
    invoke-static {p0, p1, v5}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 110
    :cond_5
    if-nez v3, :cond_1

    .line 111
    const/4 v6, 0x0

    .line 112
    .local v6, numTmp:Ljava/lang/String;
    const/4 v1, 0x0

    .line 113
    :goto_2
    array-length v7, p4

    if-ge v1, v7, :cond_1

    if-nez v3, :cond_1

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p4, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-static {p0, v6, p2}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    .end local v6           #numTmp:Ljava/lang/String;
    :cond_6
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_0

    .end local v1           #i:I
    .restart local v2       #i:I
    .restart local v4       #isPrefixEqual:Z
    :cond_7
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method
