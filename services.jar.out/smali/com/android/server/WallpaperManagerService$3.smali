.class Lcom/android/server/WallpaperManagerService$3;
.super Landroid/os/Handler;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$3;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 1514
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    .line 1515
    .local v15, usrId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$3;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1516
    .local v5, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_1

    .line 1574
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 1521
    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 1522
    .local v10, path:Ljava/lang/String;
    invoke-static {v10}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v8

    .line 1523
    .local v8, drmType:I
    const/16 v1, 0x10

    if-lt v8, v1, :cond_0

    const/16 v1, 0x3000

    if-gt v8, v1, :cond_0

    .line 1525
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v10, v1}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v12

    .line 1526
    .local v12, session:Lcom/lge/lgdrm/DrmContentSession;
    if-eqz v12, :cond_0

    .line 1527
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$3;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v1, v5}, Lcom/android/server/WallpaperManagerService;->access$100(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$3;->this$0:Lcom/android/server/WallpaperManagerService;

    sget-object v2, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$3;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v1, v5}, Lcom/android/server/WallpaperManagerService;->access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    goto :goto_0

    .line 1571
    .end local v12           #session:Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1535
    .restart local v12       #session:Lcom/lge/lgdrm/DrmContentSession;
    :cond_2
    const/16 v16, 0x0

    .line 1537
    .local v16, validFor:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-virtual {v12, v1, v2, v3, v4}, Lcom/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    .line 1538
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedRight(Z)Lcom/lge/lgdrm/DrmRight;

    move-result-object v11

    .line 1539
    .local v11, right:Lcom/lge/lgdrm/DrmRight;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/lge/lgdrm/DrmRight;->isUnlimited()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1540
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/lge/lgdrm/DrmRight;->getSummaryInfo(I)Ljava/lang/String;

    move-result-object v16

    .line 1543
    :cond_3
    if-eqz v16, :cond_0

    .line 1544
    const-string v1, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1545
    .local v9, list:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1546
    .local v7, count:I
    const-wide/16 v13, 0x0

    .line 1547
    .local v13, sum:J
    const/16 v17, 0x0

    .line 1548
    .local v17, value:I
    :goto_1
    if-eqz v9, :cond_8

    array-length v1, v9

    if-ge v7, v1, :cond_8

    .line 1549
    aget-object v1, v9, v7

    const-string v2, "day"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1550
    const v1, 0x15180

    mul-int v1, v1, v17

    int-to-long v1, v1

    add-long/2addr v13, v1

    .line 1560
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1551
    :cond_4
    aget-object v1, v9, v7

    const-string v2, "hour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1552
    move/from16 v0, v17

    mul-int/lit16 v1, v0, 0xe10

    int-to-long v1, v1

    add-long/2addr v13, v1

    goto :goto_2

    .line 1553
    :cond_5
    aget-object v1, v9, v7

    const-string v2, "min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1554
    mul-int/lit8 v1, v17, 0x3c

    int-to-long v1, v1

    add-long/2addr v13, v1

    goto :goto_2

    .line 1555
    :cond_6
    aget-object v1, v9, v7

    const-string v2, "sec"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1556
    add-int/lit8 v1, v17, 0x3

    int-to-long v1, v1

    add-long/2addr v13, v1

    goto :goto_2

    .line 1558
    :cond_7
    aget-object v1, v9, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    goto :goto_2

    .line 1562
    :cond_8
    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-eqz v1, :cond_0

    .line 1564
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$3;->this$0:Lcom/android/server/WallpaperManagerService;

    #getter for: Lcom/android/server/WallpaperManagerService;->mDrmHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/WallpaperManagerService;->access$300(Lcom/android/server/WallpaperManagerService;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v13

    invoke-virtual {v2, v15, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_0

    goto/16 :goto_0
.end method
