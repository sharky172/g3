.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;
    }
.end annotation


# static fields
.field public static final AID_ITSON:I = 0x5dc

.field public static final AID_OPERATOR:I = 0x5de

.field public static final AID_SPRINTTEB:I = 0x5dd

.field public static final ANDROID_SHARED_MEDIA:Ljava/lang/String; = "com.android.process.media"

.field public static final BLUETOOTH_UID:I = 0x3ea

.field public static final DRM_UID:I = 0x3fb

.field public static final FIRST_APPLICATION_UID:I = 0x2710

.field public static final FIRST_ISOLATED_UID:I = 0x182b8

.field public static final FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final FM_RADIO_UID:I = 0x405

.field public static final GOOGLE_SHARED_APP_CONTENT:Ljava/lang/String; = "com.google.process.content"

.field public static final LAST_APPLICATION_UID:I = 0x4e1f

.field public static final LAST_ISOLATED_UID:I = 0x1869f

.field public static final LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field private static final LOG_TAG:Ljava/lang/String; = "Process"

.field public static final LOG_UID:I = 0x3ef

.field public static final MEDIA_RW_GID:I = 0x3ff

.field public static final MEDIA_UID:I = 0x3f5

.field public static final NFCLOCK_UID:I = 0x9c4

.field public static final NFC_UID:I = 0x403

.field public static final PACKAGE_INFO_GID:I = 0x408

.field public static final PHONE_UID:I = 0x3e9

