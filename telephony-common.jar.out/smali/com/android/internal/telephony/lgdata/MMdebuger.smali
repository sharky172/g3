.class public Lcom/android/internal/telephony/lgdata/MMdebuger;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;,
        Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGWiFiHistory;,
        Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;,
        Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;,
        Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;
    }
.end annotation


# static fields
.field protected static final DEACTIVE_REQ:I = 0x3

.field protected static final DEACTIVE_RSP:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "ePDG_wifi_loss"

.field protected static final SETUP_REQ:I = 0x1

.field protected static final SETUP_RSP:I = 0x2


# instance fields
.field public LastConRadioTech:I

.field public LastPDNIPv:I

.field public LastPDNType:I

.field LteEmmErrorcode:I

.field public TotalEve:D

.field public VT_enable:Z

.field c:Ljava/util/Calendar;

.field public currentAPNId:I

.field public currentRadioTech:I

.field public lastBadPacket:D

.field public lastEve:D

.field public lastGoodPacket:D

.field public lastRssi:D

.field lastfailreasion:[I

.field lastfailreasionOfInternetPND:[I

.field lastfailreasionOnEHRPD:[I

.field lastfailreasionOnLTE:[I

.field private mConHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mEPDGEventHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mEPDGWiFiHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGWiFiHistory;",
            ">;"
        }
    .end annotation
.end field

.field public mLcurDay:I

.field public mLcurHour:I

.field public mLcurMinute:I

.field public mLcurMonth:I

.field public mLcurSecond:I

.field public mLcurYear:I

.field public mMaxSize:I

.field private mPDNFailHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mPDNFailHistoryOnLTE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;",
            ">;"
        }
    .end annotation
.end field

.field public mcurDay:I

.field public mcurHour:I

.field public mcurMinute:I

.field public mcurMonth:I

.field public mcurSecond:I

.field public mcurYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lgdata/MMdebuger;-><init>(I)V

    .line 164
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v1, 0x46

    iput v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    .line 168
    if-nez p1, :cond_0

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    .line 176
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    .line 177
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    .line 178
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    .line 179
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    .line 180
    iput v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->LteEmmErrorcode:I

    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    aput v2, v1, v0

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    aput v2, v1, v0

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    aput v2, v1, v0

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    aput v2, v1, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0           #i:I
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mEPDGWiFiHistory:Ljava/util/ArrayList;

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mEPDGEventHistory:Ljava/util/ArrayList;

    .line 193
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 237
    const-string v0, "ePDG_wifi_loss"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method


# virtual methods
.method public CleanLastfailReasion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    aput v2, v0, v2

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 552
    iput v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->LteEmmErrorcode:I

    .line 553
    return-void
.end method

.method public SetLteEmmErrorCode(I)V
    .locals 0
    .parameter "ErrorCode"

    .prologue
    .line 456
    iput p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->LteEmmErrorcode:I

    .line 457
    return-void
.end method

.method public UpdateCurrentTime()V
    .locals 2

    .prologue
    .line 345
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    .line 352
    return-void
.end method

.method public UpdateLastCurrentTime()V
    .locals 2

    .prologue
    .line 335
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurYear:I

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurMonth:I

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurDay:I

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurHour:I

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurMinute:I

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurSecond:I

    .line 342
    return-void
.end method

.method public dstoint(Ljava/lang/String;)I
    .locals 2
    .parameter "ds"

    .prologue
    const/4 v0, 0x2

    .line 556
    const-string v1, "fota"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    const/4 v0, 0x1

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 558
    :cond_1
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 560
    const-string v1, "dun"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getConnHistory(I)[I
    .locals 4
    .parameter "itemnum"

    .prologue
    .line 416
    const/16 v2, 0xb

    new-array v1, v2, [I

    .line 417
    .local v1, returnvalue:[I
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 418
    const/4 v1, 0x0

    .line 433
    .end local v1           #returnvalue:[I
    :goto_0
    return-object v1

    .line 421
    .restart local v1       #returnvalue:[I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;

    .line 422
    .local v0, binfo:Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curYear:I

    aput v3, v1, v2

    .line 423
    const/4 v2, 0x1

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curMonth:I

    aput v3, v1, v2

    .line 424
    const/4 v2, 0x2

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curDay:I

    aput v3, v1, v2

    .line 425
    const/4 v2, 0x3

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curHour:I

    aput v3, v1, v2

    .line 426
    const/4 v2, 0x4

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curMinute:I

    aput v3, v1, v2

    .line 427
    const/4 v2, 0x5

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curSecond:I

    aput v3, v1, v2

    .line 428
    const/4 v2, 0x6

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    aput v3, v1, v2

    .line 429
    const/4 v2, 0x7

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cid:I

    aput v3, v1, v2

    .line 430
    const/16 v2, 0x8

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->serialnum:I

    aput v3, v1, v2

    .line 431
    const/16 v2, 0x9

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->currRadioTech:I

    aput v3, v1, v2

    .line 432
    const/16 v2, 0xa

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->APNID:I

    aput v3, v1, v2

    goto :goto_0
.end method

.method public getLastFailreaon()[I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    return-object v0
.end method

.method public getLastFailreaonAtInternetPND()[I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    return-object v0
.end method

.method public getLastFailreaonOnEHRPD()[I
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    return-object v0
.end method

.method public getLastFailreaonOnLTE()[I
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    return-object v0
.end method

.method public getLteEmmErrorcode()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->LteEmmErrorcode:I

    return v0
.end method

.method public getTimeoutHistory(I)[I
    .locals 1
    .parameter "itemnum"

    .prologue
    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public getePDGEvent(I)[D
    .locals 5
    .parameter "itemnum"

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mEPDGEventHistory:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 292
    :goto_0
    return-object v1

    .line 277
    :cond_0
    const/16 v3, 0x8

    new-array v1, v3, [D

    .line 278
    .local v1, returnvalue:[D
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mEPDGEventHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p1, :cond_1

    move-object v1, v2

    .line 279
    goto :goto_0

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mEPDGEventHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;

    .line 284
    .local v0, eInfo:Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curYear:I

    int-to-double v3, v3

    aput-wide v3, v1, v2

    .line 285
    const/4 v2, 0x1

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curMonth:I

    int-to-double v3, v3

    aput-wide v3, v1, v2

    .line 286
    const/4 v2, 0x2

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curDay:I

    int-to-double v3, v3

    aput-wide v3, v1, v2

    .line 287
    const/4 v2, 0x3

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curHour:I

    int-to-double v3, v3

    aput-wide v3, v1, v2

    .line 288
    const/4 v2, 0x4

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curMinute:I

    int-to-double v3, v3

    aput-wide v3, v1, v2

    .line 289
    const/4 v2, 0x5

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curSecond:I

    int-to-double v3, v3

    aput-wide v3, v1, v2

    .line 290
    const/4 v2, 0x6

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->event_type:I

    int-to-double v3, v3

    aput-wide v3, v1, v2

    .line 291
    const/4 v2, 0x7

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->pdn_type:I

    int-to-double v3, v3

    aput-wide v3, v1, v2

    goto :goto_0
.end method

.method public getwifiSig(I)[D
    .locals 2
    .parameter "itemnum"

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mEPDGWiFiHistory:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 321
    :cond_0
    return-object v1
.end method

.method public saveAPNType(I)V
    .locals 0
    .parameter "apnId"

    .prologue
    .line 358
    iput p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentAPNId:I

    .line 359
    return-void
.end method

.method public saveEvent(I)V
    .locals 8
    .parameter "wifi_event"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mEPDGEventHistory:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/MMdebuger;->UpdateCurrentTime()V

    .line 265
    new-instance v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;-><init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V

    .line 266
    .local v0, eInfo:Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->pdn_type:I

    .line 267
    iput p1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->event_type:I

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mEPDGEventHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public saveEvent(II)V
    .locals 8
    .parameter "PDN_STATUS"
    .parameter "PID"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mEPDGEventHistory:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/MMdebuger;->UpdateCurrentTime()V

    .line 250
    new-instance v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;-><init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V

    .line 251
    .local v0, eInfo:Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;
    iput p2, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->pdn_type:I

    .line 252
    iput p1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->event_type:I

    .line 253
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mEPDGEventHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public saveRspHistory(III)V
    .locals 8
    .parameter "cmdtype"
    .parameter "Serial"
    .parameter "cid"

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/MMdebuger;->UpdateCurrentTime()V

    .line 397
    new-instance v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;-><init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V

    .line 400
    .local v0, binfo:Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_1

    .line 401
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    .line 407
    :goto_0
    iput p3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cid:I

    .line 408
    iput p2, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->serialnum:I

    .line 409
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentAPNId:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->APNID:I

    .line 410
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->currRadioTech:I

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    return-void

    .line 402
    :cond_1
    const/16 v1, 0x29

    if-ne p1, v1, :cond_2

    .line 403
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    goto :goto_0

    .line 405
    :cond_2
    const/16 v1, 0x63

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    goto :goto_0
.end method

.method public saveUpHistory(I)V
    .locals 8
    .parameter "Serial"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/MMdebuger;->UpdateCurrentTime()V

    .line 367
    new-instance v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;-><init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V

    .line 368
    .local v0, binfo:Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    .line 369
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cid:I

    .line 370
    iput p1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->serialnum:I

    .line 371
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentAPNId:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->APNID:I

    .line 372
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->currRadioTech:I

    .line 373
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method public savecurrenttech(I)V
    .locals 0
    .parameter "newNetworkType"

    .prologue
    .line 354
    iput p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentRadioTech:I

    .line 355
    return-void
.end method

.method public savedownHistory(II)V
    .locals 8
    .parameter "Serial"
    .parameter "cid"

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/MMdebuger;->UpdateCurrentTime()V

    .line 382
    new-instance v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;-><init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V

    .line 383
    .local v0, binfo:Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    .line 384
    iput p2, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cid:I

    .line 385
    iput p1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->serialnum:I

    .line 386
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentAPNId:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->APNID:I

    .line 387
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->currRadioTech:I

    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method public savewifiSig(IIID)V
    .locals 1
    .parameter "rssi"
    .parameter "good"
    .parameter "bad"
    .parameter "eve"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mEPDGWiFiHistory:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 210
    :cond_0
    return-void
.end method

.method public setFailHistory(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .parameter "ds"
    .parameter "ipv"
    .parameter "currRadioTech"
    .parameter "reason"
    .parameter "reasonNum"
    .parameter "dy"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_1

    .line 475
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_2

    .line 478
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 480
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/MMdebuger;->UpdateCurrentTime()V

    .line 481
    new-instance v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;-><init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V

    .line 482
    .local v0, binfo:Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;
    if-nez p6, :cond_5

    .line 483
    const/16 v1, 0x63

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    .line 487
    :goto_0
    iget v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    packed-switch v1, :pswitch_data_0

    .line 501
    :goto_1
    const-string v1, "IP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 502
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNIPv:I

    .line 509
    :cond_3
    :goto_2
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->LastConRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->RequestRadioTech:I

    .line 510
    iput p3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->ResponseRadioTech:I

    .line 511
    iput p4, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->reason:I

    .line 512
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    const/16 v1, 0xe

    if-ne p3, v1, :cond_8

    .line 515
    iget v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    packed-switch v1, :pswitch_data_1

    .line 529
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_4
    :goto_4
    return-void

    .line 485
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/MMdebuger;->dstoint(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    goto :goto_0

    .line 489
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    const/4 v2, 0x0

    aput p5, v1, v2

    goto :goto_1

    .line 492
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    const/4 v2, 0x1

    aput p5, v1, v2

    goto :goto_1

    .line 495
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    const/4 v2, 0x2

    aput p5, v1, v2

    goto :goto_1

    .line 503
    :cond_6
    const-string v1, "IPV6"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 504
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNIPv:I

    goto :goto_2

    .line 505
    :cond_7
    const-string v1, "IPV4V6"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNIPv:I

    goto :goto_2

    .line 517
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    const/4 v2, 0x0

    aput p5, v1, v2

    goto :goto_3

    .line 520
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    const/4 v2, 0x1

    aput p5, v1, v2

    .line 521
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    const/4 v2, 0x0

    aput p5, v1, v2

    goto :goto_3

    .line 524
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    const/4 v2, 0x2

    aput p5, v1, v2

    goto :goto_3

    .line 530
    :cond_8
    const/16 v1, 0xd

    if-ne p3, v1, :cond_4

    .line 531
    iget v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    packed-switch v1, :pswitch_data_2

    .line 545
    :goto_5
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 533
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    const/4 v2, 0x0

    aput p5, v1, v2

    goto :goto_5

    .line 536
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    const/4 v2, 0x1

    aput p5, v1, v2

    .line 537
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    const/4 v2, 0x1

    aput p5, v1, v2

    goto :goto_5

    .line 540
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    const/4 v2, 0x2

    aput p5, v1, v2

    goto :goto_5

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 515
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 531
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setMaxLogSize(I)V
    .locals 2
    .parameter "maxnum"

    .prologue
    const/16 v1, 0x1f4

    const/16 v0, 0xa

    .line 325
    iput p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    .line 326
    if-le p1, v1, :cond_1

    .line 327
    iput v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    if-ge p1, v0, :cond_0

    .line 329
    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    goto :goto_0
.end method

.method public setTimeoutHistory(IIIII)V
    .locals 0
    .parameter "currRadioTech"
    .parameter "reqRadioTech"
    .parameter "reqSrvState"
    .parameter "CurrSrvState"
    .parameter "apnid"

    .prologue
    .line 437
    return-void
.end method
