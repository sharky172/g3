.class Lcom/lge/uicc/IccSwapDialog$8;
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
    .line 364
    iput-object p1, p0, Lcom/lge/uicc/IccSwapDialog$8;->this$0:Lcom/lge/uicc/IccSwapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 367
    const-string v1, "Reboot due to SIM swap"

    #calls: Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->access$100(Ljava/lang/String;)V

    .line 368
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 370
    .local v0, pm:Landroid/os/IPowerManager;
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 371
    const/4 v1, 0x0

    const-string v2, "SIM is Removed."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v1

    goto :goto_0
.end method
