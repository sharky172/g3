.class Lcom/android/server/WallpaperManagerServiceEx;
.super Lcom/android/server/WallpaperManagerService;
.source "WallpaperManagerServiceEx.java"

# interfaces
.implements Landroid/app/IWallpaperManagerEx;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mFixedTypeSuccess:Z

.field private static mIsFixedWallpaperType:Z

.field private static mWallpaperPrefPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    const-class v0, Lcom/android/server/WallpaperManagerServiceEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    .line 30
    sput-boolean v1, Lcom/android/server/WallpaperManagerServiceEx;->mIsFixedWallpaperType:Z

    .line 31
    sput-boolean v1, Lcom/android/server/WallpaperManagerServiceEx;->mFixedTypeSuccess:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerServiceEx;->getWallpaperPrefPath()Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerServiceEx;->restorePreviousWallpaperType()V

    .line 38
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerServiceEx;->loadWallpaperType()V

    .line 39
    return-void
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1
    .parameter "userId"

    .prologue
    .line 153
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperPrefPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/WallpaperManagerServiceEx;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wallpaper_pref.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WallpaperManagerServiceEx;->mWallpaperPrefPath:Ljava/lang/String;

    return-object v0
.end method

.method private loadWallpaperType()V
    .locals 11

    .prologue
    .line 108
    const/4 v3, 0x0

    .line 109
    .local v3, stream:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 110
    .local v5, success:Z
    const/4 v1, 0x0

    .line 112
    .local v1, isFixedWallpaperType:Z
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v8, Lcom/android/server/WallpaperManagerServiceEx;->mWallpaperPrefPath:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 113
    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v4, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 114
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 119
    .local v7, type:I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 120
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, tag:Ljava/lang/String;
    const-string v8, "wp"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 122
    const/4 v8, 0x0

    const-string v9, "fixed"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v1

    .line 125
    .end local v6           #tag:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 126
    const/4 v5, 0x1

    move-object v3, v4

    .line 139
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :goto_0
    sput-boolean v5, Lcom/android/server/WallpaperManagerServiceEx;->mFixedTypeSuccess:Z

    .line 142
    if-eqz v3, :cond_2

    .line 143
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 149
    :cond_2
    :goto_1
    sput-boolean v1, Lcom/android/server/WallpaperManagerServiceEx;->mIsFixedWallpaperType:Z

    .line 150
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_2
    sget-object v8, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_3
    sget-object v8, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 132
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    sget-object v8, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 134
    .local v0, e:Ljava/io/IOException;
    :goto_5
    sget-object v8, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    sget-object v8, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v8

    goto/16 :goto_1

    .line 135
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 133
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 131
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 129
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 127
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private restorePreviousWallpaperType()V
    .locals 12

    .prologue
    .line 161
    const-string v0, "/data/system/wallpaper_prefs.xml"

    .line 163
    .local v0, OLD_WALLPAPER_PREF:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/system/wallpaper_prefs.xml"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v3, oldPref:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 214
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v5, 0x0

    .line 172
    .local v5, stream:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 174
    .local v2, isFixedType:Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v9, "/data/system/wallpaper_prefs.xml"

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 175
    .end local v5           #stream:Ljava/io/FileInputStream;
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 176
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v4, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 180
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 181
    .local v8, type:I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 182
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, tag:Ljava/lang/String;
    const-string v9, "wp"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 184
    const/4 v9, 0x0

    const-string v10, "fixed"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v2

    .end local v7           #tag:Ljava/lang/String;
    :goto_1
    move-object v5, v6

    .line 202
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v8           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :goto_2
    if-eqz v5, :cond_2

    .line 203
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 209
    :cond_2
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 210
    sget-object v9, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    const-string v10, "Old preference file is deleted!!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/WallpaperManagerServiceEx;->setWallpaperType(Z)V

    goto :goto_0

    .line 188
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    .restart local v8       #type:I
    :cond_4
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    goto :goto_1

    .line 189
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v8           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_4
    sget-object v9, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 191
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_5
    sget-object v9, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 193
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 194
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    sget-object v9, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 195
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v1

    .line 196
    .local v1, e:Ljava/io/IOException;
    :goto_7
    sget-object v9, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 197
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 198
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_8
    sget-object v9, Lcom/android/server/WallpaperManagerServiceEx;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 205
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v9

    goto/16 :goto_3

    .line 197
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_8

    .line 195
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 193
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 191
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 189
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method


# virtual methods
.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 4
    .parameter "componentName"
    .parameter "force"
    .parameter "fromUser"
    .parameter "wallpaper"
    .parameter "reply"

    .prologue
    .line 52
    invoke-super/range {p0 .. p5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    .line 54
    .local v0, bind:Z
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p4, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 56
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/WallpaperManagerServiceEx;->setWallpaperType(Z)V

    .line 61
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_0
    return v0
.end method

.method public getWallpaperType()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/server/WallpaperManagerServiceEx;->mIsFixedWallpaperType:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/IWallpaperManagerEx$Stub;->onTransasct(Landroid/app/IWallpaperManagerEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 67
    .local v0, handled:Z
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IWallpaperManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWallpaperType(Z)V
    .locals 7
    .parameter "isFixedWallpaperType"

    .prologue
    const/4 v6, -0x1

    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, stream:Ljava/io/FileOutputStream;
    sput-boolean p1, Lcom/android/server/WallpaperManagerServiceEx;->mIsFixedWallpaperType:Z

    .line 75
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/android/server/WallpaperManagerServiceEx;->mWallpaperPrefPath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .end local v1           #stream:Ljava/io/FileOutputStream;
    .local v2, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 77
    .local v0, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v3, "utf-8"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 78
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 80
    const/4 v3, 0x0

    const-string v4, "wp"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    const/4 v3, 0x0

    const-string v4, "fixed"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    const/4 v3, 0x0

    const-string v4, "wp"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 88
    if-eqz v2, :cond_0

    .line 89
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 95
    .end local v0           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/server/WallpaperManagerServiceEx;->mWallpaperPrefPath:Ljava/lang/String;

    const/16 v4, 0x1b4

    invoke-static {v3, v4, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 100
    return-void

    .line 91
    .end local v1           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 94
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 85
    .end local v0           #out:Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v3

    .line 88
    :goto_1
    if-eqz v1, :cond_1

    .line 89
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 91
    :catch_2
    move-exception v3

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v3

    .line 88
    :goto_2
    if-eqz v1, :cond_2

    .line 89
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 93
    :cond_2
    :goto_3
    throw v3

    .line 91
    :catch_3
    move-exception v4

    goto :goto_3

    .line 87
    .end local v1           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 85
    .end local v1           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .parameter "userId"
    .parameter "reply"

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/android/server/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 45
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerServiceEx;->getWallpaperPrefPath()Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerServiceEx;->loadWallpaperType()V

    .line 47
    return-void
.end method
