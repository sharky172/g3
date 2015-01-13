.class public Lcom/lge/nfcaddon/NfcAdapterNxp;
.super Ljava/lang/Object;
.source "NfcAdapterNxp.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NfcNxp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNfcAdapterNxpInterface()Lcom/lge/nfcaddon/INfcAdapterNxp;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 16
    const-string v2, "lge.nfc.vendor"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nxp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    .local v0, binder:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 20
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    const-string v2, "nfcvendor"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 21
    .restart local v0       #binder:Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 22
    const-string v2, "NfcNxp"

    const-string v3, "nfcbrcm binder null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 25
    :cond_1
    invoke-static {v0}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcAdapterNxp;

    move-result-object v1

    goto :goto_0
.end method
