.class public Lcom/lge/systemservice/core/LGDevEncManager;
.super Ljava/lang/Object;
.source "LGDevEncManager.java"


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.devencryption"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/ILGDevEncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/lge/systemservice/core/LGDevEncManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/LGDevEncManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getDevEncSupportStatus(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getService()Lcom/lge/systemservice/core/ILGDevEncManager;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "lgdevencryption"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ILGDevEncManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGDevEncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    return-object v0
.end method


# virtual methods
.method public quicklyencryptStorage(Ljava/lang/String;)I
    .locals 3
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-nez v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGDevEncManager;->getService()Lcom/lge/systemservice/core/ILGDevEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-eqz v1, :cond_1

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGDevEncManager;->quicklyencryptStorage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGDevEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGDevEncManager connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public quicklyunencryptStorage(Ljava/lang/String;)I
    .locals 3
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-nez v1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGDevEncManager;->getService()Lcom/lge/systemservice/core/ILGDevEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-eqz v1, :cond_1

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGDevEncManager;->quicklyunencryptStorage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 102
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGDevEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGDevEncManager connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public unencryptStorage(Ljava/lang/String;)I
    .locals 3
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-nez v1, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGDevEncManager;->getService()Lcom/lge/systemservice/core/ILGDevEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    if-eqz v1, :cond_1

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGDevEncManager;->unencryptStorage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 52
    :goto_0
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGDevEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGDevEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, -0x1

    goto :goto_0
.end method
