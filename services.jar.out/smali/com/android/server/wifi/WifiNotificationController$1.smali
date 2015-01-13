.class Lcom/android/server/wifi/WifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiHS20Iface()Lcom/lge/wifi/extension/IWifiHS20;

    move-result-object v1

    #setter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNotificationController;->access$002(Lcom/android/server/wifi/WifiNotificationController;Lcom/lge/wifi/extension/IWifiHS20;)Lcom/lge/wifi/extension/IWifiHS20;

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNotificationController;->access$102(Lcom/android/server/wifi/WifiNotificationController;I)I

    .line 175
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #calls: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$200(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    #setter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiNotificationController;->access$302(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 181
    sget-object v0, Lcom/android/server/wifi/WifiNotificationController$3;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$300(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$000(Lcom/android/server/wifi/WifiNotificationController;)Lcom/lge/wifi/extension/IWifiHS20;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$000(Lcom/android/server/wifi/WifiNotificationController;)Lcom/lge/wifi/extension/IWifiHS20;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/wifi/extension/IWifiHS20;->passpointNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$000(Lcom/android/server/wifi/WifiNotificationController;)Lcom/lge/wifi/extension/IWifiHS20;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$000(Lcom/android/server/wifi/WifiNotificationController;)Lcom/lge/wifi/extension/IWifiHS20;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/wifi/extension/IWifiHS20;->hidePasspointNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 195
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #calls: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$200(Lcom/android/server/wifi/WifiNotificationController;)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$300(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v2

    #calls: Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiNotificationController;->access$500(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V

    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.HS20_AP_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$000(Lcom/android/server/wifi/WifiNotificationController;)Lcom/lge/wifi/extension/IWifiHS20;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$000(Lcom/android/server/wifi/WifiNotificationController;)Lcom/lge/wifi/extension/IWifiHS20;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/lge/wifi/extension/IWifiHS20;->addHS20APlist(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 208
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.HS20_ANQP_FETCH_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$000(Lcom/android/server/wifi/WifiNotificationController;)Lcom/lge/wifi/extension/IWifiHS20;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$000(Lcom/android/server/wifi/WifiNotificationController;)Lcom/lge/wifi/extension/IWifiHS20;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/wifi/extension/IWifiHS20;->clearHS20APlist()V

    goto/16 :goto_0

    .line 212
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.HS20_TRY_CONNECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$000(Lcom/android/server/wifi/WifiNotificationController;)Lcom/lge/wifi/extension/IWifiHS20;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$000(Lcom/android/server/wifi/WifiNotificationController;)Lcom/lge/wifi/extension/IWifiHS20;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/lge/wifi/extension/IWifiHS20;->addHS20APconnecting(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
