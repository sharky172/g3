.class Lcom/android/server/location/LgeGpsLocationProvider$4;
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
    .line 1301
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$4;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$4;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v0}, Lcom/android/server/location/LgeGpsConstants;->ledControl()V

    .line 1305
    return-void
.end method
