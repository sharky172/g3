.class public Landroid/view/VolumePanelEx;
.super Landroid/view/VolumePanel;
.source "VolumePanelEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VolumePanelEx$LGWarningDialogReceiver;,
        Landroid/view/VolumePanelEx$LGStreamControl;,
        Landroid/view/VolumePanelEx$LGStreamResources;
    }
.end annotation


# static fields
.field public static final ENFORCE_SAFE_SOUND_DELAY:I = 0x32

.field private static final LGSTREAMS:[Landroid/view/VolumePanelEx$LGStreamResources; = null

.field private static LOGD:Z = false

.field private static final MSG_DISMISS_SAFE_VOLUME_WARNING:I = 0xd

.field private static final MSG_DISPLAY_QUIETMODE_WARNING:I = 0xc

.field private static final MSG_SET_ENFORCE_SAFE_VOLUME:I = 0xe

.field private static final STREAMS_EXPANDED:[Landroid/view/VolumePanelEx$LGStreamResources; = null

.field private static final TALKBACK_PREFERENCE_KEY:Ljava/lang/String; = "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

.field private static final TIMEOUT_DELAY_TALKBACK:I = 0x1f40

.field private static mOperatorCode:Ljava/lang/String;


# instance fields
.field public PLAY_SOUND_DELAY_EX:I

.field public VIBRATE_DELAY_EX:I

.field public VIBRATE_DURATION_EX:I

.field private final alphaValue:I

.field private lgStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanelEx$LGStreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field private mIsQuickCoverClose:Z

.field private mIsSoundException:Z

.field private mIsTalkBackOn:Z

.field private final mMoreButton:Landroid/widget/ImageView;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mToast:Lcom/lge/view/SafevolumeToast;

.field private final mView:Landroid/view/View;

.field private final nonAlphaValue:I

.field private panelAlpha:Landroid/graphics/drawable/Drawable;

.field private prevStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 87
    sput-boolean v3, Landroid/view/VolumePanelEx;->LOGD:Z

    .line 94
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/VolumePanelEx;->mOperatorCode:Ljava/lang/String;

    .line 168
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/view/VolumePanelEx$LGStreamResources;

    sget-object v1, Landroid/view/VolumePanelEx$LGStreamResources;->BluetoothSCOStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/VolumePanelEx$LGStreamResources;->RingerStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/VolumePanelEx$LGStreamResources;->VoiceStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v1, v0, v5

    sget-object v1, Landroid/view/VolumePanelEx$LGStreamResources;->MediaStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v1, v0, v6

    sget-object v1, Landroid/view/VolumePanelEx$LGStreamResources;->NotificationStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->AlarmStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->FMStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->MasterStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->RemoteStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->DMBStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->SYSTEMStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanelEx;->LGSTREAMS:[Landroid/view/VolumePanelEx$LGStreamResources;

    .line 182
    new-array v0, v7, [Landroid/view/VolumePanelEx$LGStreamResources;

    sget-object v1, Landroid/view/VolumePanelEx$LGStreamResources;->RingerStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/VolumePanelEx$LGStreamResources;->NotificationStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/VolumePanelEx$LGStreamResources;->SYSTEMStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v1, v0, v5

    sget-object v1, Landroid/view/VolumePanelEx$LGStreamResources;->MediaStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v1, v0, v6

    sput-object v0, Landroid/view/VolumePanelEx;->STREAMS_EXPANDED:[Landroid/view/VolumePanelEx$LGStreamResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 12
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    .line 65
    const/16 v9, 0x32

    iput v9, p0, Landroid/view/VolumePanelEx;->PLAY_SOUND_DELAY_EX:I

    .line 66
    const/16 v9, 0x32

    iput v9, p0, Landroid/view/VolumePanelEx;->VIBRATE_DELAY_EX:I

    .line 67
    const/16 v9, 0xc8

    iput v9, p0, Landroid/view/VolumePanelEx;->VIBRATE_DURATION_EX:I

    .line 74
    const/16 v9, 0xcc

    iput v9, p0, Landroid/view/VolumePanelEx;->alphaValue:I

    .line 75
    const/16 v9, 0xff

    iput v9, p0, Landroid/view/VolumePanelEx;->nonAlphaValue:I

    .line 86
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/view/VolumePanelEx;->mIsTalkBackOn:Z

    .line 88
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/view/VolumePanelEx;->mIsQuickCoverClose:Z

    .line 89
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/view/VolumePanelEx;->mIsSoundException:Z

    .line 204
    iget v9, p0, Landroid/view/VolumePanelEx;->PLAY_SOUND_DELAY_EX:I

    sput v9, Landroid/view/VolumePanelEx;->PLAY_SOUND_DELAY:I

    .line 205
    iget v9, p0, Landroid/view/VolumePanelEx;->VIBRATE_DELAY_EX:I

    sput v9, Landroid/view/VolumePanelEx;->VIBRATE_DELAY:I

    .line 206
    iget v9, p0, Landroid/view/VolumePanelEx;->VIBRATE_DURATION_EX:I

    sput v9, Landroid/view/VolumePanelEx;->VIBRATE_DURATION:I

    .line 208
    iput-object p1, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    .line 209
    const-string v9, "audio"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManagerEx;

    iput-object v9, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    .line 210
    iput-object p2, p0, Landroid/view/VolumePanelEx;->mAudioService:Landroid/media/AudioService;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 215
    .local v6, useMasterVolume:Z
    if-eqz v6, :cond_1

    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v9, Landroid/view/VolumePanelEx;->LGSTREAMS:[Landroid/view/VolumePanelEx$LGStreamResources;

    array-length v9, v9

    if-ge v0, v9, :cond_1

    .line 217
    sget-object v9, Landroid/view/VolumePanelEx;->LGSTREAMS:[Landroid/view/VolumePanelEx$LGStreamResources;

    aget-object v5, v9, v0

    .line 218
    .local v5, streamRes:Landroid/view/VolumePanelEx$LGStreamResources;
    iget v9, v5, Landroid/view/VolumePanelEx$LGStreamResources;->streamType:I

    const/16 v10, -0x64

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v5, Landroid/view/VolumePanelEx$LGStreamResources;->show:Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 222
    .end local v0           #i:I
    .end local v5           #streamRes:Landroid/view/VolumePanelEx$LGStreamResources;
    :cond_1
    const-string v9, "layout_inflater"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 224
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v9, 0x2030039

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    .line 225
    .local v7, view:Landroid/view/View;
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/VolumePanelEx$1;

    invoke-direct {v10, p0}, Landroid/view/VolumePanelEx$1;-><init>(Landroid/view/VolumePanelEx;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    const v10, 0x20e006d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Landroid/view/VolumePanelEx;->mPanel:Landroid/view/ViewGroup;

    .line 233
    sget-boolean v9, Lcom/lge/config/ConfigBuildFlags;->CAPP_RESOURCE:Z

    if-eqz v9, :cond_2

    .line 234
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mPanel:Landroid/view/ViewGroup;

    const v10, 0x20201c9

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 237
    :cond_2
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Landroid/view/VolumePanelEx;->panelAlpha:Landroid/graphics/drawable/Drawable;

    .line 238
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    const v10, 0x20e006e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    .line 239
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    const v10, 0x20e0070

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Landroid/view/VolumePanelEx;->mMoreButton:Landroid/widget/ImageView;

    .line 240
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mMoreButton:Landroid/widget/ImageView;

    const v10, 0x2020393

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mMoreButton:Landroid/widget/ImageView;

    iget-object v10, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    const v11, 0x20d02f2

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    const v10, 0x20e006f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Landroid/view/VolumePanelEx;->mDivider:Landroid/view/View;

    .line 244
    new-instance v9, Landroid/view/VolumePanelEx$2;

    const v10, 0x103030a

    invoke-direct {v9, p0, p1, v10}, Landroid/view/VolumePanelEx$2;-><init>(Landroid/view/VolumePanelEx;Landroid/content/Context;I)V

    iput-object v9, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    .line 254
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    const-string v10, "Volume control"

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    iget-object v10, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 256
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    new-instance v10, Landroid/view/VolumePanelEx$3;

    invoke-direct {v10, p0}, Landroid/view/VolumePanelEx$3;-><init>(Landroid/view/VolumePanelEx;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 267
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 268
    .local v8, window:Landroid/view/Window;
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 269
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 270
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x0

    iput-object v9, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 271
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050053

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 272
    const/16 v9, 0x7e4

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 273
    const/4 v9, -0x2

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 274
    const/4 v9, -0x2

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 275
    invoke-virtual {v8, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 276
    const v9, 0x40028

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 279
    const/16 v9, 0xc

    new-array v9, v9, [Landroid/media/ToneGenerator;

    iput-object v9, p0, Landroid/view/VolumePanelEx;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 280
    const-string v9, "vibrator"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Landroid/view/VolumePanelEx;->mVibrator:Landroid/os/Vibrator;

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110038

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Landroid/view/VolumePanelEx;->mVoiceCapable:Z

    .line 283
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/VolumePanelEx;->mShowCombinedVolumes:Z

    .line 285
    iget-boolean v9, p0, Landroid/view/VolumePanelEx;->mShowCombinedVolumes:Z

    if-nez v9, :cond_3

    .line 286
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mMoreButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 294
    .local v4, masterVolumeOnly:Z
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 297
    .local v3, masterVolumeKeySounds:Z
    invoke-direct {p0}, Landroid/view/VolumePanelEx;->listenToScreenStatus()V

    .line 300
    invoke-direct {p0}, Landroid/view/VolumePanelEx;->listenQuickCoverStatus()V

    .line 303
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Landroid/view/VolumePanelEx;->mPlayMasterStreamTones:Z

    .line 304
    invoke-super {p0}, Landroid/view/VolumePanel;->listenToRingerMode()V

    .line 305
    new-instance v9, Lcom/lge/view/SafevolumeToast;

    iget-object v10, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/lge/view/SafevolumeToast;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Landroid/view/VolumePanelEx;->mToast:Lcom/lge/view/SafevolumeToast;

    .line 306
    const-string v9, "ro.lge.audio_soundexception"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Landroid/view/VolumePanelEx;->mIsSoundException:Z

    .line 307
    return-void

    .line 289
    .end local v3           #masterVolumeKeySounds:Z
    .end local v4           #masterVolumeOnly:Z
    :cond_3
    iget-object v9, p0, Landroid/view/VolumePanelEx;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 303
    .restart local v3       #masterVolumeKeySounds:Z
    .restart local v4       #masterVolumeOnly:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

.method static synthetic access$000(Landroid/view/VolumePanelEx;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/view/VolumePanelEx;->collapse(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/VolumePanelEx;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Landroid/view/VolumePanelEx;->LOGD:Z

    return v0
.end method

.method static synthetic access$402(Landroid/view/VolumePanelEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/view/VolumePanelEx;->mIsQuickCoverClose:Z

    return p1
.end method

.method private collapse(I)V
    .locals 6
    .parameter "streamType"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 593
    if-eqz p1, :cond_0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    iget-boolean v2, p0, Landroid/view/VolumePanelEx;->mIsQuickCoverClose:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 595
    :cond_0
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    iget-boolean v2, p0, Landroid/view/VolumePanelEx;->mIsQuickCoverClose:Z

    if-eqz v2, :cond_1

    .line 597
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 605
    :goto_0
    invoke-direct {p0, v4}, Landroid/view/VolumePanelEx;->showDescription(Z)V

    .line 606
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 607
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 608
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 599
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mDivider:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 602
    :cond_2
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 610
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_3
    return-void
.end method

.method private listenQuickCoverStatus()V
    .locals 3

    .prologue
    .line 900
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 901
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 902
    iget-object v1, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanelEx$5;

    invoke-direct {v2, p0}, Landroid/view/VolumePanelEx$5;-><init>(Landroid/view/VolumePanelEx;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 930
    return-void
.end method

.method private listenToScreenStatus()V
    .locals 3

    .prologue
    .line 872
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 873
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    iget-object v1, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanelEx$4;

    invoke-direct {v2, p0}, Landroid/view/VolumePanelEx$4;-><init>(Landroid/view/VolumePanelEx;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 888
    return-void
.end method

.method private setMusicIcon(III)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"
    .parameter "streamType"

    .prologue
    .line 821
    iget-object v1, p0, Landroid/view/VolumePanelEx;->lgStreamControls:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 822
    .local v0, sc:Landroid/view/VolumePanelEx$LGStreamControl;
    if-eqz v0, :cond_1

    .line 823
    iput p1, v0, Landroid/view/VolumePanelEx$LGStreamControl;->iconRes:I

    .line 824
    iput p2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->iconMuteRes:I

    .line 826
    iget v1, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v1}, Landroid/view/VolumePanelEx;->isMuted(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 827
    :cond_0
    iget-object v1, v0, Landroid/view/VolumePanelEx$LGStreamControl;->icon:Landroid/widget/ImageView;

    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->iconMuteRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 833
    :cond_1
    :goto_0
    return-void

    .line 830
    :cond_2
    iget-object v1, v0, Landroid/view/VolumePanelEx$LGStreamControl;->icon:Landroid/widget/ImageView;

    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->iconRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showDescription(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 352
    iget-object v3, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 353
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 354
    iget-object v3, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 355
    .local v2, sc:Landroid/view/VolumePanelEx$LGStreamControl;
    if-eqz p1, :cond_1

    .line 356
    iget-object v3, v2, Landroid/view/VolumePanelEx$LGStreamControl;->description:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    .line 358
    iget-object v3, v2, Landroid/view/VolumePanelEx$LGStreamControl;->hDivider:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_1
    iget-object v3, v2, Landroid/view/VolumePanelEx$LGStreamControl;->description:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v3, v2, Landroid/view/VolumePanelEx$LGStreamControl;->hDivider:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 365
    .end local v2           #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    :cond_2
    return-void
.end method

.method private updateMusicIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 760
    iget-object v3, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 761
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 762
    iget-object v3, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 764
    .local v2, sc:Landroid/view/VolumePanelEx$LGStreamControl;
    iget v3, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    sparse-switch v3, :sswitch_data_0

    .line 761
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    :sswitch_0
    iget-object v3, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    and-int/lit16 v3, v3, 0x380

    if-eqz v3, :cond_1

    .line 770
    const v3, 0x108029e

    const v4, 0x108029f

    iget v5, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-direct {p0, v3, v4, v5}, Landroid/view/VolumePanelEx;->setMusicIcon(III)V

    goto :goto_1

    .line 771
    :cond_1
    iget-object v3, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    check-cast v3, Landroid/media/AudioManagerEx;

    invoke-virtual {v3}, Landroid/media/AudioManagerEx;->isSpeakerOnForMedia()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 775
    :cond_2
    const v3, 0x10802ac

    const v4, 0x10802ae

    iget v5, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-direct {p0, v3, v4, v5}, Landroid/view/VolumePanelEx;->setMusicIcon(III)V

    goto :goto_1

    .line 782
    :sswitch_1
    iget-object v3, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    and-int/lit16 v3, v3, 0x380

    if-eqz v3, :cond_3

    .line 786
    const v3, 0x2020257

    const v4, 0x2020258

    iget v5, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-direct {p0, v3, v4, v5}, Landroid/view/VolumePanelEx;->setMusicIcon(III)V

    goto :goto_1

    .line 787
    :cond_3
    iget-object v3, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    check-cast v3, Landroid/media/AudioManagerEx;

    invoke-virtual {v3}, Landroid/media/AudioManagerEx;->isSpeakerOnForMedia()Z

    move-result v3

    if-nez v3, :cond_4

    .line 788
    const v3, 0x2020259

    const v4, 0x202025a

    iget v5, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-direct {p0, v3, v4, v5}, Landroid/view/VolumePanelEx;->setMusicIcon(III)V

    goto :goto_1

    .line 791
    :cond_4
    const v3, 0x202025b

    const v4, 0x202025c

    iget v5, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-direct {p0, v3, v4, v5}, Landroid/view/VolumePanelEx;->setMusicIcon(III)V

    goto :goto_1

    .line 797
    :sswitch_2
    const v3, 0x2020266

    const v4, 0x2020267

    iget v5, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-direct {p0, v3, v4, v5}, Landroid/view/VolumePanelEx;->setMusicIcon(III)V

    goto/16 :goto_1

    .line 805
    .end local v2           #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    :cond_5
    return-void

    .line 764
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private updateTalkBackState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 849
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/view/VolumePanelEx;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/VolumePanelEx;->mIsTalkBackOn:Z

    .line 851
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 852
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 854
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-boolean v2, p0, Landroid/view/VolumePanelEx;->mIsTalkBackOn:Z

    if-eqz v2, :cond_1

    .line 855
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 856
    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 860
    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public addOtherVolumes()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 531
    iget-boolean v3, p0, Landroid/view/VolumePanelEx;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 549
    :cond_0
    return-void

    .line 533
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Landroid/view/VolumePanelEx;->STREAMS_EXPANDED:[Landroid/view/VolumePanelEx$LGStreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 534
    sget-object v3, Landroid/view/VolumePanelEx;->STREAMS_EXPANDED:[Landroid/view/VolumePanelEx$LGStreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Landroid/view/VolumePanelEx$LGStreamResources;->streamType:I

    .line 535
    .local v2, streamType:I
    iget v3, p0, Landroid/view/VolumePanelEx;->mActiveStreamType:I

    if-eq v2, v3, :cond_4

    if-ne v2, v5, :cond_2

    iget v3, p0, Landroid/view/VolumePanelEx;->mActiveStreamType:I

    if-eqz v3, :cond_4

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    :cond_2
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget v3, p0, Landroid/view/VolumePanelEx;->mActiveStreamType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    :cond_3
    if-ne v2, v5, :cond_5

    iget-boolean v3, p0, Landroid/view/VolumePanelEx;->mVoiceCapable:Z

    if-nez v3, :cond_5

    .line 533
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    :cond_5
    iget-object v3, p0, Landroid/view/VolumePanelEx;->lgStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 543
    .local v1, sc:Landroid/view/VolumePanelEx$LGStreamControl;
    if-eqz v1, :cond_4

    iget-object v3, v1, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 544
    iget-object v3, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 545
    iget-object v3, v1, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 546
    invoke-virtual {p0, v1}, Landroid/view/VolumePanelEx;->updateSlider(Landroid/view/VolumePanelEx$LGStreamControl;)V

    goto :goto_1
.end method

.method public createSliders()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 452
    iget-object v7, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 454
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v8, Landroid/view/VolumePanelEx;->LGSTREAMS:[Landroid/view/VolumePanelEx$LGStreamResources;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/view/VolumePanelEx;->lgStreamControls:Ljava/util/HashMap;

    .line 455
    iget-object v7, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 456
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Landroid/view/VolumePanelEx;->LGSTREAMS:[Landroid/view/VolumePanelEx$LGStreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_3

    .line 457
    sget-object v7, Landroid/view/VolumePanelEx;->LGSTREAMS:[Landroid/view/VolumePanelEx$LGStreamResources;

    aget-object v5, v7, v0

    .line 458
    .local v5, streamRes:Landroid/view/VolumePanelEx$LGStreamResources;
    iget v6, v5, Landroid/view/VolumePanelEx$LGStreamResources;->streamType:I

    .line 459
    .local v6, streamType:I
    new-instance v4, Landroid/view/VolumePanelEx$LGStreamControl;

    invoke-direct {v4, p0, v10}, Landroid/view/VolumePanelEx$LGStreamControl;-><init>(Landroid/view/VolumePanelEx;Landroid/view/VolumePanelEx$1;)V

    .line 460
    .local v4, sc:Landroid/view/VolumePanelEx$LGStreamControl;
    iput v6, v4, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    .line 461
    const v7, 0x203003a

    invoke-virtual {v1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    .line 462
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 463
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x20e0072

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->icon:Landroid/widget/ImageView;

    .line 464
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 466
    iget v7, v5, Landroid/view/VolumePanelEx$LGStreamResources;->iconRes:I

    iput v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->iconRes:I

    .line 467
    iget v7, v5, Landroid/view/VolumePanelEx$LGStreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->iconMuteRes:I

    .line 468
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Landroid/view/VolumePanelEx$LGStreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x20e0073

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 470
    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    if-nez v6, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 472
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {p0, v6}, Landroid/view/VolumePanelEx;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 473
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 474
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 475
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v8, v5, Landroid/view/VolumePanelEx$LGStreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    .line 477
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x20e0071

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->description:Landroid/widget/TextView;

    .line 478
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->description:Landroid/widget/TextView;

    iget v8, v5, Landroid/view/VolumePanelEx$LGStreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->description:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x20e0074

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->hDivider:Landroid/widget/ImageView;

    .line 481
    iget-object v7, v4, Landroid/view/VolumePanelEx$LGStreamControl;->hDivider:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    :cond_1
    iget-object v7, p0, Landroid/view/VolumePanelEx;->lgStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 470
    .end local v2           #plusOne:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 485
    .end local v4           #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    .end local v5           #streamRes:Landroid/view/VolumePanelEx$LGStreamResources;
    .end local v6           #streamType:I
    :cond_3
    return-void
.end method

.method public destroyVolumePanel()V
    .locals 2

    .prologue
    .line 1191
    const-string v0, "VolumePanel"

    const-string v1, "destroyVolumePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->onFreeResources()V

    .line 1194
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1196
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1199
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1200
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1203
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1204
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1206
    :cond_2
    return-void
.end method

.method public expand()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 581
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 582
    .local v0, count:I
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 585
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/VolumePanelEx;->showDescription(Z)V

    .line 587
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 588
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, -0x1

    .line 935
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 969
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/VolumePanel;->handleMessage(Landroid/os/Message;)V

    .line 970
    return-void

    .line 937
    :pswitch_1
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 939
    iput v1, p0, Landroid/view/VolumePanelEx;->mActiveStreamType:I

    goto :goto_0

    .line 944
    :pswitch_2
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->updateStates()V

    goto :goto_0

    .line 951
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->forceTimeout()V

    .line 952
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->onDisplayQuietModeWarning()V

    .line 953
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->updateStates()V

    goto :goto_0

    .line 957
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Landroid/view/VolumePanelEx;->onDismissSafeVolumeWarning(I)V

    goto :goto_0

    .line 962
    :pswitch_5
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 964
    iput v1, p0, Landroid/view/VolumePanelEx;->mActiveStreamType:I

    goto :goto_0

    .line 935
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isExpanded()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 521
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 522
    .local v0, count:I
    if-le v0, v1, :cond_0

    iget-object v2, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 525
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 840
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, accessibility_service:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 843
    const/4 v1, 0x0

    .line 845
    :goto_0
    return v1

    :cond_0
    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 809
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mMoreButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 810
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 811
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->expand()V

    .line 813
    :cond_0
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->resetTimeout()V

    .line 814
    return-void
.end method

.method protected onDismissSafeVolumeWarning(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 1037
    sget-object v1, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1038
    :try_start_0
    sget-object v0, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    sget-object v0, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1041
    :cond_0
    monitor-exit v1

    .line 1042
    return-void

    .line 1041
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDisplayQuietModeWarning()V
    .locals 4

    .prologue
    .line 1010
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1011
    .local v0, in:Landroid/content/Intent;
    const-string v2, "com.lge.settings.QUIET_MODE_ASK_SOUNDPROFILE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1014
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 1015
    .local v1, sbm:Landroid/app/StatusBarManager;
    if-eqz v1, :cond_0

    .line 1016
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1020
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    :goto_0
    return-void

    .line 1021
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 9
    .parameter "flags"

    .prologue
    .line 1053
    sget-object v6, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1054
    :try_start_0
    sget-object v5, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 1055
    monitor-exit v6

    .line 1151
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget-object v5, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    const-string v7, "statusbar"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 1060
    .local v3, sbm:Landroid/app/StatusBarManager;
    if-eqz v3, :cond_1

    .line 1061
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1066
    :cond_1
    iget-boolean v5, p0, Landroid/view/VolumePanelEx;->mIsQuickCoverClose:Z

    if-eqz v5, :cond_5

    .line 1067
    iget-object v5, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x20d016a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, button_yes:Ljava/lang/String;
    iget-object v5, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x20d016b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, button_no:Ljava/lang/String;
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMERALDUI:Z

    if-eqz v5, :cond_2

    .line 1072
    const-string v1, " "

    .line 1073
    const-string v0, " "

    .line 1077
    :cond_2
    sget-object v5, Landroid/view/VolumePanelEx;->mOperatorCode:Ljava/lang/String;

    const-string v7, "VZW"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1078
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    const v8, 0x20a01fa

    invoke-direct {v5, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v7, 0x20d02c5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x20d02a4

    new-instance v8, Landroid/view/VolumePanelEx$6;

    invoke-direct {v8, p0}, Landroid/view/VolumePanelEx$6;-><init>(Landroid/view/VolumePanelEx;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sput-object v5, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 1102
    :goto_1
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMERALDUI:Z

    if-eqz v5, :cond_3

    .line 1103
    sget-object v5, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    const v7, 0x20d0335

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1107
    :cond_3
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1108
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    sget-object v5, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1109
    const/16 v5, 0x30

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1110
    sget-object v5, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1140
    .end local v0           #button_no:Ljava/lang/String;
    .end local v1           #button_yes:Ljava/lang/String;
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :goto_2
    new-instance v4, Landroid/view/VolumePanelEx$LGWarningDialogReceiver;

    iget-object v5, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v4, v5, v7, p0}, Landroid/view/VolumePanelEx$LGWarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/VolumePanelEx;)V

    .line 1143
    .local v4, warning:Landroid/view/VolumePanelEx$LGWarningDialogReceiver;
    sget-object v5, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1144
    sget-object v5, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x7d9

    invoke-virtual {v5, v7}, Landroid/view/Window;->setType(I)V

    .line 1146
    sget-object v5, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1147
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->updateStates()V

    .line 1150
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->resetTimeout()V

    goto/16 :goto_0

    .line 1088
    .end local v4           #warning:Landroid/view/VolumePanelEx$LGWarningDialogReceiver;
    .restart local v0       #button_no:Ljava/lang/String;
    .restart local v1       #button_yes:Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    const v8, 0x20a01fa

    invoke-direct {v5, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v7, 0x20d02c4

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v7, Landroid/view/VolumePanelEx$7;

    invoke-direct {v7, p0}, Landroid/view/VolumePanelEx$7;-><init>(Landroid/view/VolumePanelEx;)V

    invoke-virtual {v5, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x1010355

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sput-object v5, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 1147
    .end local v0           #button_no:Ljava/lang/String;
    .end local v1           #button_yes:Ljava/lang/String;
    .end local v3           #sbm:Landroid/app/StatusBarManager;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1114
    .restart local v3       #sbm:Landroid/app/StatusBarManager;
    :cond_5
    :try_start_2
    sget-object v5, Landroid/view/VolumePanelEx;->mOperatorCode:Ljava/lang/String;

    const-string v7, "VZW"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1115
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x20d02c5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x20d02a4

    new-instance v8, Landroid/view/VolumePanelEx$8;

    invoke-direct {v8, p0}, Landroid/view/VolumePanelEx$8;-><init>(Landroid/view/VolumePanelEx;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x1010355

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sput-object v5, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1126
    :cond_6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x20d02c4

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x20d016a

    new-instance v8, Landroid/view/VolumePanelEx$9;

    invoke-direct {v8, p0}, Landroid/view/VolumePanelEx$9;-><init>(Landroid/view/VolumePanelEx;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x20d016b

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x1010355

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sput-object v5, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method protected onMuteChanged(II)V
    .locals 3
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 624
    iget-object v1, p0, Landroid/view/VolumePanelEx;->lgStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 625
    .local v0, sc:Landroid/view/VolumePanelEx$LGStreamControl;
    if-eqz v0, :cond_0

    .line 626
    iget-object v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v1}, Landroid/view/VolumePanelEx;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/VolumePanelEx$LGStreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 629
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanelEx;->onVolumeChanged(II)V

    .line 630
    return-void

    .line 626
    :cond_1
    iget v1, v0, Landroid/view/VolumePanelEx$LGStreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 974
    invoke-virtual {p0, v2}, Landroid/view/VolumePanelEx;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    invoke-virtual {p0, v2}, Landroid/view/VolumePanelEx;->removeMessages(I)V

    .line 977
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->onStopSounds()V

    .line 980
    :cond_0
    monitor-enter p0

    .line 981
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/VolumePanelEx;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 982
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/view/VolumePanelEx;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 983
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 984
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/view/VolumePanelEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/VolumePanelEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 986
    :cond_1
    monitor-exit p0

    .line 987
    return-void

    .line 986
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 370
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 371
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_0

    instance-of v2, v1, Landroid/view/VolumePanelEx$LGStreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 372
    check-cast v0, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 374
    .local v0, sc:Landroid/view/VolumePanelEx$LGStreamControl;
    if-nez p2, :cond_1

    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v2}, Landroid/view/VolumePanelEx;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 375
    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v2, p2, v5}, Landroid/view/VolumePanelEx;->setStreamVolume(III)V

    .line 389
    .end local v0           #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->resetTimeout()V

    .line 390
    return-void

    .line 376
    .restart local v0       #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    :cond_1
    if-lez p2, :cond_3

    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v2}, Landroid/view/VolumePanelEx;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 377
    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 378
    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    const/4 v3, 0x3

    invoke-virtual {p0, v2, p2, v3}, Landroid/view/VolumePanelEx;->setStreamVolume(III)V

    goto :goto_0

    .line 380
    :cond_2
    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v2, p2, v5}, Landroid/view/VolumePanelEx;->setStreamVolume(III)V

    goto :goto_0

    .line 382
    :cond_3
    if-lez p2, :cond_4

    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    if-nez v2, :cond_4

    .line 383
    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/VolumePanelEx;->setStreamVolume(III)V

    goto :goto_0

    .line 385
    :cond_4
    iget v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v2, p2, v4}, Landroid/view/VolumePanelEx;->setStreamVolume(III)V

    goto :goto_0
.end method

.method protected onSetEnforceSafeVolume()V
    .locals 4

    .prologue
    .line 1045
    sget-object v1, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1046
    :try_start_0
    sget-object v0, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/VolumePanelEx;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    const/4 v0, 0x3

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/VolumePanelEx;->setStreamVolume(III)V

    .line 1049
    :cond_0
    monitor-exit v1

    .line 1050
    return-void

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onShowVolumeChanged(II)V
    .locals 11
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Landroid/view/VolumePanelEx;->getStreamVolume(I)I

    move-result v1

    .line 636
    .local v1, index:I
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/VolumePanelEx;->mRingIsSilent:Z

    .line 637
    invoke-direct {p0}, Landroid/view/VolumePanelEx;->updateTalkBackState()V

    .line 638
    invoke-virtual {p0, p1}, Landroid/view/VolumePanelEx;->getStreamMaxVolume(I)I

    move-result v4

    .line 639
    .local v4, max:I
    packed-switch p1, :pswitch_data_0

    .line 689
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Landroid/view/VolumePanelEx;->updateMusicIcon()V

    .line 691
    iget-object v8, p0, Landroid/view/VolumePanelEx;->lgStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 692
    .local v6, sc:Landroid/view/VolumePanelEx$LGStreamControl;
    if-eqz v6, :cond_3

    .line 693
    iget-object v8, v6, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    if-eq v8, v4, :cond_1

    .line 694
    iget-object v8, v6, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 697
    :cond_1
    iget-object v8, v6, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 698
    and-int/lit8 v8, p2, 0x20

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v8

    if-eq p1, v8, :cond_9

    const/16 v8, -0xc8

    if-eq p1, v8, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/VolumePanelEx;->isMuted(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 702
    :cond_2
    iget-object v8, v6, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 708
    :cond_3
    :goto_1
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v8

    if-nez v8, :cond_6

    .line 709
    const/16 v8, -0xc8

    if-ne p1, v8, :cond_a

    const/4 v7, -0x1

    .line 712
    .local v7, stream:I
    :goto_2
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20c0005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 713
    .local v3, layout_width:I
    iget-boolean v8, p0, Landroid/view/VolumePanelEx;->mIsQuickCoverClose:Z

    if-eqz v8, :cond_b

    if-eqz p1, :cond_4

    const/4 v8, 0x6

    if-eq p1, v8, :cond_4

    const/4 v8, 0x3

    if-ne p1, v8, :cond_b

    .line 715
    :cond_4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f80

    invoke-direct {v0, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 716
    .local v0, SliderGroupParam:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 718
    .local v2, layoutParam:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    sget-boolean v8, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMERALDUI:Z

    if-eqz v8, :cond_5

    sget-boolean v8, Lcom/lge/config/ConfigBuildFlags;->CAPP_RESOURCE:Z

    if-eqz v8, :cond_5

    .line 722
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mPanel:Landroid/view/ViewGroup;

    const v9, 0x202002e

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 737
    :cond_5
    :goto_3
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v7}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 738
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    iget-object v9, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 739
    and-int/lit16 v8, p2, 0x200

    if-eqz v8, :cond_c

    .line 740
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 741
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->expand()V

    .line 746
    :goto_4
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 749
    .end local v0           #SliderGroupParam:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #layoutParam:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #layout_width:I
    .end local v7           #stream:I
    :cond_6
    const/16 v8, -0xc8

    if-eq p1, v8, :cond_8

    and-int/lit8 v8, p2, 0x10

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/view/VolumePanelEx;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v8, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x2

    if-ne p1, v8, :cond_8

    :cond_7
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 755
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Landroid/view/VolumePanelEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    sget v9, Landroid/view/VolumePanelEx;->VIBRATE_DELAY:I

    int-to-long v9, v9

    invoke-virtual {p0, v8, v9, v10}, Landroid/view/VolumePanelEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 757
    :cond_8
    return-void

    .line 641
    .end local v6           #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    :pswitch_1
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/lge/media/RingtoneManagerEx;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 643
    .local v5, ringuri:Landroid/net/Uri;
    if-nez v5, :cond_0

    .line 644
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/VolumePanelEx;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 659
    .end local v5           #ringuri:Landroid/net/Uri;
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 660
    add-int/lit8 v4, v4, 0x1

    .line 661
    goto/16 :goto_0

    .line 669
    :pswitch_3
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/lge/media/RingtoneManagerEx;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 671
    .restart local v5       #ringuri:Landroid/net/Uri;
    if-nez v5, :cond_0

    .line 672
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/VolumePanelEx;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 678
    .end local v5           #ringuri:Landroid/net/Uri;
    :pswitch_4
    add-int/lit8 v1, v1, 0x1

    .line 679
    add-int/lit8 v4, v4, 0x1

    .line 680
    goto/16 :goto_0

    .line 704
    .restart local v6       #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    :cond_9
    iget-object v8, v6, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_a
    move v7, p1

    .line 709
    goto/16 :goto_2

    .line 725
    .restart local v3       #layout_width:I
    .restart local v7       #stream:I
    :cond_b
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f80

    invoke-direct {v0, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 726
    .restart local v0       #SliderGroupParam:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 728
    .restart local v2       #layoutParam:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    sget-boolean v8, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMERALDUI:Z

    if-eqz v8, :cond_5

    sget-boolean v8, Lcom/lge/config/ConfigBuildFlags;->CAPP_RESOURCE:Z

    if-eqz v8, :cond_5

    .line 732
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mPanel:Landroid/view/ViewGroup;

    const v9, 0x20201c9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 743
    :cond_c
    iget-object v8, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 744
    invoke-direct {p0, v7}, Landroid/view/VolumePanelEx;->collapse(I)V

    goto/16 :goto_4

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 10
    .parameter "seekBar"

    .prologue
    const/4 v9, 0x2

    const/16 v8, -0xc8

    const/4 v7, 0x1

    .line 394
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 396
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Landroid/view/VolumePanelEx$LGStreamControl;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 397
    check-cast v2, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 398
    .local v2, sc:Landroid/view/VolumePanelEx$LGStreamControl;
    iget v4, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    if-ne v4, v9, :cond_1

    .line 400
    :try_start_0
    iget-object v4, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quiet_mode_status"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 401
    .local v1, quietModeStatus:I
    if-ne v1, v7, :cond_1

    .line 402
    iget v4, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v4}, Landroid/view/VolumePanelEx;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 403
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->postDisplayQuietModeWarning()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v1           #quietModeStatus:I
    .end local v2           #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 406
    .restart local v2       #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    .restart local v3       #tag:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "VolumePanel"

    const-string v5, "SettingNotFoundException - getDBQuietModeState()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v2           #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    :cond_1
    instance-of v4, v3, Landroid/view/VolumePanelEx$LGStreamControl;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 413
    check-cast v2, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 418
    .restart local v2       #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    iget v4, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    if-ne v4, v8, :cond_2

    .line 419
    invoke-virtual {p0, v8}, Landroid/view/VolumePanelEx;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 423
    .end local v2           #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    :cond_2
    instance-of v4, v3, Landroid/view/VolumePanelEx$LGStreamControl;

    if-eqz v4, :cond_5

    move-object v2, v3

    .line 424
    check-cast v2, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 425
    .restart local v2       #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    iget v4, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    if-eqz v4, :cond_3

    iget v4, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    :cond_3
    iget v4, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v4}, Landroid/view/VolumePanelEx;->getStreamVolume(I)I

    move-result v4

    if-ge v4, v7, :cond_5

    .line 427
    sget-boolean v4, Landroid/view/VolumePanelEx;->LOGD:Z

    if-eqz v4, :cond_4

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStopTrackingTouch(getStreamVolume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v6}, Landroid/view/VolumePanelEx;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_4
    iget v4, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    iget v5, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v5}, Landroid/view/VolumePanelEx;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {p0, v4, v5, v7}, Landroid/view/VolumePanelEx;->setStreamVolume(III)V

    .line 431
    .end local v2           #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    :cond_5
    instance-of v4, v3, Landroid/view/VolumePanelEx$LGStreamControl;

    if-eqz v4, :cond_7

    move-object v2, v3

    .line 432
    check-cast v2, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 434
    .restart local v2       #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    iget v4, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    if-eq v4, v8, :cond_7

    iget-object v4, p0, Landroid/view/VolumePanelEx;->mAudioService:Landroid/media/AudioService;

    iget v5, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, v2, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    if-ne v4, v9, :cond_7

    :cond_6
    iget-object v4, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_7

    .line 438
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/view/VolumePanelEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    sget v5, Landroid/view/VolumePanelEx;->VIBRATE_DELAY:I

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/VolumePanelEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 444
    .end local v2           #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    :cond_7
    instance-of v4, v3, Landroid/view/VolumePanelEx$LGStreamControl;

    if-eqz v4, :cond_0

    .line 445
    check-cast v3, Landroid/view/VolumePanelEx$LGStreamControl;

    goto/16 :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 311
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 313
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 319
    :cond_0
    :goto_0
    sget-boolean v0, Landroid/view/VolumePanelEx;->LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget v0, p0, Landroid/view/VolumePanelEx;->mActiveStreamType:I

    if-eq v0, p1, :cond_2

    .line 324
    invoke-virtual {p0, p1}, Landroid/view/VolumePanelEx;->reorderSliders(I)V

    .line 326
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanelEx;->onShowVolumeChanged(II)V

    .line 327
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/VolumePanelEx;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 331
    invoke-virtual {p0, v3}, Landroid/view/VolumePanelEx;->removeMessages(I)V

    .line 332
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/VolumePanelEx;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    sget v1, Landroid/view/VolumePanelEx;->PLAY_SOUND_DELAY:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanelEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 335
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 336
    invoke-virtual {p0, v3}, Landroid/view/VolumePanelEx;->removeMessages(I)V

    .line 337
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanelEx;->removeMessages(I)V

    .line 338
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->onStopSounds()V

    .line 341
    :cond_5
    invoke-virtual {p0, v4}, Landroid/view/VolumePanelEx;->removeMessages(I)V

    .line 342
    invoke-virtual {p0, v4}, Landroid/view/VolumePanelEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanelEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 345
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    .line 347
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->resetTimeout()V

    .line 349
    :cond_6
    return-void

    .line 315
    :cond_7
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDismissSafeVolumeWarning(I)V
    .locals 2
    .parameter "directon"

    .prologue
    const/16 v1, 0xd

    .line 1153
    invoke-virtual {p0, v1}, Landroid/view/VolumePanelEx;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    :goto_0
    return-void

    .line 1154
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/VolumePanelEx;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postDisplayQuietModeWarning()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 1003
    invoke-virtual {p0, v2}, Landroid/view/VolumePanelEx;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 1006
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Landroid/view/VolumePanelEx;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postVolumeChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 489
    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanelEx;->lgStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 491
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->createSliders()V

    .line 493
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanelEx;->removeMessages(I)V

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/VolumePanelEx;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 496
    return-void

    .line 493
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reorderSliders(I)V
    .locals 3
    .parameter "activeStreamType"

    .prologue
    .line 500
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 505
    iget-object v1, p0, Landroid/view/VolumePanelEx;->lgStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 506
    .local v0, active:Landroid/view/VolumePanelEx$LGStreamControl;
    if-nez v0, :cond_1

    .line 507
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/VolumePanelEx;->mActiveStreamType:I

    .line 516
    :goto_1
    invoke-virtual {p0}, Landroid/view/VolumePanelEx;->addOtherVolumes()V

    goto :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 510
    iput p1, p0, Landroid/view/VolumePanelEx;->mActiveStreamType:I

    .line 511
    iget-object v1, v0, Landroid/view/VolumePanelEx$LGStreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 512
    invoke-virtual {p0, v0}, Landroid/view/VolumePanelEx;->updateSlider(Landroid/view/VolumePanelEx$LGStreamControl;)V

    .line 513
    const-string v1, "VolumePanel"

    const-string v2, "reorderSliders else"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected resetTimeout()V
    .locals 3

    .prologue
    const/4 v1, 0x5

    .line 991
    invoke-virtual {p0, v1}, Landroid/view/VolumePanelEx;->removeMessages(I)V

    .line 994
    iget-boolean v0, p0, Landroid/view/VolumePanelEx;->mIsTalkBackOn:Z

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {p0, v1}, Landroid/view/VolumePanelEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanelEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1000
    :goto_0
    return-void

    .line 997
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/VolumePanelEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanelEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public safeMediaVolumeToast(I)V
    .locals 4
    .parameter "toastName"

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mToast:Lcom/lge/view/SafevolumeToast;

    iget-object v1, p0, Landroid/view/VolumePanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/view/SafevolumeToast;->showToast(Ljava/lang/CharSequence;J)V

    .line 1028
    return-void
.end method

.method public safeMediaVolumeToast(Ljava/lang/String;)V
    .locals 4
    .parameter "toastNameStr"

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/view/VolumePanelEx;->mToast:Lcom/lge/view/SafevolumeToast;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/view/SafevolumeToast;->showToast(Ljava/lang/CharSequence;J)V

    .line 1033
    return-void
.end method

.method public updateSlider(Landroid/view/VolumePanelEx$LGStreamControl;)V
    .locals 6
    .parameter "sc"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 552
    iget v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    if-nez v4, :cond_2

    .line 553
    iget-object v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v5, p1, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v5}, Landroid/view/VolumePanelEx;->getStreamVolume(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 556
    :goto_0
    iget v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v4}, Landroid/view/VolumePanelEx;->isMuted(I)Z

    move-result v1

    .line 559
    .local v1, muted:Z
    iget v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 560
    if-nez v1, :cond_0

    iget-object v4, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p1, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v0, v3

    .line 561
    .local v0, music_muted:Z
    :goto_1
    iget-object v5, p1, Landroid/view/VolumePanelEx$LGStreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->iconMuteRes:I

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 566
    .end local v0           #music_muted:Z
    :goto_3
    iget v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    iget-object v5, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 568
    iget-object v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->icon:Landroid/widget/ImageView;

    const v5, 0x2020262

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    :cond_1
    iget v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    const/16 v5, -0xc8

    if-ne v4, v5, :cond_7

    .line 571
    iget-object v2, p1, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 577
    :goto_4
    return-void

    .line 555
    .end local v1           #muted:Z
    :cond_2
    iget-object v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v5, p1, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    invoke-virtual {p0, v5}, Landroid/view/VolumePanelEx;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .restart local v1       #muted:Z
    :cond_3
    move v0, v2

    .line 560
    goto :goto_1

    .line 561
    .restart local v0       #music_muted:Z
    :cond_4
    iget v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->iconRes:I

    goto :goto_2

    .line 563
    .end local v0           #music_muted:Z
    :cond_5
    iget-object v5, p1, Landroid/view/VolumePanelEx$LGStreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->iconMuteRes:I

    :goto_5
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_6
    iget v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->iconRes:I

    goto :goto_5

    .line 572
    :cond_7
    iget v4, p1, Landroid/view/VolumePanelEx$LGStreamControl;->streamType:I

    iget-object v5, p0, Landroid/view/VolumePanelEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    if-eq v4, v5, :cond_8

    if-eqz v1, :cond_8

    .line 573
    iget-object v3, p1, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_4

    .line 575
    :cond_8
    iget-object v2, p1, Landroid/view/VolumePanelEx$LGStreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_4
.end method

.method public updateStates()V
    .locals 4

    .prologue
    .line 614
    iget-object v3, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 615
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 616
    iget-object v3, p0, Landroid/view/VolumePanelEx;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanelEx$LGStreamControl;

    .line 617
    .local v2, sc:Landroid/view/VolumePanelEx$LGStreamControl;
    invoke-virtual {p0, v2}, Landroid/view/VolumePanelEx;->updateSlider(Landroid/view/VolumePanelEx$LGStreamControl;)V

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v2           #sc:Landroid/view/VolumePanelEx$LGStreamControl;
    :cond_0
    return-void
.end method
