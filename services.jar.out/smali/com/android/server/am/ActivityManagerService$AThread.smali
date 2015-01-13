.class Lcom/android/server/am/ActivityManagerService$AThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AThread"
.end annotation


# instance fields
.field mLooper:Landroid/os/Looper;

.field mReady:Z

.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1921
    const-string v0, "ActivityManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1918
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z

    .line 1922
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1926
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1928
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1930
    invoke-static {v6}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 1932
    const/4 v4, 0x0

    .line 1936
    .local v4, m:Lcom/android/server/am/ActivityManagerService;
    :try_start_0
    const-string v5, "com.android.server.am.ActivityManagerServiceEx"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1938
    .local v1, c:Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 1939
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1940
    .local v2, constructor:Ljava/lang/reflect/Constructor;
    if-eqz v2, :cond_0

    .line 1941
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    .line 1942
    const-string v5, "ActivityManager"

    const-string v6, "new ActivityManagerServiceEx"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1950
    .end local v1           #c:Ljava/lang/Class;
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 1951
    const-string v5, "ActivityManager"

    const-string v6, "new ActivityManagerService"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    new-instance v4, Lcom/android/server/am/ActivityManagerService;

    .end local v4           #m:Lcom/android/server/am/ActivityManagerService;
    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService;-><init>()V

    .line 1955
    .restart local v4       #m:Lcom/android/server/am/ActivityManagerService;
    :cond_1
    monitor-enter p0

    .line 1956
    :try_start_1
    iput-object v4, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1957
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mLooper:Landroid/os/Looper;

    .line 1958
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    new-instance v6, Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mLooper:Landroid/os/Looper;

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 1959
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1960
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1962
    monitor-enter p0

    .line 1963
    :goto_1
    :try_start_2
    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v5, :cond_2

    .line 1965
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1966
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1945
    :catch_1
    move-exception v3

    .line 1946
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "ActivityManager"

    const-string v6, "Error while loading LGActivityManagerService"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1947
    const/4 v4, 0x0

    goto :goto_0

    .line 1960
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 1969
    :cond_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1972
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1973
    const-string v5, "ActivityManager"

    const-string v6, "Enabled StrictMode logging for AThread\'s Looper"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1977
    return-void

    .line 1969
    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5
.end method
