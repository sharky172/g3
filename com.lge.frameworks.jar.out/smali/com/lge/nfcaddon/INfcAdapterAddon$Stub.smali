.class public abstract Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterAddon.java"

# interfaces
.implements Lcom/lge/nfcaddon/INfcAdapterAddon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/INfcAdapterAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/INfcAdapterAddon$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.nfcaddon.INfcAdapterAddon"

.field static final TRANSACTION_activeSwp:I = 0x18

.field static final TRANSACTION_deinitNfcSystem:I = 0x6

.field static final TRANSACTION_deselectSecureElement:I = 0x19

.field static final TRANSACTION_disableNfcCard:I = 0x8

.field static final TRANSACTION_disableNfcDiscovery:I = 0xa

.field static final TRANSACTION_disableNfcP2p:I = 0xc

.field static final TRANSACTION_enableNfcCard:I = 0x7

.field static final TRANSACTION_enableNfcDiscovery:I = 0x9

.field static final TRANSACTION_enableNfcP2p:I = 0xb

.field static final TRANSACTION_getCardEmulationInterface:I = 0x13

.field static final TRANSACTION_getGsmaNfcControllerInterface:I = 0x14

.field static final TRANSACTION_getNfcAddonPreference:I = 0x1d

.field static final TRANSACTION_getNfcCardState:I = 0x2

.field static final TRANSACTION_getNfcConfigureMap:I = 0x21

.field static final TRANSACTION_getNfcDiscoveryState:I = 0x3

.field static final TRANSACTION_getNfcP2pState:I = 0x4

.field static final TRANSACTION_getNfcSecureElementInterface:I = 0x12

.field static final TRANSACTION_getNfcSysState:I = 0x1

.field static final TRANSACTION_getSecureElementList:I = 0x15

.field static final TRANSACTION_getSelectedSecureElement:I = 0x16

.field static final TRANSACTION_initNfcSystem:I = 0x5

.field static final TRANSACTION_isNfcCardModeEnabled:I = 0xe

.field static final TRANSACTION_isNfcP2pModeEnabled:I = 0x10

.field static final TRANSACTION_isNfcRwModeEnabled:I = 0xf

.field static final TRANSACTION_isNfcSystemEnabled:I = 0xd

.field static final TRANSACTION_isWirelessChargingModeOn:I = 0x1f

.field static final TRANSACTION_selectSecureElement:I = 0x17

.field static final TRANSACTION_sendNfcTestCommand:I = 0x1c

.field static final TRANSACTION_setNfcAddonPreference:I = 0x1e

.field static final TRANSACTION_setNfcPowerStatus:I = 0x20

.field static final TRANSACTION_setPresentUid:I = 0x22

.field static final TRANSACTION_setSecureElementState:I = 0x1a

.field static final TRANSACTION_storeSePreference:I = 0x1b

