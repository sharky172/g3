.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;
.super Ljava/lang/Object;
.source "PhoneWindowManagerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->showGoHomeDialog()V
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
    .line 3398
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3401
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog2:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3440
    :cond_0
    :goto_0
    return-void

    .line 3405
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3409
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_3

    .line 3410
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3412
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x20d0316

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3413
    const v1, 0x20d0318

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3414
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3415
    const v1, 0x20d031c

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3421
    const v1, 0x20d031d

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3429
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3435
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog:Landroid/app/AlertDialog;

    .line 3436
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 3439
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
