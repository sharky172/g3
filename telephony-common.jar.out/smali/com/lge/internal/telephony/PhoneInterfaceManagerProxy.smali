.class public Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;
.super Ljava/lang/Object;
.source "PhoneInterfaceManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneInterfaceManagerProxy"

.field private static isEmergencyAttachSupportedOnLteMethod:Ljava/lang/reflect/Method;

.field private static isEmergencyCallSupportedOnLteMethod:Ljava/lang/reflect/Method;

.field private static isVoiceCallSupprotedOnLteMethod:Ljava/lang/reflect/Method;

.field private static setLTEDataRoamingEnableMethod:Ljava/lang/reflect/Method;


# instance fields
.field private telephonyService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 26
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Boolean;

    aput-object v4, v1, v3

    .line 29
    .local v1, setLTEDataRoamingEnableParamType:[Ljava/lang/Class;
    :try_start_0
    const-class v3, Lcom/android/internal/telephony/ITelephony;

    const-string v4, "setLTEDataRoamingEnable"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->setLTEDataRoamingEnableMethod:Ljava/lang/reflect/Method;

    .line 31
    const-class v4, Lcom/android/internal/telephony/ITelephony;

    const-string v5, "isVoiceCallSupprotedOnLte"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isVoiceCallSupprotedOnLteMethod:Ljava/lang/reflect/Method;

    .line 33
    const-class v4, Lcom/android/internal/telephony/ITelephony;

    const-string v5, "isEmergencyCallSupportedOnLte"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyCallSupportedOnLteMethod:Ljava/lang/reflect/Method;

    .line 35
    const-class v4, Lcom/android/internal/telephony/ITelephony;

    const-string v5, "isEmergencyAttachSupportedOnLte"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyAttachSupportedOnLteMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v3, "PhoneInterfaceManagerProxy"

    const-string v4, "No Such Method Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 41
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "PhoneInterfaceManagerProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Throwable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 48
    iget-object v0, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "PhoneInterfaceManagerProxy"

    const-string v1, "Unable to connect to network management service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public isEmergencyAttachSupportedOnLte()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 143
    sget-object v1, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyAttachSupportedOnLteMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    sget-object v1, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyAttachSupportedOnLteMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 151
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 156
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public isEmergencyCallSupportedOnLte()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 116
    sget-object v1, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyCallSupportedOnLteMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    sget-object v1, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyCallSupportedOnLteMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public isVoiceCallSupprotedOnLte()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 89
    sget-object v1, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isVoiceCallSupprotedOnLteMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    sget-object v1, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isVoiceCallSupprotedOnLteMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 104
    :goto_0
    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 97
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public setLTEDataRoamingEnable(Z)V
    .locals 4
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v2, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->setLTEDataRoamingEnableMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 64
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 67
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->setLTEDataRoamingEnableMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 71
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method
