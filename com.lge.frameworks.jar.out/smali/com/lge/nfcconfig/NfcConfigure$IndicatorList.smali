.class public final enum Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
.super Ljava/lang/Enum;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum three_toggleV1L:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum three_toggleV1L_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum three_toggleV1N:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum three_toggleV2C:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum three_toggleV2L:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum three_toggleV2L_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum two_toggleC:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum two_toggleL:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum two_toggleL_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum two_toggleN:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public static final enum two_toggleN_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "INITVALUE"

    invoke-direct {v0, v1, v3}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "three_toggleV1L"

    invoke-direct {v0, v1, v4}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV1L:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "three_toggleV2L"

    invoke-direct {v0, v1, v5}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV2L:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "three_toggleV2C"

    invoke-direct {v0, v1, v6}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV2C:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "three_toggleV1N"

    invoke-direct {v0, v1, v7}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV1N:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 66
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "two_toggleN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleN:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "two_toggleL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleL:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "two_toggleC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleC:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 67
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "three_toggleV1L_tonedown"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV1L_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "three_toggleV2L_tonedown"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV2L_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 68
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "two_toggleN_tonedown"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleN_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    const-string v1, "two_toggleL_tonedown"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleL_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 65
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV1L:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV2L:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV2C:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV1N:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleN:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleL:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleC:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV1L_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV2L_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleN_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleL_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    .locals 1
    .parameter "name"

    .prologue
    .line 65
    const-class v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    return-object v0
.end method

.method public static values()[Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    return-object v0
.end method
