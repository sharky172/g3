.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;
.super Ljava/lang/Object;
.source "PhoneWindowManagerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;->val$keyCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenOffKeyIntent:Landroid/content/Intent;

    const-string v1, "com.lge.intent.extra.SCREEN_OFF_KEY_CODE"

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;->val$keyCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 889
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenOffKeyIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 890
    return-void
.end method
