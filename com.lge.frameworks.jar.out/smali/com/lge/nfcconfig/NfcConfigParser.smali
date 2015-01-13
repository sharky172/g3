.class public final Lcom/lge/nfcconfig/NfcConfigParser;
.super Ljava/lang/Object;
.source "NfcConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcconfig/NfcConfigParser$Config;,
        Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NFC_CONFIG_FILE_PATH:Ljava/lang/String; = "/system/etc/nfc/"

.field private static final NFC_CONFIG_FILE_POSTFIX:Ljava/lang/String; = ".xml"

.field private static final NFC_CONFIG_FILE_PREFIX:Ljava/lang/String; = "config"

.field private static final NFC_DEFAULT_CONFIG_FILE:Ljava/lang/String; = "config_COM.xml"

.field private static final NFC_MCC_FILE_PREFIX:Ljava/lang/String; = "mcc_list"

.field private static final NFC_MCC_LIST_FILE:Ljava/lang/String; = "mcc_list.xml"

.field private static final NFC_TARGET_LIST_FILE:Ljava/lang/String; = "target_list.xml"

.field private static final TAG:Ljava/lang/String; = "NfcConfigParser"

.field private static configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigParser$Config;",
            ">;"
        }
    .end annotation
.end field

.field private static currentDevice:Ljava/lang/String;

.field private static currentOperator:Ljava/lang/String;

.field private static mccList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static targetlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigParser;->targetlist:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigParser;->configList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigParser;->mccList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "operator"
    .parameter "country"
    .parameter "device"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sput-object p3, Lcom/lge/nfcconfig/NfcConfigParser;->currentDevice:Ljava/lang/String;

    .line 112
    sput-object p1, Lcom/lge/nfcconfig/NfcConfigParser;->currentOperator:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lcom/lge/nfcconfig/NfcConfigParser;->getTargetXmlFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/lge/nfcconfig/NfcConfigParser;->getConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/nfcconfig/NfcConfigParser;->parseConfigXmlFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_1
    invoke-static {p3}, Lcom/lge/nfcconfig/NfcConfigParser;->getMccMncConfigFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/nfcconfig/NfcConfigParser;->parseMccXmlFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    :cond_2
    return-void
.end method

