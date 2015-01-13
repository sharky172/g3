.class public Lcom/movial/ipphone/IPPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "IPPhoneProxy.java"


# instance fields
.field private mActivePhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 0
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;-><init>()V

    .line 84
    return-void
.end method

.method public static getIPPhoneProfile()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, -0x1

    return v0
.end method

.method public static getIPPhoneServiceState()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getEmergencyCallPowerState()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getEmergencyPreference()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangupFakeCall(Z)V
    .locals 0
    .parameter "dialed"

    .prologue
    .line 136
    return-void
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 130
    return-void
.end method

.method public setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 117
    return-void
.end method

.method public setForceEmergencyMode(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 91
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0
    .parameter "power"

    .prologue
    .line 94
    return-void
.end method

.method public startImsEmergencyCall()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 132
    return-void
.end method
