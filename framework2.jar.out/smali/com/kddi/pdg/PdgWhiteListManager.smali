.class public final Lcom/kddi/pdg/PdgWhiteListManager;
.super Ljava/lang/Object;
.source "PdgWhiteListManager.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "PdgWhiteListManager() start"

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 32
    const-string v0, "PdgWhiteListManager() end"

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static contain(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean contain( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 49
    :cond_0
    const-string v0, "parameter error: package_name is not set."

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 50
    const-string v0, "boolean contain() end / return = false"

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 51
    const/4 v9, 0x0

    .line 78
    :goto_0
    return v9

    .line 54
    :cond_1
    const/4 v9, 0x0

    .line 55
    .local v9, ret:Z
    const/4 v6, 0x0

    .line 57
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kddi/pdg/PDG$WhiteList;->CONTENT_URI_READ_ONLY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 58
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 59
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 60
    .local v8, next:Z
    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    const-string v0, "packagename"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, whiteListPackage:Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    const/4 v9, 0x1

    .line 73
    .end local v8           #next:Z
    .end local v10           #whiteListPackage:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 74
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean contain() end / return = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .restart local v8       #next:Z
    .restart local v10       #whiteListPackage:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 69
    .end local v8           #next:Z
    .end local v10           #whiteListPackage:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 70
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    if-eqz v6, :cond_3

    goto :goto_2

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_5
    throw v0
.end method
