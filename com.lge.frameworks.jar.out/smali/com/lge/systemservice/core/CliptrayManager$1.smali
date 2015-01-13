.class Lcom/lge/systemservice/core/CliptrayManager$1;
.super Ljava/lang/Object;
.source "CliptrayManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/CliptrayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/CliptrayManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/CliptrayManager;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lge/systemservice/core/CliptrayManager$1;->this$0:Lcom/lge/systemservice/core/CliptrayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "bind"

    .prologue
    .line 96
    const-string v0, "Cliptray Manager"

    const-string v1, " onServiceConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager$1;->this$0:Lcom/lge/systemservice/core/CliptrayManager;

    invoke-static {p2}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v1

    #setter for: Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/CliptrayManager;->access$002(Lcom/lge/systemservice/core/CliptrayManager;Lcom/lge/systemservice/core/ICliptrayService;)Lcom/lge/systemservice/core/ICliptrayService;

    .line 98
    iget-object v1, p0, Lcom/lge/systemservice/core/CliptrayManager$1;->this$0:Lcom/lge/systemservice/core/CliptrayManager;

    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager$1;->this$0:Lcom/lge/systemservice/core/CliptrayManager;

    #getter for: Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;
    invoke-static {v0}, Lcom/lge/systemservice/core/CliptrayManager;->access$000(Lcom/lge/systemservice/core/CliptrayManager;)Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z
    invoke-static {v1, v0}, Lcom/lge/systemservice/core/CliptrayManager;->access$102(Lcom/lge/systemservice/core/CliptrayManager;Z)Z

    .line 99
    const-string v0, "Cliptray Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Cliptray Service Connection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager$1;->this$0:Lcom/lge/systemservice/core/CliptrayManager;

    #getter for: Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z
    invoke-static {v2}, Lcom/lge/systemservice/core/CliptrayManager;->access$100(Lcom/lge/systemservice/core/CliptrayManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager$1;->this$0:Lcom/lge/systemservice/core/CliptrayManager;

    const/4 v1, 0x0

    #setter for: Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/CliptrayManager;->access$002(Lcom/lge/systemservice/core/CliptrayManager;Lcom/lge/systemservice/core/ICliptrayService;)Lcom/lge/systemservice/core/ICliptrayService;

    .line 105
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager$1;->this$0:Lcom/lge/systemservice/core/CliptrayManager;

    const/4 v1, 0x0

    #setter for: Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/CliptrayManager;->access$102(Lcom/lge/systemservice/core/CliptrayManager;Z)Z

    .line 106
    const-string v0, "Cliptray Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onServiceDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager$1;->this$0:Lcom/lge/systemservice/core/CliptrayManager;

    #getter for: Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z
    invoke-static {v2}, Lcom/lge/systemservice/core/CliptrayManager;->access$100(Lcom/lge/systemservice/core/CliptrayManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
