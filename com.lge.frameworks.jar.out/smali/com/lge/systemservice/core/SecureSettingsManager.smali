.class public Lcom/lge/systemservice/core/SecureSettingsManager;
.super Ljava/lang/Object;
.source "SecureSettingsManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "SecureSettingsService"

.field private static final TAG:Ljava/lang/String; = "SecureSettingsManager"

.field private static final TITLE:Ljava/lang/String; = "SecureSettingsManager"


# instance fields
.field private mService:Lcom/lge/systemservice/core/ISecureSettingsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/ISecureSettingsManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/systemservice/core/SecureSettingsManager;->mService:Lcom/lge/systemservice/core/ISecureSettingsManager;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "SecureSettingsService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ISecureSettingsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ISecureSettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/SecureSettingsManager;->mService:Lcom/lge/systemservice/core/ISecureSettingsManager;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/SecureSettingsManager;->mService:Lcom/lge/systemservice/core/ISecureSettingsManager;

    return-object v0
.end method


# virtual methods
.method public putFloat(Ljava/lang/String;FI)Z
    .locals 3
    .parameter "name"
    .parameter "value"
    .parameter "uid"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/lge/systemservice/core/SecureSettingsManager;->getService()Lcom/lge/systemservice/core/ISecureSettingsManager;

    move-result-object v1

    .line 46
    .local v1, service:Lcom/lge/systemservice/core/ISecureSettingsManager;
    if-nez v1, :cond_0

    .line 55
    :goto_0
    return v2

    .line 51
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/ISecureSettingsManager;->putFloat(Ljava/lang/String;FI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;II)Z
    .locals 3
    .parameter "name"
    .parameter "value"
    .parameter "uid"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lcom/lge/systemservice/core/SecureSettingsManager;->getService()Lcom/lge/systemservice/core/ISecureSettingsManager;

    move-result-object v1

    .line 59
    .local v1, service:Lcom/lge/systemservice/core/ISecureSettingsManager;
    if-nez v1, :cond_0

    .line 68
    :goto_0
    return v2

    .line 64
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/ISecureSettingsManager;->putInt(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;JI)Z
    .locals 3
    .parameter "name"
    .parameter "value"
    .parameter "uid"

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lcom/lge/systemservice/core/SecureSettingsManager;->getService()Lcom/lge/systemservice/core/ISecureSettingsManager;

    move-result-object v1

    .line 72
    .local v1, service:Lcom/lge/systemservice/core/ISecureSettingsManager;
    if-nez v1, :cond_0

    .line 81
    :goto_0
    return v2

    .line 77
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/systemservice/core/ISecureSettingsManager;->putLong(Ljava/lang/String;JI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "name"
    .parameter "value"
    .parameter "uid"

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lcom/lge/systemservice/core/SecureSettingsManager;->getService()Lcom/lge/systemservice/core/ISecureSettingsManager;

    move-result-object v1

    .line 85
    .local v1, service:Lcom/lge/systemservice/core/ISecureSettingsManager;
    if-nez v1, :cond_0

    .line 94
    :goto_0
    return v2

    .line 90
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/ISecureSettingsManager;->putString(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
