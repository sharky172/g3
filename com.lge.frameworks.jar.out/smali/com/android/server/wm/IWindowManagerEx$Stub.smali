.class public Lcom/android/server/wm/IWindowManagerEx$Stub;
.super Ljava/lang/Object;
.source "IWindowManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/IWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/IWindowManagerEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_GET_SYSTEMBAR_SHOWN_STATE:I = 0x2711

.field static final TRANSACTION_GET_WINDOW_INFO_LIST:I = 0x2712

.field static final TRANSACTION_moveWindowTokenToTop:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/server/wm/IWindowManagerEx;
    .locals 1
    .parameter "obj"

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/IWindowManagerEx$Stub;->asInterface(Landroid/view/IWindowManager;)Lcom/android/server/wm/IWindowManagerEx;

    move-result-object v0

    goto :goto_0
.end method

.method public static asInterface(Landroid/view/IWindowManager;)Lcom/android/server/wm/IWindowManagerEx;
    .locals 1
    .parameter "obj"

    .prologue
    .line 28
    new-instance v0, Lcom/android/server/wm/IWindowManagerEx$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/server/wm/IWindowManagerEx$Stub$Proxy;-><init>(Landroid/view/IWindowManager;)V

    return-object v0
.end method

.method public static onTransasct(Lcom/android/server/wm/IWindowManagerEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "server"
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
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 32
    packed-switch p1, :pswitch_data_0

    move v5, v1

    .line 62
    :goto_0
    return v5

    .line 35
    :pswitch_0
    const-string v6, "android.view.IWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 37
    .local v4, token:Landroid/os/IBinder;
    invoke-interface {p0, v4}, Lcom/android/server/wm/IWindowManagerEx;->moveWindowTokenToTop(Landroid/os/IBinder;)V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 43
    .end local v4           #token:Landroid/os/IBinder;
    :pswitch_1
    const-string v6, "android.view.IWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lcom/android/server/wm/IWindowManagerEx;->getSystemBarShownState()I

    move-result v2

    .line 45
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 51
    .end local v2           #_result:I
    :pswitch_2
    const-string v6, "android.view.IWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    .line 56
    .local v1, _arg1:Z
    :cond_0
    invoke-interface {p0, v0, v1}, Lcom/android/server/wm/IWindowManagerEx;->getWindowInfoList(IZ)Ljava/util/List;

    move-result-object v3

    .line 57
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
