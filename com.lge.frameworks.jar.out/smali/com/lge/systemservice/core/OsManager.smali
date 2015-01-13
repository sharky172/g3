.class public Lcom/lge/systemservice/core/OsManager;
.super Ljava/lang/Object;
.source "OsManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "osservice"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/IOsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/lge/systemservice/core/OsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IOsManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/IOsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    if-nez v0, :cond_1

    .line 37
    const-string v0, "osservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IOsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IOsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    return-object v0
.end method


# virtual methods
.method public goToSleepWithForce(JI)V
    .locals 4
    .parameter "time"
    .parameter "reason"

    .prologue
    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v1

    .line 90
    .local v1, service:Lcom/lge/systemservice/core/IOsManager;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IOsManager;->goToSleepWithForce(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #service:Lcom/lge/systemservice/core/IOsManager;
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to stop goToSleepWithForce"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "val"

    .prologue
    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v1

    .line 58
    .local v1, service:Lcom/lge/systemservice/core/IOsManager;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IOsManager;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1           #service:Lcom/lge/systemservice/core/IOsManager;
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set system property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopRingtoneSound()V
    .locals 4

    .prologue
    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v1

    .line 74
    .local v1, service:Lcom/lge/systemservice/core/IOsManager;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/lge/systemservice/core/IOsManager;->stopRingtoneSound()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1           #service:Lcom/lge/systemservice/core/IOsManager;
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to stop ringtone sound"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
