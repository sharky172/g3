.class public Lcom/lge/systemservice/core/LGPowerManagerHelper;
.super Ljava/lang/Object;
.source "LGPowerManagerHelper.java"

# interfaces
.implements Lcom/lge/loader/power/ILGPowerManagerLoader;


# static fields
.field public static final ID_APP_LAUNCH:I = 0x1

.field public static final ID_APP_SWITCH:I = 0xd

.field public static final ID_BT_MUSIC_PLAY:I = 0x1f

.field public static final ID_CALL_OUTGOING:I = 0xc

.field public static final ID_KNOCKON_WAKEUP:I = 0x3

.field public static final ID_MUSIC_SOUND_CONTROL:I = 0x20

.field public static final ID_SCREEN_ROTATION:I = 0x2

.field public static final ID_SOFT_KEY:I = 0xf

.field private static final TAG:Ljava/lang/String; = "LGPowerManagerHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-nez v0, :cond_0

    .line 43
    const-string v0, "lgpowermanagerhelper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    return-object v0
.end method


# virtual methods
.method public boost(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 120
    const/4 v1, -0x1

    .line 122
    .local v1, ret:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 123
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/ILGPowerManagerHelper;->boost(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public setGoToSleep()V
    .locals 1

    .prologue
    .line 142
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 143
    iget-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper;->setGoToSleep()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPowerModePolicy(I)I
    .locals 4
    .parameter "function"

    .prologue
    .line 77
    const/4 v1, -0x1

    .line 79
    .local v1, ret:I
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->setPowerModePolicy(IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 83
    :goto_0
    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized setPowerModePolicy(IZ)I
    .locals 4
    .parameter "function"
    .parameter "enable"

    .prologue
    .line 97
    monitor-enter p0

    const/4 v1, -0x1

    .line 99
    .local v1, ret:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 100
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/ILGPowerManagerHelper;->setPowerModePolicy(IZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 103
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public turnOffThermald()V
    .locals 4

    .prologue
    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 57
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    invoke-interface {v2}, Lcom/lge/systemservice/core/ILGPowerManagerHelper;->turnOffThermald()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, re:Landroid/os/RemoteException;
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "Error while turning off thermal daemon."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v1           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
