.class public Lcom/lge/systemservice/core/CliptrayManager;
.super Ljava/lang/Object;
.source "CliptrayManager.java"


# static fields
.field private static final CLIPTRAYMANAGER_LOG_TAG:Ljava/lang/String; = "Cliptray Manager"

.field private static final CLIP_IMAGE_DIR:Ljava/lang/String; = "/data/cliptray"

.field private static final COPY_CLIPDATA:I = 0x4

.field private static final COPY_IMAGE_BITMAP:I = 0x3

.field private static final COPY_IMAGE_URI:I = 0x2

.field private static final COPY_SCREENCAPTURE:I = 0x5

.field private static final COPY_STYLED_TEXT:I = 0x0

.field private static final COPY_TEXT_ONLY:I = 0x1

.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.cliptray"

.field private static final IME_CLIPTRAY_IMAGE:Ljava/lang/String; = "com.lge.cliptray.image"

.field public static final INPUT_TYPE_IMAGE_ONLY:I = 0x1

.field public static final INPUT_TYPE_TEXT_IMAGE:I = 0x2

.field public static final INPUT_TYPE_TEXT_ONLY:I = 0x0

.field private static final MAX_IMAGE_LIMIT_KB:I = 0x600

.field public static final MIMETYPE_CLIPTRAY_IMAGE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

.field private static final MSG_REPORT_PASTE:I


# instance fields
.field private mClipManager:Landroid/content/ClipboardManager;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentInputType:I

.field private mHandler:Landroid/os/Handler;

.field private mImageSizeSum:I

.field private mIsShowing:Z

.field private mService:Lcom/lge/systemservice/core/ICliptrayService;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private thumbnailHeight:I

.field private thumbnailWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    .line 82
    iput-boolean v3, p0, Lcom/lge/systemservice/core/CliptrayManager;->mIsShowing:Z

    .line 83
    iput-boolean v3, p0, Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z

    .line 84
    iput v3, p0, Lcom/lge/systemservice/core/CliptrayManager;->mCurrentInputType:I

    .line 86
    iput v3, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageSizeSum:I

    .line 92
    new-instance v2, Lcom/lge/systemservice/core/CliptrayManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/CliptrayManager$1;-><init>(Lcom/lge/systemservice/core/CliptrayManager;)V

    iput-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mServiceConn:Landroid/content/ServiceConnection;

    .line 489
    new-instance v2, Lcom/lge/systemservice/core/CliptrayManager$2;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/CliptrayManager$2;-><init>(Lcom/lge/systemservice/core/CliptrayManager;)V

    iput-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    .line 113
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    iput-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    .line 116
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 117
    .local v0, size:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 118
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 120
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-le v2, v4, :cond_0

    .line 121
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    .line 122
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    .line 128
    :goto_0
    const-string v2, "cliptray"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    .line 129
    const-string v2, "Cliptray Manager"

    const-string v4, "new CliptrayManager"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z

    .line 131
    return-void

    .line 124
    :cond_0
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    .line 125
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    goto :goto_0

    :cond_1
    move v2, v3

    .line 130
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lge/systemservice/core/CliptrayManager;)Lcom/lge/systemservice/core/ICliptrayService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/CliptrayManager;Lcom/lge/systemservice/core/ICliptrayService;)Lcom/lge/systemservice/core/ICliptrayService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/systemservice/core/CliptrayManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/lge/systemservice/core/CliptrayManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z

    return p1
.end method

.method private calculateInSampleSize(II)I
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 914
    const/4 v3, 0x1

    .line 915
    .local v3, inSampleSize:I
    if-le p1, p2, :cond_2

    move v2, p1

    .line 916
    .local v2, imgWidth:I
    :goto_0
    if-le p1, p2, :cond_3

    move v1, p2

    .line 918
    .local v1, imgHeight:I
    :goto_1
    iget v5, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    if-gt v1, v5, :cond_0

    iget v5, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    if-le v2, v5, :cond_1

    .line 919
    :cond_0
    int-to-double v5, v1

    iget v7, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 920
    .local v0, heightRatio:I
    int-to-double v5, v2

    iget v7, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 922
    .local v4, widthRatio:I
    if-ge v0, v4, :cond_4

    move v3, v0

    .line 924
    .end local v0           #heightRatio:I
    .end local v4           #widthRatio:I
    :cond_1
    :goto_2
    const-string v5, "Cliptray Manager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateInSampleSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return v3

    .end local v1           #imgHeight:I
    .end local v2           #imgWidth:I
    :cond_2
    move v2, p2

    .line 915
    goto :goto_0

    .restart local v2       #imgWidth:I
    :cond_3
    move v1, p1

    .line 916
    goto :goto_1

    .restart local v0       #heightRatio:I
    .restart local v1       #imgHeight:I
    .restart local v4       #widthRatio:I
    :cond_4
    move v3, v4

    .line 922
    goto :goto_2
.end method

