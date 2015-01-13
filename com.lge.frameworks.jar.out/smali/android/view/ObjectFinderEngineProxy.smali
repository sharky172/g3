.class public Landroid/view/ObjectFinderEngineProxy;
.super Ljava/lang/Object;
.source "ObjectFinderEngineProxy.java"

# interfaces
.implements Landroid/view/ViewRootImpl$IObjectFinderEngineProxy;


# static fields
.field private static final BASE64_ENCODED_CLAYBOX_CERTIFICATE:Ljava/lang/String; = "MIIDJDCCAgygAwIBAgIET9A5qzANBgkqhkiG9w0BAQUFADBTMQswCQYDVQQGEwJrbzEMMAoGA1UECBMDbGdlMQwwCgYDVQQHEwNsZ2UxDDAKBgNVBAoTA2xnZTEMMAoGA1UECxMDbGdlMQwwCgYDVQQDEwNsZ2UwIBcNMTIwNjA3MDUxODM1WhgPMjI4NjAzMjMwNTE4MzVaMFMxCzAJBgNVBAYTAmtvMQwwCgYDVQQIEwNsZ2UxDDAKBgNVBAcTA2xnZTEMMAoGA1UEChMDbGdlMQwwCgYDVQQLEwNsZ2UxDDAKBgNVBAMTA2xnZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOZe8xG85261iyweZIbTu/0oFFlTLGqCF5CRXS+jcs8eHgpEO6H07XX9gVlQ2da5SEjjJeDoEUQhDlygR/z1kSmEDwYwX/s3bDhghKpXHPkOsXIWKj7/hO76e4kPlKtck2KzhdSbjkQEktCXkRRTpNB+mlUc1BQsRFGVKCEyIEiypP0jwtR9+yLjUfsBhgI9V3EWsRP5Af0WJ07wPONgr7rZqBBWzIc3lQP1jX8jk8ycJG22+j5wlAJ5je+gdvxX4JyI9QPlDYQEsExeV8kHopjkL6bGDjmoBLP5h5Z6Q+ht2oBkRrstSm7oXGaBsBZd9Hid3Dx3FGwEixcp9BaQqZ8CAwEAATANBgkqhkiG9w0BAQUFAAOCAQEAX3grEnXhx/QapiBK0FMTRwQXnODncpM7Mqq++DiyTfRC0Yh8ARr2TySRdT8wLKH/bsgwIV/GGKArYUvvvI3bmLsKYskYO38U1PHedBvpKLVHLkTVJ0qVJHpRVPGYOaXzb82MOzxzm9Hn5rg4HQf6k4Wwl5jU8ofwczicdcf/CSQb0SnzJKZJhO1okYqanFTm5WBbb+9WoWlHyQDt7GEm3akDwVd/gdQ8LItmbPGv1gI3Yax+ww0CJVoCvkdtWwwcjCpq0Wb3q+HAEGzbQNOJHLnKBzF/bNdVne3aTkEHpTKjWxnDDms7d/nrqK+Vz2IKLt1Izy3OMvH7OlbC1UZiRA=="

.field public static CLAYBOX_OFEIMPL_PATH:Ljava/lang/String; = null

.field private static final INSTANCE:Landroid/view/ObjectFinderEngineProxy; = null

.field private static final TAG:Ljava/lang/String; = "ObjectFinderEngineProxy"

.field public static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field mExecuteMethod:Ljava/lang/reflect/Method;

.field mObjectFinderImpl:Ljava/lang/Object;

