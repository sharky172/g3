.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$34;
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
    .line 3864
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3868
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getStatusBarServiceEx()Lcom/android/server/IStatusBarServiceEx;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Lcom/android/server/IStatusBarServiceEx;

    move-result-object v1

    .line 3869
    .local v1, statusbar:Lcom/android/server/IStatusBarServiceEx;
    if-eqz v1, :cond_0

    .line 3870
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5400(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarRes:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5500(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mNavigationBarRes:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5600(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/IStatusBarServiceEx;->setSystemUiBackground(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3875
    .end local v1           #statusbar:Lcom/android/server/IStatusBarServiceEx;
    :cond_0
    :goto_0
    return-void

    .line 3872
    :catch_0
    move-exception v0

    .line 3873
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarServiceEx:Lcom/android/server/IStatusBarServiceEx;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$5702(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Lcom/android/server/IStatusBarServiceEx;)Lcom/android/server/IStatusBarServiceEx;

    goto :goto_0
.end method
