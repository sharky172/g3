.class public Landroid/view/PalmRejectionFilter;
.super Ljava/lang/Object;
.source "PalmRejectionFilter.java"

# interfaces
.implements Landroid/view/IEventFilter;


# instance fields
.field private act:Landroid/view/IEventFilter$ReturnAct;

.field private ignore:Z

.field private mContext:Landroid/content/Context;

.field private needToRepeat:Z

.field private reportIdBits:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    .line 31
    invoke-virtual {p0}, Landroid/view/PalmRejectionFilter;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/view/PalmRejectionFilter;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    .line 38
    invoke-virtual {p0}, Landroid/view/PalmRejectionFilter;->init()V

    .line 39
    return-void
.end method


# virtual methods
.method public filtering(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 51
    const/4 v1, 0x0

    .line 53
    .local v1, isPalm:Z
    iget-boolean v4, p0, Landroid/view/PalmRejectionFilter;->ignore:Z

    if-eqz v4, :cond_1

    .line 54
    sget-object v4, Landroid/view/IEventFilter$ReturnAct;->IGNORE:Landroid/view/IEventFilter$ReturnAct;

    iput-object v4, p0, Landroid/view/PalmRejectionFilter;->act:Landroid/view/IEventFilter$ReturnAct;

    .line 55
    iget-object v4, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->clear()V

    .line 72
    :cond_0
    :goto_0
    return v6

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 58
    .local v3, pointerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    .line 60
    .local v2, p:F
    iget-object v4, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 61
    const/high16 v4, 0x3f80

    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ltz v4, :cond_2

    .line 62
    const/4 v1, 0x1

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v2           #p:F
    :cond_3
    if-eqz v1, :cond_0

    .line 67
    iput-boolean v6, p0, Landroid/view/PalmRejectionFilter;->ignore:Z

    .line 68
    sget-object v4, Landroid/view/IEventFilter$ReturnAct;->CANCEL:Landroid/view/IEventFilter$ReturnAct;

    iput-object v4, p0, Landroid/view/PalmRejectionFilter;->act:Landroid/view/IEventFilter$ReturnAct;

    goto :goto_0
.end method

.method public getAct()Landroid/view/IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/view/PalmRejectionFilter;->act:Landroid/view/IEventFilter$ReturnAct;

    return-object v0
.end method

.method public getReportMask()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    sget-object v0, Landroid/view/IEventFilter$ReturnAct;->NONE:Landroid/view/IEventFilter$ReturnAct;

    iput-object v0, p0, Landroid/view/PalmRejectionFilter;->act:Landroid/view/IEventFilter$ReturnAct;

    .line 44
    iget-object v0, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 45
    iput-boolean v1, p0, Landroid/view/PalmRejectionFilter;->needToRepeat:Z

    .line 46
    iput-boolean v1, p0, Landroid/view/PalmRejectionFilter;->ignore:Z

    .line 47
    return-void
.end method

.method public needToRepeat()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/view/PalmRejectionFilter;->needToRepeat:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PalmRejectionFilter: ignore["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/PalmRejectionFilter;->ignore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
