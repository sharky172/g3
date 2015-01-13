.class public Lcom/android/server/StatusBarManagerServiceEx;
.super Lcom/android/server/StatusBarManagerService;
.source "StatusBarManagerServiceEx.java"

# interfaces
.implements Lcom/android/server/IStatusBarServiceEx;


# instance fields
.field private mBarEx:Lcom/android/internal/statusbar/IStatusBarEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .parameter "context"
    .parameter "wm"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/StatusBarManagerServiceEx;->mBarEx:Lcom/android/internal/statusbar/IStatusBarEx;

    .line 22
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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
    .line 26
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/IStatusBarServiceEx$Stub;->onTransact(Lcom/android/server/IStatusBarServiceEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 27
    .local v0, handled:Z
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerStatusBarEx(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/IStatusBarEx;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    .locals 7
    .parameter "bar"
    .parameter "barEx"
    .parameter "iconList"
    .parameter
    .parameter
    .parameter "switches"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/IStatusBarEx;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    .local p4, notificationKeys:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    .local p5, notifications:Ljava/util/List;,"Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .local p7, binders:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-super/range {v0 .. v6}, Lcom/android/server/StatusBarManagerService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V

    .line 35
    iput-object p2, p0, Lcom/android/server/StatusBarManagerServiceEx;->mBarEx:Lcom/android/internal/statusbar/IStatusBarEx;

    .line 36
    return-void
.end method

.method public setIconShift()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/StatusBarManagerServiceEx;->mBarEx:Lcom/android/internal/statusbar/IStatusBarEx;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/server/StatusBarManagerServiceEx;->mBarEx:Lcom/android/internal/statusbar/IStatusBarEx;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarEx;->setIconShift()V

    .line 50
    :cond_0
    return-void
.end method

.method public setSystemUiBackground(Ljava/lang/String;II)V
    .locals 1
    .parameter "packageName"
    .parameter "sBarRes"
    .parameter "nBarRes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/StatusBarManagerServiceEx;->mBarEx:Lcom/android/internal/statusbar/IStatusBarEx;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/server/StatusBarManagerServiceEx;->mBarEx:Lcom/android/internal/statusbar/IStatusBarEx;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarEx;->setSystemUiBackground(Ljava/lang/String;II)V

    .line 43
    :cond_0
    return-void
.end method
