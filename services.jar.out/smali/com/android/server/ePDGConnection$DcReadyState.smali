.class Lcom/android/server/ePDGConnection$DcReadyState;
.super Lcom/android/internal/util/State;
.source "ePDGConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1172
    invoke-direct {p0, p1}, Lcom/android/server/ePDGConnection$DcReadyState;-><init>(Lcom/android/server/ePDGConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcReadyState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcReadyState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1190
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 1196
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1274
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcReadyState nothandled msg.what=0x"

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

    .line 1277
    const/4 v0, 0x0

    .line 1280
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 1201
    .end local v0           #retVal:Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ePDG] just ready state so ignore low loss, mfid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1202
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    iput-boolean v4, v1, Lcom/android/server/ePDGConnection;->isGoodPacket:Z

    .line 1203
    const/4 v0, 0x1

    .line 1205
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 1211
    .end local v0           #retVal:Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1213
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    #calls: Lcom/android/server/ePDGConnection;->notifyePDGCompleted(II)V
    invoke-static {v1, v4, v4}, Lcom/android/server/ePDGConnection;->access$1100(Lcom/android/server/ePDGConnection;II)V

    .line 1214
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "[ePDG] Connected Msg from RIL in ready state "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1215
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mConnectedState:Lcom/android/server/ePDGConnection$DcConnectedState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1800(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcConnectedState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$5200(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 1221
    :goto_1
    const/4 v0, 0x1

    .line 1223
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 1219
    .end local v0           #retVal:Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ePDG] this is not handover type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and get connect in the ready state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1229
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcReadyState msg.what=EVENT_EPDG_REQUEST."

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1251
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1253
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGConnection;->isGoodPacket:Z

    if-eqz v1, :cond_1

    .line 1255
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "Ready state : User req so send change prefmode to modem -> IWLAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1256
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v3, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFid:I
    invoke-static {v3}, Lcom/android/server/ePDGConnection;->access$1200(Lcom/android/server/ePDGConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ePDGConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 1257
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mConnectingState:Lcom/android/server/ePDGConnection$DcConnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$2100(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcConnectingState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$5300(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 1265
    :goto_2
    const/4 v0, 0x1

    .line 1266
    .restart local v0       #retVal:Z
    goto/16 :goto_0

    .line 1261
    .end local v0           #retVal:Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "User is now bad packet status so just go to Fail!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1262
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v2, 0x4

    #setter for: Lcom/android/server/ePDGConnection;->mFailReason:I
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$902(Lcom/android/server/ePDGConnection;I)I

    .line 1263
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mFailState:Lcom/android/server/ePDGConnection$DcFailState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$2900(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcFailState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$5400(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 1268
    :cond_2
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcReadyState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mEPSScanState:Lcom/android/server/ePDGConnection$DcEPSScanState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$5500(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcEPSScanState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$5600(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 1269
    const/4 v0, 0x1

    .line 1270
    .restart local v0       #retVal:Z
    goto/16 :goto_0

    .line 1196
    nop

    :sswitch_data_0
    .sparse-switch
        0x40002 -> :sswitch_2
        0x40005 -> :sswitch_1
        0x4000b -> :sswitch_0
    .end sparse-switch
.end method
