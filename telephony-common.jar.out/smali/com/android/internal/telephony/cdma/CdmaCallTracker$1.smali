.class Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1628
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.intent.action.AOCR_RECEIVED_KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsReceivedAocr:Z

    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #calls: Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$000(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    .line 1632
    :cond_0
    return-void
.end method
