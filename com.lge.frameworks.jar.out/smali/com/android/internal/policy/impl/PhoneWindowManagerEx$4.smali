.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$4;
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
    .line 2222
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    if-nez v0, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->showRestartActionDialog()V

    .line 2228
    :cond_0
    return-void
.end method
