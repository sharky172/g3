.class public Landroid/media/AudioServiceEx$AudioSystemThreadEx;
.super Landroid/media/AudioService$AudioSystemThread;
.source "AudioServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioSystemThreadEx"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioServiceEx;


# direct methods
.method constructor <init>(Landroid/media/AudioServiceEx;)V
    .locals 0
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Landroid/media/AudioServiceEx$AudioSystemThreadEx;->this$0:Landroid/media/AudioServiceEx;

    .line 1180
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    .line 1181
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1185
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1187
    iget-object v1, p0, Landroid/media/AudioServiceEx$AudioSystemThreadEx;->this$0:Landroid/media/AudioServiceEx;

    monitor-enter v1

    .line 1188
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioServiceEx$AudioSystemThreadEx;->this$0:Landroid/media/AudioServiceEx;

    new-instance v2, Landroid/media/AudioServiceEx$AudioHandlerEx;

    iget-object v3, p0, Landroid/media/AudioServiceEx$AudioSystemThreadEx;->this$0:Landroid/media/AudioServiceEx;

    invoke-direct {v2, v3}, Landroid/media/AudioServiceEx$AudioHandlerEx;-><init>(Landroid/media/AudioServiceEx;)V

    iput-object v2, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    .line 1191
    iget-object v0, p0, Landroid/media/AudioServiceEx$AudioSystemThreadEx;->this$0:Landroid/media/AudioServiceEx;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1192
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1195
    return-void

    .line 1192
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
