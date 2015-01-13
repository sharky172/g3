.class final Lcom/android/server/power/PowerManagerService$ABSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ABSReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3126
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3126
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$ABSReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 3129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.lge.android.intent.action.ABS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3130
    const-string v1, "com.lge.intent.extra.ENABLE_ABS"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3131
    .local v0, mABS:Z
    if-eqz v0, :cond_1

    .line 3133
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #setter for: Lcom/android/server/power/PowerManagerService;->mEnableABS:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2202(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3138
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3139
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3141
    .end local v0           #mABS:Z
    :cond_0
    return-void

    .line 3136
    .restart local v0       #mABS:Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mEnableABS:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2202(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_0
.end method
