.class Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;
.super Landroid/net/INetworkManagementEventObserverEx$Stub;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdObserverEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V
    .locals 0
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserverEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 824
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    return-void
.end method


# virtual methods
.method public DnsFailed(Ljava/lang/String;I)V
    .locals 4
    .parameter "host"
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-nez v1, :cond_1

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$300()Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isConnected(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    #getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z
    invoke-static {v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$000(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;I)V

    .line 844
    .local v0, failResult:Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;
    const-string v1, "true"

    const-string v2, "net.is_dropping_packet"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 845
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v2, "skip onDnsFailObserved for LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 851
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    #getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->PRIVACY_ENABLE:Z
    invoke-static {v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$400(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 852
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS result Hostname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v3, 0x4281c

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 854
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS result Hostname: xxxxxxxxxx code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public DsqnNotification(Ljava/lang/String;I)V
    .locals 0
    .parameter "devname"
    .parameter "errorCode"

    .prologue
    .line 859
    return-void
.end method

.method public PlayerEvNotification(Ljava/lang/String;I)V
    .locals 0
    .parameter "event"
    .parameter "num"

    .prologue
    .line 862
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 3
    .parameter "iface"
    .parameter "up"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 827
    const-string v0, "rmnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RMNET interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state changed: UP??"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->updateConnectionInfosList(Ljava/lang/String;Z)V

    .line 831
    :cond_0
    return-void
.end method

.method public interfaceThrottleStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "iface"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 864
    return-void
.end method

.method public netdConnected()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 866
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v3, "netdConnected() is called"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 868
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v2, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v2, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-eqz v2, :cond_1

    .line 870
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    #getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$500(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .line 871
    .local v0, conn:Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;->CONNECTED:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    if-ne v2, v3, :cond_0

    .line 872
    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netdConnected() RECOVERY_ACTION:: CLEANUP_CONN with APN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 874
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v2, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$300()Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpConnection(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Z)V

    goto :goto_0

    .line 879
    .end local v0           #conn:Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
