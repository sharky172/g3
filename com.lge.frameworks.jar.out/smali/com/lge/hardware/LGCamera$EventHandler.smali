.class Lcom/lge/hardware/LGCamera$EventHandler;
.super Landroid/os/Handler;
.source "LGCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hardware/LGCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mLGCamera:Lcom/lge/hardware/LGCamera;

.field final synthetic this$0:Lcom/lge/hardware/LGCamera;


# direct methods
.method public constructor <init>(Lcom/lge/hardware/LGCamera;Lcom/lge/hardware/LGCamera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 716
    iput-object p1, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    .line 717
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 718
    iput-object p2, p0, Lcom/lge/hardware/LGCamera$EventHandler;->mLGCamera:Lcom/lge/hardware/LGCamera;

    .line 719
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 723
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 814
    const-string v11, "LGCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown message type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 726
    :sswitch_0
    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$200(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraDataCallback;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 729
    const/4 v11, 0x5

    new-array v6, v11, [S

    .line 730
    .local v6, obt_data:[S
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [B

    move-object v1, v11

    check-cast v1, [B

    .line 738
    .local v1, byteData:[B
    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v6, v11

    .line 739
    const/4 v11, 0x1

    const/4 v12, 0x3

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    const/4 v13, 0x2

    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v6, v11

    .line 740
    const/4 v11, 0x2

    const/4 v12, 0x5

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    const/4 v13, 0x4

    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v6, v11

    .line 741
    const/4 v11, 0x3

    const/4 v12, 0x7

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    const/4 v13, 0x6

    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v6, v11

    .line 742
    const/4 v11, 0x4

    const/16 v12, 0x9

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    const/16 v13, 0x8

    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v6, v11

    .line 744
    const/4 v11, 0x5

    new-array v7, v11, [I

    .line 745
    .local v7, obt_data_i:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    const/4 v11, 0x5

    if-ge v5, v11, :cond_1

    .line 746
    aget-short v11, v6, v5

    aput v11, v7, v5

    .line 745
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 750
    :cond_1
    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$200(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraDataCallback;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v12}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v12

    invoke-interface {v11, v7, v12}, Lcom/lge/hardware/LGCamera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 756
    .end local v1           #byteData:[B
    .end local v5           #i:I
    .end local v6           #obt_data:[S
    .end local v7           #obt_data_i:[I
    :sswitch_1
    const/16 v11, 0x101

    new-array v10, v11, [I

    .line 757
    .local v10, statsdata:[I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    const/16 v11, 0x101

    if-ge v5, v11, :cond_2

    .line 758
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [B

    check-cast v11, [B

    mul-int/lit8 v12, v5, 0x4

    #calls: Lcom/lge/hardware/LGCamera;->byteToInt([BI)I
    invoke-static {v11, v12}, Lcom/lge/hardware/LGCamera;->access$300([BI)I

    move-result v11

    aput v11, v10, v5

    .line 757
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 760
    :cond_2
    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$200(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraDataCallback;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 761
    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$200(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraDataCallback;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v12}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v12

    invoke-interface {v11, v10, v12}, Lcom/lge/hardware/LGCamera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 767
    .end local v5           #i:I
    .end local v10           #statsdata:[I
    :sswitch_2
    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$400(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$ProxyDataListener;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 768
    new-instance v2, Lcom/lge/hardware/LGCamera$ProxyData;

    invoke-direct {v2}, Lcom/lge/hardware/LGCamera$ProxyData;-><init>()V

    .line 769
    .local v2, data:Lcom/lge/hardware/LGCamera$ProxyData;
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [B

    move-object v1, v11

    check-cast v1, [B

    .line 770
    .restart local v1       #byteData:[B
    const/4 v8, 0x0

    .line 771
    .local v8, ptr:I
    if-eqz v1, :cond_3

    .line 773
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptr:I
    .local v9, ptr:I
    aget-byte v11, v1, v8

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v12, v1, v8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    iput v11, v2, Lcom/lge/hardware/LGCamera$ProxyData;->val:I

    .line 775
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v11, v1, v8

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v12, v1, v8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    iput v11, v2, Lcom/lge/hardware/LGCamera$ProxyData;->conv:I

    .line 777
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v11, v1, v8

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v12, v1, v8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    iput v11, v2, Lcom/lge/hardware/LGCamera$ProxyData;->sig:I

    .line 779
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v11, v1, v8

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v12, v1, v8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    iput v11, v2, Lcom/lge/hardware/LGCamera$ProxyData;->amb:I

    .line 781
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v11, v1, v8

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    aget-byte v12, v1, v8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    iput v11, v2, Lcom/lge/hardware/LGCamera$ProxyData;->raw:I

    .line 787
    :goto_3
    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$400(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$ProxyDataListener;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v12}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v12

    invoke-interface {v11, v2, v12}, Lcom/lge/hardware/LGCamera$ProxyDataListener;->onDataListen(Lcom/lge/hardware/LGCamera$ProxyData;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 785
    :cond_3
    const/4 v11, -0x1

    iput v11, v2, Lcom/lge/hardware/LGCamera$ProxyData;->val:I

    goto :goto_3

    .line 795
    .end local v1           #byteData:[B
    .end local v2           #data:Lcom/lge/hardware/LGCamera$ProxyData;
    .end local v8           #ptr:I
    :sswitch_3
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    .line 796
    .local v0, buf:[B
    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$500(Lcom/lge/hardware/LGCamera;)I

    move-result v11

    if-lez v11, :cond_0

    array-length v11, v0

    const/16 v12, 0x8

    if-le v11, v12, :cond_0

    .line 797
    const/4 v11, 0x1

    new-array v4, v11, [B

    .line 798
    .local v4, hdr_data:[B
    const/4 v11, 0x1

    new-array v3, v11, [B

    .line 800
    .local v3, flash_data:[B
    const/4 v11, 0x0

    const/4 v12, 0x4

    aget-byte v12, v0, v12

    aput-byte v12, v4, v11

    .line 801
    const/4 v11, 0x0

    const/16 v12, 0x8

    aget-byte v12, v0, v12

    aput-byte v12, v3, v11

    .line 803
    const/4 v11, 0x0

    aget-byte v11, v0, v11

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$500(Lcom/lge/hardware/LGCamera;)I

    move-result v11

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$600(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 804
    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$600(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v12}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v12

    invoke-interface {v11, v4, v12}, Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    .line 807
    :cond_4
    const/4 v11, 0x0

    aget-byte v11, v0, v11

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$500(Lcom/lge/hardware/LGCamera;)I

    move-result v11

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$700(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 808
    iget-object v11, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    invoke-static {v11}, Lcom/lge/hardware/LGCamera;->access$700(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    #getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v12}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v12

    invoke-interface {v11, v3, v12}, Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 723
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_3
        0x5000 -> :sswitch_0
        0x8000 -> :sswitch_2
    .end sparse-switch
.end method
