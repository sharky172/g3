.class public Lcom/lge/media/MediaPlayerEx;
.super Landroid/media/MediaPlayer;
.source "MediaPlayerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/MediaPlayerEx$TrackInfoEx;,
        Lcom/lge/media/MediaPlayerEx$EventHandlerEx;,
        Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;
    }
.end annotation


# static fields
.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final LGE_INVOKE_GET_PARAM:I = 0x7e000002

.field private static final LGE_INVOKE_SET_PARAM:I = 0x7e000001

.field public static final LGE_MEDIAPLAYER_KEYPARAM_AUDIO_ZOOM_INFO:I = 0x23f0

.field public static final LGE_MEDIAPLAYER_KEYPARAM_AUDIO_ZOOM_INIT:I = 0x23f1

.field public static final LGE_MEDIAPLAYER_KEYPARAM_AUDIO_ZOOM_START:I = 0x23f2

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_ADD_HEADER:I = 0x2329

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_FB_SCAN_MODE_START:I = 0x2334

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_FF_SCAN_MODE_START:I = 0x2332

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_GET_RESPONSE:I = 0x232b

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REMOVE_HEADER:I = 0x232a

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_CONNECTION_TIMEOUT:I = 0x238c

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_ENABLE_HTTPRANGE:I = 0x2390

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_ENABLE_TIMESEEK:I = 0x2391

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_KEEPCONNECTION_ON_PAUSE:I = 0x238f

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_KEEPCONNECTION_ON_PLAY:I = 0x238e

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_READ_TIMEOUT:I = 0x238d

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_SB_SCAN_MODE_START:I = 0x2335

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_SCAN_MODE_END:I = 0x2336

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_SF_SCAN_MODE_START:I = 0x2333

.field private static final LGE_MEDIAPLAYER_KEYPARAM_LGEAUDIO_3DMUSIC:I = 0x6f001002

.field private static final LGE_MEDIAPLAYER_KEYPARAM_LGEAUDIO_CUSTOMEQ:I = 0x6f001001

.field private static final LGE_MEDIAPLAYER_KEYPARAM_LGEAUDIO_EFFECT:I = 0x6f001000

.field public static final LGE_MEDIAPLAYER_KEYPARAM_LGE_HIFI_ENABLED:I = 0x1770

.field public static final LGE_MEDIAPLAYER_KEYPARAM_PLAY_ON_LOCKSCREEN:I = 0x251c

.field private static final LGE_MEDIAPLAYER_KEYPARAM_SET_NORMALIZER:I = 0x6f001010

.field public static final LGE_MEDIAPLAYER_KEYPARAM_SYSTEM_INFO_DIVXSUPPORT:I = 0x24b9

.field public static final LGE_MEDIAPLAYER_KEYPARAM_SYSTEM_INFO_HIFISUPPORT:I = 0x24ba

.field public static final MEDIA_IMPLEMENT_ERROR_DRM_NOT_AUTHORIZED:I = 0x24b8

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_AVAILABLE_NETWORK:I = 0x2454

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_EXIST_AUDIO:I = 0x2396

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_EXIST_VIDEO:I = 0x23a0

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_AUDIO:I = 0x23f0

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_BITRATE:I = 0x23aa

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_MEDIA:I = 0x2404

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_RESOLUTIONS:I = 0x238c

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_VIDEO:I = 0x23fa

.field public static final MEDIA_MIMETYPE_CONTAINER_MPEG2TS:Ljava/lang/String; = "video/mp2ts"

.field public static final MEDIA_MIMETYPE_TEXT_CLOSEDCAPTION:Ljava/lang/String; = "text/closedcaption"

.field public static final MEDIA_MIMETYPE_TEXT_EX:Ljava/lang/String; = "text/ex"

.field public static final MEDIA_MIMETYPE_TEXT_XSUB:Ljava/lang/String; = "text/xsub"

.field private static final MEDIA_SOUND_FILTER_DISABLE:I = 0x2bc

