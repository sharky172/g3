.class Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;
.super Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingWrite"
.end annotation


# instance fields
.field private mData:[B

.field private mEfid:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;I[BLandroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "efid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 3790
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 3791
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V

    .line 3792
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->mData:[B

    .line 3793
    iput p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->mEfid:I

    .line 3794
    return-void
.end method


# virtual methods
.method public onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "res"
    .parameter "e"

    .prologue
    .line 3798
    if-eqz p2, :cond_0

    .line 3799
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3821
    :goto_0
    return-void

    .line 3808
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$2000(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$2100(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 3809
    .local v0, app:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_1
    if-eqz v0, :cond_3

    .line 3810
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 3811
    .local v1, iccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_2

    .line 3812
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->mEfid:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->mData:[B

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_0

    .line 3808
    .end local v0           #app:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1           #iccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3814
    .restart local v0       #app:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1       #iccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    const-string v2, "GSMPhone"

    const-string v3, "NullPointerException occur - iccFh == null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3817
    .end local v1           #iccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_3
    const-string v2, "GSMPhone"

    const-string v3, "NullPointerException occur - app == null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
