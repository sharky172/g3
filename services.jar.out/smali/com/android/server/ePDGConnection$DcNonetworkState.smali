.class Lcom/android/server/ePDGConnection$DcNonetworkState;
.super Lcom/android/internal/util/State;
.source "ePDGConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcNonetworkState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1285
    invoke-direct {p0, p1}, Lcom/android/server/ePDGConnection$DcNonetworkState;-><init>(Lcom/android/server/ePDGConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcNonetworkState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1293
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcNonetworkState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 1308
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1342
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcNonetworkState nothandled msg.what=0x"

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

    .line 1345
    const/4 v0, 0x0

    .line 1348
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 1312
    .end local v0           #retVal:Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/ePDGConnection;->isGoodPacket:Z

    .line 1313
    const/4 v0, 0x1

    .line 1314
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 1318
    .end local v0           #retVal:Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->isWiFi:Z
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$1302(Lcom/android/server/ePDGConnection;Z)Z

    .line 1319
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    iput-boolean v2, v1, Lcom/android/server/ePDGConnection;->isGoodPacket:Z

    .line 1320
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->isManager:Z
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$5700(Lcom/android/server/ePDGConnection;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1321
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcReadyState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$5800(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 1323
    :cond_0
    const/4 v0, 0x1

    .line 1324
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 1327
    .end local v0           #retVal:Z
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v2, "DcNonetworkState get request in no network so deffer msg"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1328
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/ePDGConnection;->access$5900(Lcom/android/server/ePDGConnection;Landroid/os/Message;)V

    .line 1329
    const/4 v0, 0x1

    .line 1330
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 1333
    .end local v0           #retVal:Z
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    #setter for: Lcom/android/server/ePDGConnection;->isManager:Z
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$5702(Lcom/android/server/ePDGConnection;Z)Z

    .line 1334
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->isWiFi:Z
    invoke-static {v1}, Lcom/android/server/ePDGConnection;->access$1300(Lcom/android/server/ePDGConnection;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1335
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    iget-object v2, p0, Lcom/android/server/ePDGConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGConnection;

    #getter for: Lcom/android/server/ePDGConnection;->mReadyState:Lcom/android/server/ePDGConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGConnection;->access$1400(Lcom/android/server/ePDGConnection;)Lcom/android/server/ePDGConnection$DcReadyState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGConnection;->access$6000(Lcom/android/server/ePDGConnection;Lcom/android/internal/util/IState;)V

    .line 1336
    :cond_1
    const/4 v0, 0x1

    .line 1337
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 1308
    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_1
        0x40002 -> :sswitch_2
        0x40004 -> :sswitch_3
        0x4000b -> :sswitch_0
    .end sparse-switch
.end method
