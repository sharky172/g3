.class Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;
.super Lcom/vzw/location/IVzwGpsStatusListener$Stub;
.source "VzwLocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityGpsStatusListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwLocationManagerService.ProximityGpsStatusListener"


# instance fields
.field final synthetic this$0:Lcom/vzw/location/server/VzwLocationManagerService;


# direct methods
.method public constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    invoke-direct {p0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;-><init>()V

    .line 1310
    const-string v0, "VzwLocationManagerService.ProximityGpsStatusListener"

    const-string v1, "[ProximityGpsStatusListener] Construct new object."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 0
    .parameter "ttff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1316
    return-void
.end method

.method public onGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 0
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1341
    return-void
.end method

.method public onGpsStatusChanged(I)V
    .locals 0
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1335
    return-void
.end method

.method public onSatStatusChanged(II[I[I[F[F[F)V
    .locals 0
    .parameter "svCount"
    .parameter "svInViewCount"
    .parameter "prn"
    .parameter "prnInView"
    .parameter "elevInView"
    .parameter "azimInView"
    .parameter "snrInView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1330
    return-void
.end method

.method public onSvStatusChanged(II[I[I[F[F[F)V
    .locals 0
    .parameter "svCount"
    .parameter "svInViewCount"
    .parameter "prn"
    .parameter "prnInView"
    .parameter "elevInView"
    .parameter "azimInView"
    .parameter "snrInView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1323
    return-void
.end method
