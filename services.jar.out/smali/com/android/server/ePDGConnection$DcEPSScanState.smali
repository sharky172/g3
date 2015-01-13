.class Lcom/android/server/ePDGConnection$DcEPSScanState;
.super Lcom/android/internal/util/State;
.source "ePDGConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcEPSScanState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1041
    invoke-direct {p0, p1}, Lcom/android/server/ePDGConnection$DcEPSScanState;-><init>(Lcom/android/server/ePDGConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const v5, 0x40008

    const/4 v4, 0x0

    .line 1048
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "mEPSScanState state enter"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    #calls: Lcom/android/server/ePDGConnection;->makeFQDN()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$4600(Lcom/android/server/ePDGConnection;)Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, FQDN:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1081
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->ePDGAddrForTestApp:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$4700(Lcom/android/server/ePDGConnection;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->setEPDGGWAddr([Ljava/lang/String;)I

    .line 1059
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-virtual {v2, v5, v4, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "mEPSScanState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1090
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 1096
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1118
    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEPSScanState nothandled msg.what=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1121
    const/4 v1, 0x0

    .line 1124
    .local v1, retVal:Z
    :goto_0
    return v1

    .line 1101
    .end local v1           #retVal:Z
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 1103
    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$4800(Lcom/android/server/ePDGConnection;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1104
    .local v0, gwaddr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->mCurrentGW:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/ePDGConnection;->access$4902(Lcom/android/server/ePDGConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 1106
    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mConnectingState:Lcom/android/server/ePDGConnection$DcConnectingState;
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$2100(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcConnectingState;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/ePDGConnection;->access$5000(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 1113
    .end local v0           #gwaddr:Ljava/lang/String;
    :goto_1
    const/4 v1, 0x1

    .line 1114
    .restart local v1       #retVal:Z
    goto :goto_0

    .line 1110
    .end local v1           #retVal:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v3, 0x2

    #setter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v2, v3}, Lcom/android/server/ePDGConnection;->access$902(Lcom/android/server/ePDGConnection;I)I

    .line 1111
    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$2900(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcFailState;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/ePDGConnection;->access$5100(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1096
    :pswitch_data_0
    .packed-switch 0x40008
        :pswitch_0
    .end packed-switch
.end method
