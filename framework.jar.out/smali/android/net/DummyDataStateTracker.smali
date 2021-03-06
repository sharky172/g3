.class public Landroid/net/DummyDataStateTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "DummyDataStateTracker.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "DummyDataStateTracker"

.field private static final VDBG:Z


# instance fields
.field private mDefaultRouteSet:Z

.field private mIsDefaultOrHipri:Z

.field private mPrivateDnsRouteSet:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "netType"
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    .line 41
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    .line 43
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 44
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    .line 48
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mIsDefaultOrHipri:Z

    .line 56
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(I)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 57
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 228
    const-string v0, "DummyDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 232
    const-string v0, "DummyDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/DummyDataStateTracker;->log(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mTarget:Landroid/os/Handler;

    const/high16 v2, 0x7

    iget-object v3, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 147
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    return-void
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .parameter "link"

    .prologue
    .line 214
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 215
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 0
    .parameter "isCaptivePortal"

    .prologue
    .line 130
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    .line 88
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 75
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 76
    return-void
.end method

.method public reconnect()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "enabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "enabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/DummyDataStateTracker;->setTeardownRequested(Z)V

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .parameter "link"

    .prologue
    .line 219
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    .line 220
    return-void
.end method

.method public setDataConnectionMessanger(Landroid/os/Messenger;)V
    .locals 0
    .parameter "msger"

    .prologue
    .line 237
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 210
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 186
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .parameter "isRequested"

    .prologue
    .line 151
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    .line 152
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 181
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "target"

    .prologue
    .line 66
    iput-object p2, p0, Landroid/net/DummyDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 0
    .parameter "messenger"

    .prologue
    .line 225
    return-void
.end method

.method public teardown()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "disabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "disabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Dummy data state: none, dummy!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
