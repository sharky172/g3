.class Lcom/android/internal/telephony/InboundSmsHandler$SegmentExpirationRunnable;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SegmentExpirationRunnable"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private mFirstTime:J

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/SmsMessageBase;J)V
    .locals 2
    .parameter
    .parameter "sms"
    .parameter "firstTime"

    .prologue
    .line 2990
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SegmentExpirationRunnable;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2991
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 2993
    .local v0, originatingAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2994
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SegmentExpirationRunnable;->address:Ljava/lang/String;

    .line 2996
    :cond_0
    iput-wide p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SegmentExpirationRunnable;->mFirstTime:J

    .line 2997
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3001
    const-wide/32 v2, 0x493e0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3007
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "address ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3008
    .local v1, where:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SegmentExpirationRunnable;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    const-string v2, "time ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3011
    iget-wide v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SegmentExpirationRunnable;->mFirstTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3012
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SegmentExpirationRunnable;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/InboundSmsHandler;->sendSavedPdusIndividually(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1100(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    .line 3013
    return-void

    .line 3002
    .end local v1           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 3003
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "SegmentExpirationRunnable:run(), Thread Interrupted exception catch"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
