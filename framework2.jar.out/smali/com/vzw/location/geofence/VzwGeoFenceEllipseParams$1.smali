.class final Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams$1;
.super Ljava/lang/Object;
.source "VzwGeoFenceEllipseParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;
    .locals 1
    .parameter "in"

    .prologue
    .line 55
    new-instance v0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    invoke-direct {v0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;
    .locals 1
    .parameter "size"

    .prologue
    .line 60
    new-array v0, p1, [Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams$1;->newArray(I)[Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    move-result-object v0

    return-object v0
.end method
