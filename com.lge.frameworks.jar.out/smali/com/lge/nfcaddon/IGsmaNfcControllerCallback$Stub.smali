.class public abstract Lcom/lge/nfcaddon/IGsmaNfcControllerCallback$Stub;
.super Landroid/os/Binder;
.source "IGsmaNfcControllerCallback.java"

# interfaces
.implements Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/IGsmaNfcControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.nfcaddon.IGsmaNfcControllerCallback"

.field static final TRANSACTION_onCardEmulationMode:I = 0x2

.field static final TRANSACTION_onNfcController:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.nfcaddon.IGsmaNfcControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
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
    const-string v1, "com.lge.nfcaddon.IGsmaNfcControllerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v2, "com.lge.nfcaddon.IGsmaNfcControllerCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.lge.nfcaddon.IGsmaNfcControllerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 53
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback$Stub;->onNfcController(Z)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 52
    .end local v0           #_arg0:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 59
    :sswitch_2
    const-string v2, "com.lge.nfcaddon.IGsmaNfcControllerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback$Stub;->onCardEmulationMode(I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
