.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$Receiver;
    }
.end annotation


# static fields
.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

.field public static final D:Z = true

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest; = null

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x1

.field private static final MSG_LOCATION_INFORM_LOCK:I = 0x2

.field private static final NANOS_PER_MILLI:J = 0xf4240L

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x1

.field private static final RESOLUTION_LEVEL_FINE:I = 0x2

.field private static final RESOLUTION_LEVEL_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationManagerService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private mComboNlpPackageName:Ljava/lang/String;

.field private mComboNlpReadyMarker:Ljava/lang/String;

.field private mComboNlpScreenMarker:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeoFencer:Lcom/android/server/location/GeoFencerBase;

.field private mGeoFencerEnabled:Z

.field private mGeoFencerPackageName:Ljava/lang/String;

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private final mLastLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocationCoarseInterval:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPassiveProvider:Lcom/android/server/location/PassiveProvider;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxyProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    .line 221
    iput v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 2418
    new-instance v0, Lcom/android/server/LocationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/LocationManagerService$4;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 225
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 226
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 227
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGeoFencerEnabled:Z

    .line 229
    const-string v0, "LocationManagerService"

    const-string v1, "Constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->applyAllProviderRequirementsLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    return-void
.end method

.method private applyAllProviderRequirementsLocked()V
    .locals 3

    .prologue
    .line 1696
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 1698
    .local v1, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1702
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 1704
    .end local v1           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .locals 13
    .parameter "provider"

    .prologue
    .line 1329
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 1330
    .local v2, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v2, :cond_0

    .line 1382
    :goto_0
    return-void

    .line 1332
    :cond_0
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1333
    .local v5, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v8, Landroid/os/WorkSource;

    invoke-direct {v8}, Landroid/os/WorkSource;-><init>()V

    .line 1334
    .local v8, worksource:Landroid/os/WorkSource;
    new-instance v3, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v3}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 1336
    .local v3, providerRequest:Lcom/android/internal/location/ProviderRequest;
    if-eqz v5, :cond_5

    .line 1337
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1338
    .local v4, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    iget v10, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    if-ne v9, v10, :cond_1

    .line 1339
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v10, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    iget-object v11, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v11, v11, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/LocationManagerService;->checkLocationAccess(ILjava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1341
    iget-object v1, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1342
    .local v1, locationRequest:Landroid/location/LocationRequest;
    iget-object v9, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1343
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v9

    iget-wide v11, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    .line 1344
    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 1345
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_1

    .line 1351
    .end local v1           #locationRequest:Landroid/location/LocationRequest;
    .end local v4           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_2
    iget-boolean v9, v3, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v9, :cond_5

    .line 1357
    iget-wide v9, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    const-wide/16 v11, 0x3e8

    add-long/2addr v9, v11

    const-wide/16 v11, 0x3

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x2

    div-long v6, v9, v11

    .line 1358
    .local v6, thresholdInterval:J
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1359
    .restart local v4       #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    iget v10, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    if-ne v9, v10, :cond_3

    .line 1360
    iget-object v1, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1361
    .restart local v1       #locationRequest:Landroid/location/LocationRequest;
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-gtz v9, :cond_3

    .line 1362
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v9, :cond_4

    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v9}, Landroid/os/WorkSource;->size()I

    move-result v9

    if-lez v9, :cond_4

    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1367
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v8, v9}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_2

    .line 1370
    :cond_4
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v10, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    goto :goto_2

    .line 1380
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #locationRequest:Landroid/location/LocationRequest;
    .end local v4           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v6           #thresholdInterval:J
    :cond_5
    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "provider request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-interface {v2, v3, v8}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto/16 :goto_0
.end method

.method private checkCallerIsProvider()V
    .locals 2

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2007
    :cond_0
    return-void

    .line 2006
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2010
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "need INSTALL_LOCATION_PROVIDER permission, or UID of a currently bound location provider"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkDeviceStatsAllowed()V
    .locals 3

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    return-void
.end method

.method private checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 7
    .parameter "listener"
    .parameter "intent"
    .parameter "pid"
    .parameter "uid"
    .parameter "packageName"
    .parameter "workSource"
    .parameter "hideFromAppOps"

    .prologue
    .line 1534
    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 1535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1536
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1538
    :cond_1
    if-eqz p2, :cond_2

    .line 1539
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 1540
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    .line 1542
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    goto :goto_0
.end method

.method private checkMockPermissionsSafe()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2479
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2481
    .local v0, allowMocks:Z
    :goto_0
    if-nez v0, :cond_1

    .line 2482
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION secure setting"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #allowMocks:Z
    :cond_0
    move v0, v1

    .line 2479
    goto :goto_0

    .line 2485
    .restart local v0       #allowMocks:Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 2487
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2489
    :cond_2
    return-void
.end method

