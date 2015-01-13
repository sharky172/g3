.class public Lcom/lge/internal/telephony/NetworkManagementServiceProxy;
.super Ljava/lang/Object;
.source "NetworkManagementServiceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkManagementServiceProxy"

.field private static acceptPacketMethod:Ljava/lang/reflect/Method;

.field private static dropPacketMethod:Ljava/lang/reflect/Method;

.field private static setMdmIptablesFileMethod:Ljava/lang/reflect/Method;

.field private static setMdmIptablesMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mNetworkService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 26
    new-array v4, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v7

    .line 27
    .local v4, setMdmIptablesParamType:[Ljava/lang/Class;
    new-array v3, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v7

    .line 28
    .local v3, setMdmIptablesFileParamType:[Ljava/lang/Class;
    new-array v1, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v7

    .line 29
    .local v1, dropPacketParamType:[Ljava/lang/Class;
    new-array v0, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v7

    .line 32
    .local v0, acceptPacketParamType:[Ljava/lang/Class;
    :try_start_0
    const-class v6, Landroid/os/INetworkManagementService;

    const-string v7, "setMdmIptables"

    invoke-virtual {v6, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->setMdmIptablesMethod:Ljava/lang/reflect/Method;

    .line 34
    const-class v6, Landroid/os/INetworkManagementService;

    const-string v7, "setMdmIptablesFile"

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->setMdmIptablesFileMethod:Ljava/lang/reflect/Method;

    .line 36
    const-class v6, Landroid/os/INetworkManagementService;

    const-string v7, "dropPacket"

    invoke-virtual {v6, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->dropPacketMethod:Ljava/lang/reflect/Method;

    .line 38
    const-class v6, Landroid/os/INetworkManagementService;

    const-string v7, "acceptPacket"

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->acceptPacketMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v6, "NetworkManagementServiceProxy"

    const-string v7, "No Such Method Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v5

    .line 44
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "NetworkManagementServiceProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Throwable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 51
    iget-object v0, p0, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "NetworkManagementServiceProxy"

    const-string v1, "Unable to connect to network management service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptPacket(Ljava/lang/String;)V
    .locals 4
    .parameter "outputInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v2, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->setMdmIptablesFileMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 147
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 150
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->acceptPacketMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 162
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public dropPacket(Ljava/lang/String;)V
    .locals 4
    .parameter "outputInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 119
    sget-object v2, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->setMdmIptablesFileMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 120
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 123
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->dropPacketMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 135
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setMdmIptables(Ljava/lang/String;)V
    .locals 4
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 66
    sget-object v2, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->setMdmIptablesMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 67
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 70
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->setMdmIptablesMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setMdmIptablesFile(Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 92
    sget-object v2, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->setMdmIptablesFileMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 93
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 96
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->setMdmIptablesFileMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/NetworkManagementServiceProxy;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method
