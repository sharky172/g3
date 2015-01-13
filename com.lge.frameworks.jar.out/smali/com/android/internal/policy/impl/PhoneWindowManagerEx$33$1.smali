.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33$1;
.super Ljava/lang/Object;
.source "PhoneWindowManagerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;)V
    .locals 0
    .parameter

    .prologue
    .line 3835
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3837
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3838
    return-void
.end method
