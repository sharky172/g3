.class final enum Lcom/lge/uicc/GenericIO$GIO;
.super Ljava/lang/Enum;
.source "GenericIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/GenericIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GIO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/uicc/GenericIO$GIO;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/uicc/GenericIO$GIO;

.field public static final enum EAPAKA_AUTH:Lcom/lge/uicc/GenericIO$GIO;

.field public static final enum GIO_TEST:Lcom/lge/uicc/GenericIO$GIO;

.field public static final enum SMARTCARD_GET_APPTYPES:Lcom/lge/uicc/GenericIO$GIO;

.field public static final enum SMARTCARD_GET_ATR:Lcom/lge/uicc/GenericIO$GIO;

.field public static final enum SMARTCARD_TRANSMIT:Lcom/lge/uicc/GenericIO$GIO;

.field public static final enum SUPPLY_PINPUK:Lcom/lge/uicc/GenericIO$GIO;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/lge/uicc/GenericIO$GIO;

    const-string v1, "GIO_TEST"

    invoke-direct {v0, v1, v3}, Lcom/lge/uicc/GenericIO$GIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/GenericIO$GIO;->GIO_TEST:Lcom/lge/uicc/GenericIO$GIO;

    .line 37
    new-instance v0, Lcom/lge/uicc/GenericIO$GIO;

    const-string v1, "SUPPLY_PINPUK"

    invoke-direct {v0, v1, v4}, Lcom/lge/uicc/GenericIO$GIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/GenericIO$GIO;->SUPPLY_PINPUK:Lcom/lge/uicc/GenericIO$GIO;

    .line 38
    new-instance v0, Lcom/lge/uicc/GenericIO$GIO;

    const-string v1, "EAPAKA_AUTH"

    invoke-direct {v0, v1, v5}, Lcom/lge/uicc/GenericIO$GIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/GenericIO$GIO;->EAPAKA_AUTH:Lcom/lge/uicc/GenericIO$GIO;

    .line 39
    new-instance v0, Lcom/lge/uicc/GenericIO$GIO;

    const-string v1, "SMARTCARD_TRANSMIT"

    invoke-direct {v0, v1, v6}, Lcom/lge/uicc/GenericIO$GIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/GenericIO$GIO;->SMARTCARD_TRANSMIT:Lcom/lge/uicc/GenericIO$GIO;

    .line 40
    new-instance v0, Lcom/lge/uicc/GenericIO$GIO;

    const-string v1, "SMARTCARD_GET_ATR"

    invoke-direct {v0, v1, v7}, Lcom/lge/uicc/GenericIO$GIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/GenericIO$GIO;->SMARTCARD_GET_ATR:Lcom/lge/uicc/GenericIO$GIO;

    .line 41
    new-instance v0, Lcom/lge/uicc/GenericIO$GIO;

    const-string v1, "SMARTCARD_GET_APPTYPES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/uicc/GenericIO$GIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/GenericIO$GIO;->SMARTCARD_GET_APPTYPES:Lcom/lge/uicc/GenericIO$GIO;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lge/uicc/GenericIO$GIO;

    sget-object v1, Lcom/lge/uicc/GenericIO$GIO;->GIO_TEST:Lcom/lge/uicc/GenericIO$GIO;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/uicc/GenericIO$GIO;->SUPPLY_PINPUK:Lcom/lge/uicc/GenericIO$GIO;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/uicc/GenericIO$GIO;->EAPAKA_AUTH:Lcom/lge/uicc/GenericIO$GIO;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/uicc/GenericIO$GIO;->SMARTCARD_TRANSMIT:Lcom/lge/uicc/GenericIO$GIO;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/uicc/GenericIO$GIO;->SMARTCARD_GET_ATR:Lcom/lge/uicc/GenericIO$GIO;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/uicc/GenericIO$GIO;->SMARTCARD_GET_APPTYPES:Lcom/lge/uicc/GenericIO$GIO;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/uicc/GenericIO$GIO;->$VALUES:[Lcom/lge/uicc/GenericIO$GIO;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/uicc/GenericIO$GIO;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/lge/uicc/GenericIO$GIO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/uicc/GenericIO$GIO;

    return-object v0
.end method

.method public static values()[Lcom/lge/uicc/GenericIO$GIO;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/lge/uicc/GenericIO$GIO;->$VALUES:[Lcom/lge/uicc/GenericIO$GIO;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/uicc/GenericIO$GIO;

    return-object v0
.end method
