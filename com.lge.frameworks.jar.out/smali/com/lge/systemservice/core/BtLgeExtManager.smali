.class public Lcom/lge/systemservice/core/BtLgeExtManager;
.super Ljava/lang/Object;
.source "BtLgeExtManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "BtLgeExt"

.field private static final TAG:Ljava/lang/String; = "BtLgeExtManager"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mService:Lcom/lge/systemservice/core/IBtLgeExtManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 43
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IBtLgeExtManager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mService:Lcom/lge/systemservice/core/IBtLgeExtManager;

    if-nez v0, :cond_0

    .line 47
    const-string v0, "BtLgeExt"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IBtLgeExtManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IBtLgeExtManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mService:Lcom/lge/systemservice/core/IBtLgeExtManager;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mService:Lcom/lge/systemservice/core/IBtLgeExtManager;

    return-object v0
.end method
