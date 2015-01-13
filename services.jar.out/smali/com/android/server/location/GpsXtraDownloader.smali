.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private mXtraServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 8
    .parameter "context"
    .parameter "properties"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, count:I
    const-string v6, "XTRA_SERVER_1"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, server1:Ljava/lang/String;
    const-string v6, "XTRA_SERVER_2"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, server2:Ljava/lang/String;
    const-string v6, "XTRA_SERVER_3"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, server3:Ljava/lang/String;
    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 67
    :cond_0
    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 68
    :cond_1
    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 70
    :cond_2
    if-nez v0, :cond_3

    .line 71
    const-string v6, "GpsXtraDownloader"

    const-string v7, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 74
    :cond_3
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .line 76
    if-eqz v3, :cond_6

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    aput-object v3, v6, v0

    .line 77
    :goto_1
    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aput-object v4, v6, v1

    move v1, v0

    .line 78
    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_4
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aput-object v5, v6, v1

    .line 81
    :goto_2
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 82
    .local v2, random:Ljava/util/Random;
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_0

    .end local v0           #count:I
    .end local v2           #random:Ljava/util/Random;
    .restart local v1       #count:I
    :cond_5
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_2

    :cond_6
    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_1
.end method

.method protected static doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .locals 20
    .parameter "url"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"

    .prologue
    .line 117
    const/4 v4, 0x0

    .line 122
    .local v4, client:Landroid/net/http/AndroidHttpClient;
    const/4 v9, 0x0

    .line 123
    .local v9, lgeConst:Ljava/lang/Object;
    const/4 v15, 0x0

    .line 125
    .local v15, userAgent:Ljava/lang/String;
    :try_start_0
    const-string v16, "com.android.server.location.LgeGpsConstants"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 126
    .local v3, c:Ljava/lang/Class;
    if-eqz v3, :cond_0

    .line 127
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 128
    .local v5, constructor:Ljava/lang/reflect/Constructor;
    if-eqz v5, :cond_0

    .line 129
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 131
    const-string v16, "getXTRAUserAgent"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 132
    .local v10, m:Ljava/lang/reflect/Method;
    if-eqz v10, :cond_0

    .line 133
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    move-object v15, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v3           #c:Ljava/lang/Class;
    .end local v5           #constructor:Ljava/lang/reflect/Constructor;
    .end local v9           #lgeConst:Ljava/lang/Object;
    .end local v10           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-nez v9, :cond_3

    :try_start_1
    const-string v16, "Android"

    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    .line 147
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 149
    .local v12, req:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p1, :cond_1

    .line 150
    new-instance v11, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v11, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 151
    .local v11, proxy:Lorg/apache/http/HttpHost;
    invoke-interface {v12}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 154
    .end local v11           #proxy:Lorg/apache/http/HttpHost;
    :cond_1
    const-string v16, "Accept"

    const-string v17, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v16, "x-wap-profile"

    const-string v17, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v4, v12}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 163
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    .line 164
    .local v14, status:Lorg/apache/http/StatusLine;
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 166
    const/4 v2, 0x0

    .line 196
    if-eqz v4, :cond_2

    .line 197
    :goto_2
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 200
    .end local v12           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #status:Lorg/apache/http/StatusLine;
    :cond_2
    :goto_3
    return-object v2

    .line 139
    :catch_0
    move-exception v7

    .line 140
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v16, "GpsXtraDownloader"

    const-string v17, "Error while loading LgeGpsConstants."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/4 v9, 0x0

    .restart local v9       #lgeConst:Ljava/lang/Object;
    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #lgeConst:Ljava/lang/Object;
    :cond_3
    move-object/from16 v16, v15

    .line 143
    goto :goto_1

    .line 169
    .restart local v12       #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #status:Lorg/apache/http/StatusLine;
    :cond_4
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 170
    .local v8, entity:Lorg/apache/http/HttpEntity;
    const/4 v2, 0x0

    .line 171
    .local v2, body:[B
    if-eqz v8, :cond_6

    .line 173
    :try_start_3
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_5

    .line 174
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 175
    new-instance v6, Ljava/io/DataInputStream;

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    .local v6, dis:Ljava/io/DataInputStream;
    :try_start_4
    invoke-virtual {v6, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 187
    .end local v6           #dis:Ljava/io/DataInputStream;
    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    .line 188
    :try_start_6
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 196
    :cond_6
    if-eqz v4, :cond_2

    goto :goto_2

    .line 179
    .restart local v6       #dis:Ljava/io/DataInputStream;
    :catchall_0
    move-exception v16

    .line 180
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 179
    :goto_5
    :try_start_8
    throw v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 187
    .end local v6           #dis:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v16

    if-eqz v8, :cond_7

    .line 188
    :try_start_9
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 187
    :cond_7
    throw v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 193
    .end local v2           #body:[B
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #status:Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v16

    .line 196
    if-eqz v4, :cond_8

    .line 197
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 200
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 196
    :catchall_2
    move-exception v16

    if-eqz v4, :cond_9

    .line 197
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 196
    :cond_9
    throw v16

    .line 181
    .restart local v2       #body:[B
    .restart local v6       #dis:Ljava/io/DataInputStream;
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    .restart local v12       #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #status:Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v7

    .line 182
    .local v7, e:Ljava/io/IOException;
    :try_start_a
    const-string v17, "GpsXtraDownloader"

    const-string v18, "Unexpected IOException."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 181
    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 182
    .restart local v7       #e:Ljava/io/IOException;
    const-string v16, "GpsXtraDownloader"

    const-string v17, "Unexpected IOException."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4
.end method


# virtual methods
.method downloadXtraData()[B
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 87
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, proxyHost:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 89
    .local v1, proxyPort:I
    if-eqz v0, :cond_0

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    const/4 v4, 0x1

    .line 90
    .local v4, useProxy:Z
    :goto_0
    const/4 v2, 0x0

    .line 91
    .local v2, result:[B
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 93
    .local v3, startIndex:I
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 94
    const/4 v5, 0x0

    .line 110
    :goto_1
    return-object v5

    .end local v2           #result:[B
    .end local v3           #startIndex:I
    .end local v4           #useProxy:Z
    :cond_0
    move v4, v5

    .line 89
    goto :goto_0

    .line 98
    .restart local v2       #result:[B
    .restart local v3       #startIndex:I
    .restart local v4       #useProxy:Z
    :cond_1
    if-nez v2, :cond_3

    .line 99
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v6, v6, v7

    invoke-static {v6, v4, v0, v1}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    .line 102
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 103
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v7, v7

    if-ne v6, v7, :cond_2

    .line 104
    iput v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 107
    :cond_2
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v6, v3, :cond_1

    :cond_3
    move-object v5, v2

    .line 110
    goto :goto_1
.end method
