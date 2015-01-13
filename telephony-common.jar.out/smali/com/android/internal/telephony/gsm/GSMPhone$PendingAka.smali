.class Lcom/android/internal/telephony/gsm/GSMPhone$PendingAka;
.super Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingAka"
.end annotation


# instance fields
.field private mAutn:[B

.field private mRand:[B

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;[B[BLandroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "rand"
    .parameter "autn"
    .parameter "onComplete"

    .prologue
    .line 3731
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingAka;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 3732
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V

    .line 3733
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingAka;->mRand:[B

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingAka;->mAutn:[B

    .line 3734
    return-void
.end method


# virtual methods
.method public onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .parameter "res"
    .parameter "e"

    .prologue
    .line 3738
    if-eqz p2, :cond_0

    .line 3739
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3744
    :goto_0
    return-void

    .line 3741
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingAka;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingAka;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/gsm/GSMPhone;->mISimSessionId:I
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1900(Lcom/android/internal/telephony/gsm/GSMPhone;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingAka;->mRand:[B

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingAka;->mAutn:[B

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingAka;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v5, 0x28

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V

    goto :goto_0
.end method
