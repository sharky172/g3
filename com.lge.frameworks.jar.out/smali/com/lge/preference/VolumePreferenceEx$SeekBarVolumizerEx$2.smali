.class Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$2;
.super Ljava/lang/Object;
.source "VolumePreferenceEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->revertVolume()V
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
    .line 203
    iput-object p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$2;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$2;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1500(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$2;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1600(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$2;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    iget-object v1, v1, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    iget v1, v1, Lcom/lge/preference/VolumePreferenceEx;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$2;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1900(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$2;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1700(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$2;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    #getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I
    invoke-static {v2}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1800(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v2

    const/16 v3, 0x100

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 213
    return-void
.end method
