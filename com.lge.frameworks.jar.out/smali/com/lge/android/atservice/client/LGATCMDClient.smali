.class public Lcom/lge/android/atservice/client/LGATCMDClient;
.super Ljava/lang/Object;
.source "LGATCMDClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    }
.end annotation


# static fields
.field public static final MAX_LG_COMMAND_SIZE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "LGATCMDClient"


# instance fields
.field private final LGCMD_GET_FACTORY_VERSION:I

.field private mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

.field private mAction:I

.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIn:[B

.field private mOut:[B

.field private mResult:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0xfab

    iput v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->LGCMD_GET_FACTORY_VERSION:I

    .line 60
    new-instance v0, Lcom/lge/android/atservice/client/LGATCMDClient$1;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/client/LGATCMDClient$1;-><init>(Lcom/lge/android/atservice/client/LGATCMDClient;)V

    iput-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mConnection:Landroid/content/ServiceConnection;

    .line 76
    iput-object p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mContext:Landroid/content/Context;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/lge/android/atservice/client/LGATCMDClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    return p1
.end method

.method static synthetic access$102(Lcom/lge/android/atservice/client/LGATCMDClient;Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    return-object p1
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .prologue
    .line 81
    iget-boolean v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    if-nez v1, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.android.atservice"

    const-string v3, "com.lge.android.atservice.LGATCMDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const-string v1, "LGATCMDClient"

    const-string v2, "Bind service successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 89
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "LGATCMDClient"

    const-string v2, "Bind service fail!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkmBound()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    return v0
.end method

.method public getFactoryVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 129
    const/16 v2, 0x1e

    new-array v0, v2, [B

    .line 131
    .local v0, data:[B
    const/16 v2, 0xfab

    invoke-virtual {p0, v2, v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v1

    .line 132
    .local v1, rsp:Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    if-nez v1, :cond_0

    .line 133
    const-string v2, ""

    .line 136
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    const/4 v4, 0x0

    iget v5, v1, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->length:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    .locals 7
    .parameter "action"
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    .line 100
    const/4 v3, 0x0

    .line 102
    .local v3, result:[B
    iget-object v5, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    if-nez v5, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v4

    .line 105
    :cond_1
    iget-boolean v5, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    if-eqz v5, :cond_3

    .line 107
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, data:Landroid/os/Bundle;
    const-string v5, "action"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v5, "data"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 110
    iget-object v5, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    invoke-interface {v5, v0}, Lcom/lge/android/atservice/client/ILGATCMDService;->request(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 111
    .local v2, response:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    const-string v5, "result"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 112
    const-string v5, "data"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 120
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #response:Landroid/os/Bundle;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 124
    new-instance v4, Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    invoke-direct {v4, p0, v3}, Lcom/lge/android/atservice/client/LGATCMDClient$Response;-><init>(Lcom/lge/android/atservice/client/LGATCMDClient;[B)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_3
    const-string v5, "LGATCMDClient"

    const-string v6, "request: Service is not bound yet!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unbindService()V
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 97
    :cond_0
    return-void
.end method
