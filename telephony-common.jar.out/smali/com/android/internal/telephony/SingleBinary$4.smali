.class Lcom/android/internal/telephony/SingleBinary$4;
.super Ljava/lang/Object;
.source "SingleBinary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SingleBinary;->switchCustBaseUI(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SingleBinary;

.field final synthetic val$finalMapping_rootdir:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    iput-object p2, p0, Lcom/android/internal/telephony/SingleBinary$4;->val$finalMapping_rootdir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 472
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 473
    const-string v1, "GSM"

    const-string v2, "[LGE][SBP] Send new Intent - CUST_CHNAGED_INFO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v1, "3"

    iget-object v2, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    #getter for: Lcom/android/internal/telephony/SingleBinary;->mMncLength:I
    invoke-static {v2}, Lcom/android/internal/telephony/SingleBinary;->access$600(Lcom/android/internal/telephony/SingleBinary;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    const-string v1, "persist.radio.first-mccmnc"

    iget-object v2, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    #getter for: Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/SingleBinary;->access$700(Lcom/android/internal/telephony/SingleBinary;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.action.CUST_CHANGED_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cust_old_path"

    const-string v2, "ro.lge.capp_cupss.rootdir"

    const-string v3, "/cust"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 486
    const-string v1, "persist.radio.cupss.next-root"

    iget-object v2, p0, Lcom/android/internal/telephony/SingleBinary$4;->val$finalMapping_rootdir:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Please Wait..."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Device is getting update with new Configuration"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SingleBinary;->access$302(Lcom/android/internal/telephony/SingleBinary;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    #getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    #getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    #getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    #getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 502
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 480
    :cond_0
    const-string v1, "persist.radio.first-mccmnc"

    iget-object v2, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    #getter for: Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/SingleBinary;->access$700(Lcom/android/internal/telephony/SingleBinary;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1
.end method
