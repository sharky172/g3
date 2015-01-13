.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_captivePortalCheckComplete:I = 0x32

.field static final TRANSACTION_captivePortalCheckCompleted:I = 0x33

.field static final TRANSACTION_checkLteConnectState:I = 0x43

.field static final TRANSACTION_checkMobileProvisioning:I = 0x36

.field static final TRANSACTION_clearDataDisabledFlag:I = 0x46

.field static final TRANSACTION_ePDGHandOverStatus:I = 0x4c

.field static final TRANSACTION_ePDGPrefTechdone:I = 0x4b

.field static final TRANSACTION_ePDGlisten:I = 0x49

.field static final TRANSACTION_establishVpn:I = 0x2d

.field static final TRANSACTION_findConnectionTypeForIface:I = 0x35

.field static final TRANSACTION_getActiveLinkProperties:I = 0xa

.field static final TRANSACTION_getActiveLinkQualityInfo:I = 0x3a

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x4

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x5

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0xd

.field static final TRANSACTION_getAllLinkQualityInfo:I = 0x3b

.field static final TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final TRANSACTION_getAllNetworkState:I = 0xc

.field static final TRANSACTION_getDebugInfo:I = 0x4f

.field static final TRANSACTION_getGlobalProxy:I = 0x26

.field static final TRANSACTION_getLastTetherError:I = 0x1b

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x30

.field static final TRANSACTION_getLinkProperties:I = 0xb

.field static final TRANSACTION_getLinkQualityInfo:I = 0x39

.field static final TRANSACTION_getLteRssi:I = 0x50

.field static final TRANSACTION_getMobileDataEnabled:I = 0x15

.field static final TRANSACTION_getMobileDataEnabledByUser:I = 0x17

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x37

.field static final TRANSACTION_getMobileRedirectedProvisioningUrl:I = 0x38

.field static final TRANSACTION_getNetworkInfo:I = 0x6

.field static final TRANSACTION_getNetworkPreference:I = 0x3

.field static final TRANSACTION_getProvisioningOrActiveNetworkInfo:I = 0x8

.field static final TRANSACTION_getProxy:I = 0x28

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x22

.field static final TRANSACTION_getTetherableIfaces:I = 0x1d

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x20

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x21

.field static final TRANSACTION_getTetheredIfaces:I = 0x1e

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x1f

.field static final TRANSACTION_getVpnConfig:I = 0x2e

.field static final TRANSACTION_isActiveNetworkMetered:I = 0xe

.field static final TRANSACTION_isNetworkSupported:I = 0x9

.field static final TRANSACTION_isTetheringSupported:I = 0x1c

.field static final TRANSACTION_markSocketAsUser:I = 0x1

.field static final TRANSACTION_mobileDataPdpReset:I = 0x44

.field static final TRANSACTION_notifyEPDGCallResult:I = 0x4d

.field static final TRANSACTION_notifyEPDGPDNStatus:I = 0x4e

.field static final TRANSACTION_prepareVpn:I = 0x2b

.field static final TRANSACTION_prepareVpnForMvp:I = 0x2c

.field static final TRANSACTION_protectVpn:I = 0x2a

.field static final TRANSACTION_reportInetCondition:I = 0x25

.field static final TRANSACTION_requestNetworkTransitionWakelock:I = 0x24

.field static final TRANSACTION_requestRemRouteToHostAddress:I = 0x3f

.field static final TRANSACTION_requestRemoveImsRoute:I = 0x40

.field static final TRANSACTION_requestRouteToHost:I = 0x13

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x14

.field static final TRANSACTION_setAirplaneMode:I = 0x3d

.field static final TRANSACTION_setDataConnectionMessanger:I = 0x3e

.field static final TRANSACTION_setDataDependency:I = 0x29

.field static final TRANSACTION_setDataDisabledFlag:I = 0x45

.field static final TRANSACTION_setFQDN:I = 0x4a

.field static final TRANSACTION_setGlobalProxy:I = 0x27

