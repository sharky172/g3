.class Landroid/net/CaptivePortalTracker$LGInternetCheckState;
.super Lcom/android/internal/util/State;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGInternetCheckState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$LGInternetCheckState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 471
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$4304(Landroid/net/CaptivePortalTracker;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/CaptivePortalTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 473
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v2, "[LGLWD] [LGInternetCheckState] entered"

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/CaptivePortalTracker;->access$5500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v2, "[LGLWD] [LGInternetCheckState] check captive with 1.5 SEC delay "

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/CaptivePortalTracker;->access$5600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/CaptivePortalTracker;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 478
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "message"

    .prologue
    .line 482
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$5700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 483
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 562
    const/4 v6, 0x0

    .line 564
    :goto_0
    return v6

    .line 487
    :pswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$4300(Landroid/net/CaptivePortalTracker;)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 488
    const/4 v4, 0x0

    .line 489
    .local v4, result_route_added:Z
    const/4 v1, -0x1

    .line 491
    .local v1, inetenet_check_result:I
    const/4 v5, 0x0

    .line 492
    .local v5, server:Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 494
    .local v2, isMobileConnected:Z
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v7, "[LGLWD][notifyPortalCheckComplete]"

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$5800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 495
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v7, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$1200(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    #calls: Landroid/net/CaptivePortalTracker;->notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$2700(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)V

    .line 499
    :try_start_0
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v6}, Landroid/net/CaptivePortalTracker;->access$1600(Landroid/net/CaptivePortalTracker;)Landroid/net/IConnectivityManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 500
    .local v3, mobile_info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_0

    .line 501
    const/4 v2, 0x1

    .line 505
    :cond_0
    if-eqz v2, :cond_3

    .line 506
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v7, "[LGLWD][lookupHost] lookuphost through Mobile"

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$5900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 507
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v7, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mInternetCheckServer:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$6000(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$4700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 508
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$2002(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 518
    :goto_1
    if-eqz v5, :cond_1

    .line 520
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGLWD][ServerRouteAdd] Add route"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$6300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 522
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v6}, Landroid/net/CaptivePortalTracker;->access$1600(Landroid/net/CaptivePortalTracker;)Landroid/net/IConnectivityManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    iget-object v9, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[BLjava/lang/String;)Z

    move-result v4

    .line 523
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGLWD][ServerRouteAdd] Add route result :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$6400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 532
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #calls: Landroid/net/CaptivePortalTracker;->isInternetOK(Ljava/net/InetAddress;)I
    invoke-static {v6, v5}, Landroid/net/CaptivePortalTracker;->access$6500(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)I

    move-result v1

    .line 535
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGLWD][ServerRouteRemoving] Remove route"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$6600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 536
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v6}, Landroid/net/CaptivePortalTracker;->access$1600(Landroid/net/CaptivePortalTracker;)Landroid/net/IConnectivityManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/net/IConnectivityManager;->requestRemRouteToHostAddress(I[B)Z

    move-result v4

    .line 537
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGLWD][ServerRouteRemoving] Remove route result :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$6700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :cond_1
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGLWD][Internet Connectivity Check] Get result :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$6900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 546
    const/16 v6, 0xcc

    if-ne v1, v6, :cond_9

    .line 547
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/CaptivePortalTracker;->sendIntentInternetCheckComplete(I)V

    .line 556
    :goto_2
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v7, "[LGLWD][EndCheckInternet] State change to mNoActiveNetworkState"

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$7000(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 557
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v7, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$3800(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v7

    .end local v3           #mobile_info:Landroid/net/NetworkInfo;
    :goto_3
    #calls: Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$7100(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V

    .line 564
    .end local v1           #inetenet_check_result:I
    .end local v2           #isMobileConnected:Z
    .end local v4           #result_route_added:Z
    .end local v5           #server:Ljava/net/InetAddress;
    :cond_2
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 510
    .restart local v1       #inetenet_check_result:I
    .restart local v2       #isMobileConnected:Z
    .restart local v3       #mobile_info:Landroid/net/NetworkInfo;
    .restart local v4       #result_route_added:Z
    .restart local v5       #server:Ljava/net/InetAddress;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/net/CaptivePortalTracker;->access$2000()Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 511
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v7, "[LGLWD][lookupHost] use previously server address"

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$6100(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Landroid/net/CaptivePortalTracker;->access$2000()Ljava/net/InetAddress;

    move-result-object v5

    goto/16 :goto_1

    .line 515
    :cond_4
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v7, "[LGLWD][lookupHost] fail to lookuphost"

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$6200(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 540
    .end local v3           #mobile_info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 541
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v7, "[LGLWD][ServerRouteRemoving] Exception Occured"

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$6800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 544
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGLWD][Internet Connectivity Check] Get result :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$6900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 546
    const/16 v6, 0xcc

    if-ne v1, v6, :cond_7

    .line 547
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/CaptivePortalTracker;->sendIntentInternetCheckComplete(I)V

    .line 556
    :goto_4
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v7, "[LGLWD][EndCheckInternet] State change to mNoActiveNetworkState"

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$7000(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 557
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v7, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$3800(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v7

    goto :goto_3

    .line 544
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGLWD][Internet Connectivity Check] Get result :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/CaptivePortalTracker;->access$6900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 546
    const/16 v7, 0xcc

    if-ne v1, v7, :cond_5

    .line 547
    iget-object v7, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/CaptivePortalTracker;->sendIntentInternetCheckComplete(I)V

    .line 556
    :goto_5
    iget-object v7, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v8, "[LGLWD][EndCheckInternet] State change to mNoActiveNetworkState"

    #calls: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/CaptivePortalTracker;->access$7000(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 557
    iget-object v7, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v8, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/CaptivePortalTracker;->access$3800(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/net/CaptivePortalTracker;->access$7100(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V

    .line 544
    throw v6

    .line 549
    :cond_5
    const/4 v7, -0x1

    if-ne v1, v7, :cond_6

    .line 550
    iget-object v7, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/net/CaptivePortalTracker;->sendIntentInternetCheckComplete(I)V

    goto :goto_5

    .line 553
    :cond_6
    iget-object v7, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/net/CaptivePortalTracker;->sendIntentInternetCheckComplete(I)V

    goto :goto_5

    .line 549
    .restart local v0       #e:Landroid/os/RemoteException;
    :cond_7
    const/4 v6, -0x1

    if-ne v1, v6, :cond_8

    .line 550
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Landroid/net/CaptivePortalTracker;->sendIntentInternetCheckComplete(I)V

    goto :goto_4

    .line 553
    :cond_8
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/net/CaptivePortalTracker;->sendIntentInternetCheckComplete(I)V

    goto :goto_4

    .line 549
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #mobile_info:Landroid/net/NetworkInfo;
    :cond_9
    const/4 v6, -0x1

    if-ne v1, v6, :cond_a

    .line 550
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Landroid/net/CaptivePortalTracker;->sendIntentInternetCheckComplete(I)V

    goto/16 :goto_2

    .line 553
    :cond_a
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$LGInternetCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/net/CaptivePortalTracker;->sendIntentInternetCheckComplete(I)V

    goto/16 :goto_2

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
