.class public final Lcom/android/internal/app/ProcessStats$ProcessState;
.super Lcom/android/internal/app/ProcessStats$DurationsTable;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessState"
.end annotation


# instance fields
.field mActive:Z

.field mAvgCachedKillPss:J

.field public final mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

.field mCurState:I

.field mDead:Z

.field mLastPssState:I

.field mLastPssTime:J

.field mMaxCachedKillPss:J

.field mMinCachedKillPss:J

.field mMultiPackage:Z

.field mNumActiveServices:I

.field mNumCachedKill:I

.field mNumExcessiveCpu:I

.field mNumExcessiveWake:I

.field mNumStartedServices:I

.field public final mPackage:Ljava/lang/String;

.field mPssTable:[I

.field mPssTableSize:I

.field mStartTime:J

.field public mTmpTotalTime:J

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2
    .parameter "commonProcess"
    .parameter "pkg"
    .parameter "uid"
    .parameter "name"
    .parameter "now"

    .prologue
    const/4 v1, -0x1

    .line 2422
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-direct {p0, v0, p4}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 2379
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2382
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2423
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2424
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 2425
    iput p3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 2426
    iget v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2427
    iput-wide p5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 2428
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "processStats"
    .parameter "pkg"
    .parameter "uid"
    .parameter "name"

    .prologue
    const/4 v0, -0x1

    .line 2409
    invoke-direct {p0, p1, p4}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 2379
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2382
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2410
    iput-object p0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2411
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 2412
    iput p3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 2413
    return-void
.end method

.method private addCachedKill(IJJJ)V
    .locals 4
    .parameter "num"
    .parameter "minPss"
    .parameter "avgPss"
    .parameter "maxPss"

    .prologue
    .line 2793
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    .line 2794
    iput p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 2795
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2796
    iput-wide p4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 2797
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 2809
    :goto_0
    return-void

    .line 2799
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 2800
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2802
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    cmp-long v0, p6, v0

    if-lez v0, :cond_2

    .line 2803
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 2805
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    add-int/2addr v2, p1

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 2807
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    goto :goto_0
.end method

.method private ensureNotDead()V
    .locals 3

    .prologue
    .line 2499
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-nez v0, :cond_0

    .line 2504
    :goto_0
    return-void

    .line 2502
    :cond_0
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessState dead: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " common.name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 6
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;I)",
            "Lcom/android/internal/app/ProcessStats$ProcessState;"
        }
    .end annotation

    .prologue
    .line 2838
    .local p1, pkgList:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2839
    .local v1, proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v1, :cond_0

    .line 2844
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pulling dead proc: name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " common.name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    iget-object v5, v1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    .line 2848
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_3

    .line 2852
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v2, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2853
    .local v0, pkg:Lcom/android/internal/app/ProcessStats$PackageState;
    if-nez v0, :cond_1

    .line 2854
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No existing package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for multi-proc "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2858
    :cond_1
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v3, v1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2859
    .restart local v1       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v1, :cond_2

    .line 2860
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Didn\'t create per-package process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2863
    :cond_2
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2865
    .end local v0           #pkg:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_3
    return-object v1
.end method


# virtual methods
.method add(Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 18
    .parameter "other"

    .prologue
    .line 2461
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 2462
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move/from16 v0, v17

    if-ge v0, v1, :cond_0

    .line 2463
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v16, v1, v17

    .line 2464
    .local v16, ent:I
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v1, v16, v1

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v2, v1, v3

    .line 2465
    .local v2, state:I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v3

    long-to-int v3, v3

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v6, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0, v6}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v8, 0x3

    move/from16 v0, v16

    invoke-virtual {v1, v0, v8}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v8

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v10, 0x4

    move/from16 v0, v16

    invoke-virtual {v1, v0, v10}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v12, 0x5

    move/from16 v0, v16

    invoke-virtual {v1, v0, v12}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v12

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v14, 0x6

    move/from16 v0, v16

    invoke-virtual {v1, v0, v14}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v14

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v15}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 2462
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 2473
    .end local v2           #state:I
    .end local v16           #ent:I
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2474
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2475
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_1

    .line 2476
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 2479
    :cond_1
    return-void
.end method

