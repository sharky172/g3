.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 243
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 244
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 245
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 246
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 259
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 234
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "context"

    .prologue
    .line 306
    :try_start_0
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v14, params:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v14}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 308
    .local v10, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v10, :cond_6

    .line 309
    const-string/jumbo v1, "width"

    const/4 v5, 0x0

    invoke-virtual {v14, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 310
    .local v3, width:I
    const-string v1, "height"

    const/4 v5, 0x0

    invoke-virtual {v14, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 313
    .local v4, height:I
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v1, :cond_9

    .line 314
    const-string v1, "drmKey"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 315
    .local v8, decInfo:[B
    if-eqz v8, :cond_9

    .line 316
    const/4 v12, 0x0

    .line 318
    .local v12, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/lge/lgdrm/DrmContentSession;->openDrmStream(Ljava/io/FileDescriptor;[B)Lcom/lge/lgdrm/DrmStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v12

    .line 319
    if-nez v12, :cond_1

    .line 320
    const/4 v7, 0x0

    .line 355
    :try_start_2
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 356
    if-eqz v12, :cond_0

    .line 357
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 402
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v8           #decInfo:[B
    .end local v10           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v14           #params:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v7

    .line 323
    .restart local v3       #width:I
    .restart local v4       #height:I
    .restart local v8       #decInfo:[B
    .restart local v10       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v14       #params:Landroid/os/Bundle;
    :cond_1
    const/4 v15, 0x0

    .line 324
    .local v15, sampleSize:I
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v16

    .line 329
    .local v16, size:I
    const v1, 0x4b000

    move/from16 v0, v16

    if-lt v0, v1, :cond_3

    .line 330
    const/4 v11, 0x0

    .line 331
    .local v11, i:I
    const/4 v11, 0x2

    :goto_1
    div-int v1, v16, v11

    const v5, 0x4b000

    if-le v1, v5, :cond_2

    .line 333
    mul-int/lit8 v11, v11, 0x2

    goto :goto_1

    .line 335
    :cond_2
    move v15, v11

    .line 338
    .end local v11           #i:I
    :cond_3
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 339
    .local v13, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v15, :cond_4

    .line 340
    iput v15, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 342
    :cond_4
    const/4 v1, 0x0

    invoke-static {v12, v1, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 344
    .local v2, bm:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 345
    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v4, 0x2

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v7

    .line 355
    :try_start_4
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 356
    if-eqz v12, :cond_0

    .line 357
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 359
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #sampleSize:I
    .end local v16           #size:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 347
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    .restart local v13       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v15       #sampleSize:I
    .restart local v16       #size:I
    :cond_5
    :try_start_5
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v7

    .line 355
    :try_start_6
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 356
    if-eqz v12, :cond_0

    .line 357
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 399
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v8           #decInfo:[B
    .end local v10           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #params:Landroid/os/Bundle;
    .end local v15           #sampleSize:I
    .end local v16           #size:I
    :catch_1
    move-exception v1

    .line 402
    :cond_6
    :goto_2
    const/4 v7, 0x0

    goto :goto_0

    .line 350
    .restart local v3       #width:I
    .restart local v4       #height:I
    .restart local v8       #decInfo:[B
    .restart local v10       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v14       #params:Landroid/os/Bundle;
    :catch_2
    move-exception v9

    .line 351
    .local v9, e:Ljava/lang/OutOfMemoryError;
    :try_start_7
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Can\'t decode file"

    invoke-static {v1, v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 355
    :try_start_8
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 356
    if-eqz v12, :cond_7

    .line 357
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 362
    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    :cond_7
    :goto_3
    const/4 v7, 0x0

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v1

    .line 355
    :try_start_9
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 356
    if-eqz v12, :cond_8

    .line 357
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 354
    :cond_8
    :goto_4
    :try_start_a
    throw v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 368
    .end local v8           #decInfo:[B
    .end local v12           #is:Ljava/io/InputStream;
    :cond_9
    :try_start_b
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 369
    .restart local v13       #options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v13}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 371
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_a

    .line 372
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bm   width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_a
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 376
    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v4, 0x2

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 377
    .local v7, bm2:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_b

    .line 378
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bm2   width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4

    .line 393
    :cond_b
    :try_start_c
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    .line 394
    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 382
    .end local v7           #bm2:Landroid/graphics/Bitmap;
    :cond_c
    :try_start_d
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 383
    .restart local v7       #bm2:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_d

    .line 384
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bm2   width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_4

    .line 393
    :cond_d
    :try_start_e
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    .line 389
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v7           #bm2:Landroid/graphics/Bitmap;
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v9

    .line 390
    .restart local v9       #e:Ljava/lang/OutOfMemoryError;
    :try_start_f
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Can\'t decode file"

    invoke-static {v1, v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 393
    :try_start_10
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_2

    .line 394
    :catch_5
    move-exception v1

    goto/16 :goto_2

    .line 392
    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v1

    .line 393
    :try_start_11
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1

    .line 392
    :goto_5
    :try_start_12
    throw v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_1

    .line 352
    .restart local v8       #decInfo:[B
    .restart local v12       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v1

    .line 355
    :try_start_13
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 356
    if-eqz v12, :cond_7

    .line 357
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_3

    .line 359
    :catch_7
    move-exception v1

    goto/16 :goto_3

    .line 394
    .end local v8           #decInfo:[B
    .end local v12           #is:Ljava/io/InputStream;
    :catch_8
    move-exception v5

    goto :goto_5

    .line 359
    .restart local v8       #decInfo:[B
    .restart local v12       #is:Ljava/io/InputStream;
    :catch_9
    move-exception v5

    goto/16 :goto_4
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 408
    const/4 v8, 0x0

    .line 409
    .local v8, is:Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v0, "ro.lge.device_color"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, deviceColor:Ljava/lang/String;
    const-string v0, "BL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10803ea

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 424
    :goto_0
    if-eqz v8, :cond_4

    .line 425
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v2

    .line 426
    .local v2, width:I
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 429
    .local v3, height:I
    :try_start_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 430
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    invoke-static {v8, v0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 432
    .local v1, bm:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 442
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 451
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #width:I
    .end local v3           #height:I
    .end local v6           #deviceColor:Ljava/lang/String;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v0

    .line 413
    .restart local v6       #deviceColor:Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v0, "PK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10803eb

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    goto :goto_0

    .line 416
    :cond_1
    const-string v0, "WH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10803ec

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    goto :goto_0

    .line 420
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1080220

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v8

    goto :goto_0

    .line 435
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #width:I
    .restart local v3       #height:I
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :try_start_4
    invoke-static {p1, v1, v2, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 442
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 443
    :catch_0
    move-exception v4

    goto :goto_1

    .line 438
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v7

    .line 439
    .local v7, e:Ljava/lang/OutOfMemoryError;
    :try_start_6
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Can\'t decode stream"

    invoke-static {v0, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 442
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .end local v2           #width:I
    .end local v3           #height:I
    .end local v6           #deviceColor:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_4
    :goto_2
    move-object v0, v10

    .line 451
    goto :goto_1

    .line 441
    .restart local v2       #width:I
    .restart local v3       #height:I
    .restart local v6       #deviceColor:Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 442
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 441
    :goto_3
    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    .line 448
    .end local v2           #width:I
    .end local v3           #height:I
    .end local v6           #deviceColor:Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_2

    .line 443
    .restart local v2       #width:I
    .restart local v3       #height:I
    .restart local v6       #deviceColor:Ljava/lang/String;
    :catch_3
    move-exception v4

    goto :goto_3

    .restart local v7       #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 2

    .prologue
    .line 297
    monitor-enter p0

    .line 298
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 300
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    monitor-exit p0

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 292
    :goto_0
    return-object v1

    .line 275
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 278
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    :goto_1
    if-eqz p2, :cond_3

    .line 285
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 286
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 287
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 289
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 292
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