.field static final TRANSACTION_updateP2pState:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcAdapterAddon;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/lge/nfcaddon/INfcAdapterAddon;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcSysState()I

    move-result v2

    .line 52
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v2           #_result:I
    :sswitch_2
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcCardState()I

    move-result v2

    .line 60
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v2           #_result:I
    :sswitch_3
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcDiscoveryState()I

    move-result v2

    .line 68
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v2           #_result:I
    :sswitch_4
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcP2pState()I

    move-result v2

    .line 76
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v2           #_result:I
    :sswitch_5
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->initNfcSystem()Z

    move-result v2

    .line 84
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v2           #_result:Z
    :sswitch_6
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->deinitNfcSystem()Z

    move-result v2

    .line 92
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v2           #_result:Z
    :sswitch_7
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->enableNfcCard()Z

    move-result v2

    .line 100
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v2           #_result:Z
    :sswitch_8
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->disableNfcCard()Z

    move-result v2

    .line 108
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v2           #_result:Z
    :sswitch_9
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->enableNfcDiscovery()Z

    move-result v2

    .line 116
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v2           #_result:Z
    :sswitch_a
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->disableNfcDiscovery()Z

    move-result v2

    .line 124
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v2           #_result:Z
    :sswitch_b
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->enableNfcP2p()Z

    move-result v2

    .line 132
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v2           #_result:Z
    :sswitch_c
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->disableNfcP2p()Z

    move-result v2

    .line 140
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v2, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v2           #_result:Z
    :sswitch_d
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->isNfcSystemEnabled()Z

    move-result v2

    .line 148
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v2, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v2           #_result:Z
    :sswitch_e
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->isNfcCardModeEnabled()Z

    move-result v2

    .line 156
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v2, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v2           #_result:Z
    :sswitch_f
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->isNfcRwModeEnabled()Z

    move-result v2

    .line 164
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v2           #_result:Z
    :sswitch_10
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->isNfcP2pModeEnabled()Z

    move-result v2

    .line 172
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v2, :cond_b

    move v3, v4

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 178
    .end local v2           #_result:Z
    :sswitch_11
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->updateP2pState()Z

    move-result v2

    .line 180
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 186
    .end local v2           #_result:Z
    :sswitch_12
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcSecureElementInterface()Lcom/lge/nfcaddon/INfcSecureElement;

    move-result-object v2

    .line 188
    .local v2, _result:Lcom/lge/nfcaddon/INfcSecureElement;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v2, :cond_d

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcSecureElement;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_d
    move-object v3, v5

    goto :goto_1

    .line 194
    .end local v2           #_result:Lcom/lge/nfcaddon/INfcSecureElement;
    :sswitch_13
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getCardEmulationInterface()Lcom/lge/nfcaddon/ICardEmulationAddon;

    move-result-object v2

    .line 196
    .local v2, _result:Lcom/lge/nfcaddon/ICardEmulationAddon;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/lge/nfcaddon/ICardEmulationAddon;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 202
    .end local v2           #_result:Lcom/lge/nfcaddon/ICardEmulationAddon;
    :sswitch_14
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getGsmaNfcControllerInterface()Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v2

    .line 204
    .local v2, _result:Lcom/lge/nfcaddon/IGsmaNfcController;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v2, :cond_f

    invoke-interface {v2}, Lcom/lge/nfcaddon/IGsmaNfcController;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 210
    .end local v2           #_result:Lcom/lge/nfcaddon/IGsmaNfcController;
    :sswitch_15
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getSecureElementList()[I

    move-result-object v2

    .line 212
    .local v2, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 218
    .end local v2           #_result:[I
    :sswitch_16
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getSelectedSecureElement()I

    move-result v2

    .line 220
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v2           #_result:I
    :sswitch_17
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->selectSecureElement(I)I

    move-result v2

    .line 230
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_18
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->activeSwp()I

    move-result v2

    .line 238
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    .end local v2           #_result:I
    :sswitch_19
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->deselectSecureElement()I

    move-result v2

    .line 246
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 252
    .end local v2           #_result:I
    :sswitch_1a
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    move v0, v4

    .line 255
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->setSecureElementState(Z)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_10
    move v0, v3

    .line 254
    goto :goto_2

    .line 261
    :sswitch_1b
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->storeSePreference(I)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 270
    .end local v0           #_arg0:I
    :sswitch_1c
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 275
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->sendNfcTestCommand(I[B)Z

    move-result v2

    .line 276
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v2, :cond_11

    move v3, v4

    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 283
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v2           #_result:Z
    :sswitch_1d
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcAddonPreference(I)Z

    move-result v2

    .line 287
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v2, :cond_12

    move v3, v4

    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 293
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_1e
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 297
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    move v1, v4

    .line 298
    .local v1, _arg1:Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->setNfcAddonPreference(IZ)Z

    move-result v2

    .line 299
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v2, :cond_13

    move v3, v4

    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_14
    move v1, v3

    .line 297
    goto :goto_3

    .line 305
    .end local v0           #_arg0:I
    :sswitch_1f
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->isWirelessChargingModeOn()Z

    move-result v2

    .line 307
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v2, :cond_15

    move v3, v4

    :cond_15
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 313
    .end local v2           #_result:Z
    :sswitch_20
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 316
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->setNfcPowerStatus(I)Z

    move-result v2

    .line 317
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v2, :cond_16

    move v3, v4

    :cond_16
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 323
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_21
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcConfigureMap()Ljava/util/Map;

    move-result-object v2

    .line 325
    .local v2, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 331
    .end local v2           #_result:Ljava/util/Map;
    :sswitch_22
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 334
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->setPresentUid(I)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 41
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