.method addPss(IIJJJJJJ)V
    .locals 15
    .parameter "state"
    .parameter "inCount"
    .parameter "minPss"
    .parameter "avgPss"
    .parameter "maxPss"
    .parameter "minUss"
    .parameter "avgUss"
    .parameter "maxUss"

    .prologue
    .line 2716
    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v9, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move/from16 v0, p1

    invoke-static {v8, v9, v0}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v5

    .line 2718
    .local v5, idx:I
    if-ltz v5, :cond_1

    .line 2719
    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v7, v8, v5

    .line 2729
    .local v7, off:I
    :goto_0
    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v8, v7, v8

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int v4, v8, v9

    .line 2730
    .local v4, i:I
    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-le v4, v8, :cond_2

    .line 2731
    const-string v8, "ProcessStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ProcessStat.addPSS() indicates "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v10, v10, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", passed away."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    :cond_0
    :goto_1
    return-void

    .line 2721
    .end local v4           #i:I
    .end local v7           #off:I
    :cond_1
    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v9, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iput-object v9, v8, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 2722
    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v9, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    iput v9, v8, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 2723
    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    xor-int/lit8 v9, v5, -0x1

    const/4 v10, 0x7

    move/from16 v0, p1

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v7

    .line 2724
    .restart local v7       #off:I
    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 2725
    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v8, v8, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    goto :goto_0

    .line 2734
    .restart local v4       #i:I
    :cond_2
    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    .line 2735
    .local v6, longs:[J
    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v8, v7, v8

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v5, v8, v9

    .line 2736
    add-int/lit8 v8, v5, 0x0

    aget-wide v2, v6, v8

    .line 2737
    .local v2, count:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_3

    .line 2738
    add-int/lit8 v8, v5, 0x0

    move/from16 v0, p2

    int-to-long v9, v0

    aput-wide v9, v6, v8

    .line 2739
    add-int/lit8 v8, v5, 0x1

    aput-wide p3, v6, v8

    .line 2740
    add-int/lit8 v8, v5, 0x2

    aput-wide p5, v6, v8

    .line 2741
    add-int/lit8 v8, v5, 0x3

    aput-wide p7, v6, v8

    .line 2742
    add-int/lit8 v8, v5, 0x4

    aput-wide p9, v6, v8

    .line 2743
    add-int/lit8 v8, v5, 0x5

    aput-wide p11, v6, v8

    .line 2744
    add-int/lit8 v8, v5, 0x6

    aput-wide p13, v6, v8

    goto :goto_1

    .line 2746
    :cond_3
    add-int/lit8 v8, v5, 0x0

    move/from16 v0, p2

    int-to-long v9, v0

    add-long/2addr v9, v2

    aput-wide v9, v6, v8

    .line 2747
    add-int/lit8 v8, v5, 0x1

    aget-wide v8, v6, v8

    cmp-long v8, v8, p3

    if-lez v8, :cond_4

    .line 2748
    add-int/lit8 v8, v5, 0x1

    aput-wide p3, v6, v8

    .line 2750
    :cond_4
    add-int/lit8 v8, v5, 0x2

    add-int/lit8 v9, v5, 0x2

    aget-wide v9, v6, v9

    long-to-double v9, v9

    long-to-double v11, v2

    mul-double/2addr v9, v11

    move-wide/from16 v0, p5

    long-to-double v11, v0

    move/from16 v0, p2

    int-to-double v13, v0

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    move/from16 v0, p2

    int-to-long v11, v0

    add-long/2addr v11, v2

    long-to-double v11, v11

    div-double/2addr v9, v11

    double-to-long v9, v9

    aput-wide v9, v6, v8

    .line 2753
    add-int/lit8 v8, v5, 0x3

    aget-wide v8, v6, v8

    cmp-long v8, v8, p7

    if-gez v8, :cond_5

    .line 2754
    add-int/lit8 v8, v5, 0x3

    aput-wide p7, v6, v8

    .line 2756
    :cond_5
    add-int/lit8 v8, v5, 0x4

    aget-wide v8, v6, v8

    cmp-long v8, v8, p9

    if-lez v8, :cond_6

    .line 2757
    add-int/lit8 v8, v5, 0x4

    aput-wide p9, v6, v8

    .line 2759
    :cond_6
    add-int/lit8 v8, v5, 0x5

    add-int/lit8 v9, v5, 0x5

    aget-wide v9, v6, v9

    long-to-double v9, v9

    long-to-double v11, v2

    mul-double/2addr v9, v11

    move-wide/from16 v0, p11

    long-to-double v11, v0

    move/from16 v0, p2

    int-to-double v13, v0

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    move/from16 v0, p2

    int-to-long v11, v0

    add-long/2addr v11, v2

    long-to-double v11, v11

    div-double/2addr v9, v11

    double-to-long v9, v9

    aput-wide v9, v6, v8

    .line 2762
    add-int/lit8 v8, v5, 0x6

    aget-wide v8, v6, v8

    cmp-long v8, v8, p13

    if-gez v8, :cond_0

    .line 2763
    add-int/lit8 v8, v5, 0x6

    aput-wide p13, v6, v8

    goto/16 :goto_1
.end method

.method public addPss(JJZLandroid/util/ArrayMap;)V
    .locals 19
    .parameter "pss"
    .parameter "uss"
    .parameter "always"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2687
    .local p6, pkgList:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2688
    if-nez p5, :cond_1

    .line 2689
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v3, v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    const-wide/16 v7, 0x7530

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 2712
    :cond_0
    return-void

    .line 2694
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2695
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    .line 2696
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 2701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v3, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v3, :cond_0

    .line 2705
    if-eqz p6, :cond_0

    .line 2706
    invoke-virtual/range {p6 .. p6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    .local v18, ip:I
    :goto_0
    if-ltz v18, :cond_0

    .line 2707
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 2706
    add-int/lit8 v18, v18, -0x1

    goto :goto_0
.end method

.method clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 12
    .parameter "pkg"
    .parameter "now"

    .prologue
    .line 2431
    new-instance v0, Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V

    .line 2432
    .local v0, pnew:Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats$DurationsTable;->copyDurationsTo(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 2433
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    if-eqz v1, :cond_2

    .line 2434
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 2435
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 2436
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-ge v7, v1, :cond_1

    .line 2437
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v10, v1, v7

    .line 2438
    .local v10, origEnt:I
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v1, v10, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v11, v1, v2

    .line 2439
    .local v11, type:I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x7

    invoke-virtual {v1, v7, v11, v2}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v9

    .line 2440
    .local v9, newOff:I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    or-int v2, v9, v11

    aput v2, v1, v7

    .line 2441
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    const/4 v1, 0x7

    if-ge v8, v1, :cond_0

    .line 2442
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2, v10, v8}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    invoke-virtual {v1, v9, v8, v2, v3}, Lcom/android/internal/app/ProcessStats;->setLong(IIJ)V

    .line 2441
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2436
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2445
    .end local v8           #j:I
    .end local v9           #newOff:I
    .end local v10           #origEnt:I
    .end local v11           #type:I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 2446
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 2448
    .end local v7           #i:I
    :cond_2
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2449
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2450
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 2451
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2452
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 2453
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 2454
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    iput-boolean v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 2455
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 2456
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 2457
    return-object v0
.end method

.method commitStateTime(J)V
    .locals 4
    .parameter "now"

    .prologue
    .line 2609
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2610
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v0, p1, v2

    .line 2611
    .local v0, dur:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2612
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    .line 2615
    .end local v0           #dur:J
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 2616
    return-void
.end method

.method decActiveServices(Ljava/lang/String;)V
    .locals 3
    .parameter "serviceName"

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 2639
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 2641
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 2642
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_1

    .line 2643
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proc active services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 2647
    :cond_1
    return-void
.end method

.method decStartedServices(IJLjava/lang/String;)V
    .locals 3
    .parameter "memFactor"
    .parameter "now"
    .parameter "serviceName"

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 2673
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 2675
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 2676
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    rem-int/lit8 v0, v0, 0xe

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 2677
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 2683
    :cond_1
    :goto_0
    return-void

    .line 2678
    :cond_2
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-gez v0, :cond_1

    .line 2679
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proc started services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    goto :goto_0
.end method

.method getDuration(IJ)J
    .locals 4
    .parameter "state"
    .parameter "now"

    .prologue
    .line 2869
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats$DurationsTable;->getDuration(IJ)J

    move-result-wide v0

    .line 2870
    .local v0, time:J
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v2, p1, :cond_0

    .line 2871
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    .line 2873
    :cond_0
    return-wide v0
.end method

.method getPssAverage(I)J
    .locals 4
    .parameter "state"

    .prologue
    .line 2887
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2888
    .local v0, idx:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssMaximum(I)J
    .locals 4
    .parameter "state"

    .prologue
    .line 2892
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2893
    .local v0, idx:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssMinimum(I)J
    .locals 4
    .parameter "state"

    .prologue
    .line 2882
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2883
    .local v0, idx:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssSampleCount(I)J
    .locals 4
    .parameter "state"

    .prologue
    .line 2877
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2878
    .local v0, idx:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssUssAverage(I)J
    .locals 4
    .parameter "state"

    .prologue
    .line 2902
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2903
    .local v0, idx:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssUssMaximum(I)J
    .locals 4
    .parameter "state"

    .prologue
    .line 2907
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2908
    .local v0, idx:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssUssMinimum(I)J
    .locals 4
    .parameter "state"

    .prologue
    .line 2897
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2898
    .local v0, idx:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method incActiveServices(Ljava/lang/String;)V
    .locals 1
    .parameter "serviceName"

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 2626
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 2628
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 2629
    return-void
.end method

.method incStartedServices(IJLjava/lang/String;)V
    .locals 2
    .parameter "memFactor"
    .parameter "now"
    .parameter "serviceName"

    .prologue
    .line 2656
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 2657
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 2659
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 2660
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2661
    mul-int/lit8 v0, p1, 0xe

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 2663
    :cond_1
    return-void
.end method

.method public isInUse()Z
    .locals 2

    .prologue
    .line 2563
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeActive()V
    .locals 1

    .prologue
    .line 2554
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 2556
    return-void
.end method

.method makeDead()V
    .locals 1

    .prologue
    .line 2495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    .line 2496
    return-void
.end method

.method public makeInactive()V
    .locals 1

    .prologue
    .line 2559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 2560
    return-void
.end method

.method pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 2824
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    .line 2828
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$PackageState;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2829
    .local v0, proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v0, :cond_1

    .line 2830
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Didn\'t create per-package process"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_0
    move-object v0, p0

    .line 2834
    :cond_1
    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 6
    .parameter "in"
    .parameter "fully"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2526
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 2527
    .local v0, multiPackage:Z
    :goto_0
    if-eqz p2, :cond_0

    .line 2528
    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 2531
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$DurationsTable;->readDurationsFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2550
    :cond_1
    :goto_1
    return v1

    .end local v0           #multiPackage:Z
    :cond_2
    move v0, v1

    .line 2526
    goto :goto_0

    .line 2535
    .restart local v0       #multiPackage:Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    const-string v5, "pss"

    #calls: Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    invoke-static {v3, p1, v4, v5}, Lcom/android/internal/app/ProcessStats;->access$100(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 2536
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    sget-object v4, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    if-eq v3, v4, :cond_1

    .line 2539
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    array-length v1, v1

    :cond_4
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 2540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2541
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 2543
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_5

    .line 2544
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2545
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 2546
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    :goto_2
    move v1, v2

    .line 2550
    goto :goto_1

    .line 2548
    :cond_5
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    goto :goto_2
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 9
    .parameter
    .parameter "pss"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, pkgList:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v1, 0x1

    .line 2812
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2813
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 2814
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_1

    .line 2821
    :cond_0
    return-void

    .line 2818
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, ip:I
    :goto_0
    if-ltz v8, :cond_0

    .line 2819
    invoke-direct {p0, p1, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v0

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 2818
    add-int/lit8 v8, v8, -0x1

    goto :goto_0
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2781
    .local p1, pkgList:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2782
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2783
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_1

    .line 2790
    :cond_0
    return-void

    .line 2787
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, ip:I
    :goto_0
    if-ltz v0, :cond_0

    .line 2788
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2787
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public reportExcessiveWake(Landroid/util/ArrayMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2769
    .local p1, pkgList:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2770
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2771
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_1

    .line 2778
    :cond_0
    return-void

    .line 2775
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, ip:I
    :goto_0
    if-ltz v0, :cond_0

    .line 2776
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2775
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method resetSafely(J)V
    .locals 4
    .parameter "now"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2482
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$DurationsTable;->resetDurationsSafely()V

    .line 2483
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 2484
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2485
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    .line 2486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 2487
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 2488
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2489
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2490
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 2491
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2492
    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 3
    .parameter "state"
    .parameter "memFactor"
    .parameter "now"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2577
    .local p5, pkgList:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    if-gez p1, :cond_2

    .line 2578
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-lez v1, :cond_1

    mul-int/lit8 v1, p2, 0xe

    add-int/lit8 p1, v1, 0x7

    .line 2585
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 2588
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_3

    .line 2597
    :cond_0
    return-void

    .line 2578
    :cond_1
    const/4 p1, -0x1

    goto :goto_0

    .line 2581
    :cond_2
    sget-object v1, Lcom/android/internal/app/ProcessStats;->PROCESS_STATE_TO_STATE:[I

    aget v1, v1, p1

    mul-int/lit8 v2, p2, 0xe

    add-int p1, v1, v2

    goto :goto_0

    .line 2592
    :cond_3
    if-eqz p5, :cond_0

    .line 2593
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, ip:I
    :goto_1
    if-ltz v0, :cond_0

    .line 2594
    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 2593
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method setState(IJ)V
    .locals 1
    .parameter "state"
    .parameter "now"

    .prologue
    .line 2600
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2601
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-eq v0, p1, :cond_0

    .line 2603
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 2604
    iput p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2606
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2912
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2913
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2916
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v1, p0, :cond_1

    const-string v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2918
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .locals 3
    .parameter "out"
    .parameter "now"

    .prologue
    .line 2507
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$DurationsTable;->writeDurationsToParcel(Landroid/os/Parcel;)V

    .line 2509
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-ge v0, v1, :cond_1

    .line 2513
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2510
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2507
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2515
    .restart local v0       #i:I
    :cond_1
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2516
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2517
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2518
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_2

    .line 2519
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2520
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2521
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2523
    :cond_2
    return-void
.end method
