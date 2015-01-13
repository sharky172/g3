.class Lcom/lge/hardware/XmlParseUtil;
.super Ljava/lang/Object;
.source "LGCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hardware/XmlParseUtil$ItemRunnable;
    }
.end annotation


# static fields
.field public static final CAM_CFG_DIR:Ljava/lang/String; = "/system/etc/"

.field public static final CAM_CFG_EXT:Ljava/lang/String; = ".xml"

.field public static final CAM_CFG_FILE:Ljava/lang/String; = "camera_config"

.field public static final CAM_CFG_NOT_FOUND:Ljava/lang/String; = "not found"

.field public static final CAM_CFG_PATH_DEFAULT:Ljava/lang/String; = "/system/etc/camera_config.xml"

.field public static final DEFAULT_TAG:Ljava/lang/String; = "default"

.field private static final FALSE:Ljava/lang/String; = "false"

.field public static final HDR_SUPPORTED:Ljava/lang/String; = "hdr_supported"

.field public static final ITEM_TAG:Ljava/lang/String; = "item"

.field public static final MORHPO_NIGHT_SHOT_SUPPORTED:Ljava/lang/String; = "morpho_night_shot_supported"

.field public static final NAME_ATTR:Ljava/lang/String; = "name"

.field private static final NOT_SUPPORTED:I = 0x0

.field private static final NZSL_HDR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LGCamera"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final ZSL_HDR:I = 0x2

.field public static sHDR_SUPPORTED_VALUE:I

.field public static sMORHPO_NIGHT_SHOT_SUPPORTED_VALUE:Z

.field private static sSupportedConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/hardware/XmlParseUtil$ItemRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/hardware/XmlParseUtil;->sMORHPO_NIGHT_SHOT_SUPPORTED_VALUE:Z

    .line 921
    const/4 v0, 0x0

    sput v0, Lcom/lge/hardware/XmlParseUtil;->sHDR_SUPPORTED_VALUE:I

    .line 924
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/hardware/XmlParseUtil;->sSupportedConfigMap:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 900
    invoke-static {p0}, Lcom/lge/hardware/XmlParseUtil;->isItemSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 900
    invoke-static {p0}, Lcom/lge/hardware/XmlParseUtil;->getItemSupportedType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static addFeatureSupported()V
    .locals 3

    .prologue
    .line 936
    sget-object v0, Lcom/lge/hardware/XmlParseUtil;->sSupportedConfigMap:Ljava/util/HashMap;

    const-string v1, "morpho_night_shot_supported"

    new-instance v2, Lcom/lge/hardware/XmlParseUtil$1;

    invoke-direct {v2}, Lcom/lge/hardware/XmlParseUtil$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v0, Lcom/lge/hardware/XmlParseUtil;->sSupportedConfigMap:Ljava/util/HashMap;

    const-string v1, "hdr_supported"

    new-instance v2, Lcom/lge/hardware/XmlParseUtil$2;

    invoke-direct {v2}, Lcom/lge/hardware/XmlParseUtil$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    return-void
.end method

