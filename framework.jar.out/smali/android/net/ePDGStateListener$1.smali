.class Landroid/net/ePDGStateListener$1;
.super Landroid/net/IePDGStateListener$Stub;
.source "ePDGStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ePDGStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ePDGStateListener;


# direct methods
.method constructor <init>(Landroid/net/ePDGStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    invoke-direct {p0}, Landroid/net/IePDGStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionParamStatus([Ljava/lang/String;)V
    .locals 3
    .parameter "ConParam"

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, v0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method public onErrorStatusChanged(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, v0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void
.end method

.method public onPDPStateChanged([I)V
    .locals 3
    .parameter "serviceState"

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, v0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 89
    return-void
.end method

.method public onWiFiStatusChanged(Z)V
    .locals 5
    .parameter "mWF"

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    iget-object v2, v0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void

    :cond_0
    move v0, v1

    .line 92
    goto :goto_0
.end method