.method private closeOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 1230
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :goto_0
    return-void

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 25
    .parameter "selectedText"

    .prologue
    .line 503
    const/4 v5, 0x0

    .line 505
    .local v5, clip:Landroid/content/ClipData;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 507
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v17, p1

    .line 508
    check-cast v17, Landroid/text/Spannable;

    .line 515
    .local v17, spannable:Landroid/text/Spannable;
    :goto_0
    const/16 v21, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const-class v23, Landroid/text/style/DynamicDrawableSpan;

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/DynamicDrawableSpan;

    .line 517
    .local v12, image:[Landroid/text/style/DynamicDrawableSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "com.lge.app.richnote"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 519
    .local v14, isMemo:Z
    array-length v0, v12

    move/from16 v21, v0

    if-lez v21, :cond_0

    if-nez v14, :cond_5

    .line 521
    :cond_0
    new-instance v16, Landroid/content/ClipData$Item;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 522
    .local v16, item:Landroid/content/ClipData$Item;
    new-instance v5, Landroid/content/ClipData;

    .end local v5           #clip:Landroid/content/ClipData;
    const-string v21, "text"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "text/plain"

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v5, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 587
    .end local v12           #image:[Landroid/text/style/DynamicDrawableSpan;
    .end local v14           #isMemo:Z
    .end local v16           #item:Landroid/content/ClipData$Item;
    .end local v17           #spannable:Landroid/text/Spannable;
    .restart local v5       #clip:Landroid/content/ClipData;
    :cond_1
    :goto_1
    if-eqz v5, :cond_3

    .line 589
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v6

    .line 590
    .local v6, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v6, :cond_2

    .line 591
    invoke-interface {v6}, Lcom/lge/systemservice/core/ICliptrayService;->doCopyAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v6           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 598
    :cond_3
    return-void

    .line 510
    :cond_4
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 511
    .restart local v17       #spannable:Landroid/text/Spannable;
    move-object/from16 p1, v17

    goto :goto_0

    .line 524
    .restart local v12       #image:[Landroid/text/style/DynamicDrawableSpan;
    .restart local v14       #isMemo:Z
    :cond_5
    const/16 v18, 0x0

    .line 525
    .local v18, startPos:I
    const/4 v9, 0x0

    .line 527
    .local v9, endPos:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_b

    .line 528
    aget-object v21, v12, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 530
    const/16 v21, 0x0

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 531
    const/16 v21, 0x0

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 533
    move/from16 v0, v18

    if-eq v0, v9, :cond_6

    .line 534
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v20

    .line 536
    .local v20, text:Ljava/lang/CharSequence;
    new-instance v16, Landroid/content/ClipData$Item;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 538
    .restart local v16       #item:Landroid/content/ClipData$Item;
    if-nez v5, :cond_8

    .line 540
    new-instance v5, Landroid/content/ClipData;

    .end local v5           #clip:Landroid/content/ClipData;
    const-string v21, "image"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v5, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 546
    .end local v16           #item:Landroid/content/ClipData$Item;
    .end local v20           #text:Ljava/lang/CharSequence;
    .restart local v5       #clip:Landroid/content/ClipData;
    :cond_6
    :goto_4
    aget-object v21, v12, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    .line 549
    aget-object v21, v12, v11

    invoke-virtual/range {v21 .. v21}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 550
    .local v19, tempDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const-class v22, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 553
    .local v15, isSupportingBitmap:Z
    if-eqz v15, :cond_7

    .line 554
    aget-object v21, v12, v11

    invoke-virtual/range {v21 .. v21}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 555
    .local v7, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v7, :cond_a

    .line 556
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 557
    .local v4, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v10

    .line 558
    .local v10, hasAlpha:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/lge/systemservice/core/CliptrayManager;->insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;

    move-result-object v13

    .line 559
    .local v13, imgUri:Landroid/net/Uri;
    new-instance v16, Landroid/content/ClipData$Item;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 562
    .restart local v16       #item:Landroid/content/ClipData$Item;
    if-nez v5, :cond_9

    .line 563
    new-instance v5, Landroid/content/ClipData;

    .end local v5           #clip:Landroid/content/ClipData;
    const-string v21, "mage"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v5, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 527
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v10           #hasAlpha:Z
    .end local v13           #imgUri:Landroid/net/Uri;
    .end local v16           #item:Landroid/content/ClipData$Item;
    .restart local v5       #clip:Landroid/content/ClipData;
    :cond_7
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 543
    .end local v15           #isSupportingBitmap:Z
    .end local v19           #tempDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v16       #item:Landroid/content/ClipData$Item;
    .restart local v20       #text:Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_4

    .line 565
    .end local v20           #text:Ljava/lang/CharSequence;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10       #hasAlpha:Z
    .restart local v13       #imgUri:Landroid/net/Uri;
    .restart local v15       #isSupportingBitmap:Z
    .restart local v19       #tempDrawable:Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_5

    .line 568
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #hasAlpha:Z
    .end local v13           #imgUri:Landroid/net/Uri;
    .end local v16           #item:Landroid/content/ClipData$Item;
    :cond_a
    const-string v21, "Cliptray Manager"

    const-string v22, "failed to copy image!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 574
    .end local v7           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v15           #isSupportingBitmap:Z
    .end local v19           #tempDrawable:Landroid/graphics/drawable/Drawable;
    :cond_b
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 575
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v20

    .line 576
    .restart local v20       #text:Ljava/lang/CharSequence;
    new-instance v16, Landroid/content/ClipData$Item;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 578
    .restart local v16       #item:Landroid/content/ClipData$Item;
    if-nez v5, :cond_c

    .line 579
    new-instance v5, Landroid/content/ClipData;

    .end local v5           #clip:Landroid/content/ClipData;
    const-string v21, "text"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "text/plain"

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v5, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .restart local v5       #clip:Landroid/content/ClipData;
    goto/16 :goto_1

    .line 581
    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto/16 :goto_1

    .line 592
    .end local v9           #endPos:I
    .end local v11           #i:I
    .end local v12           #image:[Landroid/text/style/DynamicDrawableSpan;
    .end local v14           #isMemo:Z
    .end local v16           #item:Landroid/content/ClipData$Item;
    .end local v17           #spannable:Landroid/text/Spannable;
    .end local v18           #startPos:I
    .end local v20           #text:Ljava/lang/CharSequence;
    :catch_0
    move-exception v8

    .line 593
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private copyClipData(Landroid/content/ClipData;)Z
    .locals 16
    .parameter "clip"

    .prologue
    .line 722
    const/4 v8, 0x0

    .line 723
    .local v8, isLimitReached:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v13

    const-string v14, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    invoke-virtual {v13, v14}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v6

    .line 724
    .local v6, hasImage:Z
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/systemservice/core/CliptrayManager;->mImageSizeSum:I

    .line 726
    const/4 v11, 0x0

    .line 728
    .local v11, newclip:Landroid/content/ClipData;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    .line 729
    .local v4, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v4, :cond_7

    .line 730
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 731
    .local v10, item:Landroid/content/ClipData$Item;
    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 732
    .local v2, clipUri:Landroid/net/Uri;
    const-string v13, "Cliptray Manager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copy clipdata uri = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    if-eqz v2, :cond_5

    .line 735
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/systemservice/core/CliptrayManager;->mImageSizeSum:I

    const/16 v14, 0x600

    if-ge v13, v14, :cond_4

    .line 736
    if-eqz v6, :cond_1

    .line 738
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lge/systemservice/core/CliptrayManager;->getSampledBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 739
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 740
    const-string v13, "Cliptray Manager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "image copy failed.. cannot decode from URI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v13, 0x0

    .line 796
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #clipUri:Landroid/net/Uri;
    .end local v10           #item:Landroid/content/ClipData$Item;
    :goto_1
    return v13

    .line 745
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #clipUri:Landroid/net/Uri;
    .restart local v10       #item:Landroid/content/ClipData$Item;
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v9

    .line 747
    .local v9, isPNG:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v9}, Lcom/lge/systemservice/core/CliptrayManager;->insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;

    move-result-object v2

    .line 750
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #isPNG:Z
    :cond_1
    new-instance v12, Landroid/content/ClipData$Item;

    invoke-direct {v12, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 752
    .local v12, newitem:Landroid/content/ClipData$Item;
    if-nez v11, :cond_3

    .line 753
    new-instance v11, Landroid/content/ClipData;

    .end local v11           #newclip:Landroid/content/ClipData;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v13

    invoke-direct {v11, v13, v12}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 729
    .end local v12           #newitem:Landroid/content/ClipData$Item;
    .restart local v11       #newclip:Landroid/content/ClipData;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 755
    .restart local v12       #newitem:Landroid/content/ClipData$Item;
    :cond_3
    invoke-virtual {v11, v12}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2

    .line 758
    .end local v12           #newitem:Landroid/content/ClipData$Item;
    :cond_4
    const/4 v8, 0x1

    goto :goto_2

    .line 762
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v13}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 764
    if-nez v11, :cond_6

    .line 765
    new-instance v11, Landroid/content/ClipData;

    .end local v11           #newclip:Landroid/content/ClipData;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v13

    invoke-direct {v11, v13, v10}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .restart local v11       #newclip:Landroid/content/ClipData;
    goto :goto_2

    .line 767
    :cond_6
    invoke-virtual {v11, v10}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2

    .line 773
    .end local v2           #clipUri:Landroid/net/Uri;
    .end local v10           #item:Landroid/content/ClipData$Item;
    :cond_7
    if-eqz v8, :cond_8

    .line 775
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v3

    .line 776
    .local v3, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v3, :cond_8

    .line 777
    invoke-interface {v3}, Lcom/lge/systemservice/core/ICliptrayService;->showImageLimitReachedToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .end local v3           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_8
    :goto_3
    if-eqz v11, :cond_a

    .line 786
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v3

    .line 787
    .restart local v3       #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v3, :cond_9

    .line 788
    invoke-interface {v3}, Lcom/lge/systemservice/core/ICliptrayService;->doCopyAnimation()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 793
    .end local v3           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    invoke-virtual {v13, v11}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 794
    const/4 v13, 0x1

    goto :goto_1

    .line 779
    :catch_0
    move-exception v5

    .line 780
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 789
    .end local v5           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 790
    .restart local v5       #e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 796
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_a
    const/4 v13, 0x0

    goto :goto_1
