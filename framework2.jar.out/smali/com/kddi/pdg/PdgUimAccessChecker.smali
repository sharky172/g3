.class public Lcom/kddi/pdg/PdgUimAccessChecker;
.super Lcom/kddi/pdg/PdgAccessChecker;
.source "PdgUimAccessChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kddi/pdg/PdgAccessChecker;-><init>()V

    return-void
.end method

.method public static checkPrivacy(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boolean checkPrivacy( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x1

    .line 37
    .local v0, result:Z
    if-nez p0, :cond_0

    .line 38
    const-string v1, "parameter error: context is null."

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 39
    const-string v1, "boolean checkPrivacy() end / return = true"

    invoke-static {v1}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x1

    .line 47
    :goto_0
    return v1

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/kddi/pdg/PdgUimAccessChecker;->checkPrivacy(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 46
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

    .line 47
    goto :goto_0
.end method
