.class public final enum Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;
.super Ljava/lang/Enum;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportWalletList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

.field public static final enum INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

.field public static final enum egw:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

.field public static final enum egwst:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

.field public static final enum gw:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

.field public static final enum gwst:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

.field public static final enum st:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    const-string v1, "INITVALUE"

    invoke-direct {v0, v1, v3}, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    const-string v1, "egw"

    invoke-direct {v0, v1, v4}, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->egw:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    const-string v1, "gw"

    invoke-direct {v0, v1, v5}, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->gw:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    const-string v1, "st"

    invoke-direct {v0, v1, v6}, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->st:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    const-string v1, "egwst"

    invoke-direct {v0, v1, v7}, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->egwst:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    const-string v1, "gwst"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->gwst:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->egw:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->gw:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->st:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->egwst:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->gwst:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

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
    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;
    .locals 1
    .parameter "name"

    .prologue
    .line 232
    const-class v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    return-object v0
.end method

.method public static values()[Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    return-object v0
.end method
