.class public Lcom/lge/telephony/msim/LGCallManager;
.super Ljava/lang/Object;
.source "LGCallManager.java"


# static fields
.field private static INSTANCE:Lcom/lge/telephony/msim/LGCallManager;

.field private static final VENDOR_CALLMANAGER_ADAPTORS:[Ljava/lang/String;

.field private static activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;


# instance fields
.field private CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 24
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.lge.telephony.msim.QcomCallManagerAdaptor"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "com.lge.telephony.msim.MtkCallManagerAdaptor"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "com.lge.telephony.msim.NvidiaCallManagerAdaptor"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "com.lge.telephony.msim.IntelCallManagerAdaptor"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "com.lge.telephony.msim.DefaultCallManagerAdaptor"

    aput-object v4, v2, v3

    sput-object v2, Lcom/lge/telephony/msim/LGCallManager;->VENDOR_CALLMANAGER_ADAPTORS:[Ljava/lang/String;

    .line 38
    sget-object v2, Lcom/lge/telephony/msim/LGCallManager;->VENDOR_CALLMANAGER_ADAPTORS:[Ljava/lang/String;

    invoke-static {v2}, Lcom/lge/telephony/msim/RuntimeLoader;->getActiveDefaultConstructorFromClassList([Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 41
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-nez v0, :cond_0

    .line 42
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error!! don\'t load any class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/telephony/msim/LGCallManagerBase;

    sput-object v2, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 58
    new-instance v2, Lcom/lge/telephony/msim/LGCallManager;

    invoke-direct {v2}, Lcom/lge/telephony/msim/LGCallManager;-><init>()V

    sput-object v2, Lcom/lge/telephony/msim/LGCallManager;->INSTANCE:Lcom/lge/telephony/msim/LGCallManager;

    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 49
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 51
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 53
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 54
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    .line 61
    return-void
.end method

.method public static getInstance()Lcom/lge/telephony/msim/LGCallManager;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->INSTANCE:Lcom/lge/telephony/msim/LGCallManager;

    return-object v0
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V

    .line 424
    return-void
.end method

.method public acceptCall(Lcom/android/internal/telephony/Call;I)V
    .locals 1
    .parameter "ringingCall"
    .parameter "callType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGCallManagerBase;->acceptCall(Lcom/android/internal/telephony/Call;I)V

    .line 109
    return-void
.end method

.method public canConference(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "heldCall"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public canConference(Lcom/android/internal/telephony/Call;I)Z
    .locals 1
    .parameter "heldCall"
    .parameter "subscription"

    .prologue
    .line 372
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGCallManagerBase;->canConference(Lcom/android/internal/telephony/Call;I)Z

    move-result v0

    return v0
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "heldCall"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->canTransfer(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 457
    return-void
.end method

.method public clearDisconnected(I)V
    .locals 1
    .parameter "subscription"

    .prologue
    .line 335
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->clearDisconnected(I)V

    .line 336
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->conference(Lcom/android/internal/telephony/Call;)V

    .line 444
    return-void
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "phone"
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "phone"
    .parameter "dialString"
    .parameter "callType"
    .parameter "extras"

    .prologue
    .line 127
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/LGCallManagerBase;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "phone"
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public explicitCallTransfer(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->explicitCallTransfer(Lcom/android/internal/telephony/Call;)V

    .line 465
    return-void
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 274
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 283
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSubscription()I
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGCallManagerBase;->getActiveSubscription()I

    move-result v0

    return v0
.end method

.method public getAllPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBgCallConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getBgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 220
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getBgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFgCallConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFgCallConnections(I)Ljava/util/List;
    .locals 1
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getFgCallConnections(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getFgCallLatestConnection(I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 348
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getFgCallLatestConnection(I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getFgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 211
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 270
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 251
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsIMSECCSetup()Z
    .locals 1

    .prologue
    .line 737
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGCallManagerBase;->getIsIMSECCSetup()Z

    move-result v0

    return v0
.end method

.method public getLocalCallHoldStatus(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 368
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getLocalCallHoldStatus(I)Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getMute()Z

    move-result v0

    return v0
.end method

.method public getPendingMmiCodes(Lcom/android/internal/telephony/Phone;)Ljava/util/List;
    .locals 1
    .parameter "phone"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getPendingMmiCodes(Lcom/android/internal/telephony/Phone;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGCallManagerBase;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneInCall(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 233
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getPhoneInCall(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRingingPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getRingingPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 229
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getRingingPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    return v0
.end method

.method public getServiceState(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 192
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getServiceState(I)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 202
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V

    .line 436
    return-void
.end method

.method public hasActiveBgCall()Z
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    return v0
.end method

.method public hasActiveBgCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 310
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasActiveBgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveFgCall()Z
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    return v0
.end method

.method public hasActiveFgCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 301
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasActiveFgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveFgCallAnyPhone()Z
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasActiveFgCallAnyPhone()Z

    move-result v0

    return v0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    return v0
.end method

.method public hasActiveRingingCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 292
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasActiveRingingCall(I)Z

    move-result v0

    return v0
.end method

.method public hasDisconnectedBgCall()Z
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v0

    return v0
.end method

.method public hasDisconnectedBgCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 326
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasDisconnectedBgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasDisconnectedFgCall()Z
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v0

    return v0
.end method

.method public hasDisconnectedFgCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 318
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasDisconnectedFgCall(I)Z

    move-result v0

    return v0
.end method

.method public isCallOnCsvtEnabled()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGCallManagerBase;->isCallOnCsvtEnabled()Z

    move-result v0

    return v0
.end method

.method public isCallOnImsEnabled()Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGCallManagerBase;->isCallOnImsEnabled()Z

    move-result v0

    return v0
.end method

.method public isImsPhoneActive()Z
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGCallManagerBase;->isImsPhoneActive()Z

    move-result v0

    return v0
.end method

.method public isImsPhoneIdle()Z
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGCallManagerBase;->isImsPhoneIdle()Z

    move-result v0

    return v0
.end method

.method public registerForCallModify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 375
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/LGCallManagerBase;->registerForCallModify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 376
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 617
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 641
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 505
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 633
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 577
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 609
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 601
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 537
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 569
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 561
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 529
    return-void
.end method

.method public registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 657
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 513
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 665
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 553
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 545
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 585
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 625
    return-void
.end method

.method public registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 172
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/LGCallManagerBase;->registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 173
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 649
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 593
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 140
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/LGCallManagerBase;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 521
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    return v0
.end method

.method public rejectCall(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->rejectCall(Lcom/android/internal/telephony/Call;)V

    .line 428
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z
    .locals 1
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendDtmf(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->sendDtmf(C)Z

    move-result v0

    return v0
.end method

.method public sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 1
    .parameter "phone"
    .parameter "ussdMessge"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setActiveSubscription(I)V
    .locals 1
    .parameter "subscription"

    .prologue
    .line 352
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->setActiveSubscription(I)V

    .line 353
    return-void
.end method

.method public setAudioMode()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->setAudioMode()V

    .line 420
    return-void
.end method

.method public setCallAudioDrivers(ILcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "phoneType"
    .parameter "state"

    .prologue
    .line 356
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGCallManagerBase;->setCallAudioDrivers(ILcom/android/internal/telephony/Call$State;)V

    .line 357
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled(Z)V

    .line 485
    return-void
.end method

.method public setIsIMSECCSetup(Z)V
    .locals 1
    .parameter "sending"

    .prologue
    .line 733
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->setIsIMSECCSetup(Z)V

    .line 734
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->setMute(Z)V

    .line 477
    return-void
.end method

.method public startDtmf(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    move-result v0

    return v0
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 497
    return-void
.end method

.method public switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 432
    return-void
.end method

.method public switchToLocalHold(IZ)V
    .locals 1
    .parameter "subscription"
    .parameter "switchTo"

    .prologue
    .line 364
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGCallManagerBase;->switchToLocalHold(IZ)V

    .line 365
    return-void
.end method

.method public unregisterForCallModify(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 379
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->unregisterForCallModify(Landroid/os/Handler;)V

    .line 380
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 621
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 645
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 509
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 637
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 581
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 613
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 605
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 541
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 573
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 565
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 533
    return-void
.end method

.method public unregisterForPostDialCharacter(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 661
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 517
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 669
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 557
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 549
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 589
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 629
    return-void
.end method

.method public unregisterForSubscriptionChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 176
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->unregisterForSubscriptionChange(Landroid/os/Handler;)V

    .line 177
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 653
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 597
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 150
    sget-object v0, Lcom/lge/telephony/msim/LGCallManager;->activeCallManager:Lcom/lge/telephony/msim/LGCallManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 151
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 525
    return-void
.end method

.method public unregisterPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManager;->CM_NATIVE_INSTANCE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 400
    return-void
.end method