.method private static getConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "operator"
    .parameter "country"
    .parameter "device"

    .prologue
    const/4 v4, 0x0

    .line 312
    const-string v0, "/system/etc/nfc/config_COM.xml"

    .line 314
    .local v0, fileName:Ljava/lang/String;
    const-string v1, "NfcConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "NfcConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "country : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v1, "NfcConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-static {v2, p0, p1, p2}, Lcom/lge/nfcconfig/NfcConfigParser;->makeXmlFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const-string v1, "config"

    invoke-static {v1, p0, p1, p2}, Lcom/lge/nfcconfig/NfcConfigParser;->makeXmlFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_0
    :goto_0
    const-string v1, "NfcConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object v0

    .line 320
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-static {v2, p0, p1, v4}, Lcom/lge/nfcconfig/NfcConfigParser;->makeXmlFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    const-string v1, "config"

    invoke-static {v1, p0, p1, v4}, Lcom/lge/nfcconfig/NfcConfigParser;->makeXmlFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-static {v2, p0, v4, v4}, Lcom/lge/nfcconfig/NfcConfigParser;->makeXmlFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    const-string v1, "config"

    invoke-static {v1, p0, v4, v4}, Lcom/lge/nfcconfig/NfcConfigParser;->makeXmlFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-static {v2, v4, p1, v4}, Lcom/lge/nfcconfig/NfcConfigParser;->makeXmlFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "config"

    invoke-static {v1, v4, p1, v4}, Lcom/lge/nfcconfig/NfcConfigParser;->makeXmlFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "tagname"

    .prologue
    .line 364
    const-string v7, "/system/etc/nfc/config.xml"

    const-string v8, "Config"

    invoke-static {v7, v8}, Lcom/lge/nfcconfig/NfcConfigParser;->getHeadNodeList(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 368
    .local v2, headNodeList:Lorg/w3c/dom/NodeList;
    const-string v5, ""

    .line 370
    .local v5, resultValue:Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v6, v5

    .line 392
    .end local v5           #resultValue:Ljava/lang/String;
    .local v6, resultValue:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 372
    .end local v6           #resultValue:Ljava/lang/String;
    .restart local v5       #resultValue:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 373
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 376
    .local v1, headChildNodeList:Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_2

    .line 372
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 378
    :cond_2
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 379
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 381
    .local v0, childNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_4

    .line 378
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 383
    :cond_4
    instance-of v7, v0, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_3

    .line 385
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/lge/nfcconfig/NfcConfigParser;->currentDevice:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/lge/nfcconfig/NfcConfigParser;->isTargetModel(Ljava/lang/String;Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 387
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .end local v0           #childNode:Lorg/w3c/dom/Node;
    .end local v1           #headChildNodeList:Lorg/w3c/dom/NodeList;
    .end local v4           #j:I
    :cond_5
    move-object v6, v5

    .line 392
    .end local v5           #resultValue:Ljava/lang/String;
    .restart local v6       #resultValue:Ljava/lang/String;
    goto :goto_0
.end method

.method private getDefaultConfig(Lcom/lge/nfcconfig/NfcConfigParser$Config;)Z
    .locals 7
    .parameter "config"

    .prologue
    .line 395
    const-string v5, "/system/etc/nfc/config.xml"

    const-string v6, "Config"

    invoke-static {v5, v6}, Lcom/lge/nfcconfig/NfcConfigParser;->getHeadNodeList(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 400
    .local v2, headNodeList:Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_0

    const/4 v5, 0x0

    .line 415
    :goto_0
    return v5

    .line 402
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 403
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 405
    .local v1, headChildNodeList:Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_2

    .line 402
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 407
    :cond_2
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 408
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 410
    .local v0, childNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 407
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 412
    :cond_3
    invoke-static {p1, v0}, Lcom/lge/nfcconfig/NfcConfigParser;->setConfigValue(Lcom/lge/nfcconfig/NfcConfigParser$Config;Lorg/w3c/dom/Node;)V

    goto :goto_3

    .line 415
    .end local v0           #childNode:Lorg/w3c/dom/Node;
    .end local v1           #headChildNodeList:Lorg/w3c/dom/NodeList;
    .end local v4           #j:I
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static getHeadNodeList(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 6
    .parameter "fileName"
    .parameter "element"

    .prologue
    .line 346
    const/4 v4, 0x0

    .line 348
    .local v4, headNodeList:Lorg/w3c/dom/NodeList;
    if-eqz p0, :cond_0

    .line 350
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v3, file:Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 352
    .local v2, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 353
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 355
    .local v1, doc:Lorg/w3c/dom/Document;
    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 361
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #doc:Lorg/w3c/dom/Document;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v4

    .line 356
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static getMccMncConfigFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "device"

    .prologue
    const/4 v4, 0x0

    .line 333
    const-string v0, "/system/etc/nfc/mcc_list.xml"

    .line 335
    .local v0, fileName:Ljava/lang/String;
    const-string v1, "NfcConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v1, Ljava/io/File;

    const-string v2, "mcc_list"

    invoke-static {v2, v4, v4, p0}, Lcom/lge/nfcconfig/NfcConfigParser;->makeXmlFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const-string v1, "mcc_list"

    invoke-static {v1, v4, v4, p0}, Lcom/lge/nfcconfig/NfcConfigParser;->makeXmlFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_0
    const-string v1, "NfcConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-object v0
.end method

.method private getTargetXmlFile()Z
    .locals 6

    .prologue
    .line 419
    const-string v4, "/system/etc/nfc/target_list.xml"

    const-string v5, "Target"

    invoke-static {v4, v5}, Lcom/lge/nfcconfig/NfcConfigParser;->getHeadNodeList(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 423
    .local v1, headNodeList:Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 434
    :goto_0
    return v4

    .line 425
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 426
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 428
    .local v0, headNode:Lorg/w3c/dom/Node;
    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_1

    .line 429
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, target:Ljava/lang/String;
    sget-object v4, Lcom/lge/nfcconfig/NfcConfigParser;->targetlist:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v3           #target:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 434
    .end local v0           #headNode:Lorg/w3c/dom/Node;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static isTargetModel(Ljava/lang/String;Lorg/w3c/dom/Node;)Z
    .locals 9
    .parameter "device"
    .parameter "childNode"

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 225
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    const-string v7, "TargetModel"

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, targetModelName:Ljava/lang/String;
    const-string v6, "~"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/nfcconfig/NfcConfigParser;->searchTargetIndex(Ljava/lang/String;)I

    move-result v2

    .line 227
    .local v2, targetModel:I
    invoke-static {p0}, Lcom/lge/nfcconfig/NfcConfigParser;->searchTargetIndex(Ljava/lang/String;)I

    move-result v1

    .line 228
    .local v1, presentModel:I
    const-string v6, "~"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 231
    .local v0, directionIndex:I
    if-eqz v3, :cond_1

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 250
    .end local v0           #directionIndex:I
    .end local v1           #presentModel:I
    .end local v2           #targetModel:I
    .end local v3           #targetModelName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 234
    .restart local v0       #directionIndex:I
    .restart local v1       #presentModel:I
    .restart local v2       #targetModel:I
    .restart local v3       #targetModelName:Ljava/lang/String;
    :cond_1
    if-ne v0, v8, :cond_2

    .line 235
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 237
    :cond_2
    if-eq v1, v8, :cond_3

    if-ne v2, v8, :cond_4

    .line 238
    :cond_3
    if-gtz v0, :cond_0

    move v4, v5

    goto :goto_0

    .line 240
    :cond_4
    if-eq v2, v1, :cond_0

    .line 243
    if-nez v0, :cond_5

    .line 244
    if-gt v2, v1, :cond_0

    move v4, v5

    goto :goto_0

    .line 246
    :cond_5
    if-lt v2, v1, :cond_0

    move v4, v5

    goto :goto_0

    .line 247
    .end local v0           #directionIndex:I
    .end local v1           #presentModel:I
    .end local v2           #targetModel:I
    .end local v3           #targetModelName:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static isTargetOperator(Ljava/lang/String;Lorg/w3c/dom/Node;)Z
    .locals 3
    .parameter "operator"
    .parameter "childNode"

    .prologue
    .line 255
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "TargetOperator"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, targetOpName:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 259
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 262
    :cond_1
    const/4 v1, 0x0

    .line 268
    .end local v0           #targetOpName:Ljava/lang/String;
    :goto_0
    return v1

    .line 265
    :catch_0
    move-exception v1

    .line 268
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static makeXmlFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "operator"
    .parameter "country"
    .parameter "device"

    .prologue
    .line 272
    move-object v0, p0

    .line 274
    .local v0, fileName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_0
    if-eqz p2, :cond_1

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_1
    if-eqz p3, :cond_2

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/etc/nfc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseConfigXmlFile(Ljava/lang/String;)Z
    .locals 9
    .parameter "fileName"

    .prologue
    .line 438
    const-string v7, "Config"

    invoke-static {p1, v7}, Lcom/lge/nfcconfig/NfcConfigParser;->getHeadNodeList(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 440
    .local v4, headNodeList:Lorg/w3c/dom/NodeList;
    if-nez v4, :cond_0

    const/4 v7, 0x0

    .line 476
    :goto_0
    return v7

    .line 442
    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 443
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 445
    .local v3, headNode:Lorg/w3c/dom/Node;
    if-nez v3, :cond_2

    .line 442
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 447
    :cond_2
    instance-of v7, v3, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_1

    .line 448
    new-instance v2, Lcom/lge/nfcconfig/NfcConfigParser$Config;

    invoke-direct {v2, p0}, Lcom/lge/nfcconfig/NfcConfigParser$Config;-><init>(Lcom/lge/nfcconfig/NfcConfigParser;)V

    .line 450
    .local v2, config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    invoke-direct {p0, v2}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Lcom/lge/nfcconfig/NfcConfigParser$Config;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 451
    const-string v7, "NfcConfigParser"

    const-string v8, "getDefaultConfig fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_3
    :try_start_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string v8, "operator"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lge/nfcconfig/NfcConfigParser$Config;->operator:Ljava/lang/String;

    .line 456
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string v8, "country"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lge/nfcconfig/NfcConfigParser$Config;->country:Ljava/lang/String;

    .line 457
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string v8, "device"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lge/nfcconfig/NfcConfigParser$Config;->device:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 464
    .local v1, childNodes:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 466
    const/4 v6, 0x0

    .local v6, j:I
    :goto_4
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 467
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 469
    .local v0, cNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_4

    .line 466
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 471
    :cond_4
    invoke-static {v2, v0}, Lcom/lge/nfcconfig/NfcConfigParser;->setConfigValue(Lcom/lge/nfcconfig/NfcConfigParser$Config;Lorg/w3c/dom/Node;)V

    goto :goto_5

    .line 473
    .end local v0           #cNode:Lorg/w3c/dom/Node;
    :cond_5
    sget-object v7, Lcom/lge/nfcconfig/NfcConfigParser;->configList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 476
    .end local v1           #childNodes:Lorg/w3c/dom/NodeList;
    .end local v2           #config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    .end local v3           #headNode:Lorg/w3c/dom/Node;
    .end local v6           #j:I
    :cond_6
    const/4 v7, 0x1

    goto :goto_0

    .line 458
    .restart local v2       #config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    .restart local v3       #headNode:Lorg/w3c/dom/Node;
    :catch_0
    move-exception v7

    goto :goto_3
.end method

.method private parseMccXmlFile(Ljava/lang/String;)Z
    .locals 10
    .parameter "fileName"

    .prologue
    .line 480
    const-string v8, "network"

    invoke-static {p1, v8}, Lcom/lge/nfcconfig/NfcConfigParser;->getHeadNodeList(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 482
    .local v3, headNodeList:Lorg/w3c/dom/NodeList;
    if-nez v3, :cond_0

    const/4 v8, 0x0

    .line 523
    :goto_0
    return v8

    .line 483
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 484
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 486
    .local v2, headNode:Lorg/w3c/dom/Node;
    if-nez v2, :cond_2

    .line 483
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 488
    :cond_2
    instance-of v8, v2, Lorg/w3c/dom/Element;

    if-eqz v8, :cond_1

    .line 489
    new-instance v6, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;

    invoke-direct {v6, p0}, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;-><init>(Lcom/lge/nfcconfig/NfcConfigParser;)V

    .line 492
    .local v6, powerstatus:Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    :try_start_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "mcc"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->mcc:Ljava/lang/String;

    .line 493
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "mnc"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->mnc:Ljava/lang/String;

    .line 494
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "long_name"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->long_name:Ljava/lang/String;

    .line 495
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "short_name"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->short_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 502
    .local v1, childNodes:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 504
    const/4 v5, 0x0

    .local v5, j:I
    :goto_4
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 505
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 507
    .local v0, cNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_4

    .line 504
    :cond_3
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 509
    :cond_4
    instance-of v8, v0, Lorg/w3c/dom/Element;

    if-eqz v8, :cond_3

    .line 511
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 513
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/lge/nfcconfig/NfcConfigParser;->currentDevice:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/lge/nfcconfig/NfcConfigParser;->isTargetModel(Ljava/lang/String;Lorg/w3c/dom/Node;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/lge/nfcconfig/NfcConfigParser;->currentOperator:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/lge/nfcconfig/NfcConfigParser;->isTargetOperator(Ljava/lang/String;Lorg/w3c/dom/Node;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 516
    iput-object v7, v6, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->DefaultOnOffType:Ljava/lang/String;

    goto :goto_5

    .line 520
    .end local v0           #cNode:Lorg/w3c/dom/Node;
    .end local v7           #value:Ljava/lang/String;
    :cond_5
    sget-object v8, Lcom/lge/nfcconfig/NfcConfigParser;->mccList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 523
    .end local v1           #childNodes:Lorg/w3c/dom/NodeList;
    .end local v2           #headNode:Lorg/w3c/dom/Node;
    .end local v5           #j:I
    .end local v6           #powerstatus:Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 496
    .restart local v2       #headNode:Lorg/w3c/dom/Node;
    .restart local v6       #powerstatus:Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    :catch_0
    move-exception v8

    goto :goto_3
.end method

.method private static searchConfig()Lcom/lge/nfcconfig/NfcConfigParser$Config;
    .locals 4

    .prologue
    .line 126
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigParser;->configList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;

    .line 127
    .local v0, config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->operator:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->country:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->device:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    .end local v0           #config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static searchConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigParser$Config;
    .locals 5
    .parameter "operator"
    .parameter "country"

    .prologue
    .line 161
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigParser;->configList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;

    .line 162
    .local v0, config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->operator:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->country:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->device:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    .end local v0           #config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    :goto_0
    return-object v0

    .line 168
    :cond_1
    invoke-static {p0}, Lcom/lge/nfcconfig/NfcConfigParser;->searchConfigByOperator(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigParser$Config;

    move-result-object v2

    .local v2, tmpConfig:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    if-nez v2, :cond_2

    .line 169
    invoke-static {p1}, Lcom/lge/nfcconfig/NfcConfigParser;->searchConfigByCounty(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigParser$Config;

    move-result-object v2

    if-nez v2, :cond_2

    .line 170
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 173
    goto :goto_0
.end method

.method public static searchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigParser$Config;
    .locals 3
    .parameter "operator"
    .parameter "country"
    .parameter "device"

    .prologue
    .line 176
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigParser;->configList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    .line 180
    :cond_0
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigParser;->configList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;

    .line 181
    .local v0, config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->operator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->country:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->device:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 187
    .end local v0           #config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    :cond_2
    invoke-static {p0, p1}, Lcom/lge/nfcconfig/NfcConfigParser;->searchConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigParser$Config;

    move-result-object v0

    goto :goto_0
.end method

.method private static searchConfigByCounty(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigParser$Config;
    .locals 4
    .parameter "country"

    .prologue
    .line 148
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigParser;->configList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;

    .line 149
    .local v0, config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->operator:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->country:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->device:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    .end local v0           #config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParser;->searchConfig()Lcom/lge/nfcconfig/NfcConfigParser$Config;

    move-result-object v0

    goto :goto_0
.end method

.method private static searchConfigByOperator(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigParser$Config;
    .locals 4
    .parameter "operator"

    .prologue
    .line 137
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigParser;->configList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;

    .line 138
    .local v0, config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->operator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->country:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigParser$Config;->device:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    .end local v0           #config:Lcom/lge/nfcconfig/NfcConfigParser$Config;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static searchMcc()Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    .locals 4

    .prologue
    .line 190
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigParser;->mccList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;

    .line 191
    .local v1, list:Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    iget-object v2, v1, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->mnc:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->mcc:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    .end local v1           #list:Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static searchMcc(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    .locals 3
    .parameter "mcc"
    .parameter "mnc"

    .prologue
    .line 206
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigParser;->mccList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;

    .line 207
    .local v1, list:Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    iget-object v2, v1, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->mnc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->mcc:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    .end local v1           #list:Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParser;->searchMcc()Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;

    move-result-object v1

    goto :goto_0
.end method

.method private static searchTargetIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "targetname"

    .prologue
    .line 214
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigParser;->targetlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 215
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigParser;->targetlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    .end local v0           #i:I
    :goto_1
    return v0

    .line 214
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigParser;->targetlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method private static setConfigValue(Lcom/lge/nfcconfig/NfcConfigParser$Config;Lorg/w3c/dom/Node;)V
    .locals 7
    .parameter "config"
    .parameter "childNode"

    .prologue
    .line 292
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    instance-of v5, p1, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_0

    .line 297
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, value:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 300
    .local v1, f:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/lge/nfcconfig/NfcConfigParser;->currentDevice:Ljava/lang/String;

    invoke-static {v5, p1}, Lcom/lge/nfcconfig/NfcConfigParser;->isTargetModel(Ljava/lang/String;Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 302
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v5

    .line 298
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
