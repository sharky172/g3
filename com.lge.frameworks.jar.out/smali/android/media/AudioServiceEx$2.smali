.class Landroid/media/AudioServiceEx$2;
.super Ljava/lang/Object;
.source "AudioServiceEx.java"

# interfaces
.implements Lcom/lge/media/LGAudioSystem$RecordStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioServiceEx;


# direct methods
.method constructor <init>(Landroid/media/AudioServiceEx;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Landroid/media/AudioServiceEx$2;->this$0:Landroid/media/AudioServiceEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordStateCb(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 192
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordStateCallback() state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRecordState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/media/AudioServiceEx;->access$300()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Landroid/media/AudioServiceEx;->access$300()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 194
    invoke-static {p1}, Landroid/media/AudioServiceEx;->access$302(I)I

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.media.intent.action.AUDIORECORD_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, intentState:Landroid/content/Intent;
    const-string v1, "com.lge.audio.intent.extra.EXTRA_AUDIORECORD_STATE"

    invoke-static {}, Landroid/media/AudioServiceEx;->access$300()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Landroid/media/AudioServiceEx$2;->this$0:Landroid/media/AudioServiceEx;

    invoke-virtual {v1, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 199
    .end local v0           #intentState:Landroid/content/Intent;
    :cond_0
    return-void
.end method
