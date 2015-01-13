.class public final Lcom/lge/nfcaddon/CardEmulationAddon;
.super Ljava/lang/Object;
.source "CardEmulationAddon.java"


# static fields
.field public static final INVALID_SECURE_ELEMENT_ROUTE:I = -0x1

.field public static final SECURE_ELEMENT_ROUTE_ESE:I = 0xf4

.field public static final SECURE_ELEMENT_ROUTE_HOST:I = 0x0

.field public static final SECURE_ELEMENT_ROUTE_UICC:I = 0xf3

.field private static final TAG:Ljava/lang/String; = "CardEmulationAddon"

.field private static sService:Lcom/lge/nfcaddon/ICardEmulationAddon;


# direct methods
.method public constructor <init>(Lcom/lge/nfcaddon/ICardEmulationAddon;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sput-object p1, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    .line 17
    return-void
.end method


# virtual methods
.method public getDefaultRoute()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    if-eqz v1, :cond_0

    .line 22
    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    invoke-interface {v1}, Lcom/lge/nfcaddon/ICardEmulationAddon;->getDefaultRoute()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 24
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "getDefaultRoute Exception!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getService()Lcom/lge/nfcaddon/ICardEmulationAddon;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    return-object v0
.end method

.method public setDefaultRoute(I)Z
    .locals 3
    .parameter "route"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    if-eqz v1, :cond_0

    .line 34
    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/ICardEmulationAddon;->setDefaultRoute(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 36
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "setDefaultRoute Exception!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
