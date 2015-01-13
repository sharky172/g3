.class public Lcom/lge/media/MediaRecorderEx;
.super Landroid/media/MediaRecorder;
.source "MediaRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/MediaRecorderEx$LGAudioSource;
    }
.end annotation


# static fields
.field public static final MEDIA_RECORDER_TARS_STATE_INFO:I = 0x3e7

.field public static final OUTPUTFORMAT_AAC_TARS:I = 0x63

.field private static final TAG:Ljava/lang/String; = "LGMediaRecorder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/media/MediaRecorder;-><init>()V

    .line 32
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method private native native_audiozoom()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_changeMaxFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_isRecording()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_resume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setAudioZoomExceptionCase()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setOutputFileFD(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setParameter(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setRecordAngle(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setRecordZoomEnable(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method


# virtual methods
.method public changeMaxFileSize(J)V
    .locals 3
    .parameter "subsize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v0, "LGMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMaxFileSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/lge/media/MediaRecorderEx;->native_changeMaxFileSize(J)V

    .line 186
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/media/MediaRecorder;->finalize()V

    return-void
.end method

.method public isRecording()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_isRecording()Z

    move-result v0

    .line 143
    .local v0, ret:Z
    const-string v1, "LGMediaRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecording = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_pause()V

    .line 92
    const-string v0, "LGMediaRecorder"

    const-string v1, "mediarecorder pause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public resume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_resume()V

    .line 103
    const-string v0, "LGMediaRecorder"

    const-string v1, "mediarecorder resume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public setAudioZoomExceptionCase()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_setAudioZoomExceptionCase()V

    .line 45
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setAudioZoomExceptionCase"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public setAudioZooming()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_audiozoom()V

    .line 56
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setAudioZooming"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public setOutputFileFD(Ljava/io/FileDescriptor;)V
    .locals 6
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 129
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "LGMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mediarecorder setOutputFileFD:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/lge/media/MediaRecorderEx;->native_setOutputFileFD(Ljava/io/FileDescriptor;JJ)V

    .line 132
    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .locals 3
    .parameter "nameValuePair"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 115
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "LGMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediarecorder setParameter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/media/MediaRecorderEx;->native_setParameter(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setProfile(Lcom/lge/media/CamcorderProfileEx;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 158
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->fileFormat:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 159
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoFrameRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 160
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    iget v1, p1, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 161
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 162
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 163
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->quality:I

    const/16 v1, 0x3ef

    if-gt v0, v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioCodec:I

    if-ltz v0, :cond_0

    .line 168
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 169
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioChannels:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 170
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioSampleRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 171
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_0
.end method

.method public setRecordAngle(I)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lge/media/MediaRecorderEx;->native_setRecordAngle(I)V

    .line 68
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setRecordAngle"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public setRecordZoomEnable(II)V
    .locals 2
    .parameter "angle"
    .parameter "zoommode"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/lge/media/MediaRecorderEx;->native_setRecordZoomEnable(II)V

    .line 81
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setRecordZoomEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
