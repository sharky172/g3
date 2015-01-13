.class public Lcom/lge/systemservice/core/FeliCaManager;
.super Ljava/lang/Object;
.source "FeliCaManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "FeliCaService"

.field private static final TAG:Ljava/lang/String; = "FeliCaManager"


# instance fields
.field private mService:Lcom/lge/systemservice/core/IFeliCaManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IFeliCaManager;
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/lge/systemservice/core/FeliCaManager;->mService:Lcom/lge/systemservice/core/IFeliCaManager;

    if-nez v1, :cond_0

    .line 35
    const-string v1, "FeliCaService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/FeliCaManager;->mService:Lcom/lge/systemservice/core/IFeliCaManager;

    .line 38
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/core/FeliCaManager;->mService:Lcom/lge/systemservice/core/IFeliCaManager;

    return-object v1
.end method


# virtual methods
.method public cmdEXTIDM([B)Z
    .locals 3
    .parameter "idm"

    .prologue
    .line 53
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdEXTIDM is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdEXTIDM([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdEXTIDM is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cmdFreqCalRange([Ljava/lang/String;)Z
    .locals 3
    .parameter "response"

    .prologue
    .line 172
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalRange is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdFreqCalRange([Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalRange is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cmdFreqCalRead([Ljava/lang/String;)Z
    .locals 3
    .parameter "response"

    .prologue
    .line 148
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalRead is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdFreqCalRead([Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalRead is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cmdFreqCalWrite(F)Z
    .locals 3
    .parameter "freq"

    .prologue
    .line 123
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalWrite is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdFreqCalWrite(F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 130
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdFreqCalWrite is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cmdIDM([Ljava/lang/String;)Z
    .locals 3
    .parameter "response"

    .prologue
    .line 76
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdIDM is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdIDM([Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 83
    :goto_0
    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdIDM is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cmdRFIDCK()I
    .locals 3

    .prologue
    .line 98
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFIDCK is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdRFIDCK()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    :goto_0
    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFIDCK is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cmdRFRegCalCheck()Z
    .locals 3

    .prologue
    .line 291
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFRegCalCheck is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdRFRegCalCheck()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    :goto_0
    return v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFRegCalCheck is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cmdRFRegCalLoad()Z
    .locals 3

    .prologue
    .line 269
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFRegCalLoad is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdRFRegCalLoad()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 277
    :goto_0
    return v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdRFRegCalLoad is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cmdSwitchRange([Ljava/lang/String;)Z
    .locals 3
    .parameter "response"

    .prologue
    .line 197
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchRange is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdSwitchRange([Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    :goto_0
    return v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchRange is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cmdSwitchRead([Ljava/lang/String;)Z
    .locals 3
    .parameter "response"

    .prologue
    .line 247
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchRead is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdSwitchRead([Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchRead is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cmdSwitchWrite(I)Z
    .locals 3
    .parameter "idx"

    .prologue
    .line 222
    :try_start_0
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchWrite is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IFeliCaManager;->cmdSwitchWrite(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FeliCaManager"

    const-string v2, "cmdSwitchWrite is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    const/4 v1, 0x0

    goto :goto_0
.end method
