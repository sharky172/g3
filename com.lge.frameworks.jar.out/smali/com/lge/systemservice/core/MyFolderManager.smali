.class public Lcom/lge/systemservice/core/MyFolderManager;
.super Ljava/lang/Object;
.source "MyFolderManager.java"


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.myfolder"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/IMyFolderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/lge/systemservice/core/MyFolderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IMyFolderManager;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/systemservice/core/MyFolderManager;->mService:Lcom/lge/systemservice/core/IMyFolderManager;

    if-nez v0, :cond_0

    .line 23
    const-string v0, "myfolder"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IMyFolderManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IMyFolderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/MyFolderManager;->mService:Lcom/lge/systemservice/core/IMyFolderManager;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/MyFolderManager;->mService:Lcom/lge/systemservice/core/IMyFolderManager;

    return-object v0
.end method


# virtual methods
.method public addPackageListToMyFolder([Ljava/lang/String;)Z
    .locals 5
    .parameter "packageList"

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, bResult:Z
    invoke-direct {p0}, Lcom/lge/systemservice/core/MyFolderManager;->getService()Lcom/lge/systemservice/core/IMyFolderManager;

    move-result-object v2

    .line 113
    .local v2, service:Lcom/lge/systemservice/core/IMyFolderManager;
    if-eqz v2, :cond_0

    .line 115
    :try_start_0
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IMyFolderManager;->addPackageListToMyFolder([Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get service!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addPackageToMyFolder(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, bResult:Z
    invoke-direct {p0}, Lcom/lge/systemservice/core/MyFolderManager;->getService()Lcom/lge/systemservice/core/IMyFolderManager;

    move-result-object v2

    .line 92
    .local v2, service:Lcom/lge/systemservice/core/IMyFolderManager;
    if-eqz v2, :cond_0

    .line 94
    :try_start_0
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IMyFolderManager;->addPackageToMyFolder(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 101
    :goto_0
    return v0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get service!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enterMyFolder(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/systemservice/core/MyFolderManager;->getService()Lcom/lge/systemservice/core/IMyFolderManager;

    move-result-object v1

    .line 36
    .local v1, service:Lcom/lge/systemservice/core/IMyFolderManager;
    if-eqz v1, :cond_0

    .line 38
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IMyFolderManager;->enterMyFolder(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get service!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public exitMyFolder(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lge/systemservice/core/MyFolderManager;->getService()Lcom/lge/systemservice/core/IMyFolderManager;

    move-result-object v1

    .line 55
    .local v1, service:Lcom/lge/systemservice/core/IMyFolderManager;
    if-eqz v1, :cond_0

    .line 57
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IMyFolderManager;->exitMyFolder(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get service!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAddedPackageList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/lge/systemservice/core/MyFolderManager;->getService()Lcom/lge/systemservice/core/IMyFolderManager;

    move-result-object v1

    .line 173
    .local v1, service:Lcom/lge/systemservice/core/IMyFolderManager;
    if-eqz v1, :cond_0

    .line 175
    :try_start_0
    invoke-interface {v1}, Lcom/lge/systemservice/core/IMyFolderManager;->getAddedPackageList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 181
    :goto_0
    return-object v2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get service!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 4

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/lge/systemservice/core/MyFolderManager;->getService()Lcom/lge/systemservice/core/IMyFolderManager;

    move-result-object v1

    .line 73
    .local v1, service:Lcom/lge/systemservice/core/IMyFolderManager;
    if-eqz v1, :cond_0

    .line 75
    :try_start_0
    invoke-interface {v1}, Lcom/lge/systemservice/core/IMyFolderManager;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 81
    :goto_0
    return v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get service!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public removePackageFromMyFolder(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, bResult:Z
    invoke-direct {p0}, Lcom/lge/systemservice/core/MyFolderManager;->getService()Lcom/lge/systemservice/core/IMyFolderManager;

    move-result-object v2

    .line 133
    .local v2, service:Lcom/lge/systemservice/core/IMyFolderManager;
    if-eqz v2, :cond_0

    .line 135
    :try_start_0
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IMyFolderManager;->removePackageFromMyFolder(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 142
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get service!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removePackageListFromMyFolder([Ljava/lang/String;)Z
    .locals 5
    .parameter "packageList"

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, bResult:Z
    invoke-direct {p0}, Lcom/lge/systemservice/core/MyFolderManager;->getService()Lcom/lge/systemservice/core/IMyFolderManager;

    move-result-object v2

    .line 154
    .local v2, service:Lcom/lge/systemservice/core/IMyFolderManager;
    if-eqz v2, :cond_0

    .line 156
    :try_start_0
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IMyFolderManager;->removePackageListFromMyFolder([Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Lcom/lge/systemservice/core/MyFolderManager;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get service!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
