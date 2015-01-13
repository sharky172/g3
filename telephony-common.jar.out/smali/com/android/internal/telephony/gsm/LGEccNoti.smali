.class public Lcom/android/internal/telephony/gsm/LGEccNoti;
.super Ljava/lang/Object;
.source "LGEccNoti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/LGEccNoti$1;,
        Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;
    }
.end annotation


# static fields
.field public static final ACTIVATION_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/activation"

.field public static final ACTIVATION_VALUE:I = 0x1

.field public static final ALL_VALUE:I = 0x0

.field public static final AUTHORITY:Ljava/lang/String; = "ecc_notification"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "ecc_noti.db"

.field public static final DATABASE_VERSION:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DEFAULT_ACTIVATION:Ljava/lang/String; = "ON"

.field public static final DEFAULT_DTT_CODE:Ljava/lang/String; = "030708090B0C0E0F24405B5C5D5E5F601C1D1E1F1012131415161718191A"

.field public static final DEFAULT_DTT_DIGIT:Ljava/lang/String; = "897023415618307564290729486153"

.field public static final DEFAULT_MMI:Ljava/lang/String; = "#119#"

.field public static final DTT_CODE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/dtt_code"

.field public static final DTT_CODE_VALUE:I = 0x3

.field public static final DTT_DIGIT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/dtt_digit"

.field public static final DTT_DIGIT_VALUE:I = 0x4

.field public static final ECCNOTI_TABLE_NAME:Ljava/lang/String; = "ecc_noti"

.field public static final KEY_ACTIVATION:Ljava/lang/String; = "activation"

.field public static final KEY_DTT_CODE:Ljava/lang/String; = "dtt_code"

.field public static final KEY_DTT_DIGIT:Ljava/lang/String; = "dtt_digit"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_MMI:Ljava/lang/String; = "mmi"

.field private static final LEGACY_ECN:Z = false

.field public static final MMI_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/mmi"

.field public static final MMI_VALUE:I = 0x2

.field static final PARSING_ECCNOTI:Ljava/lang/String; = ""

.field private static SENDING_ECN:Z = false

.field private static SENDING_UVR:Z = false

.field private static final TAG:Ljava/lang/String; = "ECC_NOTI"

.field static eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

.field private static mDecoded:Ljava/lang/String;

.field private static mDoNotCloseCallScreen:Z

.field private static mIsProcessing:Z

.field private static mLastCreateTime:J

.field private static mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

