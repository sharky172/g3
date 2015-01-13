.class public abstract Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;
.super Ljava/lang/Object;
.source "LGMSimTelephonyManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LGMSimTelephonyManagerBase"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for common API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, errorMessage:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private logUnexpectedMTKMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for MTK API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, errorMessage:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "LGMSimTelephonyManagerBase"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    return-void
.end method

.method private logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for QCOM API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, errorMessage:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getCallState(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 158
    const-string v0, "getCallState"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 85
    const-string v0, "getCurrentPhoneType"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 171
    const-string v0, "getDefaultSubscription"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 80
    const-string v0, "getDeviceId"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 75
    const-string v0, "getDeviceSoftwareVersion"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 191
    const-string v0, "getGroupIdLevel1"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 153
    const-string v0, "getLine1Number"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMSIN(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 186
    const-string v0, "getMSIN"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiSimConfiguration()Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;
    .locals 1

    .prologue
    .line 70
    const-string v0, "getMultiSimConfiguration"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 108
    const-string v0, "getNetworkOperator"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 109
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 103
    const-string v0, "getNetworkOperatorName"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 104
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 123
    const-string v0, "getNetworkType"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 128
    const-string v0, "getNetworkTypeName"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 129
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 94
    const-string v0, "getPhoneCount"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 176
    const-string v0, "getPreferredDataSubscription"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 113
    const-string v0, "getSimOperator"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 114
    const-string v0, ""

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 143
    const-string v0, "getSimSerialNumber"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimState(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 138
    const-string v0, "getSimState"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 148
    const-string v0, "getSubscriberId"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "index"
    .parameter "defaultVal"

    .prologue
    .line 166
    const-string v0, "getTelephonyProperty"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 167
    return-object p3
.end method

.method public hasIccCard(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 133
    const-string v0, "hasIccCard"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 118
    const-string v0, "isNetworkRoaming"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 90
    const-string v0, "listen"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 181
    const-string v0, "setPreferredDataSubscription"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 99
    const-string v0, "setTelephonyProperty"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 100
    return-void
.end method
