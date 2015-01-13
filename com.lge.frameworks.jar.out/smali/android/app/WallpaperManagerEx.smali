.class public Landroid/app/WallpaperManagerEx;
.super Landroid/app/WallpaperManager;
.source "WallpaperManagerEx.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sService:Landroid/app/IWallpaperManagerEx;


# instance fields
.field private mDisplayHeight:I

.field private mDisplayWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Landroid/app/WallpaperManagerEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManagerEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/app/WallpaperManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 29
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 30
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 31
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 32
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 35
    .local v2, rotation:I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 36
    :cond_0
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Landroid/app/WallpaperManagerEx;->mDisplayWidth:I

    .line 37
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Landroid/app/WallpaperManagerEx;->mDisplayHeight:I

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_1
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Landroid/app/WallpaperManagerEx;->mDisplayWidth:I

    .line 40
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Landroid/app/WallpaperManagerEx;->mDisplayHeight:I

    goto :goto_0
.end method

.method private static getServiceEx()Landroid/app/IWallpaperManagerEx;
    .locals 5

    .prologue
    .line 45
    sget-object v3, Landroid/app/WallpaperManagerEx;->sService:Landroid/app/IWallpaperManagerEx;

    if-eqz v3, :cond_0

    .line 46
    sget-object v3, Landroid/app/WallpaperManagerEx;->sService:Landroid/app/IWallpaperManagerEx;

    .line 57
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v3

    .line 50
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    :try_start_0
    const-string v3, "wallpaper"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v2

    .line 52
    .local v2, service:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/IWallpaperManagerEx$Stub;->asInterface(Landroid/app/IWallpaperManager;)Landroid/app/IWallpaperManagerEx;

    move-result-object v3

    sput-object v3, Landroid/app/WallpaperManagerEx;->sService:Landroid/app/IWallpaperManagerEx;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    sget-object v3, Landroid/app/WallpaperManagerEx;->sService:Landroid/app/IWallpaperManagerEx;

    goto :goto_0

    .line 53
    .end local v2           #service:Landroid/app/IWallpaperManager;
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/lang/NullPointerException;
    sget-object v3, Landroid/app/WallpaperManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperManagerEx is null."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getWallpaperType()Z
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 118
    .local v0, fixed:Z
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManagerEx;->getServiceEx()Landroid/app/IWallpaperManagerEx;

    move-result-object v1

    .line 119
    .local v1, serviceEx:Landroid/app/IWallpaperManagerEx;
    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v1}, Landroid/app/IWallpaperManagerEx;->getWallpaperType()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 126
    .end local v1           #serviceEx:Landroid/app/IWallpaperManagerEx;
    :cond_0
    :goto_0
    return v0

    .line 122
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManagerEx;->getServiceEx()Landroid/app/IWallpaperManagerEx;

    move-result-object v1

    .line 79
    .local v1, serviceEx:Landroid/app/IWallpaperManagerEx;
    if-eqz v1, :cond_0

    .line 80
    iget v2, p0, Landroid/app/WallpaperManagerEx;->mDisplayWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/WallpaperManagerEx;->mDisplayHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 81
    .local v0, fixed:Z
    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IWallpaperManagerEx;->setWallpaperType(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0           #fixed:Z
    .end local v1           #serviceEx:Landroid/app/IWallpaperManagerEx;
    :cond_0
    :goto_1
    return-void

    .line 80
    .restart local v1       #serviceEx:Landroid/app/IWallpaperManagerEx;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    .end local v1           #serviceEx:Landroid/app/IWallpaperManagerEx;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setResource(I)V
    .locals 2
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 64
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManagerEx;->getServiceEx()Landroid/app/IWallpaperManagerEx;

    move-result-object v0

    .line 65
    .local v0, serviceEx:Landroid/app/IWallpaperManagerEx;
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManagerEx;->setWallpaperType(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0           #serviceEx:Landroid/app/IWallpaperManagerEx;
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 92
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManagerEx;->getServiceEx()Landroid/app/IWallpaperManagerEx;

    move-result-object v0

    .line 93
    .local v0, serviceEx:Landroid/app/IWallpaperManagerEx;
    if-eqz v0, :cond_0

    .line 94
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManagerEx;->setWallpaperType(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0           #serviceEx:Landroid/app/IWallpaperManagerEx;
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setWallpaperType(Z)V
    .locals 2
    .parameter "isFixedWallpaperType"

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManagerEx;->getServiceEx()Landroid/app/IWallpaperManagerEx;

    move-result-object v0

    .line 105
    .local v0, serviceEx:Landroid/app/IWallpaperManagerEx;
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1}, Landroid/app/IWallpaperManagerEx;->setWallpaperType(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0           #serviceEx:Landroid/app/IWallpaperManagerEx;
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0
.end method
