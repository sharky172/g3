.class Landroid/net/wifi/p2p/WifiP2pService$LGMDMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGMDMReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$LGMDMReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 462
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$LGMDMReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 465
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, action:Ljava/lang/String;
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/lge/cappuccino/IMdm;->recevieWifiP2pIntent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    const-string v0, "force_wifip2p_disable"

    .line 469
    .local v0, FORCE_WIFIP2P_DISABLE:Ljava/lang/String;
    const-string v3, "force_wifip2p_disable"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 470
    .local v2, isDisable:Z
    if-eqz v2, :cond_1

    .line 471
    const-string v3, "MDM"

    const-string v4, "LGMDM wifi direct policy: MDM_FORCE_DISABLE"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$LGMDMReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x20084

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    .end local v0           #FORCE_WIFIP2P_DISABLE:Ljava/lang/String;
    .end local v1           #action:Ljava/lang/String;
    .end local v2           #isDisable:Z
    :cond_0
    :goto_0
    return-void

    .line 475
    .restart local v0       #FORCE_WIFIP2P_DISABLE:Ljava/lang/String;
    .restart local v1       #action:Ljava/lang/String;
    .restart local v2       #isDisable:Z
    :cond_1
    const-string v3, "MDM"

    const-string v4, "LGMDM wifi direct policy: MDM_FORCE_ENABLE"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$LGMDMReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x20083

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
