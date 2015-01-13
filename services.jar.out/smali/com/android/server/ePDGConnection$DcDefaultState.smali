.class Lcom/android/server/ePDGConnection$DcDefaultState;
.super Lcom/android/internal/util/State;
.source "ePDGConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1352
    invoke-direct {p0, p1}, Lcom/android/server/ePDGConnection$DcDefaultState;-><init>(Lcom/android/server/ePDGConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "Defatult state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1358
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "Defatult state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1366
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1371
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1440
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcDefaultState: shouldn\'t happen but ignore msg.what=0x"

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

    .line 1446
    :cond_0
    :goto_0
    return v4

    .line 1373
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v1, 0x5

    #setter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$902(Lcom/android/server/ePDGConnection;I)I

    .line 1374
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/server/ePDGConnection;->mLastNetworkReason:I
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$1002(Lcom/android/server/ePDGConnection;I)I

    .line 1375
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcDefaultState state : we get HandoverFail!!"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$2900(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcFailState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$6100(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1380
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->isWiFi:Z
    invoke-static {v0, v4}, Lcom/android/server/ePDGConnection;->access$1302(Lcom/android/server/ePDGConnection;Z)Z

    .line 1381
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iput-boolean v4, v0, Lcom/android/server/ePDGConnection;->isGoodPacket:Z

    goto :goto_0

    .line 1386
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iput-boolean v3, v0, Lcom/android/server/ePDGConnection;->isGoodPacket:Z

    .line 1387
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcDefaultState state : we get packet loss, so go to fail!!"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1388
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/ePDGConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 1389
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v1, 0x4

    #setter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$902(Lcom/android/server/ePDGConnection;I)I

    .line 1390
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$2900(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcFailState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$6200(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1398
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcDefaultState: msg.what=EVENT_WIFI_DISCONNECT"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->isWiFi:Z
    invoke-static {v0, v3}, Lcom/android/server/ePDGConnection;->access$1302(Lcom/android/server/ePDGConnection;Z)Z

    .line 1400
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-virtual {v0}, Lcom/android/server/ePDGConnection;->clearSettings()V

    .line 1403
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v0}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcDefaultState : Wifi Disconnected so prefmode  -> WWAN"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/ePDGConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 1410
    :cond_1
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mNonetworkState:Lcom/android/server/ePDGConnection$DcNonetworkState;
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1600(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcNonetworkState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$6300(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1417
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcDefaultState: MEN BONG SMi?!! WHO make manger stop!!"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->isManager:Z
    invoke-static {v0, v3}, Lcom/android/server/ePDGConnection;->access$5702(Lcom/android/server/ePDGConnection;Z)Z

    .line 1419
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mNonetworkState:Lcom/android/server/ePDGConnection$DcNonetworkState;
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1600(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcNonetworkState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ePDGConnection;->access$6400(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1429
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v0}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcDefaultState : user disconnect so prefmode to modem -> WWAN"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcDefaultState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/ePDGConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1371
    nop

    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