.field private static final MEDIA_TIMED_TEXT_EX:I = 0x258

.field private static final TAG:Ljava/lang/String; = "MediaPlayerEX"


# instance fields
.field private bCPUBoostEventFlag:Z

.field private mOnTimedTextExListener:Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 479
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 471
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/media/MediaPlayerEx;->bCPUBoostEventFlag:Z

    .line 481
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 482
    const-string v1, "MediaPlayerEX"

    const-string v2, "looper = Looper.myLooper()) != null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v1, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;

    invoke-direct {v1, p0, p0, v0}, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;-><init>(Lcom/lge/media/MediaPlayerEx;Lcom/lge/media/MediaPlayerEx;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 494
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 486
    const-string v1, "MediaPlayerEX"

    const-string v2, "ooper = Looper.getMainLooper()) != null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v1, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;

    invoke-direct {v1, p0, p0, v0}, Lcom/lge/media/MediaPlayerEx$EventHandlerEx;-><init>(Lcom/lge/media/MediaPlayerEx;Lcom/lge/media/MediaPlayerEx;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    .line 490
    :cond_1
    const-string v1, "MediaPlayerEX"

    const-string v2, "mEventHandler = null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _screenCapture()Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Lcom/lge/media/MediaPlayerEx;)Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/media/MediaPlayerEx;->mOnTimedTextExListener:Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;

    return-object v0
.end method


# virtual methods
.method public getCPUFlag()Z
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Lcom/lge/media/MediaPlayerEx;->bCPUBoostEventFlag:Z

    return v0
.end method

.method protected bridge synthetic getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/lge/media/MediaPlayerEx;->getInbandTrackInfo()[Lcom/lge/media/MediaPlayerEx$TrackInfoEx;

    move-result-object v0

    return-object v0
.end method

.method protected getInbandTrackInfo()[Lcom/lge/media/MediaPlayerEx$TrackInfoEx;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 695
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 697
    .local v0, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 700
    sget-object v3, Lcom/lge/media/MediaPlayerEx$TrackInfoEx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/lge/media/MediaPlayerEx$TrackInfoEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    .local v2, trackInfo:[Lcom/lge/media/MediaPlayerEx$TrackInfoEx;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 701
    return-object v2

    .line 703
    .end local v2           #trackInfo:[Lcom/lge/media/MediaPlayerEx$TrackInfoEx;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    throw v3
.end method

.method public getIntParameter(I)I
    .locals 2
    .parameter "key"

    .prologue
    .line 858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 859
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->getParameter(ILandroid/os/Parcel;)V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 861
    .local v1, ret:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 862
    return v1
.end method

.method public getParameter(ILandroid/os/Parcel;)V
    .locals 3
    .parameter "key"
    .parameter "reply"

    .prologue
    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 798
    .local v1, request:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 799
    const v2, 0x7e000002

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    invoke-virtual {p0, v1, p2}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    return-void

    .line 804
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/RuntimeException;
    goto :goto_0

    .line 811
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .locals 1
    .parameter "key"

    .prologue
    .line 826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 827
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->getParameter(ILandroid/os/Parcel;)V

    .line 828
    return-object v0
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 842
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->getParameter(ILandroid/os/Parcel;)V

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 845
    return-object v1
.end method

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-super {p0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    .line 668
    .local v0, allTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {p0}, Lcom/lge/media/MediaPlayerEx;->getInbandTrackInfo()[Lcom/lge/media/MediaPlayerEx$TrackInfoEx;

    move-result-object v6

    .line 669
    .local v6, trackInfoEx:[Lcom/lge/media/MediaPlayerEx$TrackInfoEx;
    const/4 v2, 0x0

    .line 671
    .local v2, i:I
    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    .line 672
    move-object v1, v6

    .local v1, arr$:[Lcom/lge/media/MediaPlayerEx$TrackInfoEx;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 673
    .local v5, trackEx:Lcom/lge/media/MediaPlayerEx$TrackInfoEx;
    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    .line 674
    const-string v7, "MediaPlayerEX"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "**** getTrackInfo **** / TrackInfoEx["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    aget-object v7, v6, v2

    aput-object v7, v0, v2

    .line 678
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 672
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 682
    .end local v1           #arr$:[Lcom/lge/media/MediaPlayerEx$TrackInfoEx;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #trackEx:Lcom/lge/media/MediaPlayerEx$TrackInfoEx;
    :cond_1
    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 501
    const-string v0, "MediaPlayerEX"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/media/MediaPlayerEx;->mOnTimedTextExListener:Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaPlayerEx;->setCPUFlag(Z)V

    .line 504
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 505
    return-void
.end method

.method public screenCapture()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/lge/media/MediaPlayerEx;->_screenCapture()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1003
    .local v0, vFrame:Landroid/graphics/Bitmap;
    const-string v1, "MediaPlayerEX"

    const-string v2, "[screenCapture] screenCapture start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-object v0
.end method

.method public setCPUFlag(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 980
    iput-boolean p1, p0, Lcom/lge/media/MediaPlayerEx;->bCPUBoostEventFlag:Z

    .line 981
    return-void
.end method

.method public setLGAudioEffect(IIII)I
    .locals 5
    .parameter "iEnable"
    .parameter "iType"
    .parameter "iPath"
    .parameter "iMedia"

    .prologue
    const/4 v2, 0x1

    .line 907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 908
    .local v1, parcel:Landroid/os/Parcel;
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    const v3, 0x6f001000

    invoke-virtual {p0, v3, v1}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v0

    .line 914
    .local v0, isAudioEffect:Z
    if-eq v0, v2, :cond_0

    .line 916
    const-string v3, "MediaPlayerEX"

    const-string v4, "[setLGAudioEffect] setParameter fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setLGSoleCustomEQ(II)I
    .locals 5
    .parameter "iNumBand"
    .parameter "iNumGain"

    .prologue
    const/4 v2, 0x1

    .line 937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 938
    .local v1, parcel:Landroid/os/Parcel;
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    const v3, 0x6f001001

    invoke-virtual {p0, v3, v1}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v0

    .line 942
    .local v0, isCustomEQ:Z
    if-eq v0, v2, :cond_0

    .line 944
    const-string v3, "MediaPlayerEX"

    const-string v4, "[setLGSoleCustomEQ] setParameter fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setLGSoundNormalizerOnOff(I)V
    .locals 4
    .parameter "normalizerOnOff"

    .prologue
    .line 960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 961
    .local v0, parcel:Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    const v2, 0x6f001010

    invoke-virtual {p0, v2, v0}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 964
    .local v1, ret:Z
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 966
    const-string v2, "MediaPlayerEX"

    const-string v3, "[setLGSoundNormalizerOnOff] setParameter fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    return-void
.end method

.method public setOnTimedTextExListener(Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 535
    iput-object p1, p0, Lcom/lge/media/MediaPlayerEx;->mOnTimedTextExListener:Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;

    .line 536
    return-void
.end method

.method public setParameter(II)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 778
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 780
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 781
    return v1
.end method

.method public setParameter(ILandroid/os/Parcel;)Z
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 720
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 721
    .local v1, reply:Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 725
    .local v3, ret:Z
    :try_start_0
    const-string v6, "android.media.IMediaPlayer"

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 726
    const v6, 0x7e000001

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    invoke-virtual {v2, p2, v6, v7}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 730
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x1

    .line 741
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move v4, v3

    .line 745
    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_1
    return v4

    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_0
    move v3, v5

    .line 731
    goto :goto_0

    .line 734
    :catch_0
    move-exception v0

    .line 741
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move v4, v3

    .line 736
    .restart local v4       #ret:I
    goto :goto_1

    .line 741
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v4           #ret:I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 741
    throw v5
.end method

.method public setParameter(ILjava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 760
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 762
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 763
    return v1
.end method
