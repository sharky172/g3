.class final Lcom/vzw/location/geofence/VzwGeoFenceCircleParams$1;
.super Ljava/lang/Object;
.source "VzwGeoFenceCircleParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;
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
        "Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;
    .locals 1
    .parameter "in"

    .prologue
    .line 67
    new-instance v0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    invoke-direct {v0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;
    .locals 1
    .parameter "size"

    .prologue
    .line 72
    new-array v0, p1, [Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams$1;->newArray(I)[Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    move-result-object v0

    return-object v0
.end method
