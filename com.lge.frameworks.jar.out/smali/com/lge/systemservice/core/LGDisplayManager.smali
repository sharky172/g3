.class public Lcom/lge/systemservice/core/LGDisplayManager;
.super Ljava/lang/Object;
.source "LGDisplayManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LGDisplayManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/lge/systemservice/core/ILGDisplayManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    .line 20
    iput-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mContext:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/ILGDisplayManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    if-nez v0, :cond_0

    .line 28
    const-string v0, "lgdisplay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ILGDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    return-object v0
.end method


# virtual methods
.method public setColorConvert(IIFF)Z
    .locals 5
    .parameter "hue"
    .parameter "intensity"
    .parameter "sat"
    .parameter "contrast"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGDisplayManager;->getService()Lcom/lge/systemservice/core/ILGDisplayManager;

    move-result-object v1

    .line 46
    .local v1, service:Lcom/lge/systemservice/core/ILGDisplayManager;
    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/systemservice/core/ILGDisplayManager;->setColorConvert(IIFF)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 55
    :goto_0
    return v2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "LGDisplayManager"

    const-string v4, "Error while converting color. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v0           #re:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "LGDisplayManager"

    const-string v4, "Service Connection is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
