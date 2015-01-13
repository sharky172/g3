.class public Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;
.super Ljava/lang/Object;
.source "LGTPhoneNumberUtil.java"


# static fields
.field private static final CUSTOMER_CENTER_NUMBERS_LGT:[Ljava/lang/String; = null

.field public static final CUSTOMER_CENTER_NUMBER_TRANS_LGT:Ljava/lang/String; = "+82234167010"

.field private static final DBG:Z = true

.field private static final FOREIGN_AFFAIRS_TRADE_NUMBERS_LGT:[Ljava/lang/String; = null

.field public static final FOREIGN_AFFAIRS_TRADE_NUMBER_TRANS_LGT:Ljava/lang/String; = "+82232100404"

.field private static final KOREA_INT_PREFIX:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "LGTPhoneNumberUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "114"

    aput-object v1, v0, v3

    const-string v1, "019114"

    aput-object v1, v0, v4

    const-string v1, "010114"

    aput-object v1, v0, v5

    const-string v1, "0082114"

    aput-object v1, v0, v6

    const-string v1, "+82114"

    aput-object v1, v0, v7

    sput-object v0, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->CUSTOMER_CENTER_NUMBERS_LGT:[Ljava/lang/String;

    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "111"

    aput-object v1, v0, v3

    const-string v1, "112"

    aput-object v1, v0, v4

    const-string v1, "113"

    aput-object v1, v0, v5

    const-string v1, "117"

    aput-object v1, v0, v6

    const-string v1, "118"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "119"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "122"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "125"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->FOREIGN_AFFAIRS_TRADE_NUMBERS_LGT:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00700"

    aput-object v1, v0, v3

    const-string v1, "005"

    aput-object v1, v0, v4

    const-string v1, "002"

    aput-object v1, v0, v5

    const-string v1, "001"

    aput-object v1, v0, v6

    const-string v1, "00345"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "00365"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "00321"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCustomerCenterNumberLgt(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNumber"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    const-string v2, "isCustomerCenterNumberLgt(): empty number"

    invoke-static {v2}, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->log(Ljava/lang/String;)V

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    sget-object v2, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->CUSTOMER_CENTER_NUMBERS_LGT:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 39
    sget-object v2, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->CUSTOMER_CENTER_NUMBERS_LGT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    const/4 v1, 0x1

    goto :goto_0

    .line 38
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isForeignAffairsTradeNumberLgt(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNumber"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string v2, "isForeignAffairsTradeNumberLgt(): empty number"

    invoke-static {v2}, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->log(Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    sget-object v2, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->FOREIGN_AFFAIRS_TRADE_NUMBERS_LGT:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 67
    sget-object v2, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->FOREIGN_AFFAIRS_TRADE_NUMBERS_LGT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isKoreaIntPrefixAdded(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNumber"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const-string v2, "isKoreaIntPrefixAdded(): empty phoneNumber"

    invoke-static {v2}, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->log(Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    sget-object v2, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 93
    sget-object v2, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    const/4 v1, 0x1

    goto :goto_0

    .line 92
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 18
    const-string v0, "LGTPhoneNumberUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public static removeKoreaIntPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const-string v3, "removeKoreaIntPrefix(): empty phoneNumber"

    invoke-static {v3}, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->log(Ljava/lang/String;)V

    .line 131
    .end local p0
    :goto_0
    return-object p0

    .line 115
    .restart local p0
    :cond_0
    const/4 v1, 0x0

    .line 116
    .local v1, prefixLength:I
    const/4 v2, 0x0

    .line 118
    .local v2, removedNumber:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    sget-object v3, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 119
    sget-object v3, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    sget-object v3, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 125
    :cond_1
    if-lez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object p0, v2

    .line 131
    goto :goto_0

    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_3
    move-object v2, p0

    goto :goto_2
.end method
