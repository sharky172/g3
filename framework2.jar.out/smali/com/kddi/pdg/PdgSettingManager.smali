.class public final Lcom/kddi/pdg/PdgSettingManager;
.super Ljava/lang/Object;
.source "PdgSettingManager.java"


# static fields
.field public static final DEFAULT_PRIVACY:I = 0x1

.field public static final PRIVACY_ENABLED:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "PdgSettingManager() start"

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 37
    const-string v0, "PdgSettingManager() end"

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static getBoolean(Landroid/content/Context;I)Z
    .locals 12
    .parameter "context"
    .parameter "settingType"

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean getBoolean( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 53
    const/4 v11, 0x0

    .line 54
    .local v11, ret:Z
    const/4 v7, 0x0

    .line 56
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kddi/pdg/PDG$Settings;->CONTENT_URI_READ_ONLY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 57
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 59
    .local v9, next:Z
    if-eqz v9, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    packed-switch p1, :pswitch_data_0

    .line 78
    const-string v0, "parameter error: setting type is out of range."

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v9           #next:Z
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 88
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean getBoolean() end / return = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 92
    return v11

    .line 62
    .restart local v9       #next:Z
    :pswitch_0
    :try_start_1
    const-string v0, "pdg_enable"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 63
    .local v10, pdgEnable:I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_2

    .line 64
    const/4 v11, 0x1

    goto :goto_0

    .line 66
    :cond_2
    const/4 v11, 0x0

    .line 68
    goto :goto_0

    .line 70
    .end local v10           #pdgEnable:I
    :pswitch_1
    const-string v0, "action_of_non_selected"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 71
    .local v6, actionOfNonSelected:I
    if-nez v6, :cond_3

    .line 72
    const/4 v11, 0x1

    goto :goto_0

    .line 74
    :cond_3
    const/4 v11, 0x0

    .line 76
    goto :goto_0

    .line 83
    .end local v6           #actionOfNonSelected:I
    .end local v9           #next:Z
    :catch_0
    move-exception v8

    .line 84
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    if-eqz v7, :cond_1

    goto :goto_1

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 88
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_4
    throw v0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
