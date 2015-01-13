.class public Lcom/android/server/location/LgeGpsCert;
.super Ljava/lang/Object;
.source "LgeGpsCert.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "LgeGpsCert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I
    .locals 4
    .parameter "principal"
    .parameter "algorithm"

    .prologue
    .line 150
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 151
    .local v0, digest:[B
    const/4 v2, 0x0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v3}, Lcom/android/server/location/LgeGpsCert;->peekInt([BILjava/nio/ByteOrder;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 152
    .end local v0           #digest:[B
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 114
    const-string v1, "MD5"

    invoke-static {p1, v1}, Lcom/android/server/location/LgeGpsCert;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, hash:I
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/android/server/location/LgeGpsCert;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static intToHexString(IZI)Ljava/lang/String;
    .locals 8
    .parameter "i"
    .parameter "upperCase"
    .parameter "minWidth"

    .prologue
    const/16 v6, 0x24

    .line 119
    const/16 v3, 0x8

    .line 120
    .local v3, bufLen:I
    new-array v2, v3, [C

    .line 121
    .local v2, buf:[C
    move v4, v3

    .line 126
    .local v4, cursor:I
    new-array v0, v6, [C

    fill-array-data v0, :array_0

    .line 133
    .local v0, DIGITS:[C
    new-array v1, v6, [C

    fill-array-data v1, :array_1

    .line 140
    .local v1, UPPER_CASE_DIGITS:[C
    if-eqz p1, :cond_1

    move-object v5, v1

    .line 142
    .local v5, digits:[C
    :cond_0
    :goto_0
    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v6, p0, 0xf

    aget-char v6, v5, v6

    aput-char v6, v2, v4

    .line 143
    ushr-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    sub-int v6, v3, v4

    if-lt v6, p2, :cond_0

    .line 145
    new-instance v6, Ljava/lang/String;

    sub-int v7, v3, v4

    invoke-direct {v6, v2, v4, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    .end local v5           #digits:[C
    :cond_1
    move-object v5, v0

    .line 140
    goto :goto_0

    .line 126
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data

    .line 133
    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data
.end method

.method private static peekInt([BILjava/nio/ByteOrder;)I
    .locals 3
    .parameter "src"
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 158
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v1, :cond_0

    .line 159
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    move p1, v0

    .line 164
    .end local v0           #offset:I
    .restart local p1
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    move p1, v0

    .end local v0           #offset:I
    .restart local p1
    goto :goto_0
.end method

.method private readCert(Ljava/lang/String;)[B
    .locals 8
    .parameter "filePath"

    .prologue
    .line 172
    const/4 v2, 0x0

    .line 177
    .local v2, certData:[B
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 178
    .local v3, cf:Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 179
    .local v0, caInput:Ljava/io/InputStream;
    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 181
    .local v1, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 182
    const-string v6, "LgeGpsCert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cert size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_0

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0           #caInput:Ljava/io/InputStream;
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #cf:Ljava/security/cert/CertificateFactory;
    :goto_1
    return-object v2

    .line 182
    .restart local v0       #caInput:Ljava/io/InputStream;
    .restart local v1       #cert:Ljava/security/cert/X509Certificate;
    .restart local v3       #cf:Ljava/security/cert/CertificateFactory;
    :cond_0
    const-string v5, "null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v0           #caInput:Ljava/io/InputStream;
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #cf:Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v4

    .line 187
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private writeCert([BLjava/lang/String;)V
    .locals 6
    .parameter "data"
    .parameter "filename"

    .prologue
    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/test/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, filePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 197
    .local v0, caOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    .end local v0           #caOut:Ljava/io/FileOutputStream;
    .local v1, caOut:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 199
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 204
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 209
    .end local v1           #caOut:Ljava/io/FileOutputStream;
    .restart local v0       #caOut:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 205
    .end local v0           #caOut:Ljava/io/FileOutputStream;
    .restart local v1       #caOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 206
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 208
    .end local v1           #caOut:Ljava/io/FileOutputStream;
    .restart local v0       #caOut:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 200
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 201
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 205
    :catch_2
    move-exception v2

    .line 206
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 204
    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 207
    :cond_2
    :goto_3
    throw v4

    .line 205
    :catch_3
    move-exception v2

    .line 206
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 203
    .end local v0           #caOut:Ljava/io/FileOutputStream;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #caOut:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #caOut:Ljava/io/FileOutputStream;
    .restart local v0       #caOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 200
    .end local v0           #caOut:Ljava/io/FileOutputStream;
    .restart local v1       #caOut:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #caOut:Ljava/io/FileOutputStream;
    .restart local v0       #caOut:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public getCertFromAndroid(Ljava/lang/String;I)[B
    .locals 17
    .parameter "url"
    .parameter "port"

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, certData:[B
    const/4 v11, 0x0

    .line 61
    .local v11, socket:Ljavax/net/ssl/SSLSocket;
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v10

    .line 62
    .local v10, sf:Ljavax/net/SocketFactory;
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v11, v0

    .line 64
    if-nez v11, :cond_1

    .line 65
    const-string v13, "LgeGpsCert"

    const-string v14, "failed to create socket"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    const/4 v13, 0x0

    .line 102
    if-eqz v11, :cond_0

    .line 103
    :try_start_1
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .end local v10           #sf:Ljavax/net/SocketFactory;
    :cond_0
    :goto_0
    return-object v13

    .line 105
    .restart local v10       #sf:Ljavax/net/SocketFactory;
    :catch_0
    move-exception v12

    .line 106
    .local v12, x:Ljava/lang/Exception;
    const-string v14, "LgeGpsCert"

    const-string v15, "exception while socket close"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v12           #x:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 70
    .local v6, hv:Ljavax/net/ssl/HostnameVerifier;
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    .line 73
    .local v9, s:Ljavax/net/ssl/SSLSession;
    move-object/from16 v0, p1

    invoke-interface {v6, v0, v9}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 74
    new-instance v13, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    .end local v6           #hv:Ljavax/net/ssl/HostnameVerifier;
    .end local v9           #s:Ljavax/net/ssl/SSLSession;
    .end local v10           #sf:Ljavax/net/SocketFactory;
    :catch_1
    move-exception v5

    .line 99
    .local v5, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    if-eqz v11, :cond_2

    .line 103
    :try_start_4
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    :goto_1
    move-object v13, v2

    .line 110
    goto :goto_0

    .line 82
    .restart local v6       #hv:Ljavax/net/ssl/HostnameVerifier;
    .restart local v9       #s:Ljavax/net/ssl/SSLSession;
    .restart local v10       #sf:Ljavax/net/SocketFactory;
    :cond_3
    :try_start_5
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v13

    invoke-interface {v13}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v8

    .line 85
    .local v8, peerCertificates:[Ljavax/security/cert/X509Certificate;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v13, v8

    if-ge v7, v13, :cond_4

    .line 86
    const-string v13, "LgeGpsCert"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SubjectDN="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v8, v7

    invoke-virtual {v15}, Ljavax/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v13, "LgeGpsCert"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "issuerDN="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v8, v7

    invoke-virtual {v15}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v13, "LgeGpsCert"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hash="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljavax/security/auth/x500/X500Principal;

    aget-object v16, v8, v7

    invoke-virtual/range {v16 .. v16}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/location/LgeGpsCert;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 91
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljavax/security/auth/x500/X500Principal;

    array-length v15, v8

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v8, v15

    invoke-virtual {v15}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/location/LgeGpsCert;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, certName:Ljava/lang/String;
    const-string v13, "LgeGpsCert"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cert="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/system/etc/security/cacerts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, certPath:Ljava/lang/String;
    const-string v13, "LgeGpsCert"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fullpath"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/location/LgeGpsCert;->readCert(Ljava/lang/String;)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    .line 102
    if-eqz v11, :cond_2

    .line 103
    :try_start_6
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 105
    :catch_2
    move-exception v12

    .line 106
    .restart local v12       #x:Ljava/lang/Exception;
    const-string v13, "LgeGpsCert"

    const-string v14, "exception while socket close"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 105
    .end local v3           #certName:Ljava/lang/String;
    .end local v4           #certPath:Ljava/lang/String;
    .end local v6           #hv:Ljavax/net/ssl/HostnameVerifier;
    .end local v7           #i:I
    .end local v8           #peerCertificates:[Ljavax/security/cert/X509Certificate;
    .end local v9           #s:Ljavax/net/ssl/SSLSession;
    .end local v10           #sf:Ljavax/net/SocketFactory;
    .end local v12           #x:Ljava/lang/Exception;
    .restart local v5       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v12

    .line 106
    .restart local v12       #x:Ljava/lang/Exception;
    const-string v13, "LgeGpsCert"

    const-string v14, "exception while socket close"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 101
    .end local v5           #e:Ljava/lang/Exception;
    .end local v12           #x:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 102
    if-eqz v11, :cond_5

    .line 103
    :try_start_7
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 107
    :cond_5
    :goto_3
    throw v13

    .line 105
    :catch_4
    move-exception v12

    .line 106
    .restart local v12       #x:Ljava/lang/Exception;
    const-string v14, "LgeGpsCert"

    const-string v15, "exception while socket close"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
