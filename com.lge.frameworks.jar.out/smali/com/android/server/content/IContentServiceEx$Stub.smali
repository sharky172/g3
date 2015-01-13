.class public Lcom/android/server/content/IContentServiceEx$Stub;
.super Ljava/lang/Object;
.source "IContentServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/IContentServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/IContentServiceEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_GET_MASTER_SYNC_AUTOMATICALLY_AS_USER:I = 0x2710

.field static final TRANSACTION_SET_MASTER_SYNC_AUTOMATICALLY_AS_USER:I = 0x2711


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/content/IContentService;)Lcom/android/server/content/IContentServiceEx;
    .locals 1
    .parameter "obj"

    .prologue
    .line 27
    new-instance v0, Lcom/android/server/content/IContentServiceEx$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/server/content/IContentServiceEx$Stub$Proxy;-><init>(Landroid/content/IContentService;)V

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/server/content/IContentServiceEx;
    .locals 1
    .parameter "obj"

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/content/IContentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/content/IContentServiceEx$Stub;->asInterface(Landroid/content/IContentService;)Lcom/android/server/content/IContentServiceEx;

    move-result-object v0

    goto :goto_0
.end method

.method public static onTransact(Lcom/android/server/content/IContentServiceEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 31
    packed-switch p1, :pswitch_data_0

    move v4, v3

    .line 51
    :goto_0
    return v4

    .line 34
    :pswitch_0
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 36
    .local v0, _arg0:I
    invoke-interface {p0, v0}, Lcom/android/server/content/IContentServiceEx;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    .line 37
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 43
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :pswitch_1
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 45
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 46
    .local v1, _arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/server/content/IContentServiceEx;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    :cond_1
    move v0, v3

    .line 44
    goto :goto_1

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
