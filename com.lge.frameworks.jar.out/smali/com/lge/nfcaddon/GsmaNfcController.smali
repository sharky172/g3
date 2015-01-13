.class public Lcom/lge/nfcaddon/GsmaNfcController;
.super Ljava/lang/Object;
.source "GsmaNfcController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GsmaNfcController"

.field private static sService:Lcom/lge/nfcaddon/IGsmaNfcController;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/nfcaddon/IGsmaNfcController;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 22
    :cond_1
    iput-object p1, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    .line 23
    sput-object p2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    .line 24
    return-void
.end method

.method private attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 121
    const-string v2, "GsmaNfcController"

    const-string v3, "NFC service dead - attempting to recover"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 125
    .local v1, serviceAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v1, :cond_0

    .line 126
    const-string v2, "GsmaNfcController"

    const-string v3, "NfcAdapterAddon service object can\'t get."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerService(Landroid/content/Context;)Lcom/lge/nfcaddon/GsmaNfcController;

    move-result-object v0

    .line 132
    .local v0, gsmaNfcControlloer:Lcom/lge/nfcaddon/GsmaNfcController;
    if-nez v0, :cond_1

    .line 133
    const-string v2, "GsmaNfcController"

    const-string v3, "gsmaNfcControlloer object can\'t get."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v0           #gsmaNfcControlloer:Lcom/lge/nfcaddon/GsmaNfcController;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 136
    .restart local v0       #gsmaNfcControlloer:Lcom/lge/nfcaddon/GsmaNfcController;
    :cond_1
    invoke-direct {v0}, Lcom/lge/nfcaddon/GsmaNfcController;->getService()Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v2

    sput-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private getService()Lcom/lge/nfcaddon/IGsmaNfcController;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    return-object v0
.end method


# virtual methods
.method public disableNfcCard(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .locals 3
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/nfcaddon/GsmaNfcController;->isGSMACertificateAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 64
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_1

    .line 65
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->disableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :cond_1
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableMultiEvt_transactionReception(Ljava/lang/String;)V
    .locals 2
    .parameter "seName"

    .prologue
    .line 99
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->enableMultiEvt_transactionReception(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableNfcCard(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .locals 3
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/nfcaddon/GsmaNfcController;->isGSMACertificateAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 48
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 49
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->enableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 55
    :cond_1
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableNfcController(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .locals 3
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/nfcaddon/GsmaNfcController;->isGSMACertificateAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 32
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 33
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->enableNfcControllerCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 39
    :cond_1
    :goto_0
    return v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getActiveSecureElement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1}, Lcom/lge/nfcaddon/IGsmaNfcController;->getActiveSecureElement()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 94
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGSMACertificateAllowed(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 111
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->isGSMACertificateAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 117
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEvt_TransactionFgDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;)V
    .locals 2
    .parameter "intent"
    .parameter "intentfilter"

    .prologue
    .line 77
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1, p2}, Lcom/lge/nfcaddon/IGsmaNfcController;->setEvt_TransactionFgDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method
