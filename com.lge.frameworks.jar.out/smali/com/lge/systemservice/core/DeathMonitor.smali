.class public Lcom/lge/systemservice/core/DeathMonitor;
.super Ljava/lang/Object;
.source "DeathMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeathMonitor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/lge/systemservice/core/IDeathMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lge/systemservice/core/DeathMonitor;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IDeathMonitor;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitor;->mService:Lcom/lge/systemservice/core/IDeathMonitor;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "deathmonitor"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IDeathMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IDeathMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitor;->mService:Lcom/lge/systemservice/core/IDeathMonitor;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitor;->mService:Lcom/lge/systemservice/core/IDeathMonitor;

    return-object v0
.end method


# virtual methods
.method public register(Landroid/os/IBinder;Lcom/lge/systemservice/core/DeathMonitorResponse;)V
    .locals 4
    .parameter "binder"
    .parameter "res"

    .prologue
    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/DeathMonitor;->getService()Lcom/lge/systemservice/core/IDeathMonitor;

    move-result-object v1

    .line 49
    .local v1, service:Lcom/lge/systemservice/core/IDeathMonitor;
    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IDeathMonitor;->register(Landroid/os/IBinder;Lcom/lge/systemservice/core/DeathMonitorResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1           #service:Lcom/lge/systemservice/core/IDeathMonitor;
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "DeathMonitor"

    const-string v3, "register() : exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregister(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "binder"

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, ret:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/DeathMonitor;->getService()Lcom/lge/systemservice/core/IDeathMonitor;

    move-result-object v2

    .line 68
    .local v2, service:Lcom/lge/systemservice/core/IDeathMonitor;
    if-eqz v2, :cond_0

    .line 69
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IDeathMonitor;->unregister(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 74
    .end local v2           #service:Lcom/lge/systemservice/core/IDeathMonitor;
    :cond_0
    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "DeathMonitor"

    const-string v4, "unregister() : exception!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
