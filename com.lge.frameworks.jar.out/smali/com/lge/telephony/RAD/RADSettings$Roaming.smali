.class public final Lcom/lge/telephony/RAD/RADSettings$Roaming;
.super Ljava/lang/Object;
.source "RADSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/RAD/RADSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Roaming"
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "uplusroaming"

.field public static final RAD_LGT_CONTENT_URI:Landroid/net/Uri;

.field public static final RAD_LGT_CONTENT_URI_ID:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "content://uplusroaming/roaming"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/RAD/RADSettings$Roaming;->RAD_LGT_CONTENT_URI:Landroid/net/Uri;

    .line 35
    const-string v0, "content://uplusroaming/roaming/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/RAD/RADSettings$Roaming;->RAD_LGT_CONTENT_URI_ID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoUpdate(Landroid/content/ContentResolver;)Z
    .locals 9
    .parameter "cr"

    .prologue
    const/4 v2, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    .local v6, autoupdate:Z
    sget-object v1, Lcom/lge/telephony/RAD/RADSettings$Roaming;->RAD_LGT_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 48
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 49
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 50
    const-string v0, "1"

    const-string v1, "autoupdate"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 59
    :cond_0
    if-eqz v7, :cond_1

    .line 60
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_1
    return v6

    .line 53
    :catch_0
    move-exception v8

    .line 55
    .local v8, e:Ljava/lang/Exception;
    if-nez v7, :cond_2

    .line 56
    :try_start_1
    const-string v0, "LGProvider"

    const-string v1, "LGProvider.Roaming.getAutoUpdate - cursor null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_2
    if-eqz v7, :cond_1

    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 60
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_3
    throw v0
.end method

.method public static getIntCode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "cr"

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v8, szRoaming:Ljava/lang/StringBuffer;
    sget-object v1, Lcom/lge/telephony/RAD/RADSettings$Roaming;->RAD_LGT_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 70
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 71
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    const-string v0, "radialnumber"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    if-eqz v6, :cond_1

    .line 82
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :catch_0
    move-exception v7

    .line 76
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "00"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    if-nez v6, :cond_2

    .line 78
    const-string v0, "LGProvider"

    const-string v1, "LGProvider.Roaming.getIntCode - cursor null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :cond_2
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_3
    throw v0
.end method

.method public static getNatCode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "cr"

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v8, szRoaming:Ljava/lang/StringBuffer;
    sget-object v1, Lcom/lge/telephony/RAD/RADSettings$Roaming;->RAD_LGT_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 98
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    const-string v0, "countrynumber"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    if-eqz v6, :cond_1

    .line 109
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :catch_0
    move-exception v7

    .line 103
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "82"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    if-nez v6, :cond_2

    .line 105
    const-string v0, "LGProvider"

    const-string v1, "LGProvider.Roaming.getNatCode - cursor null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_2
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 109
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_3
    throw v0
.end method
