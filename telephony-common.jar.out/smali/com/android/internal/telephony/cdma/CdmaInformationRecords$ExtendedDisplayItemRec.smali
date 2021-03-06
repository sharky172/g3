.class public Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedDisplayItemRec"
.end annotation


# instance fields
.field private final INFO_CHARSET:Ljava/lang/String;

.field public displayTag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field private mData:[B

.field private mLen:B


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;B)V
    .locals 1
    .parameter "tag"
    .parameter "len"

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string v0, "US-ASCII"

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->INFO_CHARSET:Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->init(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;B[B)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;B[B)V
    .locals 1
    .parameter "tag"
    .parameter "len"
    .parameter "data"

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string v0, "US-ASCII"

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->INFO_CHARSET:Ljava/lang/String;

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->init(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;B[B)V

    .line 189
    return-void
.end method

.method private init(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;B[B)V
    .locals 0
    .parameter "tag"
    .parameter "len"
    .parameter "data"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->displayTag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 195
    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mLen:B

    .line 196
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mData:[B

    .line 197
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mData:[B

    return-object v0
.end method

.method public getDataAsString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 202
    const/4 v4, 0x0

    .line 203
    .local v4, ret:Ljava/lang/String;
    const-string v5, "CdmaDisplayInfoRec"

    const-string v6, "getDataAsString()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mData:[B

    if-nez v5, :cond_0

    const-string v5, ""

    .line 229
    :goto_0
    return-object v5

    .line 206
    :cond_0
    const-string v5, "CTC"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->displayTag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_TEXT:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    if-eq v5, v6, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-nez v5, :cond_1

    .line 208
    const-string v5, "UTF-16"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 209
    .local v1, chs:Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 210
    .local v2, d:Ljava/nio/charset/CharsetDecoder;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mData:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 212
    .local v0, b:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    const-string v5, "CdmaDisplayInfoRec"

    const-string v6, "UTF-16 decoding success"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    .line 214
    goto :goto_0

    .line 215
    :catch_0
    move-exception v3

    .line 216
    .local v3, e:Ljava/nio/charset/CharacterCodingException;
    const-string v5, "CdmaDisplayInfoRec"

    const-string v6, "Error UTF-16 decoding"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0           #b:Ljava/nio/ByteBuffer;
    .end local v1           #chs:Ljava/nio/charset/Charset;
    .end local v2           #d:Ljava/nio/charset/CharsetDecoder;
    .end local v3           #e:Ljava/nio/charset/CharacterCodingException;
    :cond_1
    const-string v5, "US-ASCII"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 222
    .restart local v1       #chs:Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 223
    .restart local v2       #d:Ljava/nio/charset/CharsetDecoder;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mData:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 225
    .restart local v0       #b:Ljava/nio/ByteBuffer;
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_1
    move-object v5, v4

    .line 229
    goto :goto_0

    .line 226
    :catch_1
    move-exception v3

    .line 227
    .restart local v3       #e:Ljava/nio/charset/CharacterCodingException;
    const-string v5, "CdmaDisplayInfoRec"

    const-string v6, "Error decoding"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    const-string v0, ""

    .line 234
    .local v0, ret:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->displayTag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mLen:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->getDataAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    return-object v0
.end method
