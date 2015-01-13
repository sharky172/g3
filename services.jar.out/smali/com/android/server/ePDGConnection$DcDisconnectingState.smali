.class Lcom/android/server/ePDGConnection$DcDisconnectingState;
.super Lcom/android/internal/util/State;
.source "ePDGConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/android/server/ePDGConnection$DcDisconnectingState;-><init>(Lcom/android/server/ePDGConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcDisconnectingState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcDisconnectingState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    .line 744
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 792
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDisconnectingState nothandled msg.what=0x"

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

    .line 795
    const/4 v0, 0x0

    .line 798
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 747
    .end local v0           #retVal:Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcDisconnectingState: EVENT_HANDOVER_FAIL, ims should not remain in the ePDG"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v1, v4, v2}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 750
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcReadyState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$2600(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 751
    const/4 v0, 0x1

    .line 752
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 755
    .end local v0           #retVal:Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDisconnectingState: EVENT_DISCONNECTED, it should be IMS!! mFid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const/16 v2, 0x63

    iput v2, v1, Lcom/android/server/ePDGConnection;->cid:I

    .line 757
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->isWiFi:Z
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1300(Lcom/android/server/ePDGConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v1, v4, v2}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 759
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcReadyState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$2700(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 765
    :goto_1
    const/4 v0, 0x1

    .line 766
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 762
    .end local v0           #retVal:Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v2, 0x3

    const/4 v3, 0x6

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 763
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mNonetworkState:Lcom/android/server/ePDGConnection$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1600(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcNonetworkState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$2800(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 770
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcDisconnectingState: MEN BONG SM?!! Why no rsp form IPSEC!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$902(Lcom/android/server/ePDGConnection;I)I

    .line 772
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$2900(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcFailState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$3000(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 773
    const/4 v0, 0x1

    .line 774
    .restart local v0       #retVal:Z
    goto/16 :goto_0

    .line 778
    .end local v0           #retVal:Z
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDisconnectingState get EPDG req, so it will be go when we get disconnect rsp mFid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 779
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/ePDGConnection;->access$3100(Lcom/android/server/ePDGConnection;Landroid/os/Message;)V

    .line 780
    const/4 v0, 0x1

    .line 781
    .restart local v0       #retVal:Z
    goto/16 :goto_0

    .line 785
    .end local v0           #retVal:Z
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcDisconnectingState: msg.what=EVENT_WIFI_DISCONNECT"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 786
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/ePDGConnection;->isWiFi:Z
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$1302(Lcom/android/server/ePDGConnection;Z)Z

    .line 787
    const/4 v0, 0x1

    .line 788
    .restart local v0       #retVal:Z
    goto/16 :goto_0

    .line 744
    nop

    :sswitch_data_0
    .sparse-switch
        0x40001 -> :sswitch_4
        0x40002 -> :sswitch_3
        0x40006 -> :sswitch_1
        0x40007 -> :sswitch_2
        0x4000c -> :sswitch_0
    .end sparse-switch
.end method
