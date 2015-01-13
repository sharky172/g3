.class final Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;
.super Landroid/os/Handler;
.source "KnockOnPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockOnPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KnockOnPowerControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/KnockOnPowerController;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;->this$0:Lcom/android/server/power/KnockOnPowerController;

    .line 977
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 978
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 982
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 992
    :goto_0
    return-void

    .line 984
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;->this$0:Lcom/android/server/power/KnockOnPowerController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/power/KnockOnPowerController;->handleLPWG(Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$KnockOnPowerControllerHandler;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-virtual {v0}, Lcom/android/server/power/KnockOnPowerController;->updateSettings()V

    goto :goto_0

    .line 982
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
