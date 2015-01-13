.class final Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;
.super Landroid/os/Handler;
.source "NotificationManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerHandlerEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/NotificationManagerServiceEx;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NotificationManagerServiceEx;Lcom/android/server/NotificationManagerServiceEx$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;-><init>(Lcom/android/server/NotificationManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 88
    iget-object v0, p0, Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    #getter for: Lcom/android/server/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/NotificationManagerServiceEx;->access$100(Lcom/android/server/NotificationManagerServiceEx;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;->this$0:Lcom/android/server/NotificationManagerServiceEx;

    #getter for: Lcom/android/server/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/NotificationManagerServiceEx;->access$100(Lcom/android/server/NotificationManagerServiceEx;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
