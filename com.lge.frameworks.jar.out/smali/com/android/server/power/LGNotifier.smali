.class final Lcom/android/server/power/LGNotifier;
.super Lcom/android/server/power/Notifier;
.source "LGNotifier.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mScreenOnBlockerTimeout:Ljava/lang/Runnable;

.field final mServiceAquireLock:Ljava/lang/Object;

.field private mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/ScreenOnBlocker;Landroid/view/WindowManagerPolicy;)V
    .locals 1
    .parameter "looper"
    .parameter "context"
    .parameter "batteryStats"
    .parameter "appOps"
    .parameter "suspendBlocker"
    .parameter "screenOnBlocker"
    .parameter "policy"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p7}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/ScreenOnBlocker;Landroid/view/WindowManagerPolicy;)V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LGNotifier;->mServiceAquireLock:Ljava/lang/Object;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/LGNotifier;->mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;

    .line 24
    new-instance v0, Lcom/android/server/power/LGNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/LGNotifier$1;-><init>(Lcom/android/server/power/LGNotifier;)V

    iput-object v0, p0, Lcom/android/server/power/LGNotifier;->mScreenOnBlockerTimeout:Ljava/lang/Runnable;

    .line 21
    iput-object p2, p0, Lcom/android/server/power/LGNotifier;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private getStatusBarServiceEx()Lcom/android/server/IStatusBarServiceEx;
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/server/power/LGNotifier;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LGNotifier;->mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/IStatusBarServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/IStatusBarServiceEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/LGNotifier;->mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/LGNotifier;->mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onScreenOff()V
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/server/power/LGNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/android/server/power/LGNotifier;->getStatusBarServiceEx()Lcom/android/server/IStatusBarServiceEx;

    move-result-object v0

    .line 47
    .local v0, statusbarEx:Lcom/android/server/IStatusBarServiceEx;
    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    const-string v1, "LGNotifier"

    const-string v2, "onScreenOff() : Final code is called...."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-interface {v0}, Lcom/android/server/IStatusBarServiceEx;->setIconShift()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0           #statusbarEx:Lcom/android/server/IStatusBarServiceEx;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/server/power/Notifier;->onScreenOff()V

    .line 57
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    iget-object v2, p0, Lcom/android/server/power/LGNotifier;->mScreenOnBlockerTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    return-void

    .line 51
    .restart local v0       #statusbarEx:Lcom/android/server/IStatusBarServiceEx;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onScreenOn()V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/server/power/Notifier;->onScreenOn()V

    .line 38
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    iget-object v1, p0, Lcom/android/server/power/LGNotifier;->mScreenOnBlockerTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    iget-object v1, p0, Lcom/android/server/power/LGNotifier;->mScreenOnBlockerTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    return-void
.end method