.method private static getConfigFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 28
    .parameter "context"

    .prologue
    .line 999
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1000
    .local v4, device:Ljava/lang/String;
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1002
    .local v15, model:Ljava/lang/String;
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1003
    .local v14, metrics:Landroid/util/DisplayMetrics;
    const-string v24, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/WindowManager;

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1004
    .local v5, display:Landroid/view/Display;
    invoke-virtual {v5, v14}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1005
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1006
    .local v13, longWidth:I
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 1008
    .local v23, shortHeight:I
    const-string v2, "/system/etc/camera_config"

    .line 1009
    .local v2, configPath:Ljava/lang/String;
    const-string v16, "/system/etc/camera_config.xml"

    .line 1011
    .local v16, pathDevice:Ljava/lang/String;
    const-string v24, "LGCamera"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[LGSF] "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    new-instance v6, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v6, fileDevice:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1015
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    const-string v26, "_"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    const-string v26, " "

    const-string v27, "_"

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1017
    .local v17, pathDeviceModel:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v7, fileDeviceModel:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 1019
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1020
    .local v18, pathDeviceModelSize:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v8, fileDeviceModelSize:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1023
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1067
    .end local v7           #fileDeviceModel:Ljava/io/File;
    .end local v8           #fileDeviceModelSize:Ljava/io/File;
    .end local v17           #pathDeviceModel:Ljava/lang/String;
    .end local v18           #pathDeviceModelSize:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v22

    .line 1026
    .restart local v7       #fileDeviceModel:Ljava/io/File;
    .restart local v8       #fileDeviceModelSize:Ljava/io/File;
    .restart local v17       #pathDeviceModel:Ljava/lang/String;
    .restart local v18       #pathDeviceModelSize:Ljava/lang/String;
    :cond_1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    .line 1029
    .end local v8           #fileDeviceModelSize:Ljava/io/File;
    .end local v18           #pathDeviceModelSize:Ljava/lang/String;
    :cond_2
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1030
    .local v19, pathDeviceSize:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v9, fileDeviceSize:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1033
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    .line 1036
    :cond_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1040
    .end local v7           #fileDeviceModel:Ljava/io/File;
    .end local v9           #fileDeviceSize:Ljava/io/File;
    .end local v17           #pathDeviceModel:Ljava/lang/String;
    .end local v19           #pathDeviceSize:Ljava/lang/String;
    :cond_4
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    const-string v26, "_"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    const-string v26, " "

    const-string v27, "_"

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1042
    .local v20, pathModel:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v10, fileModel:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 1044
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1045
    .local v21, pathModelSize:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v11, fileModelSize:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1048
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1051
    :cond_5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1054
    .end local v11           #fileModelSize:Ljava/io/File;
    .end local v21           #pathModelSize:Ljava/lang/String;
    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1055
    .local v22, pathSize:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v12, fileSize:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_0

    .line 1062
    new-instance v3, Ljava/io/File;

    const-string v24, "/system/etc/camera_config.xml"

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v3, defaultConfigFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1065
    const-string v22, "/system/etc/camera_config.xml"

    goto/16 :goto_0

    .line 1067
    :cond_7
    const-string v22, "not found"

    goto/16 :goto_0
.end method

