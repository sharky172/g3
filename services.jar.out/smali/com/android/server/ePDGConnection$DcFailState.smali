.class Lcom/android/server/ePDGConnection$DcFailState;
.super Lcom/android/internal/util/State;
.source "ePDGConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcFailState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/android/server/ePDGConnection$DcFailState;-><init>(Lcom/android/server/ePDGConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 564
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcFailState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v0}, Lcom/android/server/ePDGConnection;->access$900(Lcom/android/server/ePDGConnection;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mLastNetworkReason:I
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1000(Lcom/android/server/ePDGConnection;)I

    move-result v2

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v0}, Lcom/android/server/ePDGConnection;->access$900(Lcom/android/server/ePDGConnection;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 599
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    goto :goto_0

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v0}, Lcom/android/server/ePDGConnection;->access$900(Lcom/android/server/ePDGConnection;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v0}, Lcom/android/server/ePDGConnection;->access$900(Lcom/android/server/ePDGConnection;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$900(Lcom/android/server/ePDGConnection;)I

    move-result v1

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v0, v2, v1}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcFailState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 623
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 710
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcFailState nothandled msg.what=0x"

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

    .line 713
    const/4 v0, 0x0

    .line 716
    .local v0, retVal:Z
    :cond_0
    :goto_0
    return v0

    .line 626
    .end local v0           #retVal:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcFailState: Fail aleady checked!! "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x1

    .line 628
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 631
    .end local v0           #retVal:Z
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcFailState: EVENT_DISCONNECTED, it should be IMS!! mFid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->isWiFi:Z
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1300(Lcom/android/server/ePDGConnection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v1, v5, v2}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 634
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcReadyState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$1500(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 640
    :goto_1
    const/4 v0, 0x1

    .line 641
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 637
    .end local v0           #retVal:Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v2, 0x3

    const/4 v3, 0x6

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 638
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mNonetworkState:Lcom/android/server/ePDGConnection$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1600(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcNonetworkState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$1700(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 644
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v1

    if-nez v1, :cond_2

    .line 646
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v1, v4, v4}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 647
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcFailState : [ePDG] Connected Msg from RIL "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mConnectedState:Lcom/android/server/ePDGConnection$DcConnectedState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1800(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcConnectedState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$1900(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 650
    :cond_2
    const/4 v0, 0x1

    .line 651
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 654
    .end local v0           #retVal:Z
    :pswitch_4
    const/4 v0, 0x1

    .line 655
    .restart local v0       #retVal:Z
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v1

    if-nez v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcFailState : send change prefmode to modem -> WWAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/ePDGConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 659
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcReadyState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$2000(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 665
    .end local v0           #retVal:Z
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v1

    if-nez v1, :cond_4

    .line 667
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGConnection;->isGoodPacket:Z

    if-eqz v1, :cond_3

    .line 669
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcFailState : User req so send change prefmode to modem -> IWLAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 670
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/server/ePDGConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 671
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mConnectingState:Lcom/android/server/ePDGConnection$DcConnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$2100(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcConnectingState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$2200(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 684
    :goto_2
    const/4 v0, 0x1

    .line 685
    .restart local v0       #retVal:Z
    goto/16 :goto_0

    .line 675
    .end local v0           #retVal:Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, " DcFailState User is now bad packet status so just stay Fail!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 682
    :cond_4
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mConnectingState:Lcom/android/server/ePDGConnection$DcConnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$2100(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcConnectingState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$2300(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 692
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "Dcfail state : msg.what=EVENT_WIFI_DISCONNECT"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->isWiFi:Z
    invoke-static {v1, v4}, Lcom/android/server/ePDGConnection;->access$1302(Lcom/android/server/ePDGConnection;Z)Z

    .line 694
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-virtual {v1}, Lcom/android/server/ePDGConnection;->clearSettings()V

    .line 696
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mDisconnectingState:Lcom/android/server/ePDGConnection$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$2400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcDisconnectingState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$2500(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 700
    const/4 v0, 0x1

    .line 701
    .restart local v0       #retVal:Z
    goto/16 :goto_0

    .line 704
    .end local v0           #retVal:Z
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcFailState;->this$0:Lcom/android/server/ePDGConnection;

    iput-boolean v4, v1, Lcom/android/server/ePDGConnection;->isGoodPacket:Z

    .line 705
    const/4 v0, 0x1

    .line 706
    .restart local v0       #retVal:Z
    goto/16 :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x40001
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method