.method private checkPackageName(Ljava/lang/String;)V
    .locals 9
    .parameter "packageName"

    .prologue
    .line 1512
    if-nez p1, :cond_0

    .line 1513
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1515
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1516
    .local v5, uid:I
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 1517
    .local v3, packages:[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1518
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1520
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 1521
    .local v4, pkg:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-void

    .line 1520
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1523
    .end local v4           #pkg:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1527
    if-nez p1, :cond_0

    .line 1528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1530
    :cond_0
    return-void
.end method

.method private checkResolutionLevelIsSufficientForGeofenceUse(I)V
    .locals 2
    .parameter "allowedResolutionLevel"

    .prologue
    .line 995
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 996
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_0
    return-void
.end method

.method private checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V
    .locals 4
    .parameter "allowedResolutionLevel"
    .parameter "providerName"

    .prologue
    .line 1043
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    move-result v0

    .line 1044
    .local v0, requiredResolutionLevel:I
    if-ge p1, v0, :cond_0

    .line 1045
    packed-switch v0, :pswitch_data_0

    .line 1053
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insufficient permission for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" location provider."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1047
    :pswitch_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" location provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "requires ACCESS_FINE_LOCATION permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1050
    :pswitch_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" location provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "requires ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1057
    :cond_0
    return-void

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkUpdateAppOpsAllowed()V
    .locals 3

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;
    .locals 5
    .parameter "request"
    .parameter "resolutionLevel"

    .prologue
    const-wide/32 v3, 0x927c0

    .line 1486
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 1487
    .local v0, sanitizedRequest:Landroid/location/LocationRequest;
    const/4 v1, 0x2

    if-ge p2, v1, :cond_1

    .line 1488
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1497
    :goto_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1498
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 1500
    :cond_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 1501
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 1505
    :cond_1
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 1506
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 1508
    :cond_2
    return-object v0

    .line 1490
    :sswitch_0
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_0

    .line 1493
    :sswitch_1
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_0

    .line 1488
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xcb -> :sswitch_1
    .end sparse-switch
.end method

.method private doesPackageHaveUid(ILjava/lang/String;)Z
    .locals 5
    .parameter "uid"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 2015
    if-nez p2, :cond_1

    .line 2026
    :cond_0
    :goto_0
    return v2

    .line 2019
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2020
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, p1, :cond_0

    .line 2026
    const/4 v2, 0x1

    goto :goto_0

    .line 2023
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 2024
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 305
    .local v4, pm:Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, systemPackageName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    .line 308
    .local v7, sigSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x80

    iget v12, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v4, v10, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 311
    .local v6, rInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 312
    .local v5, rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 318
    .local v3, packageName:Ljava/lang/String;
    const/16 v10, 0x40

    :try_start_0
    invoke-virtual {v4, v3, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 319
    .local v2, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v10, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v10, v7}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 320
    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resolves service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "com.android.location.service.FusedLocationProvider"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", but has wrong signature, ignoring"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    .end local v2           #pInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "missing package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v10, :cond_1

    .line 331
    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found fused provider without metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_1
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "serviceVersion"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 337
    .local v9, version:I
    if-nez v9, :cond_4

    .line 341
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_2

    .line 342
    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fallback candidate not in /system: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 348
    :cond_2
    invoke-virtual {v4, v8, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3

    .line 350
    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fallback candidate not signed the same as system: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 356
    :cond_3
    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found fallback provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void

    .line 359
    :cond_4
    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fallback candidate not version 0: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 363
    .end local v2           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v5           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v9           #version:I
    :cond_5
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Unable to find a fused location provider that is in the system partition with version 0 and signed with the platform certificate. Such a package is needed to provide a default fused location provider in the event that no other fused location provider has been installed or is currently available. For example, coreOnly boot mode when decrypting the data partition. The fallback must also be marked coreApp=\"true\" in the manifest"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private getAllowedResolutionLevel(II)I
    .locals 2
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 971
    const/4 v0, 0x2

    .line 976
    :goto_0
    return v0

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 974
    const/4 v0, 0x1

    goto :goto_0

    .line 976
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCallerAllowedResolutionLevel()I
    .locals 2

    .prologue
    .line 986
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method private getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I
    .locals 5
    .parameter "provider"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 1007
    const-string v4, "gps"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "passive"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return v2

    .line 1011
    :cond_1
    const-string v4, "network"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "fused"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 1014
    goto :goto_0

    .line 1017
    :cond_3
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1018
    .local v0, lp:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v0, :cond_0

    .line 1019
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    .line 1020
    .local v1, properties:Lcom/android/internal/location/ProviderProperties;
    if-eqz v1, :cond_0

    .line 1021
    iget-boolean v4, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    if-nez v4, :cond_0

    .line 1024
    iget-boolean v4, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    if-nez v4, :cond_4

    iget-boolean v4, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    if-eqz v4, :cond_0

    :cond_4
    move v2, v3

    .line 1026
    goto :goto_0
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 9
    .parameter "intent"
    .parameter "pid"
    .parameter "uid"
    .parameter "packageName"
    .parameter "workSource"
    .parameter "hideFromAppOps"

    .prologue
    .line 1468
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1469
    .local v0, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    .line 1470
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    .line 1472
    .restart local v0       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    :cond_0
    return-object v0
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 11
    .parameter "listener"
    .parameter "pid"
    .parameter "uid"
    .parameter "packageName"
    .parameter "workSource"
    .parameter "hideFromAppOps"

    .prologue
    .line 1449
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1450
    .local v9, binder:Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1451
    .local v0, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    .line 1452
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    .line 1454
    .restart local v0       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v1, v0

    .line 1463
    :goto_0
    return-object v1

    .line 1458
    :catch_0
    move-exception v10

    .line 1459
    .local v10, e:Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "linkToDeath failed:"

    invoke-static {v1, v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1460
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getResolutionPermission(I)Ljava/lang/String;
    .locals 1
    .parameter "resolutionLevel"

    .prologue
    .line 951
    packed-switch p1, :pswitch_data_0

    .line 957
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 953
    :pswitch_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    goto :goto_0

    .line 955
    :pswitch_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    goto :goto_0

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleLocationChanged(Landroid/location/Location;Z)V
    .locals 7
    .parameter "location"
    .parameter "passive"

    .prologue
    const/4 v6, 0x1

    .line 2383
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2384
    .local v0, myLocation:Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 2389
    .local v1, provider:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isMockProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2390
    invoke-virtual {v0, v6}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    .line 2394
    :cond_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v6, v3, v4, v5}, Lcom/lge/cappuccino/IMdm;->getMDMLocationPolicy(IZILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2398
    const-string v2, "MDM"

    const-string v3, "MDM Block PassiveProvider"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    const/4 p2, 0x0

    .line 2403
    :cond_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2404
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2405
    if-nez p2, :cond_3

    .line 2406
    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->screenLocationLocked(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    .line 2407
    if-nez p1, :cond_2

    .line 2408
    monitor-exit v3

    .line 2416
    :goto_0
    return-void

    .line 2411
    :cond_2
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V

    .line 2413
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V

    .line 2415
    :cond_4
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Z)V
    .locals 37
    .parameter "location"
    .parameter "passive"

    .prologue
    .line 2094
    const-string v32, "ro.build.target_operator"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "TMO"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    const-string v32, "ro.build.target_country"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "US"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 2097
    const-string v32, "persist.service.privacy.enable"

    const-string v33, "NA"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2098
    .local v22, privacy_check:Ljava/lang/String;
    const-string v32, "1"

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 2100
    const-string v32, "LocationManagerService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "incoming location: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    .end local v22           #privacy_check:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 2110
    .local v17, now:J
    if-eqz p2, :cond_3

    const-string v23, "passive"

    .line 2113
    .local v23, provider:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/location/LocationProviderInterface;

    .line 2114
    .local v19, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v19, :cond_4

    .line 2273
    :cond_1
    :goto_2
    return-void

    .line 2105
    .end local v17           #now:J
    .end local v19           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v23           #provider:Ljava/lang/String;
    :cond_2
    const-string v32, "LocationManagerService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "incoming location: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2110
    .restart local v17       #now:J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    .line 2117
    .restart local v19       #p:Lcom/android/server/location/LocationProviderInterface;
    .restart local v23       #provider:Ljava/lang/String;
    :cond_4
    const-string v32, "noGPSLocation"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v15

    .line 2118
    .local v15, noGPSLocation:Landroid/location/Location;
    const/4 v12, 0x0

    .line 2119
    .local v12, lastNoGPSLocation:Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/Location;

    .line 2120
    .local v10, lastLocation:Landroid/location/Location;
    if-nez v10, :cond_a

    .line 2121
    new-instance v10, Landroid/location/Location;

    .end local v10           #lastLocation:Landroid/location/Location;
    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2122
    .restart local v10       #lastLocation:Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Location;

    .line 2135
    .local v11, lastLocationCoarseInterval:Landroid/location/Location;
    if-nez v11, :cond_6

    .line 2136
    new-instance v11, Landroid/location/Location;

    .end local v11           #lastLocationCoarseInterval:Landroid/location/Location;
    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2137
    .restart local v11       #lastLocationCoarseInterval:Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v32

    invoke-virtual {v11}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v34

    sub-long v30, v32, v34

    .line 2141
    .local v30, timeDiffNanos:J
    const-wide v32, 0x8bb2c97000L

    cmp-long v32, v30, v32

    if-lez v32, :cond_7

    .line 2142
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 2147
    :cond_7
    const-string v32, "noGPSLocation"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v15

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    .line 2152
    .local v28, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v28, :cond_1

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-eqz v32, :cond_1

    .line 2155
    const/4 v4, 0x0

    .line 2156
    .local v4, coarseLocation:Landroid/location/Location;
    if-eqz v15, :cond_8

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v4

    .line 2161
    :cond_8
    invoke-interface/range {v19 .. v19}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v13

    .line 2164
    .local v13, newStatusUpdateTime:J
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2165
    .local v7, extras:Landroid/os/Bundle;
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v29

    .line 2167
    .local v29, status:I
    const/4 v5, 0x0

    .line 2168
    .local v5, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    const/4 v6, 0x0

    .line 2171
    .local v6, deadUpdateRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2172
    .local v24, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v25, v0

    .line 2173
    .local v25, receiver:Lcom/android/server/LocationManagerService$Receiver;
    const/16 v26, 0x0

    .line 2175
    .local v26, receiverDead:Z
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    .line 2176
    .local v27, receiverUserId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    move/from16 v32, v0

    move/from16 v0, v27

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v32

    if-nez v32, :cond_b

    .line 2178
    const-string v32, "LocationManagerService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "skipping loc update for background user "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " (current user: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", app: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2124
    .end local v4           #coarseLocation:Landroid/location/Location;
    .end local v5           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v6           #deadUpdateRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #lastLocationCoarseInterval:Landroid/location/Location;
    .end local v13           #newStatusUpdateTime:J
    .end local v24           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v25           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v26           #receiverDead:Z
    .end local v27           #receiverUserId:I
    .end local v28           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v29           #status:I
    .end local v30           #timeDiffNanos:J
    :cond_a
    const-string v32, "noGPSLocation"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v12

    .line 2125
    if-nez v15, :cond_5

    if-eqz v12, :cond_5

    .line 2128
    const-string v32, "noGPSLocation"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    goto/16 :goto_3

    .line 2185
    .restart local v4       #coarseLocation:Landroid/location/Location;
    .restart local v5       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v6       #deadUpdateRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v7       #extras:Landroid/os/Bundle;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #lastLocationCoarseInterval:Landroid/location/Location;
    .restart local v13       #newStatusUpdateTime:J
    .restart local v24       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v25       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .restart local v26       #receiverDead:Z
    .restart local v27       #receiverUserId:I
    .restart local v28       #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v29       #status:I
    .restart local v30       #timeDiffNanos:J
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 2186
    const-string v32, "LocationManagerService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "skipping loc update for blacklisted app: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2191
    :cond_c
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    move/from16 v32, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(ILjava/lang/String;I)Z

    move-result v32

    if-nez v32, :cond_d

    .line 2193
    const-string v32, "LocationManagerService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "skipping loc update for no op app: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2199
    :cond_d
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v32

    if-eqz v32, :cond_e

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v32

    const/16 v33, 0x2

    const/16 v34, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v35

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-interface/range {v32 .. v36}, Lcom/lge/cappuccino/IMdm;->getMDMLocationPolicy(IZILjava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_e

    .line 2203
    const-string v32, "MDM"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "MDM Control LocationManager Service, receiver.packageName :"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2209
    :cond_e
    const/16 v16, 0x0

    .line 2210
    .local v16, notifyLocation:Landroid/location/Location;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_18

    .line 2211
    move-object/from16 v16, v4

    .line 2215
    :goto_5
    if-eqz v16, :cond_11

    .line 2216
    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2217
    .local v9, lastLoc:Landroid/location/Location;
    if-eqz v9, :cond_f

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-wide/from16 v2, v17

    invoke-static {v0, v9, v1, v2, v3}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 2218
    :cond_f
    if-nez v9, :cond_19

    .line 2219
    new-instance v9, Landroid/location/Location;

    .end local v9           #lastLoc:Landroid/location/Location;
    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2220
    .restart local v9       #lastLoc:Landroid/location/Location;
    move-object/from16 v0, v24

    iput-object v9, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2224
    :goto_6
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v32

    if-nez v32, :cond_10

    .line 2225
    const-string v32, "LocationManagerService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "RemoteException calling onLocationChanged on "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    const/16 v26, 0x1

    .line 2228
    :cond_10
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    .line 2232
    .end local v9           #lastLoc:Landroid/location/Location;
    :cond_11
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    move-wide/from16 v20, v0

    .line 2233
    .local v20, prevStatusUpdateTime:J
    cmp-long v32, v13, v20

    if-lez v32, :cond_13

    const-wide/16 v32, 0x0

    cmp-long v32, v20, v32

    if-nez v32, :cond_12

    const/16 v32, 0x2

    move/from16 v0, v29

    move/from16 v1, v32

    if-eq v0, v1, :cond_13

    .line 2236
    :cond_12
    move-object/from16 v0, v24

    iput-wide v13, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2237
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v32

    if-nez v32, :cond_13

    .line 2238
    const/16 v26, 0x1

    .line 2239
    const-string v32, "LocationManagerService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "RemoteException calling onStatusChanged on "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :cond_13
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v32

    if-lez v32, :cond_14

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v32

    cmp-long v32, v32, v17

    if-gez v32, :cond_16

    .line 2245
    :cond_14
    if-nez v6, :cond_15

    .line 2246
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #deadUpdateRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2248
    .restart local v6       #deadUpdateRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_15
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2251
    :cond_16
    if-eqz v26, :cond_9

    .line 2252
    if-nez v5, :cond_17

    .line 2253
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2255
    .restart local v5       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_17
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_9

    .line 2256
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2213
    .end local v20           #prevStatusUpdateTime:J
    :cond_18
    move-object/from16 v16, v10

    goto/16 :goto_5

    .line 2222
    .restart local v9       #lastLoc:Landroid/location/Location;
    :cond_19
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_6

    .line 2262
    .end local v9           #lastLoc:Landroid/location/Location;
    .end local v16           #notifyLocation:Landroid/location/Location;
    .end local v24           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v25           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v26           #receiverDead:Z
    .end local v27           #receiverUserId:I
    :cond_1a
    if-eqz v5, :cond_1b

    .line 2263
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/LocationManagerService$Receiver;

    .line 2264
    .restart local v25       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    goto :goto_7

    .line 2267
    .end local v25           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    :cond_1b
    if-eqz v6, :cond_1

    .line 2268
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2269
    .restart local v24       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    const/16 v32, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    goto :goto_8

    .line 2271
    .end local v24           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 916
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    const/4 v1, 0x1

    .line 925
    :goto_0
    return v1

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    const/4 v1, 0x0

    goto :goto_0

    .line 923
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 925
    .local v0, resolver:Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method

.method private isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z
    .locals 2
    .parameter "provider"
    .parameter "uid"

    .prologue
    .line 938
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    const/4 v0, 0x0

    .line 941
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isMockProvider(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 2310
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2311
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isUidALocationProvider(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    .line 1981
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_1

    .line 1990
    :cond_0
    :goto_0
    return v2

    .line 1984
    :cond_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v3, :cond_2

    .line 1985
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    invoke-virtual {v3}, Lcom/android/server/location/GeocoderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/LocationManagerService;->doesPackageHaveUid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1987
    :cond_2
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderProxy;

    .line 1988
    .local v1, proxy:Lcom/android/server/location/LocationProviderProxy;
    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/LocationManagerService;->doesPackageHaveUid(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 1990
    .end local v1           #proxy:Lcom/android/server/location/LocationProviderProxy;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadProvidersLocked()V
    .locals 22

    .prologue
    .line 373
    new-instance v17, Lcom/android/server/location/PassiveProvider;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    .line 374
    .local v17, passiveProvider:Lcom/android/server/location/PassiveProvider;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 376
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    .line 381
    const/4 v15, 0x0

    .line 383
    .local v15, gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    :try_start_0
    const-string v2, "com.android.server.location.LgeGpsLocationProvider"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 384
    .local v9, c:Ljava/lang/Class;
    if-eqz v9, :cond_0

    .line 385
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/location/ILocationManager;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Looper;

    aput-object v4, v2, v3

    invoke-virtual {v9, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 387
    .local v10, constructor:Ljava/lang/reflect/Constructor;
    if-eqz v10, :cond_0

    .line 388
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    check-cast v15, Lcom/android/server/location/GpsLocationProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v9           #c:Ljava/lang/Class;
    .end local v10           #constructor:Ljava/lang/reflect/Constructor;
    .restart local v15       #gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    :cond_0
    :goto_0
    if-nez v15, :cond_1

    new-instance v15, Lcom/android/server/location/GpsLocationProvider;

    .end local v15           #gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v15, v2, v0, v3}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V

    .line 402
    .restart local v15       #gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    :cond_1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    invoke-virtual {v15}, Lcom/android/server/location/GpsLocationProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 404
    invoke-virtual {v15}, Lcom/android/server/location/GpsLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 405
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 421
    .local v21, resources:Landroid/content/res/Resources;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v20, providerPackageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v2, 0x107002e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 424
    .local v18, pkgs:[Ljava/lang/String;
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "certificates for location providers pulled from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-eqz v18, :cond_3

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 428
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "network"

    const-string v4, "com.android.location.service.v3.NetworkLocationProvider"

    const v5, 0x1110030

    const v6, 0x104003c

    const v7, 0x107002e

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static/range {v2 .. v8}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v16

    .line 439
    .local v16, networkProvider:Lcom/android/server/location/LocationProviderProxy;
    if-eqz v16, :cond_8

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string v3, "network"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 448
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "fused"

    const-string v4, "com.android.location.service.FusedLocationProvider"

    const v5, 0x1110031

    const v6, 0x104003d

    const v7, 0x107002e

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static/range {v2 .. v8}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v13

    .line 456
    .local v13, fusedLocationProvider:Lcom/android/server/location/LocationProviderProxy;
    if-eqz v13, :cond_9

    .line 457
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual {v13}, Lcom/android/server/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string v3, "fused"

    invoke-virtual {v2, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1110032

    const v4, 0x104003e

    const v5, 0x107002e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v2, :cond_4

    .line 473
    const-string v2, "LocationManagerService"

    const-string v3, "no geocoder provider found"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;

    move-result-object v12

    .line 478
    .local v12, flpHardwareProvider:Lcom/android/server/location/FlpHardwareProvider;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v12}, Lcom/android/server/location/FlpHardwareProvider;->getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;

    move-result-object v4

    const v5, 0x1110067

    const v6, 0x104003d

    const v7, 0x107002e

    invoke-static/range {v2 .. v7}, Lcom/android/server/location/FusedProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)Lcom/android/server/location/FusedProxy;

    move-result-object v14

    .line 485
    .local v14, fusedProxy:Lcom/android/server/location/FusedProxy;
    if-nez v14, :cond_5

    .line 486
    const-string v2, "LocationManagerService"

    const-string v3, "No FusedProvider found."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1110033

    const v4, 0x104003f

    const v5, 0x107002e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v15}, Lcom/android/server/location/GpsLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v19

    .line 497
    .local v19, provider:Lcom/android/server/location/GeofenceProxy;
    if-nez v19, :cond_6

    .line 498
    const-string v2, "LocationManagerService"

    const-string v3, "no geofence provider found"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_6
    const v2, 0x1040040

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/location/GeoFencerProxy;->getGeoFencerProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/location/GeoFencerProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    .line 506
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/LocationManagerService;->mGeoFencerEnabled:Z

    .line 512
    :goto_3
    const v2, 0x1040041

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".nlp:ready"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".nlp:screen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mComboNlpScreenMarker:Ljava/lang/String;

    .line 519
    :cond_7
    return-void

    .line 394
    .end local v12           #flpHardwareProvider:Lcom/android/server/location/FlpHardwareProvider;
    .end local v13           #fusedLocationProvider:Lcom/android/server/location/LocationProviderProxy;
    .end local v14           #fusedProxy:Lcom/android/server/location/FusedProxy;
    .end local v15           #gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    .end local v16           #networkProvider:Lcom/android/server/location/LocationProviderProxy;
    .end local v18           #pkgs:[Ljava/lang/String;
    .end local v19           #provider:Lcom/android/server/location/GeofenceProxy;
    .end local v20           #providerPackageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v11

    .line 395
    .local v11, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "Error while loading LgeGpsLocationProvider."

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    const/4 v15, 0x0

    .restart local v15       #gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    goto/16 :goto_0

    .line 444
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v16       #networkProvider:Lcom/android/server/location/LocationProviderProxy;
    .restart local v18       #pkgs:[Ljava/lang/String;
    .restart local v20       #providerPackageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21       #resources:Landroid/content/res/Resources;
    :cond_8
    const-string v2, "LocationManagerService"

    const-string v3, "no network location provider found"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 462
    .restart local v13       #fusedLocationProvider:Lcom/android/server/location/LocationProviderProxy;
    :cond_9
    const-string v2, "LocationManagerService"

    const-string v3, "no fused location provider found"

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Location service needs a fused location provider"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 508
    .restart local v12       #flpHardwareProvider:Lcom/android/server/location/FlpHardwareProvider;
    .restart local v14       #fusedProxy:Lcom/android/server/location/FusedProxy;
    .restart local v19       #provider:Lcom/android/server/location/GeofenceProxy;
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    .line 509
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/LocationManagerService;->mGeoFencerEnabled:Z

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .parameter "log"

    .prologue
    .line 2644
    const-string v0, "LocationManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2645
    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_0
    return-void
.end method

.method private pickBest(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1236
    .local p1, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "gps"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    const-string v0, "gps"

    .line 1241
    :goto_0
    return-object v0

    .line 1238
    :cond_0
    const-string v0, "network"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    const-string v0, "network"

    goto :goto_0

    .line 1241
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 902
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 903
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 904
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 9
    .parameter "receiver"

    .prologue
    const/4 v8, 0x0

    .line 1661
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1664
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v5

    invoke-interface {v5}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, p1, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1665
    monitor-enter p1

    .line 1666
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 1667
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1670
    :cond_0
    invoke-virtual {p1, v8}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1673
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1674
    .local v3, providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1675
    .local v1, oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v1, :cond_2

    .line 1677
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1678
    .local v4, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    invoke-virtual {v4, v8}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    goto :goto_0

    .line 1667
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v3           #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1681
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v3       #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1685
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1687
    .local v2, provider:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1691
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_1

    .line 1693
    .end local v2           #provider:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    .locals 9
    .parameter "request"
    .parameter "receiver"
    .parameter "pid"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    const/4 v8, 0x0

    .line 1603
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 1604
    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 1605
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1606
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "provider name must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1609
    :cond_1
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 1612
    .local v3, provider:Lcom/android/server/location/LocationProviderInterface;
    if-nez v3, :cond_2

    .line 1613
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provider doesn\'t exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1616
    :cond_2
    new-instance v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1617
    .local v4, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v5, p2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1618
    .local v2, oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v2, :cond_3

    .line 1619
    invoke-virtual {v2, v8}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    .line 1622
    :cond_3
    invoke-direct {p0, v1, p4}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v0

    .line 1623
    .local v0, isProviderEnabled:Z
    if-eqz v0, :cond_4

    .line 1624
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 1631
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1632
    return-void

    .line 1627
    :cond_4
    invoke-virtual {p2, v1, v8}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public static resolutionLevelToOp(I)I
    .locals 1
    .parameter "allowedResolutionLevel"

    .prologue
    const/4 v0, 0x1

    .line 1074
    if-eqz p0, :cond_1

    .line 1075
    if-ne p0, v0, :cond_0

    .line 1076
    const/4 v0, 0x0

    .line 1081
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private screenLocationLocked(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;
    .locals 10
    .parameter "location"
    .parameter "provider"

    .prologue
    .line 2318
    const-string v7, "network"

    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->isMockProvider(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2377
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 2322
    .restart local p1
    :cond_1
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string v8, "network"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderProxy;

    .line 2324
    .local v4, providerProxy:Lcom/android/server/location/LocationProviderProxy;
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    const-string v7, "network"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2329
    invoke-virtual {v4}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2330
    .local v0, connectedNlpPackage:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2334
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2335
    .local v1, extras:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 2336
    .local v3, isBeingScreened:Z
    if-nez v1, :cond_2

    .line 2337
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #extras:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2340
    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_2
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2342
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    const-string v8, "passive"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2344
    .local v6, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_6

    .line 2345
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2346
    .local v5, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2347
    if-nez v3, :cond_4

    .line 2348
    const/4 v3, 0x1

    .line 2349
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mComboNlpScreenMarker:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2352
    :cond_4
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, p1}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2353
    const-string v7, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException calling onLocationChanged on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2357
    :cond_5
    const-string v7, "LocationManagerService"

    const-string v8, "Sending location for screening"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2363
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_6
    if-eqz v3, :cond_7

    .line 2364
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 2367
    :cond_7
    const-string v7, "LocationManagerService"

    const-string v8, "Not screening locations"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2371
    .end local v6           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_8
    const-string v7, "LocationManagerService"

    const-string v8, "This location is marked as ready for broadcast"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z
    .locals 10
    .parameter "loc"
    .parameter "lastLoc"
    .parameter "record"
    .parameter "now"

    .prologue
    .line 2059
    if-nez p1, :cond_0

    .line 2060
    const/4 v6, 0x1

    .line 2089
    :goto_0
    return v6

    .line 2064
    :cond_0
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v4

    .line 2065
    .local v4, minTime:J
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long v0, v6, v8

    .line 2067
    .local v0, delta:J
    const-wide/16 v6, 0x64

    sub-long v6, v4, v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    .line 2068
    const/4 v6, 0x0

    goto :goto_0

    .line 2072
    :cond_1
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v6

    float-to-double v2, v6

    .line 2073
    .local v2, minDistance:D
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_2

    .line 2074
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v6

    float-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gtz v6, :cond_2

    .line 2075
    const/4 v6, 0x0

    goto :goto_0

    .line 2080
    :cond_2
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v6

    if-gtz v6, :cond_3

    .line 2081
    const/4 v6, 0x0

    goto :goto_0

    .line 2085
    :cond_3
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v6

    cmp-long v6, v6, p3

    if-gez v6, :cond_4

    .line 2086
    const/4 v6, 0x0

    goto :goto_0

    .line 2089
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private switchUser(I)V
    .locals 6
    .parameter "userId"

    .prologue
    .line 526
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationBlacklist;->switchUser(I)V

    .line 527
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 530
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 531
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 532
    .local v1, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 536
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 534
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 535
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 536
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    return-void
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;ZI)V
    .locals 8
    .parameter "provider"
    .parameter "enabled"
    .parameter "userId"

    .prologue
    .line 1287
    const/4 v3, 0x0

    .line 1289
    .local v3, listeners:I
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1290
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v4, :cond_1

    .line 1326
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    const/4 v1, 0x0

    .line 1294
    .local v1, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1295
    .local v6, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_5

    .line 1296
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1297
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 1298
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1299
    .local v5, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, p3, :cond_4

    .line 1301
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1302
    if-nez v1, :cond_2

    .line 1303
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    .restart local v1       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1297
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1312
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_5
    if-eqz v1, :cond_6

    .line 1313
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .restart local v2       #i:I
    :goto_2
    if-ltz v2, :cond_6

    .line 1314
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1313
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1318
    .end local v2           #i:I
    :cond_6
    if-eqz p2, :cond_7

    .line 1319
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 1320
    if-lez v3, :cond_0

    .line 1321
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 1324
    :cond_7
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    goto :goto_0
.end method

.method private updateProvidersLocked()V
    .locals 9

    .prologue
    .line 1259
    const/4 v0, 0x0

    .line 1260
    .local v0, changesMade:Z
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1261
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1262
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v2

    .line 1263
    .local v2, isEnabled:Z
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1264
    .local v3, name:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v5

    .line 1265
    .local v5, shouldBeEnabled:Z
    if-eqz v2, :cond_1

    if-nez v5, :cond_1

    .line 1266
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-direct {p0, v3, v6, v7}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;ZI)V

    .line 1270
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1271
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1272
    const/4 v0, 0x1

    .line 1260
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1273
    :cond_1
    if-nez v2, :cond_0

    if-eqz v5, :cond_0

    .line 1274
    const/4 v6, 0x1

    iget v7, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-direct {p0, v3, v6, v7}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;ZI)V

    .line 1275
    const/4 v0, 0x1

    goto :goto_1

    .line 1278
    .end local v2           #isEnabled:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v5           #shouldBeEnabled:Z
    :cond_2
    if-eqz v0, :cond_3

    .line 1279
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1281
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.location.MODE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1284
    :cond_3
    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z
    .locals 8
    .parameter "listener"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 1853
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    if-nez v6, :cond_0

    .line 1876
    :goto_0
    return v5

    .line 1856
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 1857
    .local v0, allowedResolutionLevel:I
    const-string v6, "gps"

    invoke-direct {p0, v0, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1860
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1861
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1863
    .local v2, ident:J
    :try_start_0
    invoke-virtual {p0, v4, p2, v0}, Lcom/android/server/LocationManagerService;->checkLocationAccess(ILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 1867
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1871
    :try_start_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v6, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1876
    const/4 v5, 0x1

    goto :goto_0

    .line 1872
    :catch_0
    move-exception v1

    .line 1873
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "LocationManagerService"

    const-string v7, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .locals 8
    .parameter "name"
    .parameter "properties"

    .prologue
    .line 2493
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2495
    const-string v4, "passive"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2496
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot mock the passive location provider"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2499
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2500
    .local v0, identity:J
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2501
    :try_start_0
    new-instance v3, Lcom/android/server/location/MockProvider;

    invoke-direct {v3, p1, p0, p2}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;Lcom/android/internal/location/ProviderProperties;)V

    .line 2503
    .local v3, provider:Lcom/android/server/location/MockProvider;
    const-string v4, "gps"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "network"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "fused"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2506
    :cond_1
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 2507
    .local v2, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_2

    .line 2508
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2511
    .end local v2           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2512
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" already exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2522
    .end local v3           #provider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2515
    .restart local v3       #provider:Lcom/android/server/location/MockProvider;
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/LocationManagerService;->mGeoFencerEnabled:Z

    .line 2517
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2518
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2519
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2520
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2521
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2522
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2523
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2524
    return-void
.end method

.method checkLocationAccess(ILjava/lang/String;I)Z
    .locals 2
    .parameter "uid"
    .parameter "packageName"
    .parameter "allowedResolutionLevel"

    .prologue
    .line 1095
    invoke-static {p3}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 1096
    .local v0, op:I
    if-ltz v0, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    const/4 v1, 0x0

    .line 1101
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method china_CTA_Security_LG(Ljava/lang/String;)V
    .locals 8
    .parameter "packageName"

    .prologue
    .line 1105
    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1106
    const-string v5, "LocationManagerService"

    const-string v6, "china_CTA_Security_LG"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1110
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1112
    .local v2, appname:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1113
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v6, 0x2

    invoke-static {v5, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1114
    .local v4, m:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #appname:Ljava/lang/String;
    .end local v4           #m:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1115
    :catch_0
    move-exception v3

    .line 1116
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 2605
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2606
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2607
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2608
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2609
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2616
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2611
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2612
    .local v0, identity:J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2613
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2614
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2615
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2616
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2617
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2570
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2571
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2572
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2573
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2574
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2577
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2576
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearLocation()V

    .line 2577
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2578
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2633
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2634
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2636
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2637
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2640
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2639
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearStatus()V

    .line 2640
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2641
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2651
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DUMP"

    invoke-virtual {v14, v15}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_0

    .line 2653
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission Denial: can\'t dump LocationManagerService from from pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2729
    :goto_0
    return-void

    .line 2659
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2660
    :try_start_0
    const-string v14, "Current Location Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2661
    const-string v14, "  Location Listeners:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2662
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/LocationManagerService$Receiver;

    .line 2663
    .local v12, receiver:Lcom/android/server/LocationManagerService$Receiver;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2728
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v12           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 2665
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v14, "  Records by Provider:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2667
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2668
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2669
    .local v13, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "      "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2672
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_3
    const-string v14, "  Last Known Locations:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2673
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2674
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2675
    .local v10, provider:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/Location;

    .line 2676
    .local v9, location:Landroid/location/Location;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ": "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2679
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v9           #location:Landroid/location/Location;
    .end local v10           #provider:Ljava/lang/String;
    :cond_4
    const-string v14, "  Last Known Locations Coarse Intervals:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2680
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2681
    .restart local v3       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2682
    .restart local v10       #provider:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/Location;

    .line 2683
    .restart local v9       #location:Landroid/location/Location;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ": "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 2686
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v9           #location:Landroid/location/Location;
    .end local v10           #provider:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    .line 2687
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/LocationManagerService;->mGeoFencerEnabled:Z

    if-eqz v14, :cond_6

    .line 2688
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    const-string v16, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/server/location/GeoFencerBase;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2691
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 2692
    const-string v14, "  Enabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2693
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2694
    .local v5, i:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 2698
    .end local v5           #i:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v14

    if-lez v14, :cond_8

    .line 2699
    const-string v14, "  Disabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2700
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2701
    .restart local v5       #i:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2704
    .end local v5           #i:Ljava/lang/String;
    :cond_8
    const-string v14, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2705
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/location/LocationBlacklist;->dump(Ljava/io/PrintWriter;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 2707
    const-string v14, "  Mock Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2709
    .local v6, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/MockProvider;

    const-string v16, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_7

    .line 2713
    .end local v6           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    :cond_9
    const-string v14, "  fudger: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2714
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/location/LocationFudger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2716
    move-object/from16 v0, p3

    array-length v14, v0

    if-lez v14, :cond_a

    const-string v14, "short"

    const/16 v16, 0x0

    aget-object v16, p3, v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2717
    monitor-exit v15

    goto/16 :goto_0

    .line 2719
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/LocationProviderInterface;

    .line 2720
    .local v10, provider:Lcom/android/server/location/LocationProviderInterface;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " Internal State"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2721
    instance-of v14, v10, Lcom/android/server/location/LocationProviderProxy;

    if-eqz v14, :cond_b

    .line 2722
    move-object v0, v10

    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    move-object v11, v0

    .line 2723
    .local v11, proxy:Lcom/android/server/location/LocationProviderProxy;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " ("

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2725
    .end local v11           #proxy:Lcom/android/server/location/LocationProviderProxy;
    :cond_b
    const-string v14, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2726
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v10, v0, v1, v2}, Lcom/android/server/location/LocationProviderInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_8

    .line 2728
    .end local v10           #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_c
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public geocoderIsPresent()Z
    .locals 1

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1131
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1132
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1133
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 1134
    .local v3, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1135
    .local v1, name:Ljava/lang/String;
    const-string v4, "fused"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1138
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1140
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #provider:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllProviders()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/lge/cappuccino/IMdm;->getMDMLocationPolicy(IZILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "passive"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1149
    const-string v4, "MDM"

    const-string v5, "MDM Block PassiveProvider"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const-string v4, "passive"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1154
    :cond_2
    return-object v2
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 6
    .parameter "criteria"
    .parameter "enabledOnly"

    .prologue
    const/4 v2, 0x0

    .line 1216
    const/4 v1, 0x0

    .line 1218
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 1219
    .local v0, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1220
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBestProvider("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 1232
    :goto_0
    return-object v2

    .line 1224
    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 1225
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1226
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1227
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBestProvider("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 1228
    goto :goto_0

    .line 1231
    :cond_1
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBestProvider("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2454
    .local p7, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2458
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .parameter "locationName"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2468
    .local p12, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2469
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2473
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .locals 13
    .parameter "request"
    .parameter "packageName"

    .prologue
    .line 1708
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getLastLocation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 1710
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 1711
    .local v0, allowedResolutionLevel:I
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1716
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1717
    .local v7, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1719
    .local v1, identity:J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v8, p2}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1720
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not returning last loc for blacklisted app: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1722
    const/4 v8, 0x0

    .line 1783
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1781
    return-object v8

    .line 1725
    :cond_1
    :try_start_1
    invoke-virtual {p0, v7, p2, v0}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(ILjava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1726
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not returning last loc for no op app: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const/4 v8, 0x0

    goto :goto_0

    .line 1732
    :cond_2
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1734
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    invoke-interface {v8, v9, v10, v11, p2}, Lcom/lge/cappuccino/IMdm;->getMDMLocationPolicy(IZILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1737
    const-string v8, "MDM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDM Control LocationManager Service packageName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const/4 v8, 0x0

    goto :goto_0

    .line 1741
    :cond_3
    const-string v8, "passive"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/lge/cappuccino/IMdm;->getMDMLocationPolicy(IZILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1745
    const-string v8, "MDM"

    const-string v9, "MDM Block PassiveProvider"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/4 v8, 0x0

    goto :goto_0

    .line 1751
    :cond_4
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1754
    :try_start_2
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    .line 1755
    .local v4, name:Ljava/lang/String;
    if-nez v4, :cond_5

    const-string v4, "fused"

    .line 1756
    :cond_5
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/LocationProviderInterface;

    .line 1757
    .local v6, provider:Lcom/android/server/location/LocationProviderInterface;
    if-nez v6, :cond_6

    const/4 v8, 0x0

    monitor-exit v9

    goto/16 :goto_0

    .line 1780
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #provider:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1783
    :catchall_1
    move-exception v8

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1759
    .restart local v4       #name:Ljava/lang/String;
    .restart local v6       #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_6
    :try_start_4
    invoke-direct {p0, v4, v7}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x0

    monitor-exit v9

    goto/16 :goto_0

    .line 1762
    :cond_7
    const/4 v8, 0x2

    if-ge v0, v8, :cond_8

    .line 1765
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 1769
    .local v3, location:Landroid/location/Location;
    :goto_1
    if-nez v3, :cond_9

    .line 1770
    const/4 v8, 0x0

    monitor-exit v9

    goto/16 :goto_0

    .line 1767
    .end local v3           #location:Landroid/location/Location;
    :cond_8
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .restart local v3       #location:Landroid/location/Location;
    goto :goto_1

    .line 1772
    :cond_9
    const/4 v8, 0x2

    if-ge v0, v8, :cond_a

    .line 1773
    const-string v8, "noGPSLocation"

    invoke-virtual {v3, v8}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 1774
    .local v5, noGPSLocation:Landroid/location/Location;
    if-eqz v5, :cond_b

    .line 1775
    new-instance v8, Landroid/location/Location;

    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v10, v5}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    monitor-exit v9

    goto/16 :goto_0

    .line 1778
    .end local v5           #noGPSLocation:Landroid/location/Location;
    :cond_a
    new-instance v8, Landroid/location/Location;

    invoke-direct {v8, v3}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    monitor-exit v9

    goto/16 :goto_0

    .line 1780
    .restart local v5       #noGPSLocation:Landroid/location/Location;
    :cond_b
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1781
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .locals 4
    .parameter "provider"

    .prologue
    const/4 v1, 0x0

    .line 1934
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1947
    :cond_0
    :goto_0
    return-object v1

    .line 1938
    :cond_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1942
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1943
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1944
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    if-eqz v0, :cond_0

    .line 1947
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    goto :goto_0

    .line 1944
    .end local v0           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 13
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 1166
    .local v0, allowedResolutionLevel:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1167
    .local v7, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1169
    .local v2, identity:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1170
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1171
    .local v5, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/LocationProviderInterface;

    .line 1172
    .local v6, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v6}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1173
    .local v4, name:Ljava/lang/String;
    const-string v8, "fused"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1176
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    move-result v8

    if-lt v0, v8, :cond_0

    .line 1177
    if-eqz p2, :cond_1

    invoke-direct {p0, v4, v7}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1180
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v6}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v8

    invoke-static {v4, v8, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1184
    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1187
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #provider:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1189
    :catchall_1
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1187
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1189
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1192
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getProviders()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/lge/cappuccino/IMdm;->getMDMLocationPolicy(IZILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "passive"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1199
    const-string v8, "MDM"

    const-string v9, "MDM Block PassiveProvider"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v8, "passive"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1204
    :cond_4
    return-object v5
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 7
    .parameter "provider"

    .prologue
    const/4 v4, 0x0

    .line 1953
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v5

    invoke-direct {p0, v5, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1958
    const-string v5, "fused"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1967
    :goto_0
    return v4

    .line 1960
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1961
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1963
    .local v0, identity:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1964
    :try_start_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 1965
    .local v2, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v2, :cond_1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1970
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1967
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, v3}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v4

    monitor-exit v5

    goto :goto_1

    .line 1968
    .end local v2           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1970
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    .line 882
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 883
    :try_start_0
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 884
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 885
    .local v3, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v3, :cond_0

    .line 886
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 888
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 889
    .local v1, identity:J
    #calls: Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    invoke-static {v3}, Lcom/android/server/LocationManagerService$Receiver;->access$1400(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 890
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 891
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    .end local v1           #identity:J
    :cond_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 894
    return-void

    .line 891
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 893
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v3           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .locals 5
    .parameter "provider"
    .parameter "criteria"

    .prologue
    .line 1247
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1248
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 1249
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1252
    :cond_0
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v1

    .line 1254
    .local v1, result:Z
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "providerMeetsCriteria("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    return v1
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .parameter "geofence"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1831
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForGeofenceUse(I)V

    .line 1832
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1833
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 1835
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeGeofence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1840
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/LocationManagerService;->mGeoFencerEnabled:Z

    if-eqz v2, :cond_0

    .line 1841
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    invoke-virtual {v2, p2}, Lcom/android/server/location/GeoFencerBase;->remove(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1848
    return-void

    .line 1843
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1846
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1881
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1883
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v1, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1887
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1888
    return-void

    .line 1884
    :catch_0
    move-exception v0

    .line 1885
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v3, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1887
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 8
    .parameter "provider"

    .prologue
    .line 2528
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2529
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2530
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2531
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2532
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" unknown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2550
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2534
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2535
    .local v0, identity:J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2537
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    if-eqz v4, :cond_1

    .line 2538
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/LocationManagerService;->mGeoFencerEnabled:Z

    .line 2542
    :cond_1
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 2543
    .local v3, realProvider:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v3, :cond_2

    .line 2544
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2546
    :cond_2
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2547
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2548
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2550
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2551
    return-void
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 12
    .parameter "listener"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1637
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 1639
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1640
    .local v3, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1642
    .local v4, uid:I
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1643
    const/4 v6, 0x0

    .line 1644
    .local v6, workSource:Landroid/os/WorkSource;
    const/4 v7, 0x0

    .local v7, hideFromAppOps:Z
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1645
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v10

    .line 1649
    .local v10, receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 1651
    .local v8, identity:J
    if-eqz v10, :cond_0

    .line 1652
    :try_start_1
    invoke-direct {p0, v10}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1655
    :cond_0
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1657
    monitor-exit v11

    .line 1658
    return-void

    .line 1655
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1657
    .end local v8           #identity:J
    .end local v10           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .locals 6
    .parameter "location"
    .parameter "passive"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2031
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkCallerIsProvider()V

    .line 2033
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2034
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping incomplete location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :goto_0
    return-void

    .line 2038
    :cond_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v3, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2039
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v3, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2042
    .local v0, m:Landroid/os/Message;
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v1, v2, v4, v5}, Lcom/lge/cappuccino/IMdm;->getMDMLocationPolicy(IZILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2046
    const-string v3, "MDM"

    const-string v4, "MDM Block PassiveProvider"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const/4 p2, 0x0

    .line 2051
    :cond_1
    if-eqz p2, :cond_2

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2052
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2051
    goto :goto_1
.end method

.method reportLocationAccessNoThrow(ILjava/lang/String;I)Z
    .locals 2
    .parameter "uid"
    .parameter "packageName"
    .parameter "allowedResolutionLevel"

    .prologue
    .line 1085
    invoke-static {p3}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 1086
    .local v0, op:I
    if-ltz v0, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    const/4 v1, 0x0

    .line 1091
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 20
    .parameter "request"
    .parameter "geofence"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1790
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 1791
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v15

    .line 1792
    .local v15, allowedResolutionLevel:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForGeofenceUse(I)V

    .line 1793
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1794
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 1795
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1797
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    move-result-object v12

    .line 1799
    .local v12, sanitizedRequest:Landroid/location/LocationRequest;
    const-string v2, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestGeofence: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1803
    .local v3, uid:I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1805
    const-string v2, "LocationManagerService"

    const-string v4, "proximity alerts are currently available only to the primary user"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    .end local v12           #sanitizedRequest:Landroid/location/LocationRequest;
    :goto_0
    return-void

    .line 1808
    .restart local v12       #sanitizedRequest:Landroid/location/LocationRequest;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1810
    .local v18, identity:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/LocationManagerService;->mGeoFencerEnabled:Z

    if-eqz v2, :cond_3

    .line 1812
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    .line 1813
    const-wide/16 v9, -0x1

    .line 1817
    .local v9, expiration:J
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    new-instance v2, Landroid/location/GeoFenceParams;

    invoke-virtual/range {p2 .. p2}, Landroid/location/Geofence;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/location/Geofence;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/location/Geofence;->getRadius()F

    move-result v8

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Landroid/location/GeoFenceParams;-><init>(IDDFJLandroid/app/PendingIntent;Ljava/lang/String;)V

    .end local v12           #sanitizedRequest:Landroid/location/LocationRequest;
    invoke-virtual {v13, v2}, Lcom/android/server/location/GeoFencerBase;->add(Landroid/location/GeoFenceParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1825
    .end local v9           #expiration:J
    :goto_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1815
    .restart local v12       #sanitizedRequest:Landroid/location/LocationRequest;
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v9, v4, v6

    .restart local v9       #expiration:J
    goto :goto_1

    .line 1821
    .end local v9           #expiration:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v16, v3

    move-object/from16 v17, p4

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1825
    .end local v12           #sanitizedRequest:Landroid/location/LocationRequest;
    :catchall_0
    move-exception v2

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 15
    .parameter "request"
    .parameter "listener"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1549
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 1550
    :cond_0
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 1551
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v9

    .line 1552
    .local v9, allowedResolutionLevel:I
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1554
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v7

    .line 1555
    .local v7, workSource:Landroid/os/WorkSource;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1556
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkDeviceStatsAllowed()V

    .line 1558
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v8

    .line 1559
    .local v8, hideFromAppOps:Z
    if-eqz v8, :cond_2

    .line 1560
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkUpdateAppOpsAllowed()V

    .line 1562
    :cond_2
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    move-result-object v13

    .line 1564
    .local v13, sanitizedRequest:Landroid/location/LocationRequest;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1565
    .local v4, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1567
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1573
    .local v11, identity:J
    :try_start_0
    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1574
    move-object/from16 v0, p4

    invoke-virtual {p0, v5, v0, v9}, Lcom/android/server/LocationManagerService;->checkLocationAccess(ILjava/lang/String;I)Z

    move-result v10

    .line 1576
    .local v10, bCheck:Z
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestLocationUpdates:checkLocationAccess:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    if-nez v10, :cond_4

    .line 1578
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->china_CTA_Security_LG(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1595
    .end local v10           #bCheck:Z
    :goto_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1597
    return-void

    .line 1582
    :cond_3
    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {p0, v5, v0, v9}, Lcom/android/server/LocationManagerService;->checkLocationAccess(ILjava/lang/String;I)Z

    .line 1586
    :cond_4
    iget-object v14, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    .line 1587
    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    .line 1589
    .local v3, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v3, :cond_5

    move-object v1, p0

    move-object v2, v13

    move-object/from16 v6, p4

    .line 1590
    invoke-direct/range {v1 .. v6}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V

    .line 1593
    :cond_5
    monitor-exit v14

    goto :goto_0

    .end local v3           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1595
    :catchall_1
    move-exception v1

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1892
    if-nez p1, :cond_0

    .line 1894
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1896
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1900
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1902
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1905
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1906
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1907
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    monitor-exit v2

    .line 1909
    :goto_0
    return v1

    :cond_2
    invoke-interface {v0, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1910
    .end local v0           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .parameter "notifId"
    .parameter "userResponse"

    .prologue
    .line 1915
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1916
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1920
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v1, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1923
    :goto_0
    return v1

    .line 1921
    :catch_0
    move-exception v0

    .line 1922
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 7
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2582
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2583
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2584
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2585
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2586
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2600
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2588
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2589
    .local v0, identity:J
    if-eqz p2, :cond_1

    .line 2590
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->enable()V

    .line 2591
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2592
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2598
    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2599
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2600
    monitor-exit v4

    .line 2601
    return-void

    .line 2594
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->disable()V

    .line 2595
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2596
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 7
    .parameter "provider"
    .parameter "loc"

    .prologue
    .line 2555
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2556
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2557
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2558
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2559
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2565
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2562
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2563
    .local v0, identity:J
    invoke-virtual {v2, p2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 2564
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2565
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2566
    return-void
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 5
    .parameter "provider"
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 2621
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2622
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2623
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2624
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2625
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2628
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2627
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V

    .line 2628
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2629
    return-void
.end method

.method public systemRunning()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 235
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    const-string v0, "LocationManagerService"

    const-string v2, "systemReady()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 242
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 245
    new-instance v0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 248
    new-instance v0, Lcom/android/server/location/LocationFudger;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, v2, v5}, Lcom/android/server/location/LocationFudger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    .line 249
    new-instance v0, Lcom/android/server/location/LocationBlacklist;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, v2, v5}, Lcom/android/server/location/LocationBlacklist;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 250
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0}, Lcom/android/server/location/LocationBlacklist;->init()V

    .line 251
    new-instance v0, Lcom/android/server/location/GeofenceManager;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-direct {v0, v2, v5}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    .line 254
    new-instance v6, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 265
    .local v6, callback:Landroid/app/AppOpsManager$OnOpChangedListener;
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v6}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 268
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    .line 269
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 270
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/LocationManagerService$2;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v7, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 286
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 289
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/LocationManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$3;-><init>(Lcom/android/server/LocationManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 301
    return-void

    .line 270
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    .end local v6           #callback:Landroid/app/AppOpsManager$OnOpChangedListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
