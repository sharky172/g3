.class Lcom/android/internal/telephony/gsm/GSMPhone$PendingNaf;
.super Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingNaf"
.end annotation


# instance fields
.field private mNafId:[B

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;[BLandroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "nafId"
    .parameter "onComplete"

    .prologue
    .line 3770
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingNaf;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 3771
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V

    .line 3772
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingNaf;->mNafId:[B

    .line 3773
    return-void
.end method


# virtual methods
.method public onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "res"
    .parameter "e"

    .prologue
    .line 3777
    if-eqz p2, :cond_0

    .line 3778
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3783
    :goto_0
    return-void

    .line 3780
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingNaf;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingNaf;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/gsm/GSMPhone;->mISimSessionId:I
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1900(Lcom/android/internal/telephony/gsm/GSMPhone;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingNaf;->mNafId:[B

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingNaf;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v4, 0x2c

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V

    goto :goto_0
.end method
