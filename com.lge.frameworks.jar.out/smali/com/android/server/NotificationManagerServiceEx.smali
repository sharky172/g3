.class Lcom/android/server/NotificationManagerServiceEx;
.super Lcom/android/server/NotificationManagerService;
.source "NotificationManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;
    }
.end annotation


# static fields
.field private static final MESSAGE_EXCESS_SPC_FAIL_POWER_OFF:I = 0x7


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private mHandler:Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;

.field private mIntentReceiverEx:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    .locals 5
    .parameter "context"
    .parameter "statusBar"
    .parameter "lights"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V

    .line 46
    new-instance v3, Lcom/android/server/NotificationManagerServiceEx$1;

    invoke-direct {v3, p0}, Lcom/android/server/NotificationManagerServiceEx$1;-><init>(Lcom/android/server/NotificationManagerServiceEx;)V

    iput-object v3, p0, Lcom/android/server/NotificationManagerServiceEx;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    .line 30
    new-instance v3, Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;-><init>(Lcom/android/server/NotificationManagerServiceEx;Lcom/android/server/NotificationManagerServiceEx$1;)V

    iput-object v3, p0, Lcom/android/server/NotificationManagerServiceEx;->mHandler:Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;

    .line 33
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.lge.media.STOP_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, stopNoti:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/NotificationManagerServiceEx;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    const-string v3, "ro.lge.spccheck"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    .local v0, isUseSpc:Z
    if-eqz v0, :cond_0

    .line 40
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.lge.android.intent.action.EXCESS_SPC_FAIL_EVENT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, spcfailNoti:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/NotificationManagerServiceEx;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    .end local v1           #spcfailNoti:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/NotificationManagerServiceEx;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/NotificationManagerServiceEx;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/NotificationManagerServiceEx;)Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/NotificationManagerServiceEx;->mHandler:Lcom/android/server/NotificationManagerServiceEx$WorkerHandlerEx;

    return-object v0
.end method
