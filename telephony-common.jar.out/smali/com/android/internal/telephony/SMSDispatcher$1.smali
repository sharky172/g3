.class Lcom/android/internal/telephony/SMSDispatcher$1;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 2523
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2526
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 2527
    const-string v0, "isCdmaMo(), [SMS.MO.RETRY] click YES to resend sms"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2528
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v2, 0x12e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2533
    :cond_0
    :goto_0
    return-void

    .line 2529
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 2530
    const-string v0, "isCdmaMo(), [SMS.MO.RETRY] click NO to stop resending"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2531
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v2, 0x12f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
