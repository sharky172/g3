.class Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;
.super Ljava/lang/Object;
.source "CdmaLteServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->displayTDDNoSVCDuring3min()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    const/16 v3, 0x44e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setTddStatus(ILandroid/os/Message;)V

    .line 1383
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mTddNoSVCDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->access$000(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1384
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mTddNoSVCDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->access$002(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1385
    return-void
.end method
