.class Lcom/android/server/NotificationManagerServiceEx$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerServiceEx;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/server/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, action:Ljava/lang/String;
    const/4 v4, 0x0

    .line 51
    .local v4, queryRestart:Z
    const-string v5, "com.lge.media.STOP_NOTIFICATION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 54
    .local v1, identity:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    iget-object v5, v5, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v5}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    .line 55
    .local v3, player:Landroid/media/IRingtonePlayer;
    if-eqz v3, :cond_0

    .line 56
    invoke-interface {v3}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .end local v1           #identity:J
    .end local v3           #player:Landroid/media/IRingtonePlayer;
    :cond_1
    :goto_0
    return-void

    .line 58
    .restart local v1       #identity:J
    :catch_0
    move-exception v5

    .line 60
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 62
    .end local v1           #identity:J
    :cond_2
    const-string v5, "com.lge.android.intent.action.EXCESS_SPC_FAIL_EVENT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    iget-object v5, p0, Lcom/android/server/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/server/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    iget-object v7, v7, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x20d035a

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x20d035b

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    #setter for: Lcom/android/server/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v5, v6}, Lcom/android/server/NotificationManagerServiceEx;->access$102(Lcom/android/server/NotificationManagerServiceEx;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 68
    iget-object v5, p0, Lcom/android/server/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    #getter for: Lcom/android/server/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/server/NotificationManagerServiceEx;->access$100(Lcom/android/server/NotificationManagerServiceEx;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 69
    iget-object v5, p0, Lcom/android/server/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    #getter for: Lcom/android/server/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/server/NotificationManagerServiceEx;->access$100(Lcom/android/server/NotificationManagerServiceEx;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 70
    iget-object v5, p0, Lcom/android/server/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    #getter for: Lcom/android/server/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/server/NotificationManagerServiceEx;->access$100(Lcom/android/server/NotificationManagerServiceEx;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 72
    iget-object v5, p0, Lcom/android/server/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    #getter for: Lcom/android/server/NotificationManagerServiceEx;->mHandler:Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;
    invoke-static {v5}, Lcom/android/server/NotificationManagerServiceEx;->access$200(Lcom/android/server/NotificationManagerServiceEx;)Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    #getter for: Lcom/android/server/NotificationManagerServiceEx;->mHandler:Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;
    invoke-static {v6}, Lcom/android/server/NotificationManagerServiceEx;->access$200(Lcom/android/server/NotificationManagerServiceEx;)Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0xea60

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
