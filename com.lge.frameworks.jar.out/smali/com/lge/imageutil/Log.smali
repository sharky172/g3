.class public Lcom/lge/imageutil/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "ImageUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/lge/imageutil/Log;->removeLogFile()V

    .line 21
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/imageutil/Log;->d(Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method public static d(Ljava/lang/String;Z)V
    .locals 0
    .parameter "message"
    .parameter "saveFile"

    .prologue
    .line 37
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/imageutil/Log;->e(Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method public static e(Ljava/lang/String;Z)V
    .locals 0
    .parameter "message"
    .parameter "saveFile"

    .prologue
    .line 57
    return-void
.end method

.method private static getLogDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLogFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/imageutil/Log;->getLogDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "log.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/imageutil/Log;->i(Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public static i(Ljava/lang/String;Z)V
    .locals 0
    .parameter "message"
    .parameter "saveFile"

    .prologue
    .line 77
    return-void
.end method

.method private static removeLogFile()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lge/imageutil/Log;->getLogFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 160
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/imageutil/Log;->v(Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method public static v(Ljava/lang/String;Z)V
    .locals 0
    .parameter "message"
    .parameter "saveFile"

    .prologue
    .line 97
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/imageutil/Log;->w(Ljava/lang/String;Z)V

    .line 121
    return-void
.end method

.method public static w(Ljava/lang/String;Z)V
    .locals 0
    .parameter "message"
    .parameter "saveFile"

    .prologue
    .line 117
    return-void
.end method

.method private static writeLogOnFile(Ljava/lang/String;)V
    .locals 8
    .parameter "str"

    .prologue
    .line 125
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/lge/imageutil/Log;->getLogDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/lge/imageutil/Log;->getLogFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v4, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 129
    .local v0, bfw:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 132
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 133
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    .end local v0           #bfw:Ljava/io/BufferedWriter;
    .local v1, bfw:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 145
    if-eqz v1, :cond_4

    .line 146
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v0, v1

    .line 153
    .end local v1           #bfw:Ljava/io/BufferedWriter;
    .restart local v0       #bfw:Ljava/io/BufferedWriter;
    :cond_2
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v3

    .line 138
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v5, "ImageUtil"

    const-string v6, "FileNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    if-eqz v0, :cond_2

    .line 146
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 148
    :catch_1
    move-exception v3

    .line 149
    .local v3, e:Ljava/io/IOException;
    const-string v5, "ImageUtil"

    const-string v6, "IOException on close()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 141
    .restart local v3       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v5, "ImageUtil"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    if-eqz v0, :cond_2

    .line 146
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 148
    :catch_3
    move-exception v3

    .line 149
    const-string v5, "ImageUtil"

    const-string v6, "IOException on close()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 145
    :goto_3
    if-eqz v0, :cond_3

    .line 146
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 152
    :cond_3
    :goto_4
    throw v5

    .line 148
    :catch_4
    move-exception v3

    .line 149
    .restart local v3       #e:Ljava/io/IOException;
    const-string v6, "ImageUtil"

    const-string v7, "IOException on close()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 148
    .end local v0           #bfw:Ljava/io/BufferedWriter;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bfw:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v3

    .line 149
    .restart local v3       #e:Ljava/io/IOException;
    const-string v5, "ImageUtil"

    const-string v6, "IOException on close()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v3           #e:Ljava/io/IOException;
    :cond_4
    move-object v0, v1

    .end local v1           #bfw:Ljava/io/BufferedWriter;
    .restart local v0       #bfw:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 143
    .end local v0           #bfw:Ljava/io/BufferedWriter;
    .restart local v1       #bfw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #bfw:Ljava/io/BufferedWriter;
    .restart local v0       #bfw:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 140
    .end local v0           #bfw:Ljava/io/BufferedWriter;
    .restart local v1       #bfw:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1           #bfw:Ljava/io/BufferedWriter;
    .restart local v0       #bfw:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 137
    .end local v0           #bfw:Ljava/io/BufferedWriter;
    .restart local v1       #bfw:Ljava/io/BufferedWriter;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1           #bfw:Ljava/io/BufferedWriter;
    .restart local v0       #bfw:Ljava/io/BufferedWriter;
    goto :goto_1
.end method
