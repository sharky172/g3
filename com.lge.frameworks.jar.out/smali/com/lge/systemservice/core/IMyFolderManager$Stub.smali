.class public abstract Lcom/lge/systemservice/core/IMyFolderManager$Stub;
.super Landroid/os/Binder;
.source "IMyFolderManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/IMyFolderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IMyFolderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IMyFolderManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IMyFolderManager"

.field static final TRANSACTION_addPackageListToMyFolder:I = 0x5

.field static final TRANSACTION_addPackageToMyFolder:I = 0x4

.field static final TRANSACTION_enterMyFolder:I = 0x1

.field static final TRANSACTION_exitMyFolder:I = 0x2

.field static final TRANSACTION_getAddedPackageList:I = 0x8

.field static final TRANSACTION_getState:I = 0x3

.field static final TRANSACTION_removePackageFromMyFolder:I = 0x6

.field static final TRANSACTION_removePackageListFromMyFolder:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.IMyFolderManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IMyFolderManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.lge.systemservice.core.IMyFolderManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/systemservice/core/IMyFolderManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/IMyFolderManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lge/systemservice/core/IMyFolderManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IMyFolderManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.lge.systemservice.core.IMyFolderManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.lge.systemservice.core.IMyFolderManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IMyFolderManager$Stub;->enterMyFolder(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v2, "com.lge.systemservice.core.IMyFolderManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IMyFolderManager$Stub;->exitMyFolder(I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v2, "com.lge.systemservice.core.IMyFolderManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IMyFolderManager$Stub;->getState()I

    move-result v1

    .line 67
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v1           #_result:I
    :sswitch_4
    const-string v4, "com.lge.systemservice.core.IMyFolderManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IMyFolderManager$Stub;->addPackageToMyFolder(Ljava/lang/String;)Z

    move-result v1

    .line 77
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_5
    const-string v4, "com.lge.systemservice.core.IMyFolderManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IMyFolderManager$Stub;->addPackageListToMyFolder([Ljava/lang/String;)Z

    move-result v1

    .line 87
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_6
    const-string v4, "com.lge.systemservice.core.IMyFolderManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IMyFolderManager$Stub;->removePackageFromMyFolder(Ljava/lang/String;)Z

    move-result v1

    .line 97
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_7
    const-string v4, "com.lge.systemservice.core.IMyFolderManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IMyFolderManager$Stub;->removePackageListFromMyFolder([Ljava/lang/String;)Z

    move-result v1

    .line 107
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_8
    const-string v2, "com.lge.systemservice.core.IMyFolderManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IMyFolderManager$Stub;->getAddedPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
