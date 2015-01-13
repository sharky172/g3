.class Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;
.super Landroid/os/Handler;
.source "TetherNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetherNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherNetworkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/TetherNetwork;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/TetherNetwork;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    .line 792
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 793
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x3fe

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 798
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 801
    :sswitch_0
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 805
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->isMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 806
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK isMobileDataEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 810
    :cond_1
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK isMobileDataEnabled true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #calls: Lcom/android/server/connectivity/TetherNetwork;->turnOffWifi()V
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$400(Lcom/android/server/connectivity/TetherNetwork;)V

    .line 816
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->isLteOrEhrpdNetwork()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->isGsmNetwork()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyPhoneTetherStatus(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    const-string v0, "TetherNetwork"

    const-string v1, "LTE, EHRPD, GSM : MSG_START_TETHER_NETWORK notifyPhoneTetherStatus error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 827
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectMobileCheck()Z

    move-result v0

    if-nez v0, :cond_4

    .line 828
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK connectMobileCheck error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 832
    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->disconnectMobile()Z

    move-result v0

    if-nez v0, :cond_5

    .line 833
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK disconnectMobile error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 837
    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyPhoneTetherStatus(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 839
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK notifyPhoneTetherStatus error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 843
    :cond_6
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectMobile()Z

    move-result v0

    if-nez v0, :cond_7

    .line 844
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK connectMobile error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$500()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 847
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v0

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 850
    :cond_7
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK TetherNetwork Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 856
    :cond_8
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK mTetherNetworkDataTrans error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$600(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->removeTetherDevices(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherNetwork;->access$700(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 863
    :sswitch_1
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_STOP_TETHER_NETWORK start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getTetherNetworkDataFlagSet()Z

    move-result v0

    if-ne v0, v4, :cond_e

    .line 867
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->isLteOrEhrpdNetwork()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->isGsmNetwork()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 868
    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyPhoneTetherStatus(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    const-string v0, "TetherNetwork"

    const-string v1, "LTE, EHRPD : MSG_STOP_TETHER_NETWORK notifyPhoneTetherStatus error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 876
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->disconnectMobile()Z

    move-result v0

    if-nez v0, :cond_b

    .line 877
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_STOP_TETHER_NETWORK disconnectMobile error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_b
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyPhoneTetherStatus(Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 881
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_STOP_TETHER_NETWORK notifyPhoneTetherStatus error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_c
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectMobileNoWait()Z

    move-result v0

    if-nez v0, :cond_d

    .line 885
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_STOP_TETHER_NETWORK connectMobileCheck error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_d
    const-string v0, "TetherNetwork"

    const-string v1, "Disconnect Succeeded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 891
    :cond_e
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_STOP_TETHER_NETWORK mTetherNetworkDataTrans error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 897
    :sswitch_2
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_SHOW_MIP_ERR_DLG show Dialog for Mip Error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$600(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$600(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->removeTetherDevices(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherNetwork;->access$700(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;)V

    .line 902
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$600(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->showDialog(Landroid/content/Context;I)V
    invoke-static {v0, v1, v6}, Lcom/android/server/connectivity/TetherNetwork;->access$800(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 908
    :sswitch_3
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_SHOW_REJECT_ERR_DLG show Dialog for Network Reject Error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$600(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$600(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->removeTetherDevices(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherNetwork;->access$700(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;)V

    .line 913
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$600(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->showDialog(Landroid/content/Context;I)V
    invoke-static {v0, v1, v4}, Lcom/android/server/connectivity/TetherNetwork;->access$800(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 918
    :sswitch_4
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_SHOW_NET_ERR_TOAST show Toast for Network Error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$600(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$600(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->removeTetherDevices(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherNetwork;->access$700(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;)V

    .line 922
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$600(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/android/server/connectivity/TetherNetwork;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/TetherNetwork;->access$900(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 798
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x3f3 -> :sswitch_1
        0x3fc -> :sswitch_2
        0x3fd -> :sswitch_3
        0x3fe -> :sswitch_4
    .end sparse-switch
.end method
