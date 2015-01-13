.class Lcom/lge/android/atservice/client/LGATCMDClient$1;
.super Ljava/lang/Object;
.source "LGATCMDClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/client/LGATCMDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/client/LGATCMDClient;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/client/LGATCMDClient;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 62
    const-string v0, "LGATCMDClient"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    const/4 v1, 0x1

    #setter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z
    invoke-static {v0, v1}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$002(Lcom/lge/android/atservice/client/LGATCMDClient;Z)Z

    .line 64
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-static {p2}, Lcom/lge/android/atservice/client/ILGATCMDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/android/atservice/client/ILGATCMDService;

    move-result-object v1

    #setter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;
    invoke-static {v0, v1}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$102(Lcom/lge/android/atservice/client/LGATCMDClient;Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;

    .line 65
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 68
    const-string v0, "LGATCMDClient"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    const/4 v1, 0x0

    #setter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;
    invoke-static {v0, v1}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$102(Lcom/lge/android/atservice/client/LGATCMDClient;Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;

    .line 70
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    const/4 v1, 0x0

    #setter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z
    invoke-static {v0, v1}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$002(Lcom/lge/android/atservice/client/LGATCMDClient;Z)Z

    .line 71
    return-void
.end method
