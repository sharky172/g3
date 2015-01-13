.class public final Lcom/lge/systemservice/core/LGContext;
.super Ljava/lang/Object;
.source "LGContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;
    }
.end annotation


# static fields
.field public static final AAT_SERVICE:Ljava/lang/String; = "AAT"

.field public static final BLUETOOTH_API_SERVICE:Ljava/lang/String; = "lg_bluetoothapi_service"

.field public static final BLUETOOTH_SERVICE:Ljava/lang/String; = "BtLgeExt"

.field public static final CLIPTRAY_SERVICE:Ljava/lang/String; = "cliptray"

.field public static final DEATHMONITOR_SERVICE:Ljava/lang/String; = "deathmonitor"

.field public static final EMOTIONALLED_SERVICE:Ljava/lang/String; = "emotionled"

.field public static final FELICA_SERVICE:Ljava/lang/String; = "FeliCaService"

.field public static final INFOCOLLECTOR_SERVICE:Ljava/lang/String; = "infocollector"

.field public static final LGDEVENC_SERVICE:Ljava/lang/String; = "lgdevencryption"

.field public static final LGDISPLAY_SERVICE:Ljava/lang/String; = "lgdisplay"

.field public static final LGPOWERMANAGER_HELPER_SERVICE:Ljava/lang/String; = "lgpowermanagerhelper"

.field public static final LGSDENC_SERVICE:Ljava/lang/String; = "lgsdencryption"

.field public static final LG_DATASCHEDULER_SERVICE:Ljava/lang/String; = "lgdatascheduler"

.field public static final LOGCATCHER_SERVICE:Ljava/lang/String; = "logcatcher"

.field public static final MYFOLDER_SERVICE:Ljava/lang/String; = "myfolder"

.field public static final NFC_SERVICE:Ljava/lang/String; = "nfcLgService"

.field public static final OS_SERVICE:Ljava/lang/String; = "osservice"

.field private static final SERVICE_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMARTCOVER_SERVICE:Ljava/lang/String; = "smartcover"

.field public static final TZMIRRORLINKINTERFACE_SERVICE:Ljava/lang/String; = "mirrorlinkservice"

.field public static final VOLUMEVIBRATOR_SERVICE:Ljava/lang/String; = "volumevibrator"

.field public static final WATCHNETSTORAGE_SERVICE:Ljava/lang/String; = "watchnetstorage"

.field public static final WFD_SERVICE:Ljava/lang/String; = "wfdService"

.field public static final WIFIEXT_SERVICE:Ljava/lang/String; = "wifiLgeExtService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LGContext;->SERVICE_MAP:Ljava/util/Map;

    .line 253
    const-string v0, "emotionled"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$1;

    const-string v2, "com.lge.software.emotionalled"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 260
    const-string v0, "volumevibrator"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$2;

    const-string v2, "com.lge.software.volumevibrator"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 272
    const-string v0, "lgsdencryption"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$3;

    const-string v2, "com.lge.software.sdencryption"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 279
    const-string v0, "lgdevencryption"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$4;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$4;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 285
    const-string v0, "watchnetstorage"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$5;

    const-string v2, "com.lge.software.nfs"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$5;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 292
    const-string v0, "cliptray"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$6;

    const-string v2, "com.lge.software.cliptray"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 299
    const-string v0, "logcatcher"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$7;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$7;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 306
    const-string v0, "infocollector"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$8;

    const-string v2, "com.lge.software.infocollector"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$8;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 313
    const-string v0, "AAT"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$9;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$9;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 320
    const-string v0, "wifiLgeExtService"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$10;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$10;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 327
    const-string v0, "BtLgeExt"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$11;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$11;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 334
    const-string v0, "lg_bluetoothapi_service"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$12;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$12;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 341
    const-string v0, "FeliCaService"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$13;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$13;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 348
    const-string v0, "wfdService"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$14;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$14;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 355
    const-string v0, "nfcLgService"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$15;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$15;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 362
    const-string v0, "osservice"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$16;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$16;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 369
    const-string v0, "lgdisplay"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$17;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$17;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 376
    const-string v0, "lgpowermanagerhelper"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$18;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$18;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 383
    const-string v0, "deathmonitor"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$19;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$19;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 390
    const-string v0, "mirrorlinkservice"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$20;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$20;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 397
    const-string v0, "SecureSettingsService"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$21;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$21;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 404
    const-string v0, "smartcover"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$22;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$22;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 411
    const-string v0, "myfolder"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$23;

    const-string v2, "com.lge.software.myfolder"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$23;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 417
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/lge/systemservice/core/LGContext;->mContext:Landroid/content/Context;

    .line 195
    return-void
.end method

.method private static registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V
    .locals 1
    .parameter "serviceName"
    .parameter "fetcher"

    .prologue
    .line 224
    sget-object v0, Lcom/lge/systemservice/core/LGContext;->SERVICE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method


# virtual methods
.method public getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "serviceName"

    .prologue
    .line 206
    sget-object v1, Lcom/lge/systemservice/core/LGContext;->SERVICE_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;

    .line 207
    .local v0, fetcher:Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;->getService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getServiceList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/lge/systemservice/core/LGContext;->SERVICE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
