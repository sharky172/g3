.class public Lcom/android/server/IStatusBarServiceEx$Stub;
.super Ljava/lang/Object;
.source "IStatusBarServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IStatusBarServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IStatusBarServiceEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_SET_ICON_SHIFT:I = 0x2715

.field static final TRANSACTION_registerStatusBarEx:I = 0x2710

.field static final TRANSACTION_setSystemUiBackground:I = 0x2711


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/server/IStatusBarServiceEx;
    .locals 1
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/IStatusBarServiceEx$Stub;->asInterface(Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/server/IStatusBarServiceEx;

    move-result-object v0

    goto :goto_0
.end method

.method public static asInterface(Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/server/IStatusBarServiceEx;
    .locals 1
    .parameter "obj"

    .prologue
    .line 33
    new-instance v0, Lcom/android/server/IStatusBarServiceEx$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/server/IStatusBarServiceEx$Stub$Proxy;-><init>(Lcom/android/internal/statusbar/IStatusBarService;)V

    return-object v0
.end method

.method public static onTransact(Lcom/android/server/IStatusBarServiceEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 94
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 40
    :pswitch_1
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    .line 44
    .local v1, _arg0:Lcom/android/internal/statusbar/IStatusBar;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarEx;

    move-result-object v2

    .line 46
    .local v2, _arg01:Lcom/android/internal/statusbar/IStatusBarEx;
    new-instance v3, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v3}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 48
    .local v3, _arg1:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v4, _arg2:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v5, _arg3:Ljava/util/List;,"Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 53
    .local v9, _arg4_length:I
    if-gez v9, :cond_0

    .line 54
    const/4 v6, 0x0

    .line 60
    .local v6, _arg4:[I
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, _arg5:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    move-object v0, p0

    .line 61
    invoke-interface/range {v0 .. v7}, Lcom/android/server/IStatusBarServiceEx;->registerStatusBarEx(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/IStatusBarEx;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v3, :cond_1

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {v3, p3, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 71
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 72
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 73
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    .end local v6           #_arg4:[I
    .end local v7           #_arg5:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_0
    new-array v6, v9, [I

    .restart local v6       #_arg4:[I
    goto :goto_1

    .line 68
    .restart local v7       #_arg5:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 78
    .end local v1           #_arg0:Lcom/android/internal/statusbar/IStatusBar;
    .end local v2           #_arg01:Lcom/android/internal/statusbar/IStatusBarEx;
    .end local v3           #_arg1:Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v4           #_arg2:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v5           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .end local v6           #_arg4:[I
    .end local v7           #_arg5:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v9           #_arg4_length:I
    :pswitch_2
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .local v3, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 82
    .local v8, _arg2:I
    invoke-interface {p0, v1, v3, v8}, Lcom/android/server/IStatusBarServiceEx;->setSystemUiBackground(Ljava/lang/String;II)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v8           #_arg2:I
    :pswitch_3
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-interface {p0}, Lcom/android/server/IStatusBarServiceEx;->setIconShift()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
