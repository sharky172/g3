.class public Lcom/lge/telephony/LGPhoneNumberUtils;
.super Ljava/lang/Object;
.source "LGPhoneNumberUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LGPhoneNumberUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KRSMSextractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v5, 0x0

    .line 72
    :goto_0
    return-object v5

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 59
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 62
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 64
    .local v0, c:C
    invoke-static {v0}, Lcom/lge/telephony/LGPhoneNumberUtils;->isKRSMSDialable(C)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1

    if-nez v1, :cond_3

    .line 65
    :cond_1
    const/4 v1, 0x1

    .line 66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static KRsmsbcdToChar(B)C
    .locals 1
    .parameter "b"

    .prologue
    .line 182
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 183
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 192
    :goto_0
    return v0

    .line 185
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 192
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 187
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 188
    :pswitch_2
    const/16 v0, 0x61

    goto :goto_0

    .line 189
    :pswitch_3
    const/16 v0, 0x62

    goto :goto_0

    .line 190
    :pswitch_4
    const/16 v0, 0x63

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static KRsmscalledPartyBCDToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, prependPlus:Z
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v1, ret:Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    if-ge p2, v3, :cond_0

    .line 110
    const-string v3, ""

    .line 132
    :goto_0
    return-object v3

    .line 113
    :cond_0
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x91

    if-ne v3, v4, :cond_1

    .line 114
    const/4 v0, 0x1

    .line 117
    :cond_1
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p2, -0x1

    invoke-static {v1, p0, v3, v4}, Lcom/lge/telephony/LGPhoneNumberUtils;->KRsmsinternalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 120
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 122
    const-string v3, ""

    goto :goto_0

    .line 125
    :cond_2
    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, retString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .restart local v1       #ret:Ljava/lang/StringBuilder;
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .end local v2           #retString:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static KRsmscharToBCD(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 202
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 203
    add-int/lit8 v0, p0, -0x30

    .line 214
    :goto_0
    return v0

    .line 205
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 206
    const/16 v0, 0xa

    goto :goto_0

    .line 207
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 208
    const/16 v0, 0xb

    goto :goto_0

    .line 209
    :cond_2
    const/16 v0, 0x61

    if-ne p0, v0, :cond_3

    .line 210
    const/16 v0, 0xc

    goto :goto_0

    .line 211
    :cond_3
    const/16 v0, 0x62

    if-ne p0, v0, :cond_4

    .line 212
    const/16 v0, 0xd

    goto :goto_0

    .line 213
    :cond_4
    const/16 v0, 0x63

    if-ne p0, v0, :cond_5

    .line 214
    const/16 v0, 0xe

    goto :goto_0

    .line 216
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static KRsmsinternalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .parameter "sb"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 141
    move v2, p2

    .local v2, i:I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    .line 145
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/lge/telephony/LGPhoneNumberUtils;->KRsmsbcdToChar(B)C

    move-result v1

    .line 147
    .local v1, c:C
    if-nez v1, :cond_1

    .line 172
    .end local v1           #c:C
    :cond_0
    return-void

    .line 150
    .restart local v1       #c:C
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 161
    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    .line 166
    :cond_2
    invoke-static {v0}, Lcom/lge/telephony/LGPhoneNumberUtils;->KRsmsbcdToChar(B)C

    move-result v1

    .line 167
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static KRsmsnetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 236
    invoke-static {p0}, Lcom/lge/telephony/LGPhoneNumberUtils;->KRSMSextractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGPhoneNumberUtils;->KRsmsnumberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static KRsmsnumberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .parameter "number"

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/telephony/LGPhoneNumberUtils;->KRsmsnumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static KRsmsnumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 15
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 259
    if-nez p0, :cond_0

    .line 260
    const-string v12, "LGPhoneNumberUtils"

    const-string v13, "KRsmsnumberToCalledPartyBCDHelper : number is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v9, 0x0

    .line 306
    :goto_0
    return-object v9

    .line 264
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 265
    .local v6, numberLenReal:I
    move v5, v6

    .line 266
    .local v5, numberLenEffective:I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    const/4 v3, 0x1

    .line 267
    .local v3, hasPlus:Z
    :goto_1
    if-eqz v3, :cond_1

    .line 268
    add-int/lit8 v5, v5, -0x1

    .line 271
    :cond_1
    if-nez v5, :cond_3

    .line 272
    const/4 v9, 0x0

    goto :goto_0

    .line 266
    .end local v3           #hasPlus:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 275
    .restart local v3       #hasPlus:Z
    :cond_3
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 276
    .local v10, resultLen:I
    const/4 v2, 0x1

    .line 277
    .local v2, extraBytes:I
    if-eqz p1, :cond_4

    .line 278
    add-int/lit8 v2, v2, 0x1

    .line 280
    :cond_4
    add-int/2addr v10, v2

    .line 282
    new-array v9, v10, [B

    .line 284
    .local v9, result:[B
    const/4 v1, 0x0

    .line 285
    .local v1, digitCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v6, :cond_7

    .line 286
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 287
    .local v0, c:C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_5

    .line 285
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 290
    :cond_5
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    const/4 v11, 0x4

    .line 291
    .local v11, shift:I
    :goto_4
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Lcom/lge/telephony/LGPhoneNumberUtils;->KRsmscharToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 290
    .end local v11           #shift:I
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 296
    .end local v0           #c:C
    :cond_7
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    .line 297
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 300
    :cond_8
    const/4 v7, 0x0

    .line 301
    .local v7, offset:I
    if-eqz p1, :cond_9

    .line 302
    add-int/lit8 v8, v7, 0x1

    .end local v7           #offset:I
    .local v8, offset:I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 304
    .end local v8           #offset:I
    .restart local v7       #offset:I
    :cond_9
    if-eqz v3, :cond_a

    const/16 v12, 0x91

    :goto_5
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_0

    :cond_a
    const/16 v12, 0x81

    goto :goto_5
.end method

.method public static final isKRSMSDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 28
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x61

    if-eq p0, v0, :cond_1

    const/16 v0, 0x62

    if-eq p0, v0, :cond_1

    const/16 v0, 0x63

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
