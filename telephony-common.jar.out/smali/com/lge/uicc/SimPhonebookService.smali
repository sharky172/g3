.class public Lcom/lge/uicc/SimPhonebookService;
.super Lcom/lge/uicc/ISimPhonebookService$Stub;
.source "SimPhonebookService.java"

# interfaces
.implements Lcom/lge/uicc/PbmEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/SimPhonebookService$1;,
        Lcom/lge/uicc/SimPhonebookService$PbmHandler;
    }
.end annotation


# static fields
.field private static final EVENT_GET_INIT_STATE_DONE:I = 0x2

.field private static final EVENT_PBM_DELETE_DONE:I = 0xe

.field private static final EVENT_PBM_GETINFO_DONE:I = 0xb

.field private static final EVENT_PBM_READ_DONE:I = 0xc

.field private static final EVENT_PBM_WRITE_DONE:I = 0xd

.field private static final EVENT_PBREADY:I = 0x3

.field private static final EVENT_PROXY_SIM_READY:I = 0x1

.field private static final SUPPORT_GROUP:Z

.field private static mPbmService:Lcom/lge/uicc/SimPhonebookService;


# instance fields
.field private mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/uicc/SimPhonebookService;->mPbmService:Lcom/lge/uicc/SimPhonebookService;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lge/uicc/ISimPhonebookService$Stub;-><init>()V

    .line 60
    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;-><init>(Lcom/lge/uicc/SimPhonebookService;Lcom/lge/uicc/SimPhonebookService$1;)V

    iput-object v0, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    .line 62
    const-string v0, "proxy.sim_state"

    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v2, 0x1

    const-string v3, "READY"

    invoke-static {v0, v1, v2, v3}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 63
    const-string v0, "pbm_state"

    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v2, 0x3

    const-string v3, "READY"

    invoke-static {v0, v1, v2, v3}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/uicc/SimPhonebookService;)Lcom/lge/uicc/SimPhonebookService$PbmHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .parameter "number"
    .parameter "type"
    .parameter "inverse"

    .prologue
    const/16 v5, 0x2b

    .line 517
    if-nez p0, :cond_0

    .line 518
    const-string v4, ""

    .line 534
    :goto_0
    return-object v4

    .line 521
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 522
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 524
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 525
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 526
    .local v0, c:C
    if-eqz p2, :cond_2

    .line 532
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 528
    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    if-nez v1, :cond_1

    if-eq v0, v5, :cond_1

    .line 529
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 534
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static detectType(Ljava/lang/String;)I
    .locals 3
    .parameter "num"

    .prologue
    const/4 v0, 0x0

    .line 507
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v0

    .line 510
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 511
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/PbmInfo;)V
    .locals 5
    .parameter "description"
    .parameter "info"

    .prologue
    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->device:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|file_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->file_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|max_num_length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->max_num_length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|max_text_length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->max_text_length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|num_of_free_ext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->num_of_free_ext:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|num_of_tot_rec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->num_of_tot_rec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|num_of_used_rec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/PbmInfo;->num_of_used_rec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, log1:Ljava/lang/String;
    const-string v2, ""

    .line 645
    .local v2, log2:Ljava/lang/String;
    iget-object v3, p2, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    if-eqz v3, :cond_0

    .line 646
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v3, p2, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "| records_in_pb_set["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "| used_records_in_pb_set["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/lge/uicc/PbmInfo;->used_records_in_pb_set:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    .end local v0           #index:I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PbmService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PbmService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PbmService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logp(Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method private newPbmGroupRecordWithoutGroupIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;
    .locals 3
    .parameter "group"

    .prologue
    const/4 v2, 0x0

    .line 607
    new-instance v0, Lcom/lge/uicc/PbmRecord;

    invoke-direct {v0}, Lcom/lge/uicc/PbmRecord;-><init>()V

    .line 609
    .local v0, record:Lcom/lge/uicc/PbmRecord;
    const/16 v1, 0x20

    iput v1, v0, Lcom/lge/uicc/PbmRecord;->device:I

    .line 610
    iput v2, v0, Lcom/lge/uicc/PbmRecord;->sync_cnt:I

    .line 611
    iput v2, v0, Lcom/lge/uicc/PbmRecord;->type:I

    .line 612
    iput v2, v0, Lcom/lge/uicc/PbmRecord;->ad_type:I

    .line 613
    iput v2, v0, Lcom/lge/uicc/PbmRecord;->gas_id:I

    .line 614
    iput v2, v0, Lcom/lge/uicc/PbmRecord;->index:I

    .line 615
    iget-object v1, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    .line 617
    iget-object v1, v0, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 618
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    .line 620
    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->number:Ljava/lang/String;

    .line 621
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->additional_number:Ljava/lang/String;

    .line 622
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->additional_number_a:Ljava/lang/String;

    .line 623
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->additional_number_b:Ljava/lang/String;

    .line 624
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;

    .line 626
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/PbmRecord;->second_name:Ljava/lang/String;

    .line 630
    return-object v0
