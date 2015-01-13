.class public Lcom/lge/systemservice/core/NfcLgManager;
.super Ljava/lang/Object;
.source "NfcLgManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "nfcLgService"

.field private static final TAG:Ljava/lang/String; = "NfcLgManager"


# instance fields
.field private mService:Lcom/lge/systemservice/core/INfcLgManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/INfcLgManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v0, :cond_0

    .line 27
    const-string v0, "nfcLgService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/INfcLgManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    return-object v0
.end method


# virtual methods
.method public createNfcFactoryObj()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v2, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/lge/systemservice/core/NfcLgManager;->getService()Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 113
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/INfcLgManager;->createNfcFactoryObj()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :cond_1
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public handleNfcTest(I[B)Ljava/lang/String;
    .locals 5
    .parameter "command"
    .parameter "retData"

    .prologue
    .line 76
    const-string v1, "Fail"

    .line 79
    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v2, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/lge/systemservice/core/NfcLgManager;->getService()Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 84
    :cond_0
    :try_start_0
    const-string v2, "NfcLgManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NfcLgManager handleNfcTest::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-byte v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INfcLgManager;->handleNfcFactory(I[B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    .end local v1           #result:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 89
    .restart local v1       #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public sendNfcTestCommand(I[B)Z
    .locals 3
    .parameter "command"
    .parameter "response"

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 49
    .local v1, result:Z
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-nez v2, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/lge/systemservice/core/NfcLgManager;->getService()Lcom/lge/systemservice/core/INfcLgManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    .line 53
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INfcLgManager;->sendNfcTestCommand(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    .end local v1           #result:Z
    :cond_1
    :goto_0
    return v1

    .line 57
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
