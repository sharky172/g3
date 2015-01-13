.class public Landroid/net/LinkCapabilities$Flow;
.super Ljava/lang/Object;
.source "LinkCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Flow"
.end annotation


# static fields
.field public static final FLOW_DIRECTION_RX:Ljava/lang/String; = "rx"

.field public static final FLOW_DIRECTION_TX:Ljava/lang/String; = "tx"

.field public static final FLOW_EVENT_STATUS_ACTIVATED:I = 0x1

.field public static final FLOW_EVENT_STATUS_DELETED:I = 0x3

.field public static final FLOW_EVENT_STATUS_DISABLED:I = 0x6

.field public static final FLOW_EVENT_STATUS_ENABLED:I = 0x5

.field public static final FLOW_EVENT_STATUS_MODIFIED:I = 0x2

.field public static final FLOW_EVENT_STATUS_SUSPENDED:I = 0x4


# instance fields
.field private mFlowID:I

.field private mFlowStatus:Landroid/net/LinkCapabilities$FlowState;

.field private mRxFlowDescriton:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTxFlowDescriton:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mvecRxFlowFilters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mvecTxFlowFilters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/LinkCapabilities;


# direct methods
.method public constructor <init>(Landroid/net/LinkCapabilities;I)V
    .locals 1
    .parameter
    .parameter "flowID"

    .prologue
    const/4 v0, 0x0

    .line 206
    iput-object p1, p0, Landroid/net/LinkCapabilities$Flow;->this$0:Landroid/net/LinkCapabilities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    .line 200
    iput-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    .line 202
    iput-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    .line 203
    iput-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    .line 207
    iput p2, p0, Landroid/net/LinkCapabilities$Flow;->mFlowID:I

    .line 208
    sget-object v0, Landroid/net/LinkCapabilities$FlowState;->INACTIVE:Landroid/net/LinkCapabilities$FlowState;

    iput-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mFlowStatus:Landroid/net/LinkCapabilities$FlowState;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    .line 211
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    .line 214
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    .line 215
    return-void
.end method

