.class public Lcom/lge/preference/VolumePreferenceEx;
.super Landroid/preference/VolumePreference;
.source "VolumePreferenceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    }
.end annotation


# instance fields
.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mIsActive:Z

.field protected mOriginalRingerMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mIsActive:Z

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mContentResolver:Landroid/content/ContentResolver;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lge/preference/VolumePreferenceEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mIsActive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/preference/VolumePreferenceEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/lge/preference/VolumePreferenceEx;->mIsActive:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/lge/preference/VolumePreferenceEx;Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mIsActive:Z

    .line 54
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 60
    const v2, 0x10202fc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 61
    .local v1, seekBar:Landroid/widget/SeekBar;
    new-instance v2, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroid/preference/VolumePreference;->mStreamType:I

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;-><init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 62
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 63
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iput v2, p0, Lcom/lge/preference/VolumePreferenceEx;->mOriginalRingerMode:I

    .line 65
    return-void
.end method
