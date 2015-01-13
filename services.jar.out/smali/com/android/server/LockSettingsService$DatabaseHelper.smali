.class Lcom/android/server/LockSettingsService$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    .line 442
    const-string v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 444
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 447
    const-string v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private initializeDefaults(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 463
    const-string v1, "ro.lockscreen.disable.default"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 465
    .local v0, lockScreenDisable:Z
    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    const-string v2, "lockscreen.disabled"

    const-string v3, "1"

    #calls: Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 468
    :cond_0
    return-void
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IZ)V
    .locals 4
    .parameter "db"
    .parameter "key"
    .parameter "userId"
    .parameter "value"

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v1, "INSERT OR REPLACE INTO locksettings(name,user,value) VALUES(?,?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 503
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 504
    const/4 v1, 0x2

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 505
    const/4 v3, 0x3

    if-eqz p4, :cond_1

    const-wide/16 v1, 0x1

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 506
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 510
    :cond_0
    return-void

    .line 505
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_2
    throw v1
.end method

.method private maybeEnableWidgetSettingForUsers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    .line 486
    iget-object v6, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    #getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 487
    .local v3, um:Landroid/os/UserManager;
    iget-object v6, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    #getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 488
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 489
    .local v5, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 490
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .line 491
    .local v4, userId:I
    iget-object v6, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    iget-object v6, v6, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->hasWidgetsEnabledInKeyguard(I)Z

    move-result v1

    .line 492
    .local v1, enabled:Z
    const-string v6, "LockSettingsDB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Widget upgrade uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", w[]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    iget-object v8, v8, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v6, "lockscreen.widgets_enabled"

    invoke-direct {p0, p1, v6, v4, v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IZ)V

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v1           #enabled:Z
    .end local v4           #userId:I
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 458
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->initializeDefaults(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 459
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 472
    move v0, p2

    .line 473
    .local v0, upgradeVersion:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 476
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->maybeEnableWidgetSettingForUsers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 477
    const/4 v0, 0x2

    .line 480
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 481
    const-string v1, "LockSettingsDB"

    const-string v2, "Failed to upgrade database!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_1
    return-void
.end method