.end method

.method private copyImageBitmap(Landroid/graphics/Bitmap;)Z
    .locals 11
    .parameter "bitmap"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 699
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    .line 701
    .local v3, hasAlpha:Z
    invoke-direct {p0, p1, v3}, Lcom/lge/systemservice/core/CliptrayManager;->insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;

    move-result-object v4

    .line 703
    .local v4, imgUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ClipData$Item;

    invoke-direct {v5, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 704
    .local v5, item:Landroid/content/ClipData$Item;
    new-instance v0, Landroid/content/ClipData;

    const-string v8, "image"

    new-array v9, v6, [Ljava/lang/String;

    const-string v10, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v10, v9, v7

    invoke-direct {v0, v8, v9, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 706
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_1

    .line 708
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v1

    .line 709
    .local v1, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v1, :cond_0

    .line 710
    invoke-interface {v1}, Lcom/lge/systemservice/core/ICliptrayService;->doCopyAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v1           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    invoke-virtual {v7, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 718
    :goto_1
    return v6

    .line 711
    :catch_0
    move-exception v2

    .line 712
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    :cond_1
    move v6, v7

    .line 718
    goto :goto_1
.end method

.method private copyImageUri(Landroid/net/Uri;)Z
    .locals 12
    .parameter "imgUri"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 667
    const-string v9, "Cliptray Manager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copy image uri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->getSampledBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 671
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 672
    const-string v8, "Cliptray Manager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "image copy failed.. cannot decode from URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    :goto_0
    return v7

    .line 676
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    .line 678
    .local v4, isPNG:Z
    invoke-direct {p0, v0, v4}, Lcom/lge/systemservice/core/CliptrayManager;->insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;

    move-result-object v6

    .line 680
    .local v6, newUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ClipData$Item;

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 681
    .local v5, item:Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    const-string v9, "image"

    new-array v10, v8, [Ljava/lang/String;

    const-string v11, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v11, v10, v7

    invoke-direct {v1, v9, v10, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 683
    .local v1, clip:Landroid/content/ClipData;
    if-eqz v1, :cond_0

    .line 685
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v2

    .line 686
    .local v2, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v2, :cond_2

    .line 687
    invoke-interface {v2}, Lcom/lge/systemservice/core/ICliptrayService;->doCopyAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v2           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    invoke-virtual {v7, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    move v7, v8

    .line 693
    goto :goto_0

    .line 688
    :catch_0
    move-exception v3

    .line 689
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private copyScreenCapture(Landroid/net/Uri;)Z
    .locals 12
    .parameter "imgUri"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 800
    const-string v9, "Cliptray Manager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copy image uri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->getSampledBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 804
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 805
    const-string v8, "Cliptray Manager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "image copy failed.. cannot decode from URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_0
    :goto_0
    return v7

    .line 809
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    .line 811
    .local v4, isPNG:Z
    invoke-direct {p0, v0, v4}, Lcom/lge/systemservice/core/CliptrayManager;->insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;

    move-result-object v6

    .line 813
    .local v6, newUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ClipData$Item;

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 814
    .local v5, item:Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    const-string v9, "image"

    new-array v10, v8, [Ljava/lang/String;

    const-string v11, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v11, v10, v7

    invoke-direct {v1, v9, v10, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 816
    .local v1, clip:Landroid/content/ClipData;
    if-eqz v1, :cond_0

    .line 817
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v2

    .line 818
    .local v2, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    invoke-virtual {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 820
    if-eqz v2, :cond_2

    .line 821
    :try_start_0
    invoke-interface {v2}, Lcom/lge/systemservice/core/ICliptrayService;->doCopyAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    invoke-virtual {v7, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    move v7, v8

    .line 835
    goto :goto_0

    .line 822
    :catch_0
    move-exception v3

    .line 823
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 827
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_3
    if-eqz v2, :cond_2

    .line 828
    :try_start_1
    invoke-interface {v2}, Lcom/lge/systemservice/core/ICliptrayService;->showCliptrayCopiedToast()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 829
    :catch_1
    move-exception v3

    .line 830
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private copyTextOnly(Ljava/lang/String;)V
    .locals 8
    .parameter "selectedText"

    .prologue
    .line 601
    const-string v4, "Cliptray Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copy text = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, clip:Landroid/content/ClipData;
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 604
    .local v3, item:Landroid/content/ClipData$Item;
    new-instance v0, Landroid/content/ClipData;

    .end local v0           #clip:Landroid/content/ClipData;
    const-string v4, "text"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "text/plain"

    aput-object v7, v5, v6

    invoke-direct {v0, v4, v5, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 605
    .restart local v0       #clip:Landroid/content/ClipData;
    if-eqz v0, :cond_1

    .line 607
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v1

    .line 608
    .local v1, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v1, :cond_0

    .line 609
    invoke-interface {v1}, Lcom/lge/systemservice/core/ICliptrayService;->doCopyAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .end local v1           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    invoke-virtual {v4, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 615
    :cond_1
    return-void

    .line 610
    :catch_0
    move-exception v2

    .line 611
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private doCopyToCliptray(ILjava/lang/Object;)V
    .locals 6
    .parameter "type"
    .parameter "obj"

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 1075
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-nez v0, :cond_1

    .line 1115
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 1078
    .restart local p2
    :cond_1
    const-string v4, "Cliptray Manager"

    const-string v5, "doCopyToCliptray"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    .line 1081
    .local v3, isShowingCliptray:Z
    :goto_1
    const/4 v1, 0x1

    .line 1083
    .local v1, copy:Z
    packed-switch p1, :pswitch_data_0

    .line 1103
    const/4 v1, 0x0

    .line 1107
    .end local p2
    :goto_2
    if-nez v1, :cond_0

    .line 1109
    if-eqz v0, :cond_0

    .line 1110
    :try_start_0
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->showDecodeErrorToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v2

    .line 1112
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1080
    .end local v1           #copy:Z
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #isShowingCliptray:Z
    .restart local p2
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1085
    .restart local v1       #copy:Z
    .restart local v3       #isShowingCliptray:Z
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    .end local p2
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copy(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1088
    .restart local p2
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copyTextOnly(Ljava/lang/String;)V

    goto :goto_2

    .line 1091
    .restart local p2
    :pswitch_2
    check-cast p2, Landroid/net/Uri;

    .end local p2
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copyImageUri(Landroid/net/Uri;)Z

    move-result v1

    .line 1092
    goto :goto_2

    .line 1094
    .restart local p2
    :pswitch_3
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copyImageBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 1095
    goto :goto_2

    .line 1097
    .restart local p2
    :pswitch_4
    check-cast p2, Landroid/content/ClipData;

    .end local p2
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copyClipData(Landroid/content/ClipData;)Z

    move-result v1

    .line 1098
    goto :goto_2

    .line 1100
    .restart local p2
    :pswitch_5
    check-cast p2, Landroid/net/Uri;

    .end local p2
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copyScreenCapture(Landroid/net/Uri;)Z

    move-result v1

    .line 1101
    goto :goto_2

    .line 1083
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private ensureFileExists(Ljava/lang/String;)Z
    .locals 9
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 996
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 997
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1022
    :goto_0
    return v6

    .line 1002
    :cond_0
    const/16 v8, 0x2f

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1003
    .local v5, secondSlash:I
    if-ge v5, v6, :cond_1

    move v6, v7

    .line 1004
    goto :goto_0

    .line 1006
    :cond_1
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1007
    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    .line 1009
    goto :goto_0

    .line 1012
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 1013
    .local v4, parentFile:Ljava/io/File;
    if-eqz v4, :cond_3

    .line 1014
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1018
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v3

    .line 1020
    .local v3, ioe:Ljava/io/IOException;
    const-string v6, "Cliptray Manager"

    const-string v8, "File creation failed"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 1022
    goto :goto_0
.end method

.method private generateFileName(Z)Ljava/lang/String;
    .locals 3
    .parameter "isPNG"

    .prologue
    .line 985
    if-eqz p1, :cond_0

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 988
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "uri"

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v3, "Cliptray Manager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testing cliptray : current Uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :try_start_0
    iget-object v3, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 849
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 850
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 851
    :catch_0
    move-exception v1

    .line 852
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "uri"

    .prologue
    .line 618
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 619
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 620
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    return-object v1
.end method

.method private getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 11
    .parameter "context"
    .parameter "imageFile"

    .prologue
    .line 1237
    iget v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageSizeSum:I

    int-to-long v0, v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageSizeSum:I

    .line 1238
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1240
    .local v8, filePath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1245
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1248
    .local v9, id:I
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1249
    .local v6, baseUri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1257
    .end local v6           #baseUri:Landroid/net/Uri;
    .end local v9           #id:I
    :goto_0
    return-object v0

    .line 1251
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1252
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1253
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1257
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNewFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filename"

    .prologue
    .line 1152
    const-string v0, ".cliptray"

    .line 1155
    .local v0, foldername:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1156
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1158
    .local v2, path:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Android/data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1162
    new-instance v1, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    .local v1, nomedia:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1164
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1167
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1168
    const-string v3, "Cliptray Manager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image save path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-direct {p0, v2}, Lcom/lge/systemservice/core/CliptrayManager;->ensureFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1171
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create new file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1177
    .end local v1           #nomedia:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    :cond_2
    return-object v2
.end method

.method private getOrientation(Landroid/net/Uri;)I
    .locals 10
    .parameter "imgUri"

    .prologue
    const/4 v2, 0x0

    .line 1118
    const/4 v8, -0x1

    .line 1119
    .local v8, orientation:I
    const/4 v6, -0x1

    .line 1121
    .local v6, columnIndex:I
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    const-string v0, "Cliptray Manager"

    const-string v1, "file uri, return default orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1148
    .end local v8           #orientation:I
    .local v9, orientation:I
    :goto_0
    return v9

    .line 1126
    .end local v9           #orientation:I
    .restart local v8       #orientation:I
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1128
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 1129
    :try_start_0
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1130
    const-string v0, "Cliptray Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content uri, orientation columnIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    if-gez v6, :cond_2

    .line 1133
    const-string v0, "Cliptray Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation column not found, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    if-eqz v7, :cond_1

    .line 1145
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v9, v8

    .end local v8           #orientation:I
    .restart local v9       #orientation:I
    goto :goto_0

    .line 1137
    .end local v9           #orientation:I
    .restart local v8       #orientation:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1138
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1139
    const-string v0, "Cliptray Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation column found, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1144
    :cond_3
    if-eqz v7, :cond_4

    .line 1145
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v9, v8

    .line 1148
    .end local v8           #orientation:I
    .restart local v9       #orientation:I
    goto :goto_0

    .line 1144
    .end local v9           #orientation:I
    .restart local v8       #orientation:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 1145
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getOutputUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .parameter "filename"

    .prologue
    .line 1030
    const-string v0, ".cliptray"

    .line 1033
    .local v0, foldername:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1034
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1036
    .local v3, path:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Android/data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v1, imageFile:Ljava/io/File;
    const-string v4, "Cliptray Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "image save path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-direct {p0, v3}, Lcom/lge/systemservice/core/CliptrayManager;->ensureFileExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1043
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create new file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1046
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/.nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v2, nomediaFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1048
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1051
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 1054
    .end local v1           #imageFile:Ljava/io/File;
    .end local v2           #nomediaFile:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getSampledBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 862
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->getOrientation(Landroid/net/Uri;)I

    move-result v11

    .line 863
    .local v11, orientation:I
    const-string v2, "Cliptray Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image is rotated by : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 867
    .local v7, cr:Landroid/content/ContentResolver;
    if-nez v7, :cond_1

    .line 868
    const-string v2, "Cliptray Manager"

    const-string v3, "getSampledBitmapFromUri: content resolver is null, cannot copy image"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 910
    :cond_0
    :goto_0
    return-object v0

    .line 876
    :cond_1
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 877
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 879
    :try_start_0
    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 880
    .local v9, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v9, v2, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 881
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    .end local v9           #is:Ljava/io/InputStream;
    :goto_1
    iget v2, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v2, v3}, Lcom/lge/systemservice/core/CliptrayManager;->calculateInSampleSize(II)I

    move-result v2

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 890
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 891
    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 892
    .restart local v9       #is:Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v9, v2, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 893
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 901
    if-eqz v0, :cond_0

    if-lez v11, :cond_0

    .line 902
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 903
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v1, v11

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 905
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 882
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v9           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v8

    .line 883
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 894
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 895
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 896
    goto :goto_0

    .line 906
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    .restart local v9       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v8

    .line 907
    .local v8, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private final getService()Lcom/lge/systemservice/core/ICliptrayService;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    if-nez v0, :cond_0

    .line 135
    const-string v0, "cliptray"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    return-object v0
.end method

.method private insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;
    .locals 3
    .parameter "bitmap"
    .parameter "isPNG"

    .prologue
    .line 1065
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->generateFileName(Z)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, filename:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/systemservice/core/CliptrayManager;->getNewFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1067
    .local v1, newFilePath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1068
    invoke-direct {p0, p1, v1, p2}, Lcom/lge/systemservice/core/CliptrayManager;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    .line 1070
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 13
    .parameter "bitmap"
    .parameter "filepath"
    .parameter "isPNG"

    .prologue
    .line 1183
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1184
    .local v9, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1185
    .local v4, height:I
    iget v1, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    .line 1186
    .local v1, dstWidth:I
    iget v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    .line 1188
    .local v0, dstHeight:I
    iget v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    if-gt v9, v11, :cond_0

    iget v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    if-le v4, v11, :cond_1

    .line 1189
    :cond_0
    int-to-float v11, v4

    int-to-float v12, v0

    div-float v5, v11, v12

    .line 1190
    .local v5, heightRatio:F
    int-to-float v11, v9

    int-to-float v12, v1

    div-float v10, v11, v12

    .line 1191
    .local v10, widthRatio:F
    cmpl-float v11, v5, v10

    if-lez v11, :cond_3

    .line 1192
    int-to-float v11, v9

    div-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1197
    :goto_0
    const/4 v11, 0x1

    :try_start_0
    invoke-static {p1, v1, v0, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1203
    .end local v5           #heightRatio:F
    .end local v10           #widthRatio:F
    :cond_1
    :goto_1
    const/4 v8, 0x0

    .line 1204
    .local v8, success:Z
    const/4 v6, 0x0

    .line 1207
    .local v6, outstream:Ljava/io/OutputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1208
    .end local v6           #outstream:Ljava/io/OutputStream;
    .local v7, outstream:Ljava/io/OutputStream;
    if-eqz p3, :cond_4

    .line 1209
    :try_start_2
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    .line 1213
    :goto_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1217
    if-eqz v7, :cond_7

    .line 1218
    invoke-direct {p0, v7}, Lcom/lge/systemservice/core/CliptrayManager;->closeOutputStream(Ljava/io/OutputStream;)V

    move-object v6, v7

    .line 1222
    .end local v7           #outstream:Ljava/io/OutputStream;
    .restart local v6       #outstream:Ljava/io/OutputStream;
    :cond_2
    :goto_3
    if-eqz v8, :cond_6

    .line 1223
    iget-object v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11, v12}, Lcom/lge/systemservice/core/CliptrayManager;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 1225
    :goto_4
    return-object v11

    .line 1194
    .end local v6           #outstream:Ljava/io/OutputStream;
    .end local v8           #success:Z
    .restart local v5       #heightRatio:F
    .restart local v10       #widthRatio:F
    :cond_3
    int-to-float v11, v4

    div-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1198
    :catch_0
    move-exception v2

    .line 1199
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1211
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v5           #heightRatio:F
    .end local v10           #widthRatio:F
    .restart local v7       #outstream:Ljava/io/OutputStream;
    .restart local v8       #success:Z
    :cond_4
    :try_start_3
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x50

    invoke-virtual {p1, v11, v12, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v8

    goto :goto_2

    .line 1214
    .end local v7           #outstream:Ljava/io/OutputStream;
    .restart local v6       #outstream:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .line 1215
    .local v3, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1217
    if-eqz v6, :cond_2

    .line 1218
    invoke-direct {p0, v6}, Lcom/lge/systemservice/core/CliptrayManager;->closeOutputStream(Ljava/io/OutputStream;)V

    goto :goto_3

    .line 1217
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v6, :cond_5

    .line 1218
    invoke-direct {p0, v6}, Lcom/lge/systemservice/core/CliptrayManager;->closeOutputStream(Ljava/io/OutputStream;)V

    :cond_5
    throw v11

    .line 1225
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 1217
    .end local v6           #outstream:Ljava/io/OutputStream;
    .restart local v7       #outstream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7           #outstream:Ljava/io/OutputStream;
    .restart local v6       #outstream:Ljava/io/OutputStream;
    goto :goto_6

    .line 1214
    .end local v6           #outstream:Ljava/io/OutputStream;
    .restart local v7       #outstream:Ljava/io/OutputStream;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7           #outstream:Ljava/io/OutputStream;
    .restart local v6       #outstream:Ljava/io/OutputStream;
    goto :goto_5

    .end local v6           #outstream:Ljava/io/OutputStream;
    .restart local v7       #outstream:Ljava/io/OutputStream;
    :cond_7
    move-object v6, v7

    .end local v7           #outstream:Ljava/io/OutputStream;
    .restart local v6       #outstream:Ljava/io/OutputStream;
    goto :goto_3
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Z)V
    .locals 13
    .parameter "bitmap"
    .parameter "uri"
    .parameter "isPNG"

    .prologue
    .line 933
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 934
    .local v8, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 935
    .local v4, height:I
    iget v1, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    .line 936
    .local v1, dstWidth:I
    iget v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    .line 938
    .local v0, dstHeight:I
    iget v10, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    if-gt v8, v10, :cond_0

    iget v10, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    if-le v4, v10, :cond_1

    .line 939
    :cond_0
    int-to-float v10, v4

    iget v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 940
    .local v5, heightRatio:F
    int-to-float v10, v8

    iget v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    int-to-float v11, v11

    div-float v9, v10, v11

    .line 941
    .local v9, widthRatio:F
    cmpl-float v10, v5, v9

    if-lez v10, :cond_4

    .line 942
    int-to-float v10, v8

    div-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 947
    :goto_0
    const/4 v10, 0x1

    :try_start_0
    invoke-static {p1, v1, v0, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 953
    .end local v5           #heightRatio:F
    .end local v9           #widthRatio:F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    .line 954
    .local v7, success:Z
    const/4 v6, 0x0

    .line 957
    .local v6, outstream:Ljava/io/OutputStream;
    :try_start_1
    iget-object v10, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 958
    if-eqz p3, :cond_5

    .line 959
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    .line 966
    :goto_2
    if-eqz v6, :cond_2

    .line 968
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 976
    :cond_2
    :goto_3
    if-nez v7, :cond_3

    .line 979
    :cond_3
    return-void

    .line 944
    .end local v6           #outstream:Ljava/io/OutputStream;
    .end local v7           #success:Z
    .restart local v5       #heightRatio:F
    .restart local v9       #widthRatio:F
    :cond_4
    int-to-float v10, v4

    div-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v2

    .line 949
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 961
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v5           #heightRatio:F
    .end local v9           #widthRatio:F
    .restart local v6       #outstream:Ljava/io/OutputStream;
    .restart local v7       #success:Z
    :cond_5
    :try_start_3
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x50

    invoke-virtual {p1, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    goto :goto_2

    .line 970
    :catch_1
    move-exception v3

    .line 971
    .local v3, ex:Ljava/io/IOException;
    const-string v10, "Cliptray Manager"

    const-string v11, "error closing outstream"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 963
    .end local v3           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 964
    .local v3, ex:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v10, "Cliptray Manager"

    const-string v11, "error creating file"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 966
    if-eqz v6, :cond_2

    .line 968
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 970
    :catch_3
    move-exception v3

    .line 971
    .local v3, ex:Ljava/io/IOException;
    const-string v10, "Cliptray Manager"

    const-string v11, "error closing outstream"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 966
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_6

    .line 968
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 972
    :cond_6
    :goto_4
    throw v10

    .line 970
    :catch_4
    move-exception v3

    .line 971
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v11, "Cliptray Manager"

    const-string v12, "error closing outstream"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method


# virtual methods
.method public cleanClipTrayItems()Z
    .locals 3

    .prologue
    .line 655
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v1

    .line 656
    .local v1, service:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v1, :cond_0

    .line 657
    invoke-interface {v1}, Lcom/lge/systemservice/core/ICliptrayService;->cleanClipTrayItems()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    const/4 v2, 0x1

    .line 663
    .end local v1           #service:Lcom/lge/systemservice/core/ICliptrayService;
    :goto_0
    return v2

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 663
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public copyImageListToCliptray(Landroid/content/ClipData;[Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 17
    .parameter "clipHtml"
    .parameter "savedUri"
    .parameter "imageUrl"

    .prologue
    .line 262
    move-object/from16 v0, p2

    array-length v13, v0

    if-nez v13, :cond_0

    .line 263
    const/4 v13, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 264
    const-string v13, "Cliptray Manager"

    const-string v14, "copyImageListToCliptray::no image, save html text"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v4, "\ufffc"

    .line 269
    .local v4, image:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 271
    .local v6, imgLength:I
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 272
    .local v7, itemHtml:Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 274
    .local v10, styledText:Ljava/lang/CharSequence;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v11, subText:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v5, imgIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Landroid/content/ClipData;

    const-string v13, "html"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "text/html"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v16, v14, v15

    invoke-direct {v8, v13, v14, v7}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 279
    .local v8, newClipData:Landroid/content/ClipData;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    move-object/from16 v0, p2

    array-length v13, v0

    if-ge v3, v13, :cond_6

    .line 280
    if-nez v3, :cond_1

    const/4 v9, 0x0

    .line 281
    .local v9, prevIndex:I
    :goto_2
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 282
    .local v2, currIndex:I
    if-gez v2, :cond_2

    .line 283
    if-nez v3, :cond_6

    .line 284
    const-string v13, "Cliptray Manager"

    const-string v14, "image data not found!!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v2           #currIndex:I
    .end local v9           #prevIndex:I
    :cond_1
    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int v9, v13, v6

    goto :goto_2

    .line 290
    .restart local v2       #currIndex:I
    .restart local v9       #prevIndex:I
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    if-le v9, v2, :cond_4

    .line 292
    const-string v13, "Cliptray Manager"

    const-string v14, "prev index is larger than current index!!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_3
    :goto_3
    new-instance v13, Landroid/content/ClipData$Item;

    aget-object v14, p2, v3

    invoke-direct {v13, v14}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v8, v13}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 293
    :cond_4
    if-ge v9, v2, :cond_3

    .line 294
    invoke-interface {v10, v9, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 296
    .local v12, temp:Ljava/lang/CharSequence;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 297
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-interface {v12, v13, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 299
    :cond_5
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v13, Landroid/content/ClipData$Item;

    invoke-direct {v13, v12}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v13}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_3

    .line 306
    .end local v2           #currIndex:I
    .end local v9           #prevIndex:I
    .end local v12           #temp:Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ge v13, v14, :cond_8

    .line 307
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-interface {v10, v13, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 309
    .restart local v12       #temp:Ljava/lang/CharSequence;
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 310
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-interface {v12, v13, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 312
    :cond_7
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v13, Landroid/content/ClipData$Item;

    invoke-direct {v13, v12}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v13}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 316
    .end local v12           #temp:Ljava/lang/CharSequence;
    :cond_8
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public copyImageToCliptray(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 644
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 645
    return-void
.end method

.method public copyImageToCliptray(Landroid/net/Uri;)V
    .locals 1
    .parameter "imgUri"

    .prologue
    .line 221
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 222
    return-void
.end method

.method public copyScreenCaptureToCliptray(Landroid/net/Uri;)V
    .locals 1
    .parameter "imgUri"

    .prologue
    .line 248
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 249
    return-void
.end method

.method public copyTextToCliptray(Ljava/lang/String;)V
    .locals 1
    .parameter "selectedText"

    .prologue
    .line 632
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 633
    return-void
.end method

.method public copyToCliptray(Landroid/content/ClipData;)V
    .locals 1
    .parameter "clip"

    .prologue
    .line 235
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 236
    return-void
.end method

.method public copyToCliptray(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "selectedText"

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 210
    return-void
.end method

.method public getVisibility()I
    .locals 3

    .prologue
    .line 327
    const/4 v2, -0x1

    .line 329
    .local v2, visibility:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 330
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->getVisibility()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 336
    .end local v0           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_0
    :goto_0
    return v2

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public hideCliptray()V
    .locals 3

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 168
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->hideCliptraycue()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public hideCliptrayIfNeeded()V
    .locals 3

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 189
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->hideCliptrayIfNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public hideCliptraycue()V
    .locals 2

    .prologue
    .line 382
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 383
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->hideCliptraycue()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_0
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 480
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_0

    .line 482
    :try_start_0
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->isAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 487
    :goto_0
    return v2

    .line 483
    :catch_0
    move-exception v1

    .line 484
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 487
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCliptraycueShowing()Z
    .locals 3

    .prologue
    .line 399
    const/4 v2, 0x0

    .line 401
    .local v2, isShowing:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 402
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->isCliptraycueShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 407
    .end local v0           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_0
    :goto_0
    return v2

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isServiceConnected()Z
    .locals 3

    .prologue
    .line 466
    const-string v0, "Cliptray Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-boolean v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z

    return v0
.end method

.method public setInputType(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 447
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 448
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_0

    .line 449
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ICliptrayService;->setInputType(I)V

    .line 450
    :cond_0
    iput p1, p0, Lcom/lge/systemservice/core/CliptrayManager;->mCurrentInputType:I

    .line 451
    const-string v2, "Cliptray Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInputType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v0           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setInputType(Ljava/lang/String;)V
    .locals 6
    .parameter "options"

    .prologue
    .line 421
    const/4 v2, 0x0

    .line 422
    .local v2, type:I
    if-eqz p1, :cond_0

    const-string v3, "com.lge.cliptray.image"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    const/4 v2, 0x2

    .line 425
    :cond_0
    const-string v3, "Cliptray Manager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInputType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 429
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_1

    .line 430
    invoke-interface {v0, v2}, Lcom/lge/systemservice/core/ICliptrayService;->setInputType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v0           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_1
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showCliptray()V
    .locals 3

    .prologue
    .line 147
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 153
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->showCliptraycueClose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v0           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showCliptraycue()V
    .locals 2

    .prologue
    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 350
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->showCliptraycue()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v0           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_0
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showCliptraycueClose()V
    .locals 2

    .prologue
    .line 366
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 367
    .local v0, cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_0

    .line 368
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->showCliptraycueClose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v0           #cliptrayservice:Lcom/lge/systemservice/core/ICliptrayService;
    :cond_0
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
