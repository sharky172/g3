.class Lcom/android/server/InputMethodManagerService$1$1;
.super Landroid/os/ResultReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/InputMethodManagerService$1;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService$1;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$1$1;->this$1:Lcom/android/server/InputMethodManagerService$1;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 192
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$1$1;->this$1:Lcom/android/server/InputMethodManagerService$1;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$1;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 195
    :cond_0
    return-void
.end method
