.class final Lcom/lge/systemservice/core/DeathMonitorResponse$1;
.super Ljava/lang/Object;
.source "DeathMonitorResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/DeathMonitorResponse;
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
        "Lcom/lge/systemservice/core/DeathMonitorResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/systemservice/core/DeathMonitorResponse;
    .locals 1
    .parameter "parcel"

    .prologue
    .line 76
    new-instance v0, Lcom/lge/systemservice/core/DeathMonitorResponse;

    invoke-direct {v0, p1}, Lcom/lge/systemservice/core/DeathMonitorResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/lge/systemservice/core/DeathMonitorResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/systemservice/core/DeathMonitorResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/systemservice/core/DeathMonitorResponse;
    .locals 1
    .parameter "size"

    .prologue
    .line 82
    new-array v0, p1, [Lcom/lge/systemservice/core/DeathMonitorResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/lge/systemservice/core/DeathMonitorResponse$1;->newArray(I)[Lcom/lge/systemservice/core/DeathMonitorResponse;

    move-result-object v0

    return-object v0
.end method
