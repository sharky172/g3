.class public Lcom/kddi/pdg/PdgContactsAccessChecker;
.super Lcom/kddi/pdg/PdgAccessChecker;
.source "PdgContactsAccessChecker.java"


# static fields
.field private static final CONTRACT_AUTHORITY:Ljava/lang/String; = "contacts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kddi/pdg/PdgAccessChecker;-><init>()V

    return-void
.end method

.method public static checkPrivacy(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean checkPrivacy( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    .line 43
    .local v0, result:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 44
    :cond_0
    const-string v2, "parameter error: context or uri is null."

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 45
    const-string v2, "boolean checkPrivacy() end / return = true"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 59
    :goto_0
    return v1

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 52
    const-string v2, "boolean checkPrivacy() end / return = true / uri != contacts"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/kddi/pdg/PdgContactsAccessChecker;->checkPrivacy(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boolean checkPrivacy() end / return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    move v1, v0

    .line 59
    goto :goto_0
.end method
