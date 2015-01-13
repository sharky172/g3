.class Lcom/android/server/location/LgeGpsLocationProvider$2;
.super Landroid/database/ContentObserver;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LgeGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$2;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$2;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->UpdateGnssLockMode()V
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$1300(Lcom/android/server/location/LgeGpsLocationProvider;)V

    .line 930
    return-void
.end method
