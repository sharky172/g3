.class public Lcom/lge/uicc/EnvelopeHelper;
.super Ljava/lang/Object;
.source "EnvelopeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/EnvelopeHelper$1;,
        Lcom/lge/uicc/EnvelopeHelper$ChangeToSponIMSI;,
        Lcom/lge/uicc/EnvelopeHelper$ChangeToHomeIMSI;,
        Lcom/lge/uicc/EnvelopeHelper$UpdatePLMN;,
        Lcom/lge/uicc/EnvelopeHelper$StartOTA;,
        Lcom/lge/uicc/EnvelopeHelper$EnvelopeOperation;
    }
.end annotation


# static fields
.field private static mEnvelopeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/uicc/EnvelopeHelper$EnvelopeOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p0}, Lcom/lge/uicc/EnvelopeHelper;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p0}, Lcom/lge/uicc/EnvelopeHelper;->logp(Ljava/lang/String;)V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EnvelopeHelper] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EnvelopeHelper] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EnvelopeHelper] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logp(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static request(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "envName"
    .parameter "data"

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, envOp:Lcom/lge/uicc/EnvelopeHelper$EnvelopeOperation;
    sget-object v1, Lcom/lge/uicc/EnvelopeHelper;->mEnvelopeMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/lge/uicc/EnvelopeHelper;->mEnvelopeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #envOp:Lcom/lge/uicc/EnvelopeHelper$EnvelopeOperation;
    check-cast v0, Lcom/lge/uicc/EnvelopeHelper$EnvelopeOperation;

    .line 43
    .restart local v0       #envOp:Lcom/lge/uicc/EnvelopeHelper$EnvelopeOperation;
    :cond_0
    if-nez v0, :cond_1

    .line 44
    const-string v1, "NOT_SUPPORT"

    .line 45
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Lcom/lge/uicc/EnvelopeHelper$EnvelopeOperation;->send(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected static setup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    sget-object v0, Lcom/lge/uicc/EnvelopeHelper;->mEnvelopeMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/uicc/EnvelopeHelper;->mEnvelopeMap:Ljava/util/HashMap;

    .line 29
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LGU"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lcom/lge/uicc/EnvelopeHelper;->mEnvelopeMap:Ljava/util/HashMap;

    const-string v1, "StartOTA"

    new-instance v2, Lcom/lge/uicc/EnvelopeHelper$StartOTA;

    invoke-direct {v2, v3}, Lcom/lge/uicc/EnvelopeHelper$StartOTA;-><init>(Lcom/lge/uicc/EnvelopeHelper$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/lge/uicc/EnvelopeHelper;->mEnvelopeMap:Ljava/util/HashMap;

    const-string v1, "UpdatePLMN"

    new-instance v2, Lcom/lge/uicc/EnvelopeHelper$UpdatePLMN;

    invoke-direct {v2, v3}, Lcom/lge/uicc/EnvelopeHelper$UpdatePLMN;-><init>(Lcom/lge/uicc/EnvelopeHelper$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/lge/uicc/EnvelopeHelper;->mEnvelopeMap:Ljava/util/HashMap;

    const-string v1, "ChangeToHomeIMSI"

    new-instance v2, Lcom/lge/uicc/EnvelopeHelper$ChangeToHomeIMSI;

    invoke-direct {v2, v3}, Lcom/lge/uicc/EnvelopeHelper$ChangeToHomeIMSI;-><init>(Lcom/lge/uicc/EnvelopeHelper$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/lge/uicc/EnvelopeHelper;->mEnvelopeMap:Ljava/util/HashMap;

    const-string v1, "ChangeToSponIMSI"

    new-instance v2, Lcom/lge/uicc/EnvelopeHelper$ChangeToSponIMSI;

    invoke-direct {v2, v3}, Lcom/lge/uicc/EnvelopeHelper$ChangeToSponIMSI;-><init>(Lcom/lge/uicc/EnvelopeHelper$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_1
    return-void
.end method
