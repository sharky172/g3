.class final Lcom/android/internal/telephony/IccSmsInterfaceManager$TdLteConfirmDialogListener;
.super Ljava/lang/Object;
.source "IccSmsInterfaceManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TdLteConfirmDialogListener"
.end annotation


# instance fields
.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$TdLteConfirmDialogListener;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/IccSmsInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$TdLteConfirmDialogListener;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 402
    const-string v0, "onCancel(), [RED] CANCEL"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 403
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 377
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 378
    const-string v0, "onClick(), [RED] User Select YES"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$TdLteConfirmDialogListener;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$TdLteConfirmDialogListener;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v2, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x84

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setTddStatus(ILandroid/os/Message;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$TdLteConfirmDialogListener;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->ltePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$TdLteConfirmDialogListener;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->ltePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 390
    const-string v0, "onClick(), [RED] User Select NO"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$TdLteConfirmDialogListener;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->ltePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$TdLteConfirmDialogListener;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->ltePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method setNegativeButton(Landroid/widget/Button;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$TdLteConfirmDialogListener;->mNegativeButton:Landroid/widget/Button;

    .line 372
    return-void
.end method

.method setPositiveButton(Landroid/widget/Button;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$TdLteConfirmDialogListener;->mPositiveButton:Landroid/widget/Button;

    .line 368
    return-void
.end method
