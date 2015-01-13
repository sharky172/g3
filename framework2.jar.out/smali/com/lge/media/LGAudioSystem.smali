.class public Lcom/lge/media/LGAudioSystem;
.super Ljava/lang/Object;
.source "LGAudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/LGAudioSystem$RecordStateCallback;
    }
.end annotation


# static fields
.field public static final HEADSET_TYPE_ADVANCED:I = 0x2

.field public static final HEADSET_TYPE_AUX:I = 0x3

.field public static final HEADSET_TYPE_NONE:I = 0x0

.field public static final HEADSET_TYPE_NORMAL:I = 0x1

.field public static final NUM_STREAM_TYPES:I = 0xc

.field public static final STREAM_DMB:I = 0xb

.field public static final STREAM_FM:I = 0xa

.field public static final STREAM_INCALL_MUSIC:I = 0xc

.field private static mRecordStateCallback:Lcom/lge/media/LGAudioSystem$RecordStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkPlayCondition(I)Z
.end method

.method private static recordStateCallbackFromNative(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, recordCallback:Lcom/lge/media/LGAudioSystem$RecordStateCallback;
    const-class v2, Lcom/lge/media/LGAudioSystem;

    monitor-enter v2

    .line 115
    :try_start_0
    sget-object v1, Lcom/lge/media/LGAudioSystem;->mRecordStateCallback:Lcom/lge/media/LGAudioSystem$RecordStateCallback;

    if-eqz v1, :cond_0

    .line 116
    sget-object v0, Lcom/lge/media/LGAudioSystem;->mRecordStateCallback:Lcom/lge/media/LGAudioSystem$RecordStateCallback;

    .line 118
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0, p0}, Lcom/lge/media/LGAudioSystem$RecordStateCallback;->onRecordStateCb(I)V

    .line 122
    :cond_1
    return-void

    .line 118
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static native setAudioRecordCallback()V
.end method

.method public static native setMABLControl(II)I
.end method

.method public static native setMABLEnable(I)I
.end method

.method public static native setRecordHookingEnabled(III)Ljava/io/FileDescriptor;
.end method

.method public static setRecordStateCallback(Lcom/lge/media/LGAudioSystem$RecordStateCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 106
    const-class v1, Lcom/lge/media/LGAudioSystem;

    monitor-enter v1

    .line 107
    :try_start_0
    sput-object p0, Lcom/lge/media/LGAudioSystem;->mRecordStateCallback:Lcom/lge/media/LGAudioSystem$RecordStateCallback;

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static native setRingerMode(I)I
.end method
