.class Lcom/lge/uicc/IccRecordHandler$SMSPType;
.super Ljava/lang/Object;
.source "IccRecordHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/IccRecordHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SMSPType"
.end annotation


# instance fields
.field public CodeScheme:B

.field public DestAddr:[B

.field public ParamIndicator:B

.field public ProtoclID:B

.field public SVCCenterAddr:[B

.field public ValidPeriod:B

.field public alphaID:[B


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 459
    .local v0, InitData:[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 461
    iput-byte v2, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    .line 462
    invoke-static {v0, v3, v4}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->DestAddr:[B

    .line 463
    invoke-static {v0, v3, v4}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    .line 464
    iput-byte v2, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ProtoclID:B

    .line 465
    iput-byte v2, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->CodeScheme:B

    .line 466
    iput-byte v2, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ValidPeriod:B

    .line 467
    return-void
.end method
