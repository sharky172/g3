.class public Landroid/view/GripSuppressionFilter;
.super Ljava/lang/Object;
.source "GripSuppressionFilter.java"

# interfaces
.implements Landroid/view/IEventFilter;


# instance fields
.field private final GRIP_REGION:I

.field private final MAX_VELOCITY:I

.field private final WIDTH_RATIO:F

.field private act:Landroid/view/IEventFilter$ReturnAct;

.field private gripMask:Ljava/util/BitSet;

.field mContext:Landroid/content/Context;

.field private mRegionInfo:Landroid/view/RegionInfo;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private needToRepeat:Z

.field private reportIdBits:Ljava/util/BitSet;

.field private validXLeft:I

.field private validXRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Landroid/view/IEventFilter$ReturnAct;->NONE:Landroid/view/IEventFilter$ReturnAct;

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->act:Landroid/view/IEventFilter$ReturnAct;

    .line 42
    iput-object p1, p0, Landroid/view/GripSuppressionFilter;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/GripSuppressionFilter;->GRIP_REGION:I

    .line 45
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/view/GripSuppressionFilter;->MAX_VELOCITY:I

    .line 46
    const/high16 v0, 0x4000

    iput v0, p0, Landroid/view/GripSuppressionFilter;->WIDTH_RATIO:F

    .line 48
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->reportIdBits:Ljava/util/BitSet;

    .line 49
    new-instance v0, Landroid/view/RegionInfo;

    iget v1, p0, Landroid/view/GripSuppressionFilter;->GRIP_REGION:I

    invoke-direct {v0, v1}, Landroid/view/RegionInfo;-><init>(I)V

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    .line 50
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 51
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    .line 53
    invoke-virtual {p0}, Landroid/view/GripSuppressionFilter;->init()V

    .line 54
    return-void
.end method


# virtual methods
.method public filtering(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 70
    .local v4, pointerCount:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 72
    .local v0, action:I
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 73
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 75
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clear()V

    .line 77
    const/4 v9, 0x5

    if-eq v0, v9, :cond_0

    if-nez v0, :cond_2

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 79
    .local v3, index:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 80
    .local v2, id:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v9

    float-to-int v8, v9

    .line 82
    .local v8, x:I
    iget v9, p0, Landroid/view/GripSuppressionFilter;->validXLeft:I

    if-lt v8, v9, :cond_1

    iget v9, p0, Landroid/view/GripSuppressionFilter;->validXRight:I

    if-le v8, v9, :cond_2

    .line 83
    :cond_1
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->set(I)V

    .line 86
    .end local v2           #id:I
    .end local v3           #index:I
    .end local v8           #x:I
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_7

    .line 87
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 88
    .restart local v2       #id:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v9

    float-to-int v8, v9

    .line 89
    .restart local v8       #x:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v9

    float-to-int v6, v9

    .line 90
    .local v6, widthMajor:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v9

    float-to-int v7, v9

    .line 91
    .local v7, widthMinor:I
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 93
    .local v5, velX:I
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 94
    int-to-float v9, v6

    int-to-float v10, v7

    iget v11, p0, Landroid/view/GripSuppressionFilter;->WIDTH_RATIO:F

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    iget v9, p0, Landroid/view/GripSuppressionFilter;->validXLeft:I

    if-lt v8, v9, :cond_3

    iget v9, p0, Landroid/view/GripSuppressionFilter;->validXRight:I

    if-le v8, v9, :cond_4

    :cond_3
    iget v9, p0, Landroid/view/GripSuppressionFilter;->MAX_VELOCITY:I

    if-le v5, v9, :cond_5

    .line 95
    :cond_4
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->clear(I)V

    .line 99
    :cond_5
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 100
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->set(I)V

    .line 86
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v2           #id:I
    .end local v5           #velX:I
    .end local v6           #widthMajor:I
    .end local v7           #widthMinor:I
    .end local v8           #x:I
    :cond_7
    const/4 v9, 0x6

    if-eq v0, v9, :cond_8

    if-ne v0, v12, :cond_9

    .line 105
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 106
    .restart local v3       #index:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 107
    .restart local v2       #id:I
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->clear(I)V

    .line 110
    .end local v2           #id:I
    .end local v3           #index:I
    :cond_9
    return v12
.end method

.method public getAct()Landroid/view/IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->act:Landroid/view/IEventFilter$ReturnAct;

    return-object v0
.end method

.method public getReportMask()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/view/IEventFilter$ReturnAct;->NONE:Landroid/view/IEventFilter$ReturnAct;

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->act:Landroid/view/IEventFilter$ReturnAct;

    .line 59
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GripSuppressionFilter;->needToRepeat:Z

    .line 61
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    invoke-virtual {v0}, Landroid/view/RegionInfo;->getLeftEdgeRegion()I

    move-result v0

    iput v0, p0, Landroid/view/GripSuppressionFilter;->validXLeft:I

    .line 62
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    invoke-virtual {v0}, Landroid/view/RegionInfo;->getRightEdgeRegion()I

    move-result v0

    iput v0, p0, Landroid/view/GripSuppressionFilter;->validXRight:I

    .line 63
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 64
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 65
    return-void
.end method

.method public needToRepeat()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/view/GripSuppressionFilter;->needToRepeat:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GripSuppressionFilter : region["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/GripSuppressionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