.field private static mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field static mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 47
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    .line 75
    const-string v0, "content://ecc_notification/ecc_noti"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->CONTENT_URI:Landroid/net/Uri;

    .line 91
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->mLastCreateTime:J

    .line 118
    sput-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    .line 122
    sput-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_UVR:Z

    .line 123
    sput-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->mIsProcessing:Z

    .line 124
    sput-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->mDoNotCloseCallScreen:Z

    return-void

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method private static checkOperatorCode(Ljava/lang/String;)Z
    .locals 6
    .parameter "mcc_mnc"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 687
    const/16 v4, 0x12

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "310160"

    aput-object v4, v1, v2

    const-string v4, "310200"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "310210"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "310220"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "310230"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "310240"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "310250"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "310260"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "310270"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "310300"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string v5, "310310"

    aput-object v5, v1, v4

    const/16 v4, 0xb

    const-string v5, "310490"

    aput-object v5, v1, v4

    const/16 v4, 0xc

    const-string v5, "310530"

    aput-object v5, v1, v4

    const/16 v4, 0xd

    const-string v5, "310580"

    aput-object v5, v1, v4

    const/16 v4, 0xe

    const-string v5, "310590"

    aput-object v5, v1, v4

    const/16 v4, 0xf

    const-string v5, "310640"

    aput-object v5, v1, v4

    const/16 v4, 0x10

    const-string v5, "310660"

    aput-object v5, v1, v4

    const/16 v4, 0x11

    const-string v5, "310800"

    aput-object v5, v1, v4

    .line 694
    .local v1, operators:[Ljava/lang/String;
    if-nez p0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v2

    .line 698
    :cond_1
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 700
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 702
    goto :goto_0

    .line 704
    :cond_2
    aget-object v4, v1, v0

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 705
    goto :goto_0

    .line 698
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected static completeECCNoti()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 418
    const-string v0, "ECC_NOTI"

    const-string v1, "completeECCNoti"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sput-boolean v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    .line 421
    sput-boolean v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_UVR:Z

    .line 422
    sput-boolean v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->mIsProcessing:Z

    .line 423
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 424
    return-void
.end method

.method private static decodeUNR(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "data"

    .prologue
    const/16 v11, 0x10

    const/4 v7, 0x0

    .line 532
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 538
    .local v0, decoded:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/LGEccNoti;->stringToInt(Ljava/lang/String;)[I

    move-result-object v6

    .line 540
    .local v6, unrHexa:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_1

    .line 541
    sget-boolean v8, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v8, :cond_0

    .line 542
    const-string v8, "ECC_NOTI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodeUNR input Charater ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ) in Integer (0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ) to GSM Code ==>  0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v2

    invoke-static {v10, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 549
    :cond_1
    const/4 v5, 0x0

    .local v5, n:I
    :goto_1
    const/4 v8, 0x3

    if-ge v5, v8, :cond_4

    .line 551
    aget v8, v6, v5

    sget-object v9, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->dtt_code:[I

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/LGEccNoti;->match(I[I)I

    move-result v4

    .line 552
    .local v4, matchingIdx:I
    sget-boolean v8, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v8, :cond_2

    .line 553
    const-string v8, "ECC_NOTI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Digit Index tmpIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " max length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->dtt_digit:[C

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_2
    if-ltz v4, :cond_3

    sget-object v8, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->dtt_digit:[C

    array-length v8, v8

    if-lt v4, v8, :cond_5

    :cond_3
    move-object v0, v7

    .line 594
    .end local v0           #decoded:Ljava/lang/String;
    .end local v4           #matchingIdx:I
    :cond_4
    :goto_2
    return-object v0

    .line 562
    .restart local v0       #decoded:Ljava/lang/String;
    .restart local v4       #matchingIdx:I
    :cond_5
    sget-object v8, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->dtt_digit:[C

    aget-char v8, v8, v4

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 563
    .local v1, digitIndex:I
    sget-boolean v8, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v8, :cond_6

    .line 564
    const-string v8, "ECC_NOTI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Digit Index digitIndex : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " max length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_6
    if-ltz v1, :cond_7

    array-length v8, v6

    if-lt v1, v8, :cond_8

    :cond_7
    move-object v0, v7

    .line 569
    goto :goto_2

    .line 573
    :cond_8
    add-int/lit8 v8, v1, 0x3

    aget v3, v6, v8

    .line 576
    .local v3, machingCh:I
    sget-object v8, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->dtt_code:[I

    invoke-static {v3, v8}, Lcom/android/internal/telephony/gsm/LGEccNoti;->match(I[I)I

    move-result v4

    .line 577
    sget-boolean v8, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v8, :cond_9

    .line 578
    const-string v8, "ECC_NOTI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Digit Index USSD Ch machingCh : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v8, "ECC_NOTI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Digit Index USSD matchingIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " max length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->dtt_digit:[C

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_9
    if-ltz v4, :cond_a

    sget-object v8, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->dtt_digit:[C

    array-length v8, v8

    if-lt v4, v8, :cond_b

    :cond_a
    move-object v0, v7

    .line 584
    goto/16 :goto_2

    .line 588
    :cond_b
    sget-object v8, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->dtt_digit:[C

    aget-char v8, v8, v4

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method private static getGsmAlpaArrayFromDTTString(Ljava/lang/String;)[I
    .locals 7
    .parameter "dtt_table"

    .prologue
    .line 666
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 667
    .local v3, len:I
    div-int/lit8 v5, v3, 0x2

    new-array v4, v5, [I

    .line 669
    .local v4, tableArray:[I
    const/4 v1, 0x0

    .line 670
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 671
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v2

    .line 670
    add-int/lit8 v0, v0, 0x2

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_0

    .line 674
    :cond_0
    return-object v4
.end method

.method public static getNotCloseCallScreenECCNoti()Z
    .locals 1

    .prologue
    .line 509
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mDoNotCloseCallScreen:Z

    return v0
.end method

.method public static getProcessECCNoti()Z
    .locals 3

    .prologue
    .line 455
    const-string v0, "ECC_NOTI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProcessECCNoti : mIsProcessing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->mIsProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mIsProcessing:Z

    return v0
.end method

.method protected static getResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 439
    sget-object v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static initiateEcnReq(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "phone"
    .parameter "conn"

    .prologue
    .line 737
    return-void
.end method

.method private static initiateEcnReqInternal(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .parameter "phone"
    .parameter "conn"

    .prologue
    .line 741
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/LGEccNoti;->isValidRequest(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 781
    .end local p0
    :goto_0
    return-void

    .line 748
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    .line 749
    .local v0, cTime:J
    sget-wide v5, Lcom/android/internal/telephony/gsm/LGEccNoti;->mLastCreateTime:J

    cmp-long v5, v0, v5

    if-nez v5, :cond_1

    .line 750
    const-string v5, "ECC_NOTI"

    const-string v6, "initiateEcnReq : Already sent ECN"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 753
    :cond_1
    sput-wide v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mLastCreateTime:J

    .line 754
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/LGEccNoti;->setProcessECCNoti(Z)V

    .line 756
    check-cast p0, Lcom/android/internal/telephony/PhoneProxy;

    .end local p0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 757
    .local v2, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    if-nez v2, :cond_2

    .line 758
    const-string v5, "ECC_NOTI"

    const-string v6, "initiateEcnReq : active GSMPhone is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->completeECCNoti()V

    goto :goto_0

    .line 762
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/LGEccNoti;->setResolver(Landroid/content/ContentResolver;)V

    .line 764
    const/4 v4, 0x0

    .line 765
    .local v4, r:Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v5, v2, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/internal/telephony/uicc/IccRecords;
    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 767
    .restart local v4       #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/LGEccNoti;->isEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 768
    const-string v5, "ECC_NOTI"

    const-string v6, "initiateEcnReq : Go ECN"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/LGEccNoti;->setMMICode(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v3

    .line 771
    .local v3, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v3, :cond_4

    .line 772
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->processECN()V

    goto :goto_0

    .line 779
    .end local v3           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_4
    const-string v5, "ECC_NOTI"

    const-string v6, "initiateEcnReq : Cannot send ECN"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->completeECCNoti()V

    goto :goto_0
.end method

.method protected static isEnabled(Ljava/lang/String;)Z
    .locals 7
    .parameter "operator"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 217
    new-instance v4, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    .line 222
    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->mResolver:Landroid/content/ContentResolver;

    if-nez v4, :cond_3

    .line 223
    :cond_0
    sget-boolean v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v2, :cond_1

    .line 224
    const-string v2, "ECC_NOTI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnabled : no EccNot_Data or no resolver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/LGEccNoti;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v3

    .line 260
    :cond_2
    :goto_0
    return v2

    .line 230
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "activation"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/LGEccNoti;->read(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->activation:Ljava/lang/String;

    .line 232
    const-string v4, "ECC_NOTI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    sget-object v6, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->activation:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->activation:Ljava/lang/String;

    const-string v5, "ON"

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/LGEccNoti;->checkOperatorCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 238
    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mmi"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/LGEccNoti;->read(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->mmi:Ljava/lang/String;

    .line 239
    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "dtt_code"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/LGEccNoti;->read(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, temp_dtt_code:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "dtt_digit"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/LGEccNoti;->read(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, temp_dtt_digit:Ljava/lang/String;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 243
    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/LGEccNoti;->getGsmAlpaArrayFromDTTString(Ljava/lang/String;)[I

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->dtt_code:[I

    .line 244
    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/LGEccNoti;->stringToChar(Ljava/lang/String;)[C

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->dtt_digit:[C

    .line 249
    :cond_4
    sput-boolean v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->mIsProcessing:Z

    .line 251
    sput-boolean v3, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    .line 252
    sput-boolean v3, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_UVR:Z

    .line 254
    sget-boolean v3, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v3, :cond_2

    .line 255
    const-string v3, "ECC_NOTI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnabled : mmi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    sget-object v5, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->mmi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #temp_dtt_code:Ljava/lang/String;
    .end local v1           #temp_dtt_digit:Ljava/lang/String;
    :cond_5
    move v2, v3

    .line 260
    goto/16 :goto_0
.end method

.method public static isSENDING_ECN()Z
    .locals 1

    .prologue
    .line 484
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    return v0
.end method

.method public static isSENDING_UVR()Z
    .locals 1

    .prologue
    .line 499
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_UVR:Z

    return v0
.end method

.method private static isValidRequest(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;)Z
    .locals 3
    .parameter "phone"
    .parameter "conn"

    .prologue
    const/4 v1, 0x0

    .line 713
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v1

    .line 716
    :cond_1
    instance-of v2, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v2, :cond_0

    .line 717
    instance-of v2, p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v2, :cond_0

    .line 718
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_0

    .line 720
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, dialString:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isValidRequest(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/MmiCode;)Z
    .locals 2
    .parameter "phone"
    .parameter "mmi"

    .prologue
    const/4 v0, 0x0

    .line 784
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 791
    :cond_0
    :goto_0
    return v0

    .line 787
    :cond_1
    instance-of v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_0

    .line 788
    instance-of v1, p1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    if-eqz v1, :cond_0

    .line 791
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static match(I[I)I
    .locals 2
    .parameter "in"
    .parameter "out"

    .prologue
    .line 604
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 605
    aget v1, p1, v0

    if-ne p0, v1, :cond_0

    .line 609
    .end local v0           #i:I
    :goto_1
    return v0

    .line 604
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected static processECN()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 332
    sget-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v1, :cond_0

    .line 333
    const-string v1, "ECC_NOTI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processECN : isSendingEcn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    if-eq v1, v4, :cond_1

    .line 337
    sput-boolean v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    .line 338
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_UVR:Z

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    sget-object v2, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->mmi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, ecn:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/LGEccNoti;->sendUSSD(Ljava/lang/String;)V

    .line 342
    :cond_1
    return-void
.end method

.method public static processEcnResp(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/MmiCode;)Z
    .locals 1
    .parameter "phone"
    .parameter "mmi"

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method private static processEcnRespInternal(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/MmiCode;)Z
    .locals 6
    .parameter "phone"
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 809
    const-string v4, "ECC_NOTI"

    const-string v5, "processEcnResp"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/LGEccNoti;->isValidRequest(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/MmiCode;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 812
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->completeECCNoti()V

    .line 855
    :goto_0
    return v2

    .line 818
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/gsm/LGEccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    if-eq p1, v4, :cond_1

    .line 819
    const-string v3, "ECC_NOTI"

    const-string v4, "processEcnResp : mmi is not for ECN"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->completeECCNoti()V

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 824
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 825
    .local v0, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    if-nez v0, :cond_2

    .line 826
    const-string v3, "ECC_NOTI"

    const-string v4, "processEcnResp : active GSMPhone is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->completeECCNoti()V

    goto :goto_0

    .line 831
    :cond_2
    const-string v2, "ECC_NOTI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processEcnResp : mmi state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v2, "ECC_NOTI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processEcnResp : isSendingEcn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->isSENDING_ECN()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSendingUvr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->isSENDING_UVR()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->isSENDING_ECN()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->isSENDING_UVR()Z

    move-result v2

    if-nez v2, :cond_4

    .line 837
    const-string v2, "ECC_NOTI"

    const-string v4, "processEcnResp : Sending UVR "

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/LGEccNoti;->processUNR(Lcom/android/internal/telephony/MmiCode;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 840
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/LGEccNoti;->setMMICode(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v1

    .line 841
    .local v1, newMmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v1, :cond_3

    .line 842
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->processUVR()V

    .line 845
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/LGEccNoti;->setNotCloseCallScreenECCNoti(Z)V

    move v2, v3

    .line 846
    goto/16 :goto_0

    .line 849
    .end local v1           #newMmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_3
    const-string v2, "ECC_NOTI"

    const-string v4, "processEcnResp : Cannot send UVR"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->completeECCNoti()V

    .line 853
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/LGEccNoti;->setNotCloseCallScreenECCNoti(Z)V

    move v2, v3

    .line 855
    goto/16 :goto_0
.end method

.method protected static processUNR(Lcom/android/internal/telephony/MmiCode;)Z
    .locals 6
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 351
    if-nez p0, :cond_0

    .line 352
    const-string v3, "ECC_NOTI"

    const-string v4, "processUNR : mmi is NULL"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->completeECCNoti()V

    move v0, v2

    .line 391
    :goto_0
    return v0

    .line 357
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    .line 358
    .local v1, state:Lcom/android/internal/telephony/MmiCode$State;
    const/4 v0, 0x0

    .line 360
    .local v0, ret:Z
    const-string v3, "ECC_NOTI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processUNR : mmi.state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v3, Lcom/android/internal/telephony/gsm/LGEccNoti$1;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 386
    const-string v3, "ECC_NOTI"

    const-string v4, "processUNR : return false"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 387
    goto :goto_0

    .line 364
    :pswitch_0
    invoke-interface {p0}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 365
    invoke-interface {p0}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/LGEccNoti;->decodeUNR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->mDecoded:Ljava/lang/String;

    .line 366
    sget-object v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->mDecoded:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 367
    const/4 v0, 0x0

    .line 390
    :cond_1
    :goto_1
    const-string v2, "ECC_NOTI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processUNR : ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 376
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->completeECCNoti()V

    .line 377
    const/4 v0, 0x0

    .line 378
    goto :goto_1

    .line 381
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGEccNoti;->completeECCNoti()V

    .line 382
    const/4 v0, 0x0

    .line 383
    goto :goto_1

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static processUVR()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 401
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "ECC_NOTI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processUVR : isSendingUvr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_UVR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_UVR:Z

    if-eq v0, v3, :cond_1

    .line 406
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    .line 407
    sput-boolean v3, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_UVR:Z

    .line 408
    sget-object v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mDecoded:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/LGEccNoti;->sendUSSD(Ljava/lang/String;)V

    .line 410
    :cond_1
    return-void
.end method

.method public static read(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "key"

    .prologue
    .line 166
    const/4 v6, 0x0

    .line 167
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 170
    .local v8, retVal:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    if-eqz v6, :cond_0

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    const-string v0, "activation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 193
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 194
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v0, :cond_2

    .line 199
    const-string v0, "ECC_NOTI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read Key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  Value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    return-object v8

    .line 176
    :cond_3
    :try_start_1
    const-string v0, "mmi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 178
    :cond_4
    const-string v0, "dtt_code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 180
    :cond_5
    const-string v0, "dtt_digit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 183
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECC Noti Key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :catch_0
    move-exception v7

    .line 191
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ECC_NOTI"

    const-string v1, "read : "

    invoke-static {v0, v1, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    if-eqz v6, :cond_1

    goto :goto_1

    .line 187
    .end local v7           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_3
    const-string v0, "ECC_NOTI"

    const-string v1, "read : cursor cannot move to first"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 193
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 194
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_8
    throw v0
.end method

.method private static sendUSSD(Ljava/lang/String;)V
    .locals 2
    .parameter "mmi"

    .prologue
    .line 318
    sget-object v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    const-string v0, "ECC_NOTI"

    const-string v1, "sendUSSD : mMmiCode is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static setMMICode(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 275
    sput-object p0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 278
    sget-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_UVR:Z

    if-nez v1, :cond_1

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    sget-object v2, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->mmi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, ecn:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 285
    sget-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v1, :cond_0

    .line 286
    const-string v1, "ECC_NOTI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMMICode : Setting ECN Format ==>  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/LGEccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;

    sget-object v3, Lcom/android/internal/telephony/gsm/LGEccNoti$EccNoti_Data;->mmi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return : [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/LGEccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v0           #ecn:Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    return-object v1

    .line 289
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_UVR:Z

    if-nez v1, :cond_2

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->mDecoded:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->mDecoded:Ljava/lang/String;

    .line 294
    sget-object v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->mDecoded:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 296
    sget-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v1, :cond_0

    .line 297
    const-string v1, "ECC_NOTI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMMICode : Setting UVR Format ==>  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/LGEccNoti;->mDecoded:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return : [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/LGEccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_2
    sget-boolean v1, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v1, :cond_0

    .line 302
    const-string v1, "ECC_NOTI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMMICode : ECN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_ECN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UVR : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/gsm/LGEccNoti;->SENDING_UVR:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setNotCloseCallScreenECCNoti(Z)V
    .locals 3
    .parameter "setVal"

    .prologue
    .line 518
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v0, :cond_0

    .line 519
    const-string v0, "ECC_NOTI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotCloseCallScreenECCNoti : mDoNotCloseCallScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->mDoNotCloseCallScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    sput-boolean p0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mDoNotCloseCallScreen:Z

    .line 523
    return-void
.end method

.method public static setProcessECCNoti(Z)V
    .locals 0
    .parameter "setVal"

    .prologue
    .line 465
    return-void
.end method

.method private static setProcessECCNotiInternal(Z)V
    .locals 3
    .parameter "setVal"

    .prologue
    .line 468
    sput-boolean p0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mIsProcessing:Z

    .line 469
    const-string v0, "ECC_NOTI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProcessECCNoti : mIsProcessing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->mIsProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method protected static setResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 431
    sput-object p0, Lcom/android/internal/telephony/gsm/LGEccNoti;->mResolver:Landroid/content/ContentResolver;

    .line 432
    return-void
.end method

.method private static stringToChar(Ljava/lang/String;)[C
    .locals 4
    .parameter "str"

    .prologue
    .line 651
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 652
    .local v1, len:I
    new-array v2, v1, [C

    .line 653
    .local v2, result:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 654
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    return-object v2
.end method

.method private static stringToInt(Ljava/lang/String;)[I
    .locals 11
    .parameter "str"

    .prologue
    .line 618
    const-string v8, "gsm.eccnoti.dcs"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, dcs:Ljava/lang/String;
    const-string v8, "ECC_NOTI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stringToInt : dcs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v8, "gsm.eccnoti.dcs"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    if-eqz v0, :cond_0

    const-string v8, "0F"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 624
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v3

    .line 625
    .local v3, gStr:[B
    if-eqz v3, :cond_1

    .line 626
    array-length v2, v3

    .line 627
    .local v2, gLen:I
    if-lez v2, :cond_1

    .line 628
    new-array v1, v2, [I

    .line 629
    .local v1, gHexa:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 630
    aget-byte v8, v3, v5

    aput v8, v1, v5

    .line 629
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 637
    .end local v1           #gHexa:[I
    .end local v2           #gLen:I
    .end local v3           #gStr:[B
    .end local v5           #i:I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 638
    .local v7, len:I
    new-array v4, v7, [I

    .line 640
    .local v4, hexa:[I
    const/4 v6, 0x0

    .local v6, idx:I
    :goto_1
    if-ge v6, v7, :cond_2

    .line 641
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput v8, v4, v6

    .line 640
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v4

    .line 643
    .end local v4           #hexa:[I
    .end local v6           #idx:I
    .end local v7           #len:I
    :cond_3
    return-object v1
.end method

.method public static update(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "resolver"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 135
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 137
    .local v1, values:Landroid/content/ContentValues;
    sget-boolean v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->DBG:Z

    if-eqz v2, :cond_0

    .line 138
    const-string v2, "ECC_NOTI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write Key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    const-string v2, "dtt_code"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "030708090B0C0E0F24405B5C5D5E5F601C1D1E1F1012131415161718191A"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ECC Noti Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_1
    const-string v2, "dtt_digit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "897023415618307564290729486153"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ECC Noti Digit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_2
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v2, Lcom/android/internal/telephony/gsm/LGEccNoti;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, result:I
    return v0
.end method
