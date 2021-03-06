.class Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;
.super Lcom/vzw/location/geofence/VzwGeoFenceParams;
.source "VzwLocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityAlert"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwLocationManagerService.ProximityAlert"


# instance fields
.field final mLocation:Lcom/vzw/location/VzwLocation;

.field final synthetic this$0:Lcom/vzw/location/server/VzwLocationManagerService;


# direct methods
.method public constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;DDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V
    .locals 14
    .parameter
    .parameter "latitude"
    .parameter "longitude"
    .parameter "expiration"
    .parameter "intent"
    .parameter "packageName"
    .parameter "circleParams"
    .parameter "ellipseParams"
    .parameter "polygonParams"

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    move-object v2, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 1048
    invoke-direct/range {v2 .. v13}, Lcom/vzw/location/geofence/VzwGeoFenceParams;-><init>(DDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V

    .line 1049
    new-instance v2, Lcom/vzw/location/VzwLocation;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwLocation;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mLocation:Lcom/vzw/location/VzwLocation;

    .line 1050
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mLocation:Lcom/vzw/location/VzwLocation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/vzw/location/VzwLocation;->setLatitude(D)V

    .line 1051
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mLocation:Lcom/vzw/location/VzwLocation;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/vzw/location/VzwLocation;->setLongitude(D)V

    .line 1052
    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/geofence/VzwGeoFenceParams;)V
    .locals 13
    .parameter
    .parameter "p"

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    .line 1055
    iget v1, p2, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mUid:I

    iget-wide v2, p2, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLatitude:D

    iget-wide v4, p2, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLongitude:D

    iget-wide v6, p2, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mExpiration:J

    iget-object v8, p2, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    iget-object v9, p2, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPackageName:Ljava/lang/String;

    iget-object v10, p2, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mCircleParams:Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    iget-object v11, p2, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    iget-object v12, p2, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPolygonParams:Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/vzw/location/geofence/VzwGeoFenceParams;-><init>(IDDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V

    .line 1057
    new-instance v0, Lcom/vzw/location/VzwLocation;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwLocation;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mLocation:Lcom/vzw/location/VzwLocation;

    .line 1058
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mLocation:Lcom/vzw/location/VzwLocation;

    iget-wide v1, p2, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocation;->setLatitude(D)V

    .line 1059
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mLocation:Lcom/vzw/location/VzwLocation;

    iget-wide v1, p2, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocation;->setLongitude(D)V

    .line 1060
    return-void
.end method

.method private isInEllipse(FFDDI)Z
    .locals 15
    .parameter "a"
    .parameter "b"
    .parameter "x"
    .parameter "y"
    .parameter "angle"

    .prologue
    .line 1107
    move/from16 v0, p7

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, p3

    move/from16 v0, p7

    int-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v9, v9, p5

    sub-double v1, v7, v9

    .line 1108
    .local v1, movedX:D
    move/from16 v0, p7

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v7, v7, p3

    move/from16 v0, p7

    int-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v9, v9, p5

    add-double v3, v7, v9

    .line 1109
    .local v3, movedY:D
    const-wide/high16 v7, 0x4000

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    move/from16 v0, p1

    float-to-double v9, v0

    const-wide/high16 v11, 0x4000

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4000

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    move/from16 v0, p2

    float-to-double v11, v0

    const-wide/high16 v13, 0x4000

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    div-double/2addr v9, v11

    add-double v5, v7, v9

    .line 1110
    .local v5, result:D
    const-wide/high16 v7, 0x3ff0

    cmpl-double v7, v7, v5

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isInProximityEllipse(DD)Z
    .locals 15
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 1078
    const-string v2, "VzwLocationManagerService.ProximityAlert"

    const-string v3, "[isInProximityEllipse] Entering"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v12, Lcom/vzw/location/VzwLocation;

    const-string v2, ""

    invoke-direct {v12, v2}, Lcom/vzw/location/VzwLocation;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v12, newLocation:Lcom/vzw/location/VzwLocation;
    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Lcom/vzw/location/VzwLocation;->setLatitude(D)V

    .line 1081
    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Lcom/vzw/location/VzwLocation;->setLongitude(D)V

    .line 1083
    new-instance v13, Lcom/vzw/location/VzwLocation;

    const-string v2, ""

    invoke-direct {v13, v2}, Lcom/vzw/location/VzwLocation;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v13, xLoc:Lcom/vzw/location/VzwLocation;
    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Lcom/vzw/location/VzwLocation;->setLatitude(D)V

    .line 1085
    iget-wide v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLongitude:D

    invoke-virtual {v13, v2, v3}, Lcom/vzw/location/VzwLocation;->setLongitude(D)V

    .line 1086
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mLocation:Lcom/vzw/location/VzwLocation;

    invoke-virtual {v2, v13}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-double v5, v2

    .line 1088
    .local v5, coordX:D
    new-instance v14, Lcom/vzw/location/VzwLocation;

    const-string v2, ""

    invoke-direct {v14, v2}, Lcom/vzw/location/VzwLocation;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v14, yLoc:Lcom/vzw/location/VzwLocation;
    iget-wide v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLatitude:D

    invoke-virtual {v14, v2, v3}, Lcom/vzw/location/VzwLocation;->setLatitude(D)V

    .line 1090
    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Lcom/vzw/location/VzwLocation;->setLongitude(D)V

    .line 1091
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mLocation:Lcom/vzw/location/VzwLocation;

    invoke-virtual {v2, v14}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-double v7, v2

    .line 1093
    .local v7, coordY:D
    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    iget v2, v2, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorAngle:I

    mul-int/lit8 v9, v2, -0x1

    .line 1096
    .local v9, angle:I
    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    iget v2, v2, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajor:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1097
    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    iget v3, v2, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinor:F

    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    iget v4, v2, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajor:F

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->isInEllipse(FFDDI)Z

    move-result v2

    .line 1102
    :goto_0
    return v2

    .line 1099
    :cond_0
    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    iget v3, v2, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorMin:F

    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    iget v4, v2, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajorMin:F

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->isInEllipse(FFDDI)Z

    move-result v11

    .line 1100
    .local v11, isInMin:Z
    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    iget v3, v2, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorMax:F

    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    iget v4, v2, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajorMax:F

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->isInEllipse(FFDDI)Z

    move-result v10

    .line 1101
    .local v10, isInMax:Z
    if-nez v11, :cond_1

    const/4 v2, 0x1

    if-ne v10, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 1102
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isInProximity(DD)Z
    .locals 6
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mCircleParams:Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mCircleParams:Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mLocation:Lcom/vzw/location/VzwLocation;

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->isInProximityCircle(DDLcom/vzw/location/VzwLocation;)Z

    move-result v0

    .line 1070
    :goto_0
    return v0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    if-eqz v0, :cond_1

    .line 1067
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->isInProximityEllipse(DD)Z

    move-result v0

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPolygonParams:Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPolygonParams:Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->isInPolygon(DD)Z

    move-result v0

    goto :goto_0

    .line 1073
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "[isInProximity] All params is null. Cannot proceed."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
