.class public Lcom/lge/uicc/ImsiHandler;
.super Landroid/os/Handler;
.source "ImsiHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field private static final EVENT_GET_HPLMNWACT_DONE:I = 0x6e

.field private static final EVENT_GET_IMSIP_DONE_KR:I = 0x29

.field private static final EVENT_GET_IMSI_DONE_KR:I = 0x2c

.field private static final EVENT_GET_MASTER_IMSI_DONE_LGU:I = 0xc8

.field private static final EVENT_GET_MSISDN_DONE_KR:I = 0x2b

.field private static final EVENT_GET_SPON_IMSI1_DONE_LGU:I = 0xc9

.field private static final EVENT_GET_SPON_IMSI2_DONE_LGU:I = 0xca

.field private static final EVENT_GET_SPON_IMSI3_DONE_LGU:I = 0xcb

.field private static final EVENT_NETWORK_LOCK_DONE:I = 0x3

.field private static final EVENT_RIL_REQUEST_GET_IMSI_DONE:I = 0x1

.field private static final EVENT_SET_NETWORK_LOCK:I = 0x2

.field private static final MSISDN_NONALPHA_LEN:I = 0xe

.field private static final MSISDN_NUMBER_LEN:I = 0xa

.field private static mInstance:Lcom/lge/uicc/ImsiHandler;


# instance fields
.field private efHplmnwact:Ljava/lang/String;

.field private imsip:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mMessageQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

