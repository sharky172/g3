.class Lcom/lge/uicc/IccSwapDialog$2;
.super Ljava/lang/Object;
.source "IccSwapDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/IccSwapDialog;->onIccSwapEx(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/IccSwapDialog;


# direct methods
.method constructor <init>(Lcom/lge/uicc/IccSwapDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lge/uicc/IccSwapDialog$2;->this$0:Lcom/lge/uicc/IccSwapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/lge/uicc/IccSwapDialog$2;->this$0:Lcom/lge/uicc/IccSwapDialog;

    #getter for: Lcom/lge/uicc/IccSwapDialog;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->access$000(Lcom/lge/uicc/IccSwapDialog;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 168
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 169
    :try_start_0
    const-string v1, "Reboot due to SIM swap"

    #calls: Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->access$100(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/lge/uicc/IccSwapDialog$2;->this$0:Lcom/lge/uicc/IccSwapDialog;

    #getter for: Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->access$200(Lcom/lge/uicc/IccSwapDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 171
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SIM is added."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 176
    .end local v0           #pm:Landroid/os/PowerManager;
    :goto_0
    monitor-exit v2

    .line 177
    return-void

    .line 173
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 174
    iget-object v1, p0, Lcom/lge/uicc/IccSwapDialog$2;->this$0:Lcom/lge/uicc/IccSwapDialog;

    #calls: Lcom/lge/uicc/IccSwapDialog;->cancelRebootTimer()V
    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->access$300(Lcom/lge/uicc/IccSwapDialog;)V

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
