.class Lcom/lge/media/MediaPlayerEx$EventHandlerEx;
.super Landroid/media/MediaPlayer$EventHandler;
.source "MediaPlayerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaPlayerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandlerEx"
.end annotation


# instance fields
.field private mMediaPlayerEx:Lcom/lge/media/MediaPlayerEx;

.field final synthetic this$0:Lcom/lge/media/MediaPlayerEx;


# direct methods
.method public constructor <init>(Lcom/lge/media/MediaPlayerEx;Lcom/lge/media/MediaPlayerEx;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "mp"
    .parameter "looper"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;->this$0:Lcom/lge/media/MediaPlayerEx;

    .line 553
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    .line 554
    iput-object p2, p0, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;->mMediaPlayerEx:Lcom/lge/media/MediaPlayerEx;

    .line 556
    const-string v0, "MediaPlayerEX"

    const-string v1, "EventHandlerEx Contructor with parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 564
    const-string v2, "MediaPlayerEX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** handledMessage **** msg.what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 596
    const-string v2, "MediaPlayerEX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send message to MediaPlayer::handleMessage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-super {p0, p1}, Landroid/media/MediaPlayer$EventHandler;->handleMessage(Landroid/os/Message;)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 569
    :sswitch_0
    iget-object v2, p0, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;->this$0:Lcom/lge/media/MediaPlayerEx;

    #getter for: Lcom/lge/media/MediaPlayerEx;->mOnTimedTextExListener:Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;
    invoke-static {v2}, Lcom/lge/media/MediaPlayerEx;->access$000(Lcom/lge/media/MediaPlayerEx;)Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 570
    const-string v2, "MediaPlayerEX"

    const-string v3, "**** handledMessage **** MEDIA_TIMED_TEXT_EX / Listener is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 573
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 574
    const-string v2, "MediaPlayerEX"

    const-string v3, "**** handledMessage **** MEDIA_TIMED_TEXT_EX / msg.obj is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v2, p0, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;->this$0:Lcom/lge/media/MediaPlayerEx;

    #getter for: Lcom/lge/media/MediaPlayerEx;->mOnTimedTextExListener:Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;
    invoke-static {v2}, Lcom/lge/media/MediaPlayerEx;->access$000(Lcom/lge/media/MediaPlayerEx;)Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;->mMediaPlayerEx:Lcom/lge/media/MediaPlayerEx;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;->onTimedTextEx(Lcom/lge/media/MediaPlayerEx;Lcom/lge/media/TimedTextEx;)V

    goto :goto_0

    .line 578
    :cond_2
    const-string v2, "MediaPlayerEX"

    const-string v3, "**** handledMessage **** MEDIA_TIMED_TEXT_EX / parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_0

    .line 581
    const-string v2, "MediaPlayerEX"

    const-string v3, "**** handledMessage **** MEDIA_TIMED_TEXT_EX /valid  parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcel;

    .line 584
    .local v0, parcel:Landroid/os/Parcel;
    new-instance v1, Lcom/lge/media/TimedTextEx;

    invoke-direct {v1, v0}, Lcom/lge/media/TimedTextEx;-><init>(Landroid/os/Parcel;)V

    .line 585
    .local v1, text:Lcom/lge/media/TimedTextEx;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 586
    iget-object v2, p0, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;->this$0:Lcom/lge/media/MediaPlayerEx;

    #getter for: Lcom/lge/media/MediaPlayerEx;->mOnTimedTextExListener:Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;
    invoke-static {v2}, Lcom/lge/media/MediaPlayerEx;->access$000(Lcom/lge/media/MediaPlayerEx;)Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;->mMediaPlayerEx:Lcom/lge/media/MediaPlayerEx;

    invoke-interface {v2, v3, v1}, Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;->onTimedTextEx(Lcom/lge/media/MediaPlayerEx;Lcom/lge/media/TimedTextEx;)V

    goto :goto_0

    .line 592
    .end local v0           #parcel:Landroid/os/Parcel;
    .end local v1           #text:Lcom/lge/media/TimedTextEx;
    :sswitch_1
    iget-object v2, p0, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;->this$0:Lcom/lge/media/MediaPlayerEx;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaPlayerEx;->setCPUFlag(Z)V

    goto :goto_0

    .line 566
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x2bc -> :sswitch_1
    .end sparse-switch
.end method