.field private masterImsi:[B

.field private msisdnNumber:[B

.field private recordsToLoad:I

.field private sumNumber:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    .line 125
    iput v3, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 131
    iput v3, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    .line 135
    iput-object v2, p0, Lcom/lge/uicc/ImsiHandler;->masterImsi:[B

    .line 67
    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/lge/uicc/SimNodeHandlerSPR;

    invoke-static {}, Lcom/lge/uicc/LGUICC;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/uicc/SimNodeHandlerSPR;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    .line 74
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "USC"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "usc.network_lock"

    const/4 v1, 0x2

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 76
    const-string v0, "[NW Lock] usc.network_lock register EVENT_SET_NETWORK_LOCK"

    invoke-static {v0}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 79
    :cond_1
    return-void
.end method

.method protected static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 585
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    if-nez v0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LGU"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    invoke-direct {v0, p1}, Lcom/lge/uicc/ImsiHandler;->dumpOplmnLGU(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method private dumpOplmnLGU(Ljava/io/PrintWriter;)V
    .locals 12
    .parameter "pw"

    .prologue
    const/16 v11, 0x66

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 565
    const-string v4, "\nLGU+ HOME OPLMN:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    iget-object v4, p0, Lcom/lge/uicc/ImsiHandler;->masterImsi:[B

    const/16 v5, 0xa

    const/16 v6, 0x1f4

    invoke-static {v4, v5, v6}, Lcom/lge/uicc/EfUtils;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, oplmnList:Ljava/lang/String;
    const/4 v0, 0x0

    .line 568
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v4, v1, 0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 569
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v11, :cond_1

    .line 581
    :cond_0
    rem-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_4

    const-string v4, ""

    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    return-void

    .line 571
    :cond_1
    const-string v4, "%c%c%c"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v8

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v9

    add-int/lit8 v6, v1, 0x3

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, plmn:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%c%c"

    new-array v6, v10, [Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x5

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v6, v8

    add-int/lit8 v7, v1, 0x4

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 574
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v11, :cond_2

    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%c"

    new-array v6, v9, [Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x2

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 576
    :cond_2
    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_3

    .line 577
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    :goto_2
    add-int/lit8 v1, v1, 0xa

    goto/16 :goto_0

    .line 579
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 581
    .end local v3           #plmn:Ljava/lang/String;
    :cond_4
    const-string v4, "\n"

    goto/16 :goto_1
.end method

.method private fetchRecordsForImsi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 138
    invoke-static {v4, v3}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 139
    .local v0, fh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_1

    .line 140
    const-string v1, "fails to get IccFileHandler !!!"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SKT"

    aput-object v2, v1, v4

    const-string v2, "KT"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    const-string v1, "fetch EF_IMSI_P, EF_MSISDN"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 147
    iget v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 148
    const/16 v1, 0x2f24

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 149
    const/16 v1, 0x6f40

    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 151
    :cond_2
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "KR"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetCountry([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    const-string v1, "fetch EF_LGU_MASTER_IMSI, EF_LGU_SPON_IMSIs"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 153
    iget v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 154
    const/16 v1, 0x2f40

    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 155
    const/16 v1, 0x2f41

    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 156
    const/16 v1, 0x2f42

    const/16 v2, 0xca

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 157
    const/16 v1, 0x2f43

    const/16 v2, 0xcb

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 159
    :cond_3
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "VZW"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "fetch EF_HPLMNWACT"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 161
    iget v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 162
    const/16 v1, 0x6f62

    const/16 v2, 0x6e

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public static handleGetImsiForApp(Lcom/android/internal/telephony/RIL;Ljava/lang/String;Landroid/os/Message;)Landroid/os/Message;
    .locals 3
    .parameter "ril"
    .parameter "aid"
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 82
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    if-nez v0, :cond_0

    .line 95
    .end local p2
    :goto_0
    return-object p2

    .line 88
    .restart local p2
    :cond_0
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    iget-object v0, v0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    iget-object v0, v0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 90
    const/4 p2, 0x0

    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "start loading records for IMSI"

    invoke-static {v0}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    invoke-direct {v0}, Lcom/lge/uicc/ImsiHandler;->fetchRecordsForImsi()V

    .line 94
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    iget v1, v0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 95
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    goto :goto_0
.end method

.method private isUsaOperatorExceptSPR(Ljava/lang/String;)Z
    .locals 5
    .parameter "imsi"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 464
    const-string v2, "card_provisioned"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    const-string v2, "card_operator"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, card_operator:Ljava/lang/String;
    const-string v2, "VZW3G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VZW4G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC3G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC4G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MPCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x136

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x13c

    if-gt v2, v3, :cond_1

    :cond_0
    const-string v2, "SPR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUsaOperatorExceptSPR returns true with card_operator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 476
    const/4 v1, 0x1

    .line 480
    .end local v0           #card_operator:Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsiHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsiHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsiHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logp(Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method private onRecordLoaded()V
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 377
    iget v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/uicc/ImsiHandler;->setImsiTypeForLGU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/uicc/ImsiHandler;->setCardOperator(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/uicc/ImsiHandler;->setImsiLockForSPR(Ljava/lang/String;)V

    .line 382
    invoke-direct {p0}, Lcom/lge/uicc/ImsiHandler;->setNetworkLockForUSC()V

    .line 384
    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 386
    const-string v0, "recordsForImsi < 0, programmer error suspected"

    invoke-static {v0}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    goto :goto_0
.end method

.method private returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "result"
    .parameter "exception"

    .prologue
    .line 99
    iget-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 102
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p2

    .line 103
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send saved messages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 105
    .local v1, msg:Landroid/os/Message;
    invoke-static {v1, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 106
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 108
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private setCardOperator(Ljava/lang/String;)V
    .locals 9
    .parameter "imsi"

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 392
    const-string v3, "UNKNOWN"

    .line 394
    .local v3, op:Ljava/lang/String;
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    .line 395
    .local v2, mnclen:I
    add-int/lit8 v5, v2, 0x3

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 397
    .local v1, mccmnc:I
    sparse-switch v1, :sswitch_data_0

    .line 438
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "001"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "KT"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "00211"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    :cond_0
    const-string v3, "TEST"

    .line 446
    :cond_1
    :goto_0
    const-string v5, "card_provisioned"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 447
    const-string v5, "card_provisioned"

    const-string v6, "yes"

    invoke-static {v5, v6}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 449
    :cond_2
    const-string v5, "card_operator"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 450
    const-string v5, "card_operator"

    invoke-static {v5, v3}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 452
    :cond_3
    const-string v5, "card_operator"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, card_operator:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set to property ril.card_operator : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 454
    const-string v5, "ril.card_operator"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v5, "card_provisioned"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, provisioned:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set to property ril.card_provisioned : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 458
    const-string v5, "ril.card_provisioned"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void

    .line 399
    .end local v0           #card_operator:Ljava/lang/String;
    .end local v4           #provisioned:Ljava/lang/String;
    :sswitch_0
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "SPR"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 400
    const-string v3, "SPR"

    goto :goto_0

    .line 404
    :sswitch_1
    const-string v3, "SKT"

    .line 405
    goto :goto_0

    .line 408
    :sswitch_2
    const-string v3, "KT"

    .line 409
    goto :goto_0

    .line 411
    :sswitch_3
    const-string v3, "LGU"

    .line 412
    goto :goto_0

    .line 414
    :sswitch_4
    const-string v3, "VZW3G"

    .line 415
    goto/16 :goto_0

    .line 417
    :sswitch_5
    const-string v3, "VZW4G"

    .line 418
    goto/16 :goto_0

    .line 420
    :sswitch_6
    const-string v3, "USC3G"

    .line 421
    goto/16 :goto_0

    .line 423
    :sswitch_7
    const-string v3, "USC4G"

    .line 424
    goto/16 :goto_0

    .line 428
    :sswitch_8
    const-string v3, "MPCS"

    .line 429
    goto/16 :goto_0

    .line 431
    :sswitch_9
    const-string v3, "DCM"

    .line 432
    goto/16 :goto_0

    .line 434
    :sswitch_a
    const-string v3, "SPR"

    .line 435
    goto/16 :goto_0

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x4fb4 -> :sswitch_4
        0xabea -> :sswitch_9
        0xafc8 -> :sswitch_0
        0xafca -> :sswitch_2
        0xafcd -> :sswitch_1
        0xafce -> :sswitch_3
        0xafd0 -> :sswitch_2
        0xafd3 -> :sswitch_1
        0x1b274 -> :sswitch_8
        0x3fac0 -> :sswitch_8
        0x4bb68 -> :sswitch_a
        0x4bfb9 -> :sswitch_6
        0x4c0b8 -> :sswitch_5
        0x4c11c -> :sswitch_7
        0x4c16c -> :sswitch_8
    .end sparse-switch
.end method

.method private setImsiLockForSPR(Ljava/lang/String;)V
    .locals 5
    .parameter "imsi"

    .prologue
    .line 485
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SPR"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    const/16 v3, 0x12d

    invoke-virtual {v2, v3}, Lcom/lge/uicc/SimNodeHandlerSPR;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, SIMLock:Ljava/lang/String;
    const-string v2, "card_operator"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, card_operator:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "TEST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 494
    const-string v2, "SIMLock by sim type"

    invoke-static {v2}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 503
    :goto_1
    const-string v2, "spr.omadm_lock"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 496
    :cond_1
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/lge/uicc/ImsiHandler;->isUsaOperatorExceptSPR(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    const-string v2, "the device will not allow an international UICC to be used, MCC of the USIM/IMSI is equal to 310"

    invoke-static {v2}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 500
    :cond_2
    const-string v2, "the device will allow an UICC to be used"

    invoke-static {v2}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setImsiTypeForLGU(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "imsi"

    .prologue
    const/4 v6, 0x0

    .line 522
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "KR"

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->targetCountry([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 561
    .end local p1
    :goto_0
    return-object p1

    .line 526
    .restart local p1
    :cond_0
    const/4 v4, 0x6

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "450069"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 527
    const-string v4, "card_provisioned"

    const-string v5, "no"

    invoke-static {v4, v5}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 528
    const-string v4, "non-provisioned UICC for LGU+"

    invoke-static {v4}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_1
    const-string v4, "lgu.home_imsi"

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, home_imsi:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 534
    const-string v4, "setImsiTypeLGU : can not decide imsi type"

    invoke-static {v4}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_2
    const-string v4, "lgu.ef_roaming.state"

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WAIT_REFRESH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 539
    const-string v4, "lgu.ef_roaming.state"

    const-string v5, "UPDATED"

    invoke-static {v4, v5}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 540
    const-string v4, "com.lge.intent.action.LGU_ROAMING_SET_FINISHED"

    invoke-static {v4}, Lcom/lge/uicc/IccTools;->broadcastIntent(Ljava/lang/String;)V

    .line 543
    :cond_3
    const-string v2, ""

    .line 544
    .local v2, imsi_type:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 545
    .local v3, mccmnc:I
    packed-switch v3, :pswitch_data_0

    .line 551
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    const/4 v4, 0x3

    if-gt v1, v4, :cond_4

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lgu.spon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_imsi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 560
    .end local v1           #i:I
    :cond_4
    :goto_2
    const-string v4, "lgu.imsi_type"

    invoke-static {v4, v2}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-object p1, v0

    .line 561
    goto/16 :goto_0

    .line 547
    :pswitch_0
    const-string v2, "HOME"

    .line 548
    goto :goto_2

    .line 551
    .restart local v1       #i:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0xafce
        :pswitch_0
    .end packed-switch
.end method

.method private setNetworkLockForUSC()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 508
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "USC"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-static {}, Lcom/lge/uicc/LGUICC;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_lock_setting_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 511
    const-string v1, "[NW Lock] NW-Lock Off in Hidden menu!!!"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :cond_2
    const-string v1, "card_operator"

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, card_operator:Ljava/lang/String;
    const-string v1, "USC4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USC3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NW Lock] NetworkLock by sim_type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 517
    const-string v1, "usc.network_lock"

    const-string v2, "yes"

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected static setup()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/lge/uicc/ImsiHandler;

    invoke-direct {v0}, Lcom/lge/uicc/ImsiHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 170
    const/4 v6, 0x1

    .line 173
    .local v6, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 174
    .local v1, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 361
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unhandled message "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 370
    .end local v1           #ar:Landroid/os/AsyncResult;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/lge/uicc/ImsiHandler;->onRecordLoaded()V

    .line 373
    :cond_1
    return-void

    .line 176
    .restart local v1       #ar:Landroid/os/AsyncResult;
    :sswitch_0
    :try_start_1
    const-string v13, "EVENT_RIL_REQUEST_GET_IMSI_DONE"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #ar:Landroid/os/AsyncResult;
    check-cast v1, Landroid/os/AsyncResult;

    .line 178
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_2

    .line 179
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error in RIL_REQUEST_GET_IMSI : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 180
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 364
    .end local v1           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 366
    .local v3, exc:Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception parsing record "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    if-eqz v6, :cond_1

    goto :goto_1

    .line 183
    .end local v3           #exc:Ljava/lang/RuntimeException;
    .restart local v1       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_3
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    .line 184
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IMSI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logp(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-lt v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xf

    if-le v13, v14, :cond_5

    .line 187
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    .line 188
    const-string v13, "invalid IMSI"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 189
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 369
    .end local v1           #ar:Landroid/os/AsyncResult;
    :catchall_0
    move-exception v13

    if-eqz v6, :cond_4

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/lge/uicc/ImsiHandler;->onRecordLoaded()V

    .line 369
    :cond_4
    throw v13

    .line 194
    .restart local v1       #ar:Landroid/os/AsyncResult;
    :cond_5
    const/4 v13, 0x1

    :try_start_4
    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "KDDI"

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v13

    if-eqz v13, :cond_0

    .line 196
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 197
    :catch_1
    move-exception v9

    .line 198
    .local v9, nfe:Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    .line 199
    const-string v13, "corrupt IMSI"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 200
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 207
    .end local v9           #nfe:Ljava/lang/NumberFormatException;
    :sswitch_1
    const-string v13, "EVENT_GET_IMSIP_DONE_KR"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 208
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_6

    .line 209
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IMSIP: Exception -can\'t read IMSIP correctly: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_6
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    move-object v0, v13

    check-cast v0, [B

    move-object v2, v0

    .line 213
    .local v2, data:[B
    const-string v13, "skt.imsi_p"

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    const-string v13, "card_operator"

    const-string v14, "SKT"

    invoke-static {v13, v14}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 218
    .end local v2           #data:[B
    :sswitch_2
    const-string v13, "EVENT_GET_MSISDN_DONE_KR"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 219
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_7

    .line 220
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MSISDN_KR Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_7
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    move-object v0, v13

    check-cast v0, [B

    move-object v2, v0

    .line 225
    .restart local v2       #data:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MSISDN-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logp(Ljava/lang/String;)V

    .line 227
    array-length v13, v2

    add-int/lit8 v13, v13, -0xe

    add-int/lit8 v13, v13, 0x2

    array-length v14, v2

    add-int/lit8 v14, v14, -0x3

    invoke-static {v2, v13, v14}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/uicc/ImsiHandler;->msisdnNumber:[B

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/uicc/ImsiHandler;->msisdnNumber:[B

    if-nez v13, :cond_8

    .line 229
    const-string v13, "msisdnNumber is Invalid"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MSISDN Number-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/uicc/ImsiHandler;->msisdnNumber:[B

    invoke-static {v14}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logp(Ljava/lang/String;)V

    .line 234
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    .line 235
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    const/16 v13, 0xa

    if-ge v5, v13, :cond_9

    .line 236
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/uicc/ImsiHandler;->msisdnNumber:[B

    aget-byte v14, v14, v5

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    .line 235
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 238
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    const/16 v14, 0x9f6

    if-ne v13, v14, :cond_b

    .line 239
    :cond_a
    const-string v13, "card_provisioned"

    const-string v14, "no"

    invoke-static {v13, v14}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 241
    :cond_b
    const-string v13, "card_provisioned"

    const-string v14, "yes"

    invoke-static {v13, v14}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 245
    .end local v2           #data:[B
    .end local v5           #i:I
    :sswitch_3
    const-string v13, "EVENT_GET_MASTER_IMSI_DONE_LGU"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 246
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_c

    .line 247
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception querying EF_MASTER_IMSI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_c
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    move-object v0, v13

    check-cast v0, [B

    move-object v2, v0

    .line 252
    .restart local v2       #data:[B
    const/4 v13, 0x0

    aget-byte v13, v2, v13

    if-nez v13, :cond_d

    .line 253
    const-string v13, "EF_MASTER_IMSI is empty!!"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_d
    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, master_imsi:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x14

    if-ge v13, v14, :cond_e

    .line 259
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid value in EF_MASTER_IMSI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_e
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/uicc/ImsiHandler;->masterImsi:[B

    .line 264
    const/4 v13, 0x5

    const/16 v14, 0x14

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, home_imsi:Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "45006"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 266
    const-string v13, "lgu.home_imsi"

    invoke-static {v13, v4}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 273
    .end local v2           #data:[B
    .end local v4           #home_imsi:Ljava/lang/String;
    .end local v8           #master_imsi:Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit16 v13, v13, -0xc9

    add-int/lit8 v5, v13, 0x1

    .line 274
    .restart local v5       #i:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_GET_SPON_IMSI"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_DONE_LGU"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 275
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_f

    .line 276
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception querying SponIMSI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_f
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    move-object v0, v13

    check-cast v0, [B

    move-object v2, v0

    .line 281
    .restart local v2       #data:[B
    const/4 v13, 0x0

    aget-byte v13, v2, v13

    if-nez v13, :cond_10

    .line 282
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EF_SPON"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_IMSI is empty!!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_10
    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v11

    .line 286
    .local v11, spon_imsi:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x14

    if-ge v13, v14, :cond_11

    .line 287
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid value in EF_SPON"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_IMSI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lgu.spon"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_imsi"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    const/16 v15, 0x14

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 295
    .end local v2           #data:[B
    .end local v5           #i:I
    .end local v11           #spon_imsi:Ljava/lang/String;
    :sswitch_5
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_12

    .line 296
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HPLMNWACT: Exception in fetching HPLMNWACT Records "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 297
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    goto/16 :goto_0

    .line 300
    :cond_12
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    move-object v0, v13

    check-cast v0, [B

    move-object v2, v0

    .line 301
    .restart local v2       #data:[B
    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    if-nez v13, :cond_13

    .line 303
    const-string v13, "HPLMNWACT is Invalid "

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    :cond_13
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EF_HPLMNWACT = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logp(Ljava/lang/String;)V

    .line 308
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MCC/MNC = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x6

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " E-UTRAN = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    const/4 v15, 0x6

    const/16 v16, 0x8

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logp(Ljava/lang/String;)V

    .line 310
    array-length v7, v2

    .line 311
    .local v7, len:I
    const/16 v13, 0x64

    if-le v7, v13, :cond_14

    .line 312
    const/16 v7, 0x64

    .line 315
    :cond_14
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v7, :cond_15

    .line 316
    aget-byte v13, v2, v5

    const/4 v14, 0x2

    if-ne v13, v14, :cond_16

    add-int/lit8 v13, v5, 0x1

    aget-byte v13, v2, v13

    const/16 v14, -0xc

    if-ne v13, v14, :cond_16

    add-int/lit8 v13, v5, 0x2

    aget-byte v13, v2, v13

    const/16 v14, 0x40

    if-ne v13, v14, :cond_16

    .line 317
    add-int/lit8 v13, v5, 0x3

    aget-byte v13, v2, v13

    and-int/lit8 v13, v13, 0x40

    const/16 v14, 0x40

    if-eq v13, v14, :cond_1a

    .line 318
    const-string v13, "card_operator"

    const-string v14, "VZW3G"

    invoke-static {v13, v14}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 319
    const-string v13, "return VZW 3G"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 336
    :cond_15
    :goto_4
    const-string v13, "hplmnwact"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 322
    :cond_16
    aget-byte v13, v2, v5

    const/4 v14, 0x2

    if-ne v13, v14, :cond_17

    add-int/lit8 v13, v5, 0x1

    aget-byte v13, v2, v13

    const/16 v14, -0xc

    if-ne v13, v14, :cond_17

    add-int/lit8 v13, v5, 0x2

    aget-byte v13, v2, v13

    const/16 v14, 0x40

    if-eq v13, v14, :cond_18

    :cond_17
    aget-byte v13, v2, v5

    const/16 v14, 0x13

    if-ne v13, v14, :cond_1a

    add-int/lit8 v13, v5, 0x1

    aget-byte v13, v2, v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1a

    add-int/lit8 v13, v5, 0x2

    aget-byte v13, v2, v13

    const/16 v14, -0x7c

    if-ne v13, v14, :cond_1a

    .line 325
    :cond_18
    add-int/lit8 v13, v5, 0x3

    aget-byte v13, v2, v13

    and-int/lit8 v13, v13, 0x40

    const/16 v14, 0x40

    if-ne v13, v14, :cond_1a

    .line 327
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x6

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "311480"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "20404"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 329
    :cond_19
    const-string v13, "card_operator"

    const-string v14, "VZW4G"

    invoke-static {v13, v14}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    const-string v13, "return VZW 4G"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 315
    :cond_1a
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_3

    .line 342
    .end local v2           #data:[B
    .end local v5           #i:I
    .end local v7           #len:I
    :sswitch_6
    const-string v13, "[NW Lock] EVENT_SET_NETWORK_LOCK & CARD_IO_ERROR"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 343
    const-string v13, "usc.network_lock"

    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/lge/uicc/LGUICC;->unregisterForConfig(Ljava/lang/String;Landroid/os/Handler;)V

    .line 344
    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v13}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v12

    .line 345
    .local v12, value:Ljava/lang/String;
    const-string v13, "gsm.sim.state"

    invoke-static {v13, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v10

    .line 347
    .local v10, ril:Lcom/android/internal/telephony/RIL;
    if-nez v10, :cond_1b

    .line 348
    const-string v13, "fails to get RIL"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :cond_1b
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/internal/telephony/RIL;->UIMPowerdownrequest(Landroid/os/Message;)V

    .line 352
    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/lge/uicc/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    .end local v10           #ril:Lcom/android/internal/telephony/RIL;
    .end local v12           #value:Ljava/lang/String;
    :sswitch_7
    const-string v13, "[NW Lock] EVENT_NETWORK_LOCK_DONE"

    invoke-static {v13}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_6
        0x3 -> :sswitch_7
        0x29 -> :sswitch_1
        0x2b -> :sswitch_2
        0x6e -> :sswitch_5
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xca -> :sswitch_4
        0xcb -> :sswitch_4
    .end sparse-switch
.end method