.field mRetSize:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "/data/data/com.lge.art/files/claybox/clayboxofeimpl.jar"

    sput-object v0, Landroid/view/ObjectFinderEngineProxy;->CLAYBOX_OFEIMPL_PATH:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/view/ObjectFinderEngineProxy;

    invoke-direct {v0}, Landroid/view/ObjectFinderEngineProxy;-><init>()V

    sput-object v0, Landroid/view/ObjectFinderEngineProxy;->INSTANCE:Landroid/view/ObjectFinderEngineProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/view/ObjectFinderEngineProxy;->mRetSize:[B

    .line 50
    return-void
.end method

.method public static getInstance()Landroid/view/ObjectFinderEngineProxy;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/view/ObjectFinderEngineProxy;->INSTANCE:Landroid/view/ObjectFinderEngineProxy;

    return-object v0
.end method

.method private loadImpl()V
    .locals 7

    .prologue
    .line 75
    sget-object v5, Landroid/view/ObjectFinderEngineProxy;->CLAYBOX_OFEIMPL_PATH:Ljava/lang/String;

    invoke-static {v5}, Landroid/view/ObjectFinderEngineProxy;->verifyJarFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    :try_start_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    sget-object v5, Landroid/view/ObjectFinderEngineProxy;->CLAYBOX_OFEIMPL_PATH:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 83
    .local v0, classLoader:Ljava/lang/ClassLoader;
    const-string v5, "android.view.ObjectFinderEngineImpl"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 85
    .local v1, cls:Ljava/lang/Class;
    if-eqz v1, :cond_1

    .line 86
    const-string v5, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 88
    .local v4, mainMethod:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 89
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ObjectFinderEngineProxy;->mObjectFinderImpl:Ljava/lang/Object;

    .line 93
    :cond_0
    const/4 v5, 0x4

    new-array v3, v5, [Ljava/lang/Class;

    .line 94
    .local v3, executeParamTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    .line 95
    const/4 v5, 0x1

    const-class v6, Landroid/view/View;

    aput-object v6, v3, v5

    .line 96
    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    .line 97
    const/4 v5, 0x3

    const-class v6, Ljava/io/OutputStream;

    aput-object v6, v3, v5

    .line 99
    const-string v5, "execute"

    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ObjectFinderEngineProxy;->mExecuteMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v1           #cls:Ljava/lang/Class;
    .end local v3           #executeParamTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v4           #mainMethod:Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v2

    .line 104
    .local v2, e:Ljava/lang/ClassNotFoundException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 118
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 119
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 106
    .local v2, e:Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 109
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 112
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v2

    .line 115
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private static verifyJarFile(Ljava/lang/String;)Z
    .locals 15
    .parameter "jarfile"

    .prologue
    const/4 v12, 0x0

    .line 146
    const/4 v10, 0x0

    .line 149
    .local v10, jarFile:Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v11, Ljava/util/jar/JarFile;

    invoke-direct {v11, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 151
    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .local v11, jarFile:Ljava/util/jar/JarFile;
    if-nez v11, :cond_1

    move-object v10, v11

    .line 207
    .end local v11           #jarFile:Ljava/util/jar/JarFile;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    :cond_0
    :goto_0
    return v12

    .line 155
    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .restart local v11       #jarFile:Ljava/util/jar/JarFile;
    :cond_1
    :try_start_1
    const-string v13, "classes.dex"

    invoke-virtual {v11, v13}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v9

    .line 157
    .local v9, jarEntry:Ljava/util/jar/JarEntry;
    invoke-virtual {v11, v9}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 158
    .local v8, in:Ljava/io/InputStream;
    const/16 v13, 0x400

    new-array v2, v13, [B

    .line 161
    .local v2, buffer:[B
    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v13

    if-gez v13, :cond_2

    .line 166
    :cond_3
    :try_start_2
    const-string v13, "MIIDJDCCAgygAwIBAgIET9A5qzANBgkqhkiG9w0BAQUFADBTMQswCQYDVQQGEwJrbzEMMAoGA1UECBMDbGdlMQwwCgYDVQQHEwNsZ2UxDDAKBgNVBAoTA2xnZTEMMAoGA1UECxMDbGdlMQwwCgYDVQQDEwNsZ2UwIBcNMTIwNjA3MDUxODM1WhgPMjI4NjAzMjMwNTE4MzVaMFMxCzAJBgNVBAYTAmtvMQwwCgYDVQQIEwNsZ2UxDDAKBgNVBAcTA2xnZTEMMAoGA1UEChMDbGdlMQwwCgYDVQQLEwNsZ2UxDDAKBgNVBAMTA2xnZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOZe8xG85261iyweZIbTu/0oFFlTLGqCF5CRXS+jcs8eHgpEO6H07XX9gVlQ2da5SEjjJeDoEUQhDlygR/z1kSmEDwYwX/s3bDhghKpXHPkOsXIWKj7/hO76e4kPlKtck2KzhdSbjkQEktCXkRRTpNB+mlUc1BQsRFGVKCEyIEiypP0jwtR9+yLjUfsBhgI9V3EWsRP5Af0WJ07wPONgr7rZqBBWzIc3lQP1jX8jk8ycJG22+j5wlAJ5je+gdvxX4JyI9QPlDYQEsExeV8kHopjkL6bGDjmoBLP5h5Z6Q+ht2oBkRrstSm7oXGaBsBZd9Hid3Dx3FGwEixcp9BaQqZ8CAwEAATANBgkqhkiG9w0BAQUFAAOCAQEAX3grEnXhx/QapiBK0FMTRwQXnODncpM7Mqq++DiyTfRC0Yh8ARr2TySRdT8wLKH/bsgwIV/GGKArYUvvvI3bmLsKYskYO38U1PHedBvpKLVHLkTVJ0qVJHpRVPGYOaXzb82MOzxzm9Hn5rg4HQf6k4Wwl5jU8ofwczicdcf/CSQb0SnzJKZJhO1okYqanFTm5WBbb+9WoWlHyQDt7GEm3akDwVd/gdQ8LItmbPGv1gI3Yax+ww0CJVoCvkdtWwwcjCpq0Wb3q+HAEGzbQNOJHLnKBzF/bNdVne3aTkEHpTKjWxnDDms7d/nrqK+Vz2IKLt1Izy3OMvH7OlbC1UZiRA=="

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 169
    .local v6, encoded:[B
    const-string v13, "X.509"

    invoke-static {v13}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 170
    .local v4, cf:Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 171
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 173
    .local v0, artitecert:Ljava/security/cert/Certificate;
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 174
    .local v3, certs:[Ljava/security/cert/Certificate;
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 175
    if-eqz v3, :cond_6

    .line 176
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v13, v3

    if-ge v7, v13, :cond_6

    .line 177
    aget-object v13, v3, v7

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    .line 179
    aget-object v13, v3, v7

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v13

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 181
    const-string v13, "ObjectFinderEngineProxy"

    const-string v14, "certificate compare ok!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz v11, :cond_4

    .line 183
    invoke-virtual {v11}, Ljava/util/jar/JarFile;->close()V

    .line 185
    :cond_4
    const/4 v12, 0x1

    move-object v10, v11

    .end local v11           #jarFile:Ljava/util/jar/JarFile;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    goto :goto_0

    .line 187
    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .restart local v11       #jarFile:Ljava/util/jar/JarFile;
    :cond_5
    const-string v13, "ObjectFinderEngineProxy"

    const-string v14, "certificate compare fail!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 191
    .end local v0           #artitecert:Ljava/security/cert/Certificate;
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #certs:[Ljava/security/cert/Certificate;
    .end local v4           #cf:Ljava/security/cert/CertificateFactory;
    .end local v6           #encoded:[B
    .end local v7           #i:I
    :catch_0
    move-exception v5

    .line 192
    .local v5, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    .end local v5           #e:Ljava/lang/Exception;
    :cond_6
    invoke-virtual {v11}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v10, v11

    .line 200
    .end local v2           #buffer:[B
    .end local v8           #in:Ljava/io/InputStream;
    .end local v9           #jarEntry:Ljava/util/jar/JarEntry;
    .end local v11           #jarFile:Ljava/util/jar/JarFile;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    :goto_2
    if-eqz v10, :cond_0

    .line 202
    :try_start_4
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 203
    :catch_1
    move-exception v5

    .line 204
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v5           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 196
    .restart local v5       #e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 195
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .restart local v11       #jarFile:Ljava/util/jar/JarFile;
    :catch_3
    move-exception v5

    move-object v10, v11

    .end local v11           #jarFile:Ljava/util/jar/JarFile;
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    goto :goto_3
.end method


# virtual methods
.method public execute(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 7
    .parameter "cmd"
    .parameter "view"
    .parameter "parameters"
    .parameter "ostream"

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v3, p0, Landroid/view/ObjectFinderEngineProxy;->mObjectFinderImpl:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 59
    invoke-direct {p0}, Landroid/view/ObjectFinderEngineProxy;->loadImpl()V

    .line 60
    iget-object v3, p0, Landroid/view/ObjectFinderEngineProxy;->mObjectFinderImpl:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 69
    :goto_0
    return v2

    .line 65
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/view/ObjectFinderEngineProxy;->mExecuteMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/view/ObjectFinderEngineProxy;->mObjectFinderImpl:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 66
    .local v1, retval:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 67
    .end local v1           #retval:Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected sendInt(ILjava/io/OutputStream;)V
    .locals 3
    .parameter "length"
    .parameter "ostream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Landroid/view/ObjectFinderEngineProxy;->mRetSize:[B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 129
    iget-object v0, p0, Landroid/view/ObjectFinderEngineProxy;->mRetSize:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 130
    iget-object v0, p0, Landroid/view/ObjectFinderEngineProxy;->mRetSize:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 131
    iget-object v0, p0, Landroid/view/ObjectFinderEngineProxy;->mRetSize:[B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 132
    iget-object v0, p0, Landroid/view/ObjectFinderEngineProxy;->mRetSize:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 133
    return-void
.end method

.method public sendString(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "msg"
    .parameter "ostream"

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0, v1, p2}, Landroid/view/ObjectFinderEngineProxy;->sendInt(ILjava/io/OutputStream;)V

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
