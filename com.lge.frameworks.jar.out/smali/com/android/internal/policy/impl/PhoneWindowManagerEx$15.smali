.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$15;
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
    .line 2779
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2782
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSimSwitchPressed:Z
    invoke-static {v5, v8}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$2402(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 2783
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2784
    const-string v5, "kids"

    const-string v6, "service.plushome.currenthome"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2785
    .local v1, guestModeOn:Z
    if-eqz v1, :cond_1

    .line 2786
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20d0356

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 2787
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2811
    .end local v1           #guestModeOn:Z
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_0
    :goto_0
    return-void

    .line 2789
    .restart local v1       #guestModeOn:Z
    :cond_1
    const-string v5, "PhoneWindowManagerEx"

    const-string v6, "mSimSwitchLongpress : launching MultiSimSettings"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2791
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.DualSim"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2792
    const/high16 v5, 0x3400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2795
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 2796
    .local v3, statusBar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    .line 2797
    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2803
    .end local v3           #statusBar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2804
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2805
    :catch_0
    move-exception v0

    .line 2806
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "PhoneWindowManagerEx"

    const-string v6, "Dropping MultiSimSettings launch because the activity was not found"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2799
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 2801
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
