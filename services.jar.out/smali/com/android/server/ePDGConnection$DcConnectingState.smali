.class Lcom/android/server/ePDGConnection$DcConnectingState;
.super Lcom/android/internal/util/State;
.source "ePDGConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcConnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 914
    invoke-direct {p0, p1}, Lcom/android/server/ePDGConnection$DcConnectingState;-><init>(Lcom/android/server/ePDGConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcConnectingState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v0}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "16"

    const-string v2, "0"

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v4, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v4}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const-string v6, "0"

    const-string v7, "notused"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ePDGConnection;->ePDGSetupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcConnectingState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 948
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1030
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcConnectingState nothandled msg.what=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1033
    const/4 v8, 0x0

    .line 1036
    .local v8, retVal:Z
    :cond_0
    :goto_0
    return v8

    .line 953
    .end local v8           #retVal:Z
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v0}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v0

    if-nez v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v0, v1, v1}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 956
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "[ePDG] Connected Msg from RIL "

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mConnectedState:Lcom/android/server/ePDGConnection$DcConnectedState;
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1800(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcConnectedState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$3900(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 958
    const/4 v8, 0x1

    .line 959
    .restart local v8       #retVal:Z
    goto :goto_0

    .line 961
    .end local v8           #retVal:Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "[ePDG] EVENT_CONNECTED"

    invoke-virtual {v0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 962
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 963
    .local v7, ar:Landroid/os/AsyncResult;
    iget-object v9, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/ePDGConnInfo;

    .line 964
    .local v9, sendingResult:Lcom/android/server/ePDGConnInfo;
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v3, v9, Lcom/android/server/ePDGConnInfo;->mIpsecAddr:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/ePDGConnInfo;->mIface:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/server/ePDGConnInfo;->mIpsecGW:Ljava/lang/String;

    iget-object v6, v9, Lcom/android/server/ePDGConnInfo;->mdnss:Ljava/lang/String;

    move v2, v1

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/ePDGConnection;->access$4000(Lcom/android/server/ePDGConnection;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "[ePDG] Connected Msg from RIL "

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mConnectedState:Lcom/android/server/ePDGConnection$DcConnectedState;
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1800(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcConnectedState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$4100(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 967
    const/4 v8, 0x1

    .line 968
    .restart local v8       #retVal:Z
    goto :goto_0

    .line 971
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v8           #retVal:Z
    .end local v9           #sendingResult:Lcom/android/server/ePDGConnInfo;
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const/16 v2, 0x3e9

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v0, v2, v1}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 972
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$902(Lcom/android/server/ePDGConnection;I)I

    .line 973
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$2900(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcFailState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$4200(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 974
    const/4 v8, 0x1

    .line 975
    .restart local v8       #retVal:Z
    goto :goto_0

    .line 979
    .end local v8           #retVal:Z
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcConnectingState Fail , type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Reason"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v0}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v0

    if-nez v0, :cond_2

    .line 985
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v1, 0x5

    #setter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$902(Lcom/android/server/ePDGConnection;I)I

    .line 991
    :goto_1
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/server/ePDGConnection;->mLastNetworkReason:I
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$1002(Lcom/android/server/ePDGConnection;I)I

    .line 992
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$2900(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcFailState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$4300(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 993
    const/4 v8, 0x1

    .line 995
    .restart local v8       #retVal:Z
    goto/16 :goto_0

    .line 989
    .end local v8           #retVal:Z
    :cond_2
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v0, v4}, Lcom/android/server/ePDGConnection;->access$902(Lcom/android/server/ePDGConnection;I)I

    goto :goto_1

    .line 999
    :pswitch_4
    const/4 v8, 0x1

    .line 1000
    .restart local v8       #retVal:Z
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v0}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcConnectingState : send change prefmode to modem -> WWAN"

    invoke-virtual {v0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ePDGConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 1004
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcReadyState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$4400(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1013
    .end local v8           #retVal:Z
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcConnectingState: msg.what=EVENT_WIFI_DISCONNECT"

    invoke-virtual {v0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->isWiFi:Z
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$1302(Lcom/android/server/ePDGConnection;Z)Z

    .line 1015
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-virtual {v0}, Lcom/android/server/ePDGConnection;->clearSettings()V

    .line 1018
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v0}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1020
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcConnectingState : Wifi Disconnected so prefmode  -> WWAN"

    invoke-virtual {v0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ePDGConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 1023
    :cond_3
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v1, 0x6

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v0, v4, v1}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 1024
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mNonetworkState:Lcom/android/server/ePDGConnection$DcNonetworkState;
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1600(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcNonetworkState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$4500(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 1026
    const/4 v8, 0x1

    .line 1027
    .restart local v8       #retVal:Z
    goto/16 :goto_0

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x40001
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
