.class final Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field private mBroadcastTimeNano:J

.field private final mDeleteWhere:Ljava/lang/String;

.field private final mDeleteWhereArgs:[Ljava/lang/String;

.field private mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 2
    .parameter
    .parameter "tracker"

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1756
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    .line 1757
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 1758
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    .line 1760
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1762
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x3

    .line 1766
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1767
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1769
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1771
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, p2, v4, v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1773
    const-string v3, "onReceive, deliver intent"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1827
    :goto_0
    return-void

    .line 1774
    :cond_0
    const-string v3, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1776
    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1777
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1778
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, p2, v4, v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1780
    const-string v3, "onReceive, deliver intent(Intents.WAP_PUSH_RECEIVED_ACTION)"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    goto :goto_0

    .line 1783
    :cond_1
    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1786
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected BroadcastReceiver action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1789
    :cond_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v2

    .line 1790
    .local v2, rc:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 1791
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a broadcast receiver set the result code to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deleting from raw table anyway!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1798
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "concat_stitching"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1799
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget-boolean v3, v3, Lcom/android/internal/telephony/InboundSmsTracker;->isNeedToKeepDB:Z

    if-eqz v3, :cond_5

    .line 1800
    const-string v3, "SmsBroadcastReceiver(), [RED] Don\'t Delete DB."

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1801
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget-boolean v3, v3, Lcom/android/internal/telephony/InboundSmsTracker;->isExpiredByTimer:Z

    if-eqz v3, :cond_4

    .line 1802
    const-string v3, "SmsBroadcastReceiver(), [RED] Don\'t process EVENT_BROADCAST_COMPLETE"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1820
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    long-to-int v1, v3

    .line 1821
    .local v1, durationMillis:I
    const/16 v3, 0x1388

    if-lt v1, v3, :cond_8

    .line 1822
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slow ordered broadcast completion time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1794
    .end local v1           #durationMillis:I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v4, "successful broadcast, deleting from raw table."

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1804
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v3, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_2

    .line 1807
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget-boolean v3, v3, Lcom/android/internal/telephony/InboundSmsTracker;->isExpiredByTimer:Z

    if-nez v3, :cond_6

    .line 1808
    const-string v3, "SmsBroadcastReceiver(), [RED] Normal Case"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1809
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1810
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v3, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_2

    .line 1812
    :cond_6
    const-string v3, "SmsBroadcastReceiver(), [RED] Don\'t Delete DB && process EVENT_BROADCAST_COMPLETE."

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    goto :goto_2

    .line 1817
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1818
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v3, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_2

    .line 1824
    .restart local v1       #durationMillis:I
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ordered broadcast completed in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
