.class Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumePreferenceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;


# direct methods
.method constructor <init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    iget-object v5, v5, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx;->mIsActive:Z
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx;->access$000(Lcom/lge/preference/VolumePreferenceEx;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 150
    .local v1, headsetState:I
    if-ne v1, v9, :cond_0

    .line 152
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$200(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v6}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$100(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 158
    .local v2, newOriginalvolume:I
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$300(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/widget/SeekBar;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$400(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-eq v5, v8, :cond_1

    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$500(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 160
    :cond_1
    const-string v5, "VolumePreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_HEADSET_PLUG mOriginalStreamVolume = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I
    invoke-static {v7}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$600(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newOriginalvolume = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$700(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 163
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #setter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I
    invoke-static {v5, v2}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$802(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;I)I

    .line 167
    .end local v1           #headsetState:I
    .end local v2           #newOriginalvolume:I
    :cond_2
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    iget-object v5, v5, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx;->mIsActive:Z
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx;->access$000(Lcom/lge/preference/VolumePreferenceEx;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    const-string v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 169
    .local v4, streamType:I
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$900(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/widget/SeekBar;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1000(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 170
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1200(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v6}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1100(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 171
    .restart local v2       #newOriginalvolume:I
    const-string v5, "VolumePreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VOLUME_CHANGED_ACTION mOriginalStreamVolume = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I
    invoke-static {v7}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1300(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newOriginalvolume = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1400(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 177
    .end local v2           #newOriginalvolume:I
    .end local v4           #streamType:I
    :cond_3
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    iget-object v5, v5, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx;->mIsActive:Z
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx;->access$000(Lcom/lge/preference/VolumePreferenceEx;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    const-string v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, state:Ljava/lang/String;
    if-eqz v3, :cond_4

    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-virtual {v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 185
    .end local v3           #state:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    iget-object v5, v5, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx;->mIsActive:Z
    invoke-static {v5}, Lcom/lge/preference/VolumePreferenceEx;->access$000(Lcom/lge/preference/VolumePreferenceEx;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "lge.settings.intent.action.NOTI_RESUME"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    const-string v5, "VolumePreference"

    const-string v6, "VolumeReceiver!!! onReceive..... NOTI_RESUME"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    iget-object v5, v5, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    #setter for: Lcom/lge/preference/VolumePreferenceEx;->mIsActive:Z
    invoke-static {v5, v9}, Lcom/lge/preference/VolumePreferenceEx;->access$002(Lcom/lge/preference/VolumePreferenceEx;Z)Z

    .line 190
    :cond_5
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 191
    const-string v5, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v8, :cond_6

    .line 192
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-virtual {v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 193
    iget-object v5, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-virtual {v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 197
    :cond_6
    return-void

    .line 154
    .restart local v1       #headsetState:I
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method
