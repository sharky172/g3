.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;
.super Ljava/lang/Object;
.source "PhoneWindowManagerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->showQButtonGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 4124
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4128
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQButtonDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5800(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v2, 0x20a01cb

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 4130
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x20d0385

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4131
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFourthKeySharing:Z

    if-eqz v1, :cond_0

    .line 4132
    const v1, 0x20d0386

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4136
    :goto_0
    const v1, 0x20d02a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4137
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQButtonDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5802(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4138
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQButtonDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5800(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 4139
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "first_q_button"

    const-string v3, "q_button_pressed"

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4141
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQButtonDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5800(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 4148
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 4134
    .restart local v0       #ab:Landroid/app/AlertDialog$Builder;
    :cond_0
    const v1, 0x20d0387

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 4146
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 4143
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQButtonDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5800(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 4144
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQButtonDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5802(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
