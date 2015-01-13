.class Lcom/kddi/android/CpaManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CpaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/CpaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/android/CpaManager;


# direct methods
.method constructor <init>(Lcom/kddi/android/CpaManager;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, -0x4

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=  Intent Receive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v5, "cpa_onSetupConnectionCompleted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 72
    const-string v5, "ril.btdun.send"

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v5, "result"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 74
    .local v3, resultKey:Z
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const-string v6, "mFailCause"

    invoke-virtual {p2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v5, v6}, Lcom/kddi/android/CpaManager;->access$002(Lcom/kddi/android/CpaManager;I)I

    .line 75
    const-string v5, "status"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, stat:Ljava/lang/String;
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v5, "RIL_Cpa"

    const-string v6, "=  Intent Receive CPA_CONNECTION_CHANGED                              "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=\t CPA_STATUS    : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$100(Lcom/kddi/android/CpaManager;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=\t RESULT        : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=\t ERROR         : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$000(Lcom/kddi/android/CpaManager;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=\t REPORT STATUS : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v5, "RIL_Cpa"

    const-string v6, " "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz v3, :cond_8

    .line 89
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v5}, Lcom/kddi/android/CpaManager;->access$100(Lcom/kddi/android/CpaManager;)I

    move-result v5

    if-ne v5, v9, :cond_6

    .line 91
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const/4 v6, 0x2

    #setter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v5, v6}, Lcom/kddi/android/CpaManager;->access$102(Lcom/kddi/android/CpaManager;I)I

    .line 92
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #setter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v5, v8}, Lcom/kddi/android/CpaManager;->access$002(Lcom/kddi/android/CpaManager;I)I

    .line 94
    const-string v5, "addresses"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, addresses:[Ljava/lang/String;
    const-string v5, "dnses"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, dnses:[Ljava/lang/String;
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v5}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v5

    if-nez v5, :cond_0

    .line 98
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    new-instance v6, Lcom/kddi/android/CpaManager$ConnInfo;

    invoke-direct {v6}, Lcom/kddi/android/CpaManager$ConnInfo;-><init>()V

    #setter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v5, v6}, Lcom/kddi/android/CpaManager;->access$202(Lcom/kddi/android/CpaManager;Lcom/kddi/android/CpaManager$ConnInfo;)Lcom/kddi/android/CpaManager$ConnInfo;

    .line 99
    :cond_0
    if-eqz v1, :cond_2

    array-length v5, v1

    if-eqz v5, :cond_2

    .line 101
    aget-object v5, v1, v8

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    aput-object v5, v1, v8

    .line 102
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v5}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    iput-object v6, v5, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    .line 107
    :goto_0
    if-eqz v2, :cond_5

    array-length v5, v2

    if-eqz v5, :cond_5

    .line 109
    array-length v5, v2

    if-le v5, v9, :cond_3

    .line 110
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dnses.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dnses[0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dnses[1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_1
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v5}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    aget-object v6, v2, v8

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    aput-object v6, v5, v8

    .line 114
    array-length v5, v2

    if-le v5, v9, :cond_4

    .line 115
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v5}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    aget-object v6, v2, v9

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    aput-object v6, v5, v9

    .line 125
    :goto_2
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    iget-object v6, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v6}, Lcom/kddi/android/CpaManager;->access$100(Lcom/kddi/android/CpaManager;)I

    move-result v6

    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$000(Lcom/kddi/android/CpaManager;)I

    move-result v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/kddi/android/CpaManager;->sendIntentToApplication(III)V

    .line 127
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v5, "RIL_Cpa"

    const-string v6, "=  2. CONNECTED STATUS : MODE_NAVI                                    "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=\t  CPA_STATUS : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$100(Lcom/kddi/android/CpaManager;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=\t  IP address : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=\t  Pri DNS    : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=\t  Sec DNS    : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v5, "RIL_Cpa"

    const-string v6, " "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v1           #addresses:[Ljava/lang/String;
    .end local v2           #dnses:[Ljava/lang/String;
    .end local v3           #resultKey:Z
    .end local v4           #stat:Ljava/lang/String;
    :cond_1
    :goto_3
    return-void

    .line 105
    .restart local v1       #addresses:[Ljava/lang/String;
    .restart local v2       #dnses:[Ljava/lang/String;
    .restart local v3       #resultKey:Z
    .restart local v4       #stat:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v5}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v5

    iput-object v10, v5, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    goto/16 :goto_0

    .line 112
    :cond_3
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dnses.length=1 dnses[0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 117
    :cond_4
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v5}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    aput-object v10, v5, v9

    goto/16 :goto_2

    .line 121
    :cond_5
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v5}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    aput-object v10, v5, v8

    .line 122
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v5}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    aput-object v10, v5, v9

    goto/16 :goto_2

    .line 137
    .end local v1           #addresses:[Ljava/lang/String;
    .end local v2           #dnses:[Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v5}, Lcom/kddi/android/CpaManager;->access$100(Lcom/kddi/android/CpaManager;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    const-string v5, "DISCONNECTED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    :cond_7
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #setter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v5, v11}, Lcom/kddi/android/CpaManager;->access$102(Lcom/kddi/android/CpaManager;I)I

    .line 140
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #setter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v5, v8}, Lcom/kddi/android/CpaManager;->access$002(Lcom/kddi/android/CpaManager;I)I

    .line 142
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    iget-object v6, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v6}, Lcom/kddi/android/CpaManager;->access$100(Lcom/kddi/android/CpaManager;)I

    move-result v6

    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$000(Lcom/kddi/android/CpaManager;)I

    move-result v7

    invoke-virtual {v5, v6, v7, v9}, Lcom/kddi/android/CpaManager;->sendIntentToApplication(III)V

    .line 144
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v5, "RIL_Cpa"

    const-string v6, "=  4. DISCONNECTED STATUS        \t\t\t\t\t                 "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v5, "RIL_Cpa"

    const-string v6, " "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 150
    :cond_8
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v5}, Lcom/kddi/android/CpaManager;->access$000(Lcom/kddi/android/CpaManager;)I

    move-result v5

    if-gez v5, :cond_9

    .line 152
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #setter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v5, v11}, Lcom/kddi/android/CpaManager;->access$102(Lcom/kddi/android/CpaManager;I)I

    .line 154
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    iget-object v6, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v6}, Lcom/kddi/android/CpaManager;->access$100(Lcom/kddi/android/CpaManager;)I

    move-result v6

    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$000(Lcom/kddi/android/CpaManager;)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/kddi/android/CpaManager;->sendIntentToApplication(III)V

    .line 156
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v5, "RIL_Cpa"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=  4. DISCONNECTED STATUS - ERROR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$000(Lcom/kddi/android/CpaManager;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "         \t\t\t\t "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v5, "RIL_Cpa"

    const-string v6, " "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 163
    :cond_9
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #setter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v5, v11}, Lcom/kddi/android/CpaManager;->access$102(Lcom/kddi/android/CpaManager;I)I

    .line 164
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const-string v6, "mFailCause"

    invoke-virtual {p2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v5, v6}, Lcom/kddi/android/CpaManager;->access$002(Lcom/kddi/android/CpaManager;I)I

    .line 166
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v5, "RIL_Cpa"

    const-string v6, "=  4. DISCONNECTED STATUS - Abnormal Case                             "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v5, "RIL_Cpa"

    const-string v6, " "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 172
    .end local v3           #resultKey:Z
    .end local v4           #stat:Ljava/lang/String;
    :cond_a
    const-string v5, "com.kddi.android.cpa.REQUEST_CPA_DISABLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v5, "RIL_Cpa"

    const-string v6, "=  Intent Receive REQUEST_CPA_DISABLE changeMode(MODE_DEFAULT)        "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v5, "RIL_Cpa"

    const-string v6, "======================================================================"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v5, "RIL_Cpa"

    const-string v6, " "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v5, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const-string v6, "DEFAULT"

    invoke-virtual {v5, v6, v10}, Lcom/kddi/android/CpaManager;->changeMode(Ljava/lang/String;Lcom/kddi/android/CpaManager$Settings;)I

    goto/16 :goto_3
.end method
