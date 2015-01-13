.class Lcom/android/server/ePDGConnection$DcConnectedState;
.super Lcom/android/internal/util/State;
.source "ePDGConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lcom/android/server/ePDGConnection$DcConnectedState;-><init>(Lcom/android/server/ePDGConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcConnectedState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcConnectedState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x63

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 828
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 904
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcConnectedState nothandled msg.what=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 907
    const/4 v0, 0x0

    .line 910
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 831
    .end local v0           #retVal:Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "Connected state : we get Handover Fail!! it should not happen!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 832
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v1, v3}, Lcom/android/server/ePDGConnection;->access$902(Lcom/android/server/ePDGConnection;I)I

    .line 833
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$2900(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcFailState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$3200(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 834
    const/4 v0, 0x1

    .line 835
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 840
    .end local v0           #retVal:Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v1

    if-nez v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v1, v3}, Lcom/android/server/ePDGConnection;->access$902(Lcom/android/server/ePDGConnection;I)I

    .line 844
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$2900(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcFailState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$3300(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 852
    :goto_1
    const/4 v0, 0x1

    .line 855
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 848
    .end local v0           #retVal:Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iput v5, v1, Lcom/android/server/ePDGConnection;->cid:I

    .line 849
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v2, 0x3

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 850
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcReadyState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$3400(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 861
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v1

    if-nez v1, :cond_1

    .line 863
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "Connected state : send change prefmode to modem -> WWAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 864
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/ePDGConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 865
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mDisconnectingState:Lcom/android/server/ePDGConnection$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$2400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcDisconnectingState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$3500(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 866
    const/4 v0, 0x1

    .line 867
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 870
    .end local v0           #retVal:Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 871
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget v3, v3, Lcom/android/server/ePDGConnection;->cid:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGConnection;->ePDGDeactivateDataCall(Ljava/lang/String;II)V

    .line 872
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "Connected state : ePDGDeactivateDataCall - VZWAPP"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iput v5, v1, Lcom/android/server/ePDGConnection;->cid:I

    .line 874
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcReadyState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$3600(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 875
    const/4 v0, 0x1

    .line 876
    .restart local v0       #retVal:Z
    goto/16 :goto_0

    .line 878
    .end local v0           #retVal:Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mDisconnectingState:Lcom/android/server/ePDGConnection$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$2400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcDisconnectingState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$3700(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 879
    const/4 v0, 0x1

    .line 880
    .restart local v0       #retVal:Z
    goto/16 :goto_0

    .line 887
    .end local v0           #retVal:Z
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcConnectedState: msg.what=EVENT_WIFI_DISCONNECT"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->isWiFi:Z
    invoke-static {v1, v4}, Lcom/android/server/ePDGConnection;->access$1302(Lcom/android/server/ePDGConnection;Z)Z

    .line 889
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-virtual {v1}, Lcom/android/server/ePDGConnection;->clearSettings()V

    .line 891
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v1

    if-nez v1, :cond_3

    .line 893
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcConnectedState : Wifi Disconnected so prefmode  -> WWAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 894
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/ePDGConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 896
    :cond_3
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mDisconnectingState:Lcom/android/server/ePDGConnection$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$2400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcDisconnectingState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$3800(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 900
    const/4 v0, 0x1

    .line 901
    .restart local v0       #retVal:Z
    goto/16 :goto_0

    .line 828
    nop

    :sswitch_data_0
    .sparse-switch
        0x40001 -> :sswitch_3
        0x40006 -> :sswitch_1
        0x40009 -> :sswitch_2
        0x4000c -> :sswitch_0
    .end sparse-switch
.end method