.method private static getItemSupportedType(Ljava/lang/String;)I
    .locals 2
    .parameter "itemName"

    .prologue
    .line 1119
    const-string v0, "\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "itemName"

    .prologue
    .line 1109
    const-string v0, ","

    .line 1110
    .local v0, split:Ljava/lang/String;
    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1111
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isItemSupported(Ljava/lang/String;)Z
    .locals 3
    .parameter "itemName"

    .prologue
    .line 1115
    const-string v0, "true"

    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setConfiguration(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 946
    sget-object v11, Lcom/lge/hardware/XmlParseUtil;->sSupportedConfigMap:Ljava/util/HashMap;

    if-nez v11, :cond_0

    .line 947
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sput-object v11, Lcom/lge/hardware/XmlParseUtil;->sSupportedConfigMap:Ljava/util/HashMap;

    .line 948
    invoke-static {}, Lcom/lge/hardware/XmlParseUtil;->addFeatureSupported()V

    .line 951
    :cond_0
    const/4 v7, 0x0

    .line 952
    .local v7, reader:Ljava/io/InputStreamReader;
    const/4 v10, 0x0

    .line 953
    .local v10, xpp:Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 954
    .local v1, device:Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 955
    .local v6, model:Ljava/lang/String;
    const-string v11, "LGCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "android.os.Build.DEVICE = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v11, "LGCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "android.os.Build.MODEL = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v11, "LGCamera"

    const-string v12, "Loading Config..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :try_start_0
    invoke-static {p0}, Lcom/lge/hardware/XmlParseUtil;->getConfigFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, configFilePath:Ljava/lang/String;
    const-string v11, "LGCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Config file path = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const-string v11, "not found"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 962
    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    .end local v7           #reader:Ljava/io/InputStreamReader;
    .local v8, reader:Ljava/io/InputStreamReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 964
    .local v5, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 965
    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    move-object v7, v8

    .line 967
    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8           #reader:Ljava/io/InputStreamReader;
    .restart local v7       #reader:Ljava/io/InputStreamReader;
    :cond_1
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 968
    .local v4, eventType:I
    :goto_0
    const/4 v11, 0x1

    if-eq v4, v11, :cond_5

    .line 969
    packed-switch v4, :pswitch_data_0

    .line 982
    :cond_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 983
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    goto :goto_0

    .line 971
    :pswitch_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 972
    .local v3, elementName:Ljava/lang/String;
    const-string v11, "LGCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tagName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const-string v11, "default"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 975
    invoke-static {v10}, Lcom/lge/hardware/XmlParseUtil;->setXmlItem(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 988
    if-eqz v7, :cond_3

    .line 990
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 996
    .end local v0           #configFilePath:Ljava/lang/String;
    .end local v3           #elementName:Ljava/lang/String;
    .end local v4           #eventType:I
    :cond_3
    :goto_1
    return-void

    .line 985
    :catch_0
    move-exception v9

    .line 986
    .local v9, t:Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    const-string v11, "LGCamera"

    const-string v12, "Config parsing error."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 988
    if-eqz v7, :cond_3

    .line 990
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 991
    :catch_1
    move-exception v2

    .line 992
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "LGCamera"

    const-string v12, "Config parsing : reader close error."

    .end local v9           #t:Ljava/lang/Throwable;
    :goto_3
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 988
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v7, :cond_4

    .line 990
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 988
    :cond_4
    :goto_5
    throw v11

    .line 991
    :catch_2
    move-exception v2

    .line 992
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v12, "LGCamera"

    const-string v13, "Config parsing : reader close error."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 991
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #configFilePath:Ljava/lang/String;
    .restart local v3       #elementName:Ljava/lang/String;
    .restart local v4       #eventType:I
    :catch_3
    move-exception v2

    .line 992
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "LGCamera"

    const-string v12, "Config parsing : reader close error."

    goto :goto_3

    .line 988
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #elementName:Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_3

    .line 990
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 991
    :catch_4
    move-exception v2

    .line 992
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "LGCamera"

    const-string v12, "Config parsing : reader close error."

    goto :goto_3

    .line 988
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #eventType:I
    .end local v7           #reader:Ljava/io/InputStreamReader;
    .restart local v8       #reader:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8           #reader:Ljava/io/InputStreamReader;
    .restart local v7       #reader:Ljava/io/InputStreamReader;
    goto :goto_4

    .line 985
    .end local v7           #reader:Ljava/io/InputStreamReader;
    .restart local v8       #reader:Ljava/io/InputStreamReader;
    :catch_5
    move-exception v9

    move-object v7, v8

    .end local v8           #reader:Ljava/io/InputStreamReader;
    .restart local v7       #reader:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 969
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static setItems(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 2
    .parameter "xpp"
    .parameter "itemName"

    .prologue
    .line 932
    sget-object v0, Lcom/lge/hardware/XmlParseUtil;->sSupportedConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/hardware/XmlParseUtil$ItemRunnable;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/hardware/XmlParseUtil$ItemRunnable;->run(Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method private static setXmlItem(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "xpp"

    .prologue
    .line 1072
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 1073
    .local v0, eventType:I
    const-string v1, ""

    .line 1075
    .local v1, itemName:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 1076
    packed-switch v0, :pswitch_data_0

    .line 1099
    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1100
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    goto :goto_0

    .line 1078
    :pswitch_0
    const-string v3, "item"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1079
    const/4 v3, 0x0

    const-string v4, "name"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1080
    if-nez v1, :cond_1

    .line 1106
    .end local v0           #eventType:I
    .end local v1           #itemName:Ljava/lang/String;
    :goto_2
    return-void

    .line 1083
    .restart local v0       #eventType:I
    .restart local v1       #itemName:Ljava/lang/String;
    :cond_1
    const-string v3, "morpho_night_shot_supported"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "hdr_supported"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1085
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1086
    invoke-static {p0, v1}, Lcom/lge/hardware/XmlParseUtil;->setItems(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1103
    .end local v0           #eventType:I
    .end local v1           #itemName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1104
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "LGCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getXmlItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1091
    .end local v2           #t:Ljava/lang/Throwable;
    .restart local v0       #eventType:I
    .restart local v1       #itemName:Ljava/lang/String;
    :pswitch_1
    :try_start_1
    const-string v3, "item"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 1102
    :cond_3
    const-string v3, "LGCamera"

    const-string v4, "Loading Config End"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1076
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