.end method

.method private newPbmRecordWithoutSimIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;
    .locals 10
    .parameter "entry"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 539
    new-instance v5, Lcom/lge/uicc/PbmRecord;

    invoke-direct {v5}, Lcom/lge/uicc/PbmRecord;-><init>()V

    .line 541
    .local v5, records:Lcom/lge/uicc/PbmRecord;
    iput v8, v5, Lcom/lge/uicc/PbmRecord;->device:I

    .line 542
    iput v8, v5, Lcom/lge/uicc/PbmRecord;->sync_cnt:I

    .line 543
    iput v8, v5, Lcom/lge/uicc/PbmRecord;->type:I

    .line 544
    iput v8, v5, Lcom/lge/uicc/PbmRecord;->ad_type:I

    .line 545
    iget-object v7, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    iput-object v7, v5, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    .line 547
    iget-object v7, v5, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 548
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    .line 551
    :cond_0
    iget-object v4, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mNumbers:Landroid/util/SparseArray;

    .line 552
    .local v4, numbers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 554
    .local v3, number:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 555
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/PbmRecord;->number:Ljava/lang/String;

    .line 561
    :goto_0
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/PbmRecord;->additional_number:Ljava/lang/String;

    .line 562
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/PbmRecord;->additional_number_a:Ljava/lang/String;

    .line 563
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/PbmRecord;->additional_number_b:Ljava/lang/String;

    .line 565
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 566
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 568
    .local v2, length:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 569
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #number:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 570
    .restart local v3       #number:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 571
    invoke-static {v3}, Lcom/lge/uicc/SimPhonebookService;->detectType(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/lge/uicc/PbmRecord;->ad_type:I

    .line 572
    iget v7, v5, Lcom/lge/uicc/PbmRecord;->ad_type:I

    invoke-static {v3, v7, v9}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 574
    packed-switch v1, :pswitch_data_0

    .line 568
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2
    invoke-static {v3}, Lcom/lge/uicc/SimPhonebookService;->detectType(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/lge/uicc/PbmRecord;->type:I

    .line 558
    iget v7, v5, Lcom/lge/uicc/PbmRecord;->type:I

    invoke-static {v3, v7, v9}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lge/uicc/PbmRecord;->number:Ljava/lang/String;

    goto :goto_0

    .line 576
    .restart local v1       #i:I
    .restart local v2       #length:I
    :pswitch_0
    iput-object v3, v5, Lcom/lge/uicc/PbmRecord;->additional_number:Ljava/lang/String;

    goto :goto_2

    .line 580
    :pswitch_1
    iput-object v3, v5, Lcom/lge/uicc/PbmRecord;->additional_number_a:Ljava/lang/String;

    goto :goto_2

    .line 584
    :pswitch_2
    iput-object v3, v5, Lcom/lge/uicc/PbmRecord;->additional_number_b:Ljava/lang/String;

    goto :goto_2

    .line 591
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_3
    iget-object v0, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mEmails:Landroid/util/SparseArray;

    .line 592
    .local v0, emails:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;

    .line 593
    iget-object v7, v5, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 594
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;

    .line 597
    :cond_4
    iget-object v6, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mSecondName:Landroid/util/SparseArray;

    .line 598
    .local v6, sne:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/lge/uicc/PbmRecord;->second_name:Ljava/lang/String;

    .line 599
    iget-object v7, v5, Lcom/lge/uicc/PbmRecord;->second_name:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 600
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/PbmRecord;->second_name:Ljava/lang/String;

    .line 602
    :cond_5
    iget v7, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mGroupId:I

    iput v7, v5, Lcom/lge/uicc/PbmRecord;->gas_id:I

    .line 603
    return-object v5

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static setup()V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/lge/uicc/SimPhonebookService;->mPbmService:Lcom/lge/uicc/SimPhonebookService;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/lge/uicc/SimPhonebookService;

    invoke-direct {v0}, Lcom/lge/uicc/SimPhonebookService;-><init>()V

    sput-object v0, Lcom/lge/uicc/SimPhonebookService;->mPbmService:Lcom/lge/uicc/SimPhonebookService;

    .line 55
    :cond_0
    const-string v0, "lguiccpbm"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    const-string v0, "lguiccpbm"

    sget-object v1, Lcom/lge/uicc/SimPhonebookService;->mPbmService:Lcom/lge/uicc/SimPhonebookService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 57
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteEntry(II)I
    .locals 3
    .parameter "slot"
    .parameter "simIndex"

    .prologue
    const/4 v0, 0x0

    .line 491
    monitor-enter p0

    if-gtz p2, :cond_0

    .line 492
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteEntry: invalid sim index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v1, 0x0

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->deleteRecord(III)I
    invoke-static {v0, p1, v1, p2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$700(Lcom/lge/uicc/SimPhonebookService$PbmHandler;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteGroup(II)I
    .locals 2
    .parameter "slot"
    .parameter "groupIndex"

    .prologue
    .line 499
    monitor-enter p0

    if-gtz p2, :cond_0

    .line 500
    :try_start_0
    const-string v0, "deleteGroup: gas_id MUST be greater than 0!"

    invoke-static {v0}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    const/4 v0, 0x0

    .line 503
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/16 v1, 0x20

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->deleteRecord(III)I
    invoke-static {v0, p1, v1, p2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$700(Lcom/lge/uicc/SimPhonebookService$PbmHandler;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSimPhonebookInfo(I)Lcom/lge/uicc/SimPhonebookBaseInfo;
    .locals 11
    .parameter "slot"

    .prologue
    const/4 v8, 0x0

    .line 240
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v9

    if-lt p1, v9, :cond_1

    .line 241
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSimPhonebookInfo: error: slot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v8

    .line 361
    :goto_0
    monitor-exit p0

    return-object v1

    .line 245
    :cond_1
    :try_start_1
    new-instance v1, Lcom/lge/uicc/SimPhonebookBaseInfo;

    invoke-direct {v1}, Lcom/lge/uicc/SimPhonebookBaseInfo;-><init>()V

    .line 246
    .local v1, globalInfo:Lcom/lge/uicc/SimPhonebookBaseInfo;
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 249
    .local v6, sliceInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;>;"
    const-string v9, "load ADN"

    invoke-static {v9}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 250
    iget-object v9, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v10, 0x0

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/PbmInfo;
    invoke-static {v9, p1, v10}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$400(Lcom/lge/uicc/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/PbmInfo;

    move-result-object v3

    .line 251
    .local v3, info:Lcom/lge/uicc/PbmInfo;
    if-nez v3, :cond_2

    .line 252
    const-string v9, "getSimPhonebookInfo: Fails to get ADN"

    invoke-static {v9}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V

    move-object v1, v8

    .line 253
    goto :goto_0

    .line 256
    :cond_2
    iget v9, v3, Lcom/lge/uicc/PbmInfo;->status:I

    if-nez v9, :cond_3

    iget-object v9, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    if-nez v9, :cond_4

    .line 257
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSimPhonebookInfo: ADN: status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/lge/uicc/PbmInfo;->status:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 258
    const-string v9, "ADN"

    invoke-direct {p0, v9, v3}, Lcom/lge/uicc/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/PbmInfo;)V

    move-object v1, v8

    .line 259
    goto :goto_0

    .line 262
    :cond_4
    iget v9, v3, Lcom/lge/uicc/PbmInfo;->num_of_tot_rec:I

    if-nez v9, :cond_5

    .line 263
    const-string v9, "getSimPhonebookInfo: number of total record is 0!!!"

    invoke-static {v9}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V

    move-object v1, v8

    .line 264
    goto :goto_0

    .line 267
    :cond_5
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    array-length v8, v8

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSliceCount:I

    .line 268
    const/4 v8, 0x1

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableEmailount:I

    .line 270
    const/4 v8, 0x1

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalSneCount:I

    .line 272
    const/4 v8, 0x1

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableGroupCount:I

    .line 273
    const-string v8, "GSMAlpha"

    iput-object v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameEncodingType:Ljava/lang/String;

    .line 274
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->max_text_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameMaxbyteLength:I

    .line 275
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->max_num_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNumberMaxLength:I

    .line 276
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->max_num_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mExternalNumberMaxLength:I

    .line 277
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->num_of_free_ext:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mFreeExternalNumberCount:I

    .line 278
    const-string v8, ""

    iput-object v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameEncodingType:Ljava/lang/String;

    .line 279
    const/4 v8, 0x0

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalGroupCount:I

    .line 280
    const/4 v8, 0x0

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameMaxByteLength:I

    .line 282
    const/4 v7, 0x0

    .line 283
    .local v7, totalAdn:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    array-length v8, v8

    if-ge v2, v8, :cond_6

    .line 284
    new-instance v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    invoke-direct {v5}, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;-><init>()V

    .line 285
    .local v5, slice:Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    aget v8, v8, v2

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAdnCount:I

    .line 286
    invoke-virtual {v6, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    aget v8, v8, v2

    add-int/2addr v7, v8

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 289
    .end local v5           #slice:Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_6
    iput v7, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalAdncount:I

    .line 290
    const-string v8, "onAdn"

    invoke-direct {p0, v8, v3}, Lcom/lge/uicc/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/PbmInfo;)V

    .line 293
    const-string v8, "load ANR"

    invoke-static {v8}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 294
    const/4 v4, 0x0

    .local v4, key:I
    const/16 v0, 0xf

    .local v0, efdev:I
    :goto_2
    const/16 v8, 0x16

    if-gt v0, v8, :cond_7

    .line 295
    iget-object v8, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/PbmInfo;
    invoke-static {v8, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$400(Lcom/lge/uicc/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/PbmInfo;

    move-result-object v3

    .line 296
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    .line 297
    .restart local v5       #slice:Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    if-eqz v3, :cond_7

    if-nez v5, :cond_a

    .line 310
    .end local v5           #slice:Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_7
    const-string v8, "load EMAIL"

    invoke-static {v8}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 311
    const/4 v4, 0x0

    const/4 v0, 0x7

    :goto_3
    const/16 v8, 0xe

    if-gt v0, v8, :cond_8

    .line 312
    iget-object v8, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/PbmInfo;
    invoke-static {v8, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$400(Lcom/lge/uicc/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/PbmInfo;

    move-result-object v3

    .line 313
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    .line 314
    .restart local v5       #slice:Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    if-eqz v3, :cond_8

    if-nez v5, :cond_c

    .line 328
    .end local v5           #slice:Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_8
    const-string v8, "load SNE"

    invoke-static {v8}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 329
    const/4 v4, 0x0

    const/16 v0, 0x24

    :goto_4
    const/16 v8, 0x2b

    if-gt v0, v8, :cond_9

    .line 330
    iget-object v8, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/PbmInfo;
    invoke-static {v8, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$400(Lcom/lge/uicc/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/PbmInfo;

    move-result-object v3

    .line 331
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    .line 332
    .restart local v5       #slice:Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    if-eqz v3, :cond_9

    if-nez v5, :cond_e

    .line 359
    .end local v5           #slice:Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_9
    const-string v8, "return SimPhonebookBaseInfo"

    invoke-static {v8}, Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 360
    iput-object v6, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSlices:Landroid/util/SparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 240
    .end local v0           #efdev:I
    .end local v1           #globalInfo:Lcom/lge/uicc/SimPhonebookBaseInfo;
    .end local v2           #index:I
    .end local v3           #info:Lcom/lge/uicc/PbmInfo;
    .end local v4           #key:I
    .end local v6           #sliceInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;>;"
    .end local v7           #totalAdn:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 299
    .restart local v0       #efdev:I
    .restart local v1       #globalInfo:Lcom/lge/uicc/SimPhonebookBaseInfo;
    .restart local v2       #index:I
    .restart local v3       #info:Lcom/lge/uicc/PbmInfo;
    .restart local v4       #key:I
    .restart local v5       #slice:Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    .restart local v6       #sliceInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;>;"
    .restart local v7       #totalAdn:I
    :cond_a
    const/16 v8, 0xf

    if-ne v0, v8, :cond_b

    .line 300
    const/16 v8, 0x14

    :try_start_2
    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAnrMaxLength:I

    .line 301
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->records_in_pb_set:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableAnrCount:I

    .line 303
    :cond_b
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->file_type:I

    and-int/lit8 v8, v8, 0xf

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAnrType:I

    .line 304
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->num_of_tot_rec:I

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAnrCount:I

    .line 305
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->used_records_in_pb_set:[I

    iput-object v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedAnrCount:[I

    .line 306
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAnr["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/lge/uicc/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/PbmInfo;)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 316
    :cond_c
    const/4 v8, 0x7

    if-ne v0, v8, :cond_d

    .line 317
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->max_text_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailMaxByteLength:I

    .line 318
    const-string v8, "GSM7"

    iput-object v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailencodingType:Ljava/lang/String;

    .line 320
    :cond_d
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->file_type:I

    and-int/lit8 v8, v8, 0xf

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mEmailType:I

    .line 321
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->num_of_tot_rec:I

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mEmailCount:I

    .line 322
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->used_records_in_pb_set:[I

    iput-object v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedEmailCount:[I

    .line 323
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onEmail["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/lge/uicc/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/PbmInfo;)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 334
    :cond_e
    const/16 v8, 0x24

    if-ne v0, v8, :cond_f

    .line 335
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->max_text_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneMaxByteLength:I

    .line 336
    const-string v8, "GSM7"

    iput-object v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneencodingType:Ljava/lang/String;

    .line 338
    :cond_f
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->file_type:I

    and-int/lit8 v8, v8, 0xf

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mSneType:I

    .line 339
    iget v8, v3, Lcom/lge/uicc/PbmInfo;->num_of_tot_rec:I

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mSneCount:I

    .line 340
    iget-object v8, v3, Lcom/lge/uicc/PbmInfo;->used_records_in_pb_set:[I

    iput-object v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedSneCount:[I

    .line 341
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onsne["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/lge/uicc/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/PbmInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4
.end method

.method public declared-synchronized insertEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 4
    .parameter "slot"
    .parameter "simIndex"
    .parameter "entry"

    .prologue
    const/4 v1, 0x0

    .line 429
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 430
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertEntry: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :goto_0
    monitor-exit p0

    return v1

    .line 434
    :cond_1
    if-gtz p2, :cond_2

    .line 435
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertEntry: invalid sim index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 439
    :cond_2
    :try_start_2
    invoke-direct {p0, p3}, Lcom/lge/uicc/SimPhonebookService;->newPbmRecordWithoutSimIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;

    move-result-object v0

    .line 440
    .local v0, record:Lcom/lge/uicc/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/PbmRecord;->index:I

    .line 442
    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/SimPhonebookService$PbmHandler;ILcom/lge/uicc/PbmRecord;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized insertGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 3
    .parameter "slot"
    .parameter "groupIndex"
    .parameter "group"

    .prologue
    .line 446
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 447
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertGroup: error: slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    const/4 v1, 0x0

    .line 454
    :goto_0
    monitor-exit p0

    return v1

    .line 451
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Lcom/lge/uicc/SimPhonebookService;->newPbmGroupRecordWithoutGroupIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;

    move-result-object v0

    .line 452
    .local v0, record:Lcom/lge/uicc/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/PbmRecord;->index:I

    .line 454
    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/SimPhonebookService$PbmHandler;ILcom/lge/uicc/PbmRecord;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 446
    .end local v0           #record:Lcom/lge/uicc/PbmRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readEntry(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    .locals 9
    .parameter "slot"
    .parameter "simIndex"

    .prologue
    const/4 v1, 0x0

    .line 365
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v5

    if-lt p1, v5, :cond_1

    .line 366
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readEntry: error: slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :goto_0
    monitor-exit p0

    return-object v1

    .line 370
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/4 v6, 0x0

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->readRecord(III)Lcom/lge/uicc/PbmRecord;
    invoke-static {v5, p1, v6, p2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$500(Lcom/lge/uicc/SimPhonebookService$PbmHandler;III)Lcom/lge/uicc/PbmRecord;

    move-result-object v3

    .line 371
    .local v3, record:Lcom/lge/uicc/PbmRecord;
    new-instance v1, Lcom/lge/uicc/SimPhonebookBaseEntry;

    invoke-direct {v1}, Lcom/lge/uicc/SimPhonebookBaseEntry;-><init>()V

    .line 372
    .local v1, entry:Lcom/lge/uicc/SimPhonebookBaseEntry;
    if-nez v3, :cond_2

    .line 373
    const/4 v5, 0x0

    iput v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 374
    const-string v5, ""

    iput-object v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    .line 375
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mNumbers:Landroid/util/SparseArray;

    .line 376
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mEmails:Landroid/util/SparseArray;

    .line 378
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mSecondName:Landroid/util/SparseArray;

    .line 380
    const/4 v5, 0x0

    iput v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mGroupId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    .end local v1           #entry:Lcom/lge/uicc/SimPhonebookBaseEntry;
    .end local v3           #record:Lcom/lge/uicc/PbmRecord;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 382
    .restart local v1       #entry:Lcom/lge/uicc/SimPhonebookBaseEntry;
    .restart local v3       #record:Lcom/lge/uicc/PbmRecord;
    :cond_2
    :try_start_2
    iget v5, v3, Lcom/lge/uicc/PbmRecord;->index:I

    iput v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 383
    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    if-nez v5, :cond_6

    const-string v5, ""

    :goto_1
    iput-object v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    .line 384
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 385
    .local v2, numbers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v5, 0x0

    iget-object v6, v3, Lcom/lge/uicc/PbmRecord;->number:Ljava/lang/String;

    iget v7, v3, Lcom/lge/uicc/PbmRecord;->type:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    const-string v5, ""

    iget-object v6, v3, Lcom/lge/uicc/PbmRecord;->additional_number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 387
    const/4 v5, 0x1

    iget-object v6, v3, Lcom/lge/uicc/PbmRecord;->additional_number:Ljava/lang/String;

    iget v7, v3, Lcom/lge/uicc/PbmRecord;->ad_type:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    :cond_3
    const-string v5, ""

    iget-object v6, v3, Lcom/lge/uicc/PbmRecord;->additional_number_a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 390
    const/4 v5, 0x2

    iget-object v6, v3, Lcom/lge/uicc/PbmRecord;->additional_number_a:Ljava/lang/String;

    iget v7, v3, Lcom/lge/uicc/PbmRecord;->ad_type:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    :cond_4
    const-string v5, ""

    iget-object v6, v3, Lcom/lge/uicc/PbmRecord;->additional_number_b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 393
    const/4 v5, 0x3

    iget-object v6, v3, Lcom/lge/uicc/PbmRecord;->additional_number_b:Ljava/lang/String;

    iget v7, v3, Lcom/lge/uicc/PbmRecord;->ad_type:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/lge/uicc/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    :cond_5
    iput-object v2, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mNumbers:Landroid/util/SparseArray;

    .line 396
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 397
    .local v0, emails:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v6, 0x0

    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;

    if-nez v5, :cond_7

    const-string v5, ""

    :goto_2
    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    iput-object v0, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mEmails:Landroid/util/SparseArray;

    .line 400
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 401
    .local v4, sne:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v6, 0x0

    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->second_name:Ljava/lang/String;

    if-nez v5, :cond_8

    const-string v5, ""

    :goto_3
    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    iput-object v4, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mSecondName:Landroid/util/SparseArray;

    .line 404
    iget v5, v3, Lcom/lge/uicc/PbmRecord;->gas_id:I

    iput v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mGroupId:I

    goto/16 :goto_0

    .line 383
    .end local v0           #emails:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v2           #numbers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v4           #sne:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_6
    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 397
    .restart local v0       #emails:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v2       #numbers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_7
    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->email_address:Ljava/lang/String;

    goto :goto_2

    .line 401
    .restart local v4       #sne:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_8
    iget-object v5, v3, Lcom/lge/uicc/PbmRecord;->second_name:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized readGroup(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    .locals 4
    .parameter "slot"
    .parameter "groupIndex"

    .prologue
    .line 410
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 411
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readGroup: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    const/4 v0, 0x0

    .line 425
    :goto_0
    monitor-exit p0

    return-object v0

    .line 415
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    const/16 v3, 0x20

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->readRecord(III)Lcom/lge/uicc/PbmRecord;
    invoke-static {v2, p1, v3, p2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$500(Lcom/lge/uicc/SimPhonebookService$PbmHandler;III)Lcom/lge/uicc/PbmRecord;

    move-result-object v1

    .line 416
    .local v1, record:Lcom/lge/uicc/PbmRecord;
    new-instance v0, Lcom/lge/uicc/SimPhonebookBaseEntry;

    invoke-direct {v0}, Lcom/lge/uicc/SimPhonebookBaseEntry;-><init>()V

    .line 417
    .local v0, group:Lcom/lge/uicc/SimPhonebookBaseEntry;
    if-nez v1, :cond_2

    .line 418
    const/4 v2, 0x0

    iput v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 419
    const-string v2, ""

    iput-object v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 410
    .end local v0           #group:Lcom/lge/uicc/SimPhonebookBaseEntry;
    .end local v1           #record:Lcom/lge/uicc/PbmRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 421
    .restart local v0       #group:Lcom/lge/uicc/SimPhonebookBaseEntry;
    .restart local v1       #record:Lcom/lge/uicc/PbmRecord;
    :cond_2
    :try_start_2
    iget v2, v1, Lcom/lge/uicc/PbmRecord;->index:I

    iput v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 422
    iget-object v2, v1, Lcom/lge/uicc/PbmRecord;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized updateEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 4
    .parameter "slot"
    .parameter "simIndex"
    .parameter "entry"

    .prologue
    const/4 v1, 0x0

    .line 458
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 459
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEntry: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :goto_0
    monitor-exit p0

    return v1

    .line 462
    :cond_1
    if-gtz p2, :cond_2

    .line 463
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEntry: invalid sim index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 467
    :cond_2
    :try_start_2
    invoke-direct {p0, p3}, Lcom/lge/uicc/SimPhonebookService;->newPbmRecordWithoutSimIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;

    move-result-object v0

    .line 468
    .local v0, record:Lcom/lge/uicc/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/PbmRecord;->index:I

    .line 470
    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/SimPhonebookService$PbmHandler;ILcom/lge/uicc/PbmRecord;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized updateGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 4
    .parameter "slot"
    .parameter "groupIndex"
    .parameter "group"

    .prologue
    const/4 v1, 0x0

    .line 474
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lge/uicc/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 475
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGroup: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :goto_0
    monitor-exit p0

    return v1

    .line 478
    :cond_1
    if-gtz p2, :cond_2

    .line 479
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGroup: invalid group index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 483
    :cond_2
    :try_start_2
    invoke-direct {p0, p3}, Lcom/lge/uicc/SimPhonebookService;->newPbmGroupRecordWithoutGroupIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/PbmRecord;

    move-result-object v0

    .line 484
    .local v0, record:Lcom/lge/uicc/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/PbmRecord;->index:I

    .line 486
    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    #calls: Lcom/lge/uicc/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/SimPhonebookService$PbmHandler;ILcom/lge/uicc/PbmRecord;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method