.method private putFlowFilter(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "idx"
    .parameter "flowDir"
    .parameter "flowFilter"

    .prologue
    .line 351
    const-string/jumbo v0, "putFlowFilter(): Not Supported because not used."

    invoke-static {v0}, Landroid/net/LinkCapabilities;->log(Ljava/lang/String;)V

    .line 352
    return-void
.end method


# virtual methods
.method public clearFlow()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 232
    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 233
    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 234
    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 235
    return-void
.end method

.method public getFlowDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "flowDir"
    .parameter "flowDesc"

    .prologue
    const/4 v0, 0x0

    .line 299
    if-nez p1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-object v0

    .line 301
    :cond_1
    const-string/jumbo v1, "tx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 302
    :cond_2
    const-string/jumbo v1, "rx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFlowDescriptions(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "flowDir"

    .prologue
    const/4 v5, 0x0

    .line 309
    if-nez p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-object v5

    .line 311
    :cond_1
    const/4 v3, 0x0

    .line 312
    .local v3, rets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "tx"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, p0, Landroid/net/LinkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    .line 316
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 318
    .local v1, firstTime:Z
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 319
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 320
    const/4 v1, 0x0

    .line 324
    :goto_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 313
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #firstTime:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v6, "rx"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v3, p0, Landroid/net/LinkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    goto :goto_1

    .line 322
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #firstTime:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_3
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 328
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getFlowFilter(ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "idx"
    .parameter "flowDir"

    .prologue
    const/4 v6, 0x0

    .line 398
    if-nez p2, :cond_0

    .line 400
    const-string v7, "getFlowFilter(): flowDir is null."

    invoke-static {v7}, Landroid/net/LinkCapabilities;->log(Ljava/lang/String;)V

    .line 444
    :goto_0
    return-object v6

    .line 403
    :cond_0
    const-string/jumbo v7, "tx"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "rx"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 405
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFlowFilter(): flowDir is abnormal value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/LinkCapabilities;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_1
    const/4 v3, 0x0

    .line 413
    .local v3, flowFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v7, "tx"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 414
    iget-object v7, p0, Landroid/net/LinkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #flowFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v3, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .restart local v3       #flowFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    if-nez v3, :cond_4

    .line 428
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFlowFilter(): TFT Vector ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/LinkCapabilities;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_3
    :try_start_1
    const-string/jumbo v7, "rx"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 417
    iget-object v7, p0, Landroid/net/LinkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #flowFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v3, Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3       #flowFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 420
    .end local v3           #flowFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "getFlowFilter(): Set flowFilter to null due to Exception"

    invoke-static {v7}, Landroid/net/LinkCapabilities;->log(Ljava/lang/String;)V

    .line 423
    const/4 v3, 0x0

    .restart local v3       #flowFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 432
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 434
    .local v2, firstTime:Z
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 435
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_5

    .line 436
    const/4 v2, 0x0

    .line 440
    :goto_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 438
    :cond_5
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 444
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getFlowFilterCount(Ljava/lang/String;)I
    .locals 2
    .parameter "flowDir"

    .prologue
    const/4 v0, 0x0

    .line 333
    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    const-string/jumbo v1, "tx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 338
    :cond_2
    const-string/jumbo v1, "rx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFlowFilters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "flowDir"

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Landroid/net/LinkCapabilities$Flow;->getFlowFilterCount(Ljava/lang/String;)I

    move-result v0

    .line 450
    .local v0, cnt:I
    const-string v2, ""

    .line 451
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1, p1}, Landroid/net/LinkCapabilities$Flow;->getFlowFilter(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_0
    return-object v2
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Landroid/net/LinkCapabilities$Flow;->mFlowID:I

    return v0
.end method

.method public getState()Landroid/net/LinkCapabilities$FlowState;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mFlowStatus:Landroid/net/LinkCapabilities$FlowState;

    return-object v0
.end method

.method public isFlowEnabled()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mFlowStatus:Landroid/net/LinkCapabilities$FlowState;

    sget-object v1, Landroid/net/LinkCapabilities$FlowState;->ENABLED:Landroid/net/LinkCapabilities$FlowState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putFlowDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "flowDir"
    .parameter "flowDesc"
    .parameter "value"

    .prologue
    .line 261
    if-nez p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string/jumbo v0, "tx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 266
    :cond_2
    const-string/jumbo v0, "rx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putFlowDescriptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "flowDir"
    .parameter "flowDescs"

    .prologue
    const/4 v8, 0x1

    .line 273
    if-nez p1, :cond_1

    .line 295
    :cond_0
    return-void

    .line 275
    :cond_1
    const/4 v3, 0x0

    .line 277
    .local v3, hmFlowDesc:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "tx"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 278
    iget-object v3, p0, Landroid/net/LinkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    .line 287
    :goto_0
    if-eqz v3, :cond_0

    .line 289
    const-string v6, ","

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 291
    .local v1, flowDesc:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, flow_desc:[Ljava/lang/String;
    array-length v6, v2

    if-le v6, v8, :cond_2

    .line 293
    const/4 v6, 0x0

    aget-object v6, v2, v6

    aget-object v7, v2, v8

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #flowDesc:Ljava/lang/String;
    .end local v2           #flow_desc:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    const-string/jumbo v6, "rx"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 281
    iget-object v3, p0, Landroid/net/LinkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public putFlowFilters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "flowDir"
    .parameter "flowFilters"

    .prologue
    const/4 v12, 0x1

    .line 356
    if-nez p1, :cond_1

    .line 358
    const-string/jumbo v10, "putFlowFilters(): flowDir is null."

    invoke-static {v10}, Landroid/net/LinkCapabilities;->log(Ljava/lang/String;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const-string/jumbo v10, "tx"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "rx"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 363
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "putFlowFilters(): flowDir is abnormal value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/LinkCapabilities;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 369
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "putFlowFilters(): flowFilters is null or empty string = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/LinkCapabilities;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_4
    const-string v10, "/"

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v2, v0, v6

    .line 375
    .local v2, flowFilter:Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v4, hmFlowFilter:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v8, :cond_6

    aget-object v9, v1, v5

    .line 379
    .local v9, tft:Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, flow_filter:[Ljava/lang/String;
    array-length v10, v3

    if-le v10, v12, :cond_5

    .line 381
    const/4 v10, 0x0

    aget-object v10, v3, v10

    aget-object v11, v3, v12

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 384
    .end local v3           #flow_filter:[Ljava/lang/String;
    .end local v9           #tft:Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_8

    .line 386
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "putFlowFilters(): hmFlowFilter size is zero for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/LinkCapabilities;->log(Ljava/lang/String;)V

    .line 373
    :cond_7
    :goto_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_1

    .line 390
    .end local v6           #i$:I
    .restart local v5       #i$:I
    :cond_8
    const-string/jumbo v10, "tx"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroid/net/LinkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 391
    :cond_9
    const-string/jumbo v10, "rx"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/net/LinkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public setState(Landroid/net/LinkCapabilities$FlowState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 245
    iput-object p1, p0, Landroid/net/LinkCapabilities$Flow;->mFlowStatus:Landroid/net/LinkCapabilities$FlowState;

    .line 246
    iget-object v0, p0, Landroid/net/LinkCapabilities$Flow;->mFlowStatus:Landroid/net/LinkCapabilities$FlowState;

    sget-object v1, Landroid/net/LinkCapabilities$FlowState;->INACTIVE:Landroid/net/LinkCapabilities$FlowState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkCapabilities$Flow;->clearFlow()V

    .line 247
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 461
    const/4 v0, 0x1

    .line 462
    .local v0, firstTime:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/LinkCapabilities$Flow;->mFlowID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/LinkCapabilities$Flow;->mFlowStatus:Landroid/net/LinkCapabilities$FlowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v2, "TxFlowDescriton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string/jumbo v2, "tx"

    invoke-virtual {p0, v2}, Landroid/net/LinkCapabilities$Flow;->getFlowDescriptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v2, "RxFlowDescriton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string/jumbo v2, "rx"

    invoke-virtual {p0, v2}, Landroid/net/LinkCapabilities$Flow;->getFlowDescriptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string v2, "TxFlowFilter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string/jumbo v2, "tx"

    invoke-virtual {p0, v2}, Landroid/net/LinkCapabilities$Flow;->getFlowFilters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v2, "RxFlowFilter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string/jumbo v2, "rx"

    invoke-virtual {p0, v2}, Landroid/net/LinkCapabilities$Flow;->getFlowFilters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
