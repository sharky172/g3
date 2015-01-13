.class Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsUpdateLockModeThread;
.super Ljava/lang/Thread;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LgeGpsUpdateLockModeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LgeGpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsUpdateLockModeThread;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;Lcom/android/server/location/LgeGpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsUpdateLockModeThread;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 920
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "LgeGpsUpdateLockModeThread run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsUpdateLockModeThread;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->UpdateGnssLockMode()V
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$1300(Lcom/android/server/location/LgeGpsLocationProvider;)V

    .line 923
    return-void
.end method