.field private static final PROCESS_STATE_FORMAT:[I = null

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_QUOTES:I = 0x400

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field public static final SCHED_BATCH:I = 0x3

.field public static final SCHED_FIFO:I = 0x1

.field public static final SCHED_IDLE:I = 0x5

.field public static final SCHED_OTHER:I = 0x0

.field public static final SCHED_RR:I = 0x2

.field public static final SHELL_UID:I = 0x7d0

.field public static final SIGNAL_KILL:I = 0x9

.field public static final SIGNAL_QUIT:I = 0x3

.field public static final SIGNAL_USR1:I = 0xa

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final THREAD_GROUP_AUDIO_APP:I = 0x3

.field public static final THREAD_GROUP_AUDIO_SYS:I = 0x4

.field public static final THREAD_GROUP_BG_NONINTERACTIVE:I = 0x0

.field public static final THREAD_GROUP_DEFAULT:I = -0x1

.field private static final THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final THREAD_GROUP_SYSTEM:I = 0x2

.field public static final THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final UID_NET_ADMIN:I = 0xbbd

.field public static final UID_NET_RAW:I = 0xbbc

.field public static final VPN_UID:I = 0x3f8

.field public static final WIFI_UID:I = 0x3f2

.field static final ZYGOTE_RETRY_MILLIS:I = 0x1f4

.field private static final ZYGOTE_SOCKET:Ljava/lang/String; = "zygote"

.field static sPreviousZygoteOpenFailed:Z

.field static sZygoteInputStream:Ljava/io/DataInputStream;

.field static sZygoteSocket:Landroid/net/LocalSocket;

.field static sZygoteWriter:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/os/Process;->PROCESS_STATE_FORMAT:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x2t 0x0t 0x0t
        0x20t 0x10t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    return-void
.end method

.method public static final native getElapsedCpuTime()J
.end method

.method public static final native getFreeMemory()J
.end method

.method public static final native getGidForName(Ljava/lang/String;)I
.end method

.method public static final getParentPid(I)I
    .locals 5
    .parameter "pid"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 777
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "PPid:"

    aput-object v2, v0, v4

    .line 778
    .local v0, procStatusLabels:[Ljava/lang/String;
    new-array v1, v3, [J

    .line 779
    .local v1, procStatusValues:[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 781
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native getPidsForCommands([Ljava/lang/String;)[I
.end method

.method public static final native getProcessGroup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native getPss(I)J
.end method

.method public static final getThreadGroupLeader(I)I
    .locals 5
    .parameter "tid"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 792
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "Tgid:"

    aput-object v2, v0, v4

    .line 793
    .local v0, procStatusLabels:[Ljava/lang/String;
    new-array v1, v3, [J

    .line 794
    .local v1, procStatusValues:[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 796
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getTotalMemory()J
.end method

.method public static final native getUidForName(Ljava/lang/String;)I
.end method

.method public static final getUidForPid(I)I
    .locals 5
    .parameter "pid"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 763
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "Uid:"

    aput-object v2, v0, v4

    .line 764
    .local v0, procStatusLabels:[Ljava/lang/String;
    new-array v1, v3, [J

    .line 765
    .local v1, procStatusValues:[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 767
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final isAlive(I)Z
    .locals 5
    .parameter "pid"

    .prologue
    const/4 v4, 0x0

    .line 1101
    const/4 v1, 0x0

    .line 1102
    .local v1, ret:Z
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 1103
    .local v0, processStateString:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Process;->PROCESS_STATE_FORMAT:[I

    invoke-static {v2, v3, v0, v4, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1105
    const/4 v1, 0x1

    .line 1107
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1108
    const/4 v1, 0x0

    .line 1111
    :cond_0
    return v1
.end method

.method public static final isIsolated()Z
    .locals 2

    .prologue
    .line 738
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 739
    .local v0, uid:I
    const v1, 0x182b8

    if-lt v0, v1, :cond_0

    const v1, 0x1869f

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final killProcess(I)V
    .locals 1
    .parameter "pid"

    .prologue
    .line 982
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 983
    return-void
.end method

.method public static final killProcessQuiet(I)V
    .locals 1
    .parameter "pid"

    .prologue
    .line 1006
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    .line 1007
    return-void
.end method

.method public static final myPid()I
    .locals 1

    .prologue
    .line 694
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static final myPpid()I
    .locals 1

    .prologue
    .line 702
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static final myTid()I
    .locals 1

    .prologue
    .line 710
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static final myUid()I
    .locals 1

    .prologue
    .line 720
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static final myUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 730
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method private static openZygoteSocketIfNeeded()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 458
    sget-boolean v4, Landroid/os/Process;->sPreviousZygoteOpenFailed:Z

    if-eqz v4, :cond_2

    .line 463
    const/4 v3, 0x0

    .line 473
    .local v3, retryCount:I
    :goto_0
    const/4 v2, 0x0

    .line 474
    .local v2, retry:I
    :goto_1
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_1

    .line 477
    if-lez v2, :cond_0

    .line 479
    :try_start_0
    const-string v4, "Zygote"

    const-string v5, "Zygote not up yet, sleeping..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 487
    :cond_0
    :goto_2
    :try_start_1
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    sput-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    .line 489
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string/jumbo v6, "zygote"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 492
    new-instance v4, Ljava/io/DataInputStream;

    sget-object v5, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v4, Landroid/os/Process;->sZygoteInputStream:Ljava/io/DataInputStream;

    .line 495
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    sget-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    sput-object v4, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    .line 501
    const-string v4, "Zygote"

    const-string v5, "Process: zygote socket opened"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v4, 0x0

    sput-boolean v4, Landroid/os/Process;->sPreviousZygoteOpenFailed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 519
    :cond_1
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_4

    .line 520
    const/4 v4, 0x1

    sput-boolean v4, Landroid/os/Process;->sPreviousZygoteOpenFailed:Z

    .line 521
    new-instance v4, Landroid/os/ZygoteStartFailedEx;

    const-string v5, "connect failed"

    invoke-direct {v4, v5}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v4

    .line 465
    .end local v2           #retry:I
    .end local v3           #retryCount:I
    :cond_2
    const/16 v3, 0xa

    .restart local v3       #retryCount:I
    goto :goto_0

    .line 505
    .restart local v2       #retry:I
    :catch_0
    move-exception v0

    .line 506
    .local v0, ex:Ljava/io/IOException;
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_3

    .line 508
    :try_start_2
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 515
    :cond_3
    :goto_3
    const/4 v4, 0x0

    sput-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 509
    :catch_1
    move-exception v1

    .line 510
    .local v1, ex2:Ljava/io/IOException;
    const-string v4, "Process"

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 523
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #ex2:Ljava/io/IOException;
    :cond_4
    return-void

    .line 481
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public static final native parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native sendSignal(II)V
.end method

.method public static final native sendSignalQuiet(II)V
.end method

.method public static final native setArgV0(Ljava/lang/String;)V
.end method

.method public static final native setCanSelfBackground(Z)V
.end method

.method public static final native setGid(I)I
.end method

.method public static final native setOomAdj(II)Z
.end method

.method public static final native setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setSwappiness(IZ)Z
.end method

.method public static final native setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadScheduler(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native setUid(I)I
.end method

.method public static final start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 3
    .parameter "processClass"
    .parameter "niceName"
    .parameter "uid"
    .parameter "gid"
    .parameter "gids"
    .parameter "debugFlags"
    .parameter "mountExternal"
    .parameter "targetSdkVersion"
    .parameter "seInfo"
    .parameter "zygoteArgs"

    .prologue
    .line 436
    :try_start_0
    invoke-static/range {p0 .. p9}, Landroid/os/Process;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, ex:Landroid/os/ZygoteStartFailedEx;
    const-string v1, "Process"

    const-string v2, "Starting VM process through Zygote failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Starting VM process through Zygote failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 12
    .parameter "processClass"
    .parameter "niceName"
    .parameter "uid"
    .parameter "gid"
    .parameter "gids"
    .parameter "debugFlags"
    .parameter "mountExternal"
    .parameter "targetSdkVersion"
    .parameter "seInfo"
    .parameter "extraArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 614
    const-class v10, Landroid/os/Process;

    monitor-enter v10

    .line 615
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v2, argsForZygote:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "--runtime-init"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--setuid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--setgid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    and-int/lit8 v9, p5, 0x10

    if-eqz v9, :cond_0

    .line 623
    const-string v9, "--enable-jni-logging"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_0
    and-int/lit8 v9, p5, 0x8

    if-eqz v9, :cond_1

    .line 626
    const-string v9, "--enable-safemode"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_1
    and-int/lit8 v9, p5, 0x1

    if-eqz v9, :cond_2

    .line 629
    const-string v9, "--enable-debugger"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_2
    and-int/lit8 v9, p5, 0x2

    if-eqz v9, :cond_3

    .line 632
    const-string v9, "--enable-checkjni"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_3
    and-int/lit8 v9, p5, 0x4

    if-eqz v9, :cond_4

    .line 635
    const-string v9, "--enable-assert"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_4
    const/4 v9, 0x2

    move/from16 v0, p6

    if-ne v0, v9, :cond_7

    .line 638
    const-string v9, "--mount-external-multiuser"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_5
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--target-sdk-version="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    array-length v9, v0

    if-lez v9, :cond_9

    .line 649
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v9, "--setgroups="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    move-object/from16 v0, p4

    array-length v8, v0

    .line 653
    .local v8, sz:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v8, :cond_8

    .line 654
    if-eqz v4, :cond_6

    .line 655
    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    :cond_6
    aget v9, p4, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 639
    .end local v4           #i:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .end local v8           #sz:I
    :cond_7
    const/4 v9, 0x3

    move/from16 v0, p6

    if-ne v0, v9, :cond_5

    .line 640
    const-string v9, "--mount-external-multiuser-all"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 680
    .end local v2           #argsForZygote:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 660
    .restart local v2       #argsForZygote:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #i:I
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    .restart local v8       #sz:I
    :cond_8
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    .end local v4           #i:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .end local v8           #sz:I
    :cond_9
    if-eqz p1, :cond_a

    .line 664
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--nice-name="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_a
    if-eqz p8, :cond_b

    .line 668
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--seinfo="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_b
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    if-eqz p9, :cond_c

    .line 674
    move-object/from16 v3, p9

    .local v3, arr$:[Ljava/lang/String;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v6, :cond_c

    aget-object v1, v3, v5

    .line 675
    .local v1, arg:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 679
    .end local v1           #arg:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_c
    invoke-static {v2}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;

    move-result-object v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v9
.end method

.method public static final supportsProcesses()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 931
    const/4 v0, 0x1

    return v0
.end method

.method private static zygoteSendArgsAndGetResult(Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 535
    .local p0, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Process;->openZygoteSocketIfNeeded()V

    .line 549
    :try_start_0
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 550
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 552
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 553
    .local v5, sz:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 554
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 555
    .local v0, arg:Ljava/lang/String;
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 556
    new-instance v6, Landroid/os/ZygoteStartFailedEx;

    const-string v7, "embedded newlines not allowed"

    invoke-direct {v6, v7}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v0           #arg:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #sz:I
    :catch_0
    move-exception v1

    .line 575
    .local v1, ex:Ljava/io/IOException;
    :try_start_1
    sget-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-eqz v6, :cond_0

    .line 576
    sget-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 583
    :cond_0
    :goto_1
    const/4 v6, 0x0

    sput-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    .line 585
    new-instance v6, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v6, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 559
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #arg:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v5       #sz:I
    :cond_1
    :try_start_2
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 560
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 553
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 563
    .end local v0           #arg:Ljava/lang/String;
    :cond_2
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 566
    new-instance v4, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v4}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 567
    .local v4, result:Landroid/os/Process$ProcessStartResult;
    sget-object v6, Landroid/os/Process;->sZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 568
    iget v6, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    if-gez v6, :cond_3

    .line 569
    new-instance v6, Landroid/os/ZygoteStartFailedEx;

    const-string v7, "fork() failed"

    invoke-direct {v6, v7}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v6

    .line 571
    :cond_3
    sget-object v6, Landroid/os/Process;->sZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    iput-boolean v6, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 572
    return-object v4

    .line 578
    .end local v3           #i:I
    .end local v4           #result:Landroid/os/Process$ProcessStartResult;
    .end local v5           #sz:I
    .restart local v1       #ex:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 580
    .local v2, ex2:Ljava/io/IOException;
    const-string v6, "Process"

    const-string v7, "I/O exception on routine close"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
