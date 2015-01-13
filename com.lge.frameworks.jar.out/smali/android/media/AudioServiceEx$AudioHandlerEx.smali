.class public Landroid/media/AudioServiceEx$AudioHandlerEx;
.super Landroid/media/AudioService$AudioHandler;
.source "AudioServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioHandlerEx"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioServiceEx;


# direct methods
.method protected constructor <init>(Landroid/media/AudioServiceEx;)V
    .locals 0
    .parameter

    .prologue
    .line 1199
    iput-object p1, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1201
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 1202
    const-string v0, "AudioService"

    const-string v1, "handlemesasge: MSG_PERSIST_VOLUME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioServiceEx$AudioHandlerEx;->persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    .line 1204
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioService$VolumeStreamState;

    iget v0, v0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v2, :cond_0

    .line 1205
    const-string v1, "persist.sys.system_volume"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioService$VolumeStreamState;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v1, "AudioService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistVolume vol: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioService$VolumeStreamState;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_2

    .line 1210
    const-string v0, "AudioService"

    const-string v1, "MSG_SHOW_VOLUME_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v0, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Landroid/media/AudioServiceEx;->onShowVolumeInfo(I)V
    invoke-static {v0, v1}, Landroid/media/AudioServiceEx;->access$700(Landroid/media/AudioServiceEx;I)V

    goto :goto_0

    .line 1212
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    .line 1213
    const-string v0, "AudioService"

    const-string v4, "AudioServiceEx() handleMessage MEDIA_SERVER_DIED"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-super {p0, p1}, Landroid/media/AudioService$AudioHandler;->handleMessage(Landroid/os/Message;)V

    .line 1215
    iget-object v0, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    iget-object v0, v0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1217
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-nez v0, :cond_3

    .line 1218
    iget-object v0, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    #calls: Landroid/media/AudioServiceEx;->readPersistedMABL()V
    invoke-static {v0}, Landroid/media/AudioServiceEx;->access$800(Landroid/media/AudioServiceEx;)V

    .line 1222
    :cond_3
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioServiceEx() Reset AllSoundOff. allSoundEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    #getter for: Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z
    invoke-static {v2}, Landroid/media/AudioServiceEx;->access$900(Landroid/media/AudioServiceEx;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    #getter for: Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z
    invoke-static {v0}, Landroid/media/AudioServiceEx;->access$900(Landroid/media/AudioServiceEx;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1224
    const-string v0, "TurnOffAllSound=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1228
    :cond_4
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    #getter for: Landroid/media/AudioServiceEx;->mWatchingRotation:Z
    invoke-static {v0}, Landroid/media/AudioServiceEx;->access$1000(Landroid/media/AudioServiceEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    #getter for: Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;
    invoke-static {v0}, Landroid/media/AudioServiceEx;->access$1100(Landroid/media/AudioServiceEx;)Landroid/view/IWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1231
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    #getter for: Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;
    invoke-static {v0}, Landroid/media/AudioServiceEx;->access$1100(Landroid/media/AudioServiceEx;)Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    #getter for: Landroid/media/AudioServiceEx;->mRotationWatcher:Landroid/view/IRotationWatcher;
    invoke-static {v1}, Landroid/media/AudioServiceEx;->access$1200(Landroid/media/AudioServiceEx;)Landroid/view/IRotationWatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 1232
    iget-object v0, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    const/4 v1, 0x0

    #setter for: Landroid/media/AudioServiceEx;->mWatchingRotation:Z
    invoke-static {v0, v1}, Landroid/media/AudioServiceEx;->access$1002(Landroid/media/AudioServiceEx;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1233
    :catch_0
    move-exception v7

    .line 1234
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "AudioService"

    const-string v1, "Remote exception when removing rotation watcher"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1239
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_6

    .line 1240
    const-string v0, "AudioService"

    const-string v1, "AudioServiceEx() handleMessage MSG_SET_RECORDCALLBACK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-static {}, Lcom/lge/media/LGAudioSystem;->setAudioRecordCallback()V

    goto/16 :goto_0

    .line 1243
    :cond_6
    invoke-super {p0, p1}, Landroid/media/AudioService$AudioHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method protected persistRingerMode(I)V
    .locals 2
    .parameter "ringerMode"

    .prologue
    .line 1249
    invoke-super {p0, p1}, Landroid/media/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 1250
    const-string v0, "persist.sys.sound_enable"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    return-void
.end method