.field static final TRANSACTION_setLteMobileDataEnabled:I = 0x42

.field static final TRANSACTION_setMobileDataEnabled:I = 0x16

.field static final TRANSACTION_setNetworkPreference:I = 0x2

.field static final TRANSACTION_setPolicyDataEnable:I = 0x18

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x3c

.field static final TRANSACTION_setRadio:I = 0x10

.field static final TRANSACTION_setRadios:I = 0xf

.field static final TRANSACTION_setRoamingDataEnabled_RILCMD:I = 0x41

.field static final TRANSACTION_setUsbTethering:I = 0x23

.field static final TRANSACTION_startLegacyVpn:I = 0x2f

.field static final TRANSACTION_startUsingNetworkFeature:I = 0x11

.field static final TRANSACTION_startusingEPDGFeature:I = 0x47

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x12

.field static final TRANSACTION_stopusingEPDGFeature:I = 0x48

.field static final TRANSACTION_supplyMessenger:I = 0x34

.field static final TRANSACTION_tether:I = 0x19

.field static final TRANSACTION_untether:I = 0x1a

.field static final TRANSACTION_updateLockdownVpn:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 980
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 60
    .local v2, _arg0:Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 61
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->markSocketAsUser(Landroid/os/ParcelFileDescriptor;I)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 57
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_arg1:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 67
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    .end local v2           #_arg0:I
    :sswitch_3
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v13

    .line 78
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v1, 0x1

    goto :goto_0

    .line 84
    .end local v13           #_result:I
    :sswitch_4
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 86
    .local v13, _result:Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v13, :cond_1

    .line 88
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 98
    .end local v13           #_result:Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 102
    .restart local v13       #_result:Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v13, :cond_2

    .line 104
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 108
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 114
    .end local v2           #_arg0:I
    .end local v13           #_result:Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 118
    .restart local v13       #_result:Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v13, :cond_3

    .line 120
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 124
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 130
    .end local v2           #_arg0:I
    .end local v13           #_result:Landroid/net/NetworkInfo;
    :sswitch_7
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v13

    .line 132
    .local v13, _result:[Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 134
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 138
    .end local v13           #_result:[Landroid/net/NetworkInfo;
    :sswitch_8
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 140
    .local v13, _result:Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v13, :cond_4

    .line 142
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 146
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 152
    .end local v13           #_result:Landroid/net/NetworkInfo;
    :sswitch_9
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v13

    .line 156
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v13, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 157
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 162
    .end local v2           #_arg0:I
    .end local v13           #_result:Z
    :sswitch_a
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v13

    .line 164
    .local v13, _result:Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v13, :cond_6

    .line 166
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 170
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 176
    .end local v13           #_result:Landroid/net/LinkProperties;
    :sswitch_b
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v13

    .line 180
    .restart local v13       #_result:Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v13, :cond_7

    .line 182
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 186
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 192
    .end local v2           #_arg0:I
    .end local v13           #_result:Landroid/net/LinkProperties;
    :sswitch_c
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v13

    .line 194
    .local v13, _result:[Landroid/net/NetworkState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 196
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 200
    .end local v13           #_result:[Landroid/net/NetworkState;
    :sswitch_d
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v13

    .line 202
    .local v13, _result:Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v13, :cond_8

    .line 204
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 210
    :goto_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 208
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 214
    .end local v13           #_result:Landroid/net/NetworkQuotaInfo;
    :sswitch_e
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v13

    .line 216
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v13, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 217
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 222
    .end local v13           #_result:Z
    :sswitch_f
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    .line 225
    .local v2, _arg0:Z
    :goto_b
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v13

    .line 226
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v13, :cond_b

    const/4 v1, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 224
    .end local v2           #_arg0:Z
    .end local v13           #_result:Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 227
    .restart local v2       #_arg0:Z
    .restart local v13       #_result:Z
    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    .line 232
    .end local v2           #_arg0:Z
    .end local v13           #_result:Z
    :sswitch_10
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v3, 0x1

    .line 237
    .local v3, _arg1:Z
    :goto_d
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v13

    .line 238
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v13, :cond_d

    const/4 v1, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 236
    .end local v3           #_arg1:Z
    .end local v13           #_result:Z
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 239
    .restart local v3       #_arg1:Z
    .restart local v13       #_result:Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 244
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Z
    .end local v13           #_result:Z
    :sswitch_11
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 251
    .local v4, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v13

    .line 252
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 258
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/IBinder;
    .end local v13           #_result:I
    :sswitch_12
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 262
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 263
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v13

    .line 264
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 270
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_13
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(IILjava/lang/String;)Z

    move-result v13

    .line 278
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v13, :cond_e

    const/4 v1, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 279
    :cond_e
    const/4 v1, 0x0

    goto :goto_f

    .line 284
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_14
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 290
    .local v3, _arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[BLjava/lang/String;)Z

    move-result v13

    .line 292
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v13, :cond_f

    const/4 v1, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 293
    :cond_f
    const/4 v1, 0x0

    goto :goto_10

    .line 298
    .end local v2           #_arg0:I
    .end local v3           #_arg1:[B
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_15
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v13

    .line 300
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v13, :cond_10

    const/4 v1, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 301
    :cond_10
    const/4 v1, 0x0

    goto :goto_11

    .line 306
    .end local v13           #_result:Z
    :sswitch_16
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v3, 0x1

    .line 311
    .local v3, _arg1:Z
    :goto_12
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Ljava/lang/String;Z)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 310
    .end local v3           #_arg1:Z
    :cond_11
    const/4 v3, 0x0

    goto :goto_12

    .line 317
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_17
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabledByUser()Z

    move-result v13

    .line 319
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v13, :cond_12

    const/4 v1, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 320
    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    .line 325
    .end local v13           #_result:Z
    :sswitch_18
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 329
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v3, 0x1

    .line 330
    .restart local v3       #_arg1:Z
    :goto_14
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setPolicyDataEnable(IZ)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 329
    .end local v3           #_arg1:Z
    :cond_13
    const/4 v3, 0x0

    goto :goto_14

    .line 336
    .end local v2           #_arg0:I
    :sswitch_19
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v13

    .line 340
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 346
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_1a
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v13

    .line 350
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 356
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_1b
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v13

    .line 360
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 366
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_1c
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v13

    .line 368
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    if-eqz v13, :cond_14

    const/4 v1, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 369
    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    .line 374
    .end local v13           #_result:Z
    :sswitch_1d
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v13

    .line 376
    .local v13, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 378
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 382
    .end local v13           #_result:[Ljava/lang/String;
    :sswitch_1e
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v13

    .line 384
    .restart local v13       #_result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 390
    .end local v13           #_result:[Ljava/lang/String;
    :sswitch_1f
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v13

    .line 392
    .restart local v13       #_result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 394
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 398
    .end local v13           #_result:[Ljava/lang/String;
    :sswitch_20
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v13

    .line 400
    .restart local v13       #_result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 402
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 406
    .end local v13           #_result:[Ljava/lang/String;
    :sswitch_21
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v13

    .line 408
    .restart local v13       #_result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 410
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 414
    .end local v13           #_result:[Ljava/lang/String;
    :sswitch_22
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v13

    .line 416
    .restart local v13       #_result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 418
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 422
    .end local v13           #_result:[Ljava/lang/String;
    :sswitch_23
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    .line 425
    .local v2, _arg0:Z
    :goto_16
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v13

    .line 426
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 424
    .end local v2           #_arg0:Z
    .end local v13           #_result:I
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 432
    :sswitch_24
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 441
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_25
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 445
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 446
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 452
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    :sswitch_26
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v13

    .line 454
    .local v13, _result:Landroid/net/ProxyProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    if-eqz v13, :cond_16

    .line 456
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 462
    :goto_17
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 460
    :cond_16
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 466
    .end local v13           #_result:Landroid/net/ProxyProperties;
    :sswitch_27
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 469
    sget-object v1, Landroid/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ProxyProperties;

    .line 474
    .local v2, _arg0:Landroid/net/ProxyProperties;
    :goto_18
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 472
    .end local v2           #_arg0:Landroid/net/ProxyProperties;
    :cond_17
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/ProxyProperties;
    goto :goto_18

    .line 480
    .end local v2           #_arg0:Landroid/net/ProxyProperties;
    :sswitch_28
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v13

    .line 482
    .restart local v13       #_result:Landroid/net/ProxyProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    if-eqz v13, :cond_18

    .line 484
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 490
    :goto_19
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 488
    :cond_18
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 494
    .end local v13           #_result:Landroid/net/ProxyProperties;
    :sswitch_29
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v3, 0x1

    .line 499
    .local v3, _arg1:Z
    :goto_1a
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setDataDependency(IZ)V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 498
    .end local v3           #_arg1:Z
    :cond_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 505
    .end local v2           #_arg0:I
    :sswitch_2a
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 508
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 513
    .local v2, _arg0:Landroid/os/ParcelFileDescriptor;
    :goto_1b
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->protectVpn(Landroid/os/ParcelFileDescriptor;)Z

    move-result v13

    .line 514
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    if-eqz v13, :cond_1b

    const/4 v1, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 511
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v13           #_result:Z
    :cond_1a
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_1b

    .line 515
    .restart local v13       #_result:Z
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 520
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v13           #_result:Z
    :sswitch_2b
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 526
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    if-eqz v13, :cond_1c

    const/4 v1, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 527
    :cond_1c
    const/4 v1, 0x0

    goto :goto_1d

    .line 532
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_2c
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 536
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 537
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 542
    .local v3, _arg1:Landroid/os/Messenger;
    :goto_1e
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->prepareVpnForMvp(Ljava/lang/String;Landroid/os/Messenger;)Z

    move-result v13

    .line 543
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v13, :cond_1e

    const/4 v1, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 540
    .end local v3           #_arg1:Landroid/os/Messenger;
    .end local v13           #_result:Z
    :cond_1d
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/Messenger;
    goto :goto_1e

    .line 544
    .restart local v13       #_result:Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 549
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Landroid/os/Messenger;
    .end local v13           #_result:Z
    :sswitch_2d
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 552
    sget-object v1, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnConfig;

    .line 557
    .local v2, _arg0:Lcom/android/internal/net/VpnConfig;
    :goto_20
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 558
    .local v13, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    if-eqz v13, :cond_20

    .line 560
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 566
    :goto_21
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 555
    .end local v2           #_arg0:Lcom/android/internal/net/VpnConfig;
    .end local v13           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_1f
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/android/internal/net/VpnConfig;
    goto :goto_20

    .line 564
    .restart local v13       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_20
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 570
    .end local v2           #_arg0:Lcom/android/internal/net/VpnConfig;
    .end local v13           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_2e
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v13

    .line 572
    .local v13, _result:Lcom/android/internal/net/VpnConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    if-eqz v13, :cond_21

    .line 574
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 580
    :goto_22
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 578
    :cond_21
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 584
    .end local v13           #_result:Lcom/android/internal/net/VpnConfig;
    :sswitch_2f
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    .line 587
    sget-object v1, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 592
    .local v2, _arg0:Lcom/android/internal/net/VpnProfile;
    :goto_23
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 590
    .end local v2           #_arg0:Lcom/android/internal/net/VpnProfile;
    :cond_22
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/android/internal/net/VpnProfile;
    goto :goto_23

    .line 598
    .end local v2           #_arg0:Lcom/android/internal/net/VpnProfile;
    :sswitch_30
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v13

    .line 600
    .local v13, _result:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    if-eqz v13, :cond_23

    .line 602
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 608
    :goto_24
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 606
    :cond_23
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 612
    .end local v13           #_result:Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_31
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v13

    .line 614
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    if-eqz v13, :cond_24

    const/4 v1, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 615
    :cond_24
    const/4 v1, 0x0

    goto :goto_25

    .line 620
    .end local v13           #_result:Z
    :sswitch_32
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    .line 623
    sget-object v1, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 628
    .local v2, _arg0:Landroid/net/NetworkInfo;
    :goto_26
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 626
    .end local v2           #_arg0:Landroid/net/NetworkInfo;
    :cond_25
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/NetworkInfo;
    goto :goto_26

    .line 634
    .end local v2           #_arg0:Landroid/net/NetworkInfo;
    :sswitch_33
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    .line 637
    sget-object v1, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 643
    .restart local v2       #_arg0:Landroid/net/NetworkInfo;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    const/4 v3, 0x1

    .line 644
    .local v3, _arg1:Z
    :goto_28
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V

    .line 645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 640
    .end local v2           #_arg0:Landroid/net/NetworkInfo;
    .end local v3           #_arg1:Z
    :cond_26
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/NetworkInfo;
    goto :goto_27

    .line 643
    :cond_27
    const/4 v3, 0x0

    goto :goto_28

    .line 650
    .end local v2           #_arg0:Landroid/net/NetworkInfo;
    :sswitch_34
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    .line 655
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 660
    .local v3, _arg1:Landroid/os/Messenger;
    :goto_29
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 658
    .end local v3           #_arg1:Landroid/os/Messenger;
    :cond_28
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/Messenger;
    goto :goto_29

    .line 666
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/Messenger;
    :sswitch_35
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v13

    .line 670
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 676
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_36
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 679
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v13

    .line 680
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 686
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_37
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v13

    .line 688
    .local v13, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 690
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 694
    .end local v13           #_result:Ljava/lang/String;
    :sswitch_38
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;

    move-result-object v13

    .line 696
    .restart local v13       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 698
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 702
    .end local v13           #_result:Ljava/lang/String;
    :sswitch_39
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 705
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;

    move-result-object v13

    .line 706
    .local v13, _result:Landroid/net/LinkQualityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    if-eqz v13, :cond_29

    .line 708
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 714
    :goto_2a
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 712
    :cond_29
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 718
    .end local v2           #_arg0:I
    .end local v13           #_result:Landroid/net/LinkQualityInfo;
    :sswitch_3a
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v13

    .line 720
    .restart local v13       #_result:Landroid/net/LinkQualityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    if-eqz v13, :cond_2a

    .line 722
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 728
    :goto_2b
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 726
    :cond_2a
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 732
    .end local v13           #_result:Landroid/net/LinkQualityInfo;
    :sswitch_3b
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;

    move-result-object v13

    .line 734
    .local v13, _result:[Landroid/net/LinkQualityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 736
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 740
    .end local v13           #_result:[Landroid/net/LinkQualityInfo;
    :sswitch_3c
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    .line 744
    .local v2, _arg0:Z
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 746
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 748
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 749
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 742
    .end local v2           #_arg0:Z
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    :cond_2b
    const/4 v2, 0x0

    goto :goto_2c

    .line 755
    :sswitch_3d
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v2, 0x1

    .line 758
    .restart local v2       #_arg0:Z
    :goto_2d
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 757
    .end local v2           #_arg0:Z
    :cond_2c
    const/4 v2, 0x0

    goto :goto_2d

    .line 764
    :sswitch_3e
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 767
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 772
    .local v2, _arg0:Landroid/os/Messenger;
    :goto_2e
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setDataConnectionMessanger(Landroid/os/Messenger;)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 770
    .end local v2           #_arg0:Landroid/os/Messenger;
    :cond_2d
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/Messenger;
    goto :goto_2e

    .line 778
    .end local v2           #_arg0:Landroid/os/Messenger;
    :sswitch_3f
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 782
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 783
    .local v3, _arg1:[B
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->requestRemRouteToHostAddress(I[B)Z

    move-result v13

    .line 784
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    if-eqz v13, :cond_2e

    const/4 v1, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 785
    :cond_2e
    const/4 v1, 0x0

    goto :goto_2f

    .line 790
    .end local v2           #_arg0:I
    .end local v3           #_arg1:[B
    .end local v13           #_result:Z
    :sswitch_40
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 794
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 795
    .restart local v3       #_arg1:[B
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->requestRemoveImsRoute(I[B)Z

    move-result v13

    .line 796
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    if-eqz v13, :cond_2f

    const/4 v1, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 797
    :cond_2f
    const/4 v1, 0x0

    goto :goto_30

    .line 802
    .end local v2           #_arg0:I
    .end local v3           #_arg1:[B
    .end local v13           #_result:Z
    :sswitch_41
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    const/4 v2, 0x1

    .line 805
    .local v2, _arg0:Z
    :goto_31
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setRoamingDataEnabled_RILCMD(Z)V

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 804
    .end local v2           #_arg0:Z
    :cond_30
    const/4 v2, 0x0

    goto :goto_31

    .line 811
    :sswitch_42
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    const/4 v2, 0x1

    .line 814
    .restart local v2       #_arg0:Z
    :goto_32
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setLteMobileDataEnabled(Z)V

    .line 815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 813
    .end local v2           #_arg0:Z
    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .line 820
    :sswitch_43
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->checkLteConnectState()I

    move-result v13

    .line 822
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 828
    .end local v13           #_result:I
    :sswitch_44
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->mobileDataPdpReset()V

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 835
    :sswitch_45
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 839
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 840
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setDataDisabledFlag(II)I

    move-result v13

    .line 841
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 847
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v13           #_result:I
    :sswitch_46
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 850
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->clearDataDisabledFlag(I)I

    move-result v13

    .line 851
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 857
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_47
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 860
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->startusingEPDGFeature(Ljava/lang/String;)I

    move-result v13

    .line 861
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 867
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_48
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 870
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->stopusingEPDGFeature(Ljava/lang/String;)I

    move-result v13

    .line 871
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 877
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_49
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IePDGStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IePDGStateListener;

    move-result-object v2

    .line 881
    .local v2, _arg0:Landroid/net/IePDGStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 882
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->ePDGlisten(Landroid/net/IePDGStateListener;I)V

    .line 883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 888
    .end local v2           #_arg0:Landroid/net/IePDGStateListener;
    .end local v3           #_arg1:I
    :sswitch_4a
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    const/4 v2, 0x1

    .line 892
    .local v2, _arg0:Z
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 893
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setFQDN(ZLjava/lang/String;)V

    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 890
    .end local v2           #_arg0:Z
    .end local v3           #_arg1:Ljava/lang/String;
    :cond_32
    const/4 v2, 0x0

    goto :goto_33

    .line 899
    :sswitch_4b
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 902
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->ePDGPrefTechdone(I)V

    .line 903
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 908
    .end local v2           #_arg0:I
    :sswitch_4c
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 911
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->ePDGHandOverStatus(I)V

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 917
    .end local v2           #_arg0:I
    :sswitch_4d
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 921
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 923
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 925
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 927
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 929
    .local v6, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 931
    .local v7, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 933
    .local v8, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 935
    .local v9, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 937
    .local v10, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 939
    .local v11, _arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, _arg10:Ljava/lang/String;
    move-object v1, p0

    .line 940
    invoke-virtual/range {v1 .. v12}, Landroid/net/IConnectivityManager$Stub;->notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 946
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v8           #_arg6:Ljava/lang/String;
    .end local v9           #_arg7:Ljava/lang/String;
    .end local v10           #_arg8:Ljava/lang/String;
    .end local v11           #_arg9:I
    .end local v12           #_arg10:Ljava/lang/String;
    :sswitch_4e
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 950
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 952
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 954
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 955
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/IConnectivityManager$Stub;->notifyEPDGPDNStatus(IIILjava/lang/String;)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 961
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Ljava/lang/String;
    :sswitch_4f
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 965
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 966
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getDebugInfo(II)[D

    move-result-object v13

    .line 967
    .local v13, _result:[D
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 969
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 973
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v13           #_result:[D
    :sswitch_50
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getLteRssi()I

    move-result v13

    .line 975
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
