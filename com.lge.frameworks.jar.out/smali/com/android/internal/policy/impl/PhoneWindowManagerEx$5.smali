.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$5;
.super Ljava/lang/Object;
.source "PhoneWindowManagerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
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
    .line 2432
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2434
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.EASY_ACCESS_SHOW_CATEGORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2435
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2436
    return-void
.end method
