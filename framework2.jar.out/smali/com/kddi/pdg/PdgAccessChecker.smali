.class abstract Lcom/kddi/pdg/PdgAccessChecker;
.super Ljava/lang/Object;
.source "PdgAccessChecker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkPrivacy(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "dataType"

    .prologue
    .line 35
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

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x1

    .line 38
    .local v1, result:Z
    packed-switch p2, :pswitch_data_0

    .line 46
    const-string v2, "boolean checkPrivacy() / case default"

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 49
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean checkPrivacy() end / return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 50
    return v1

    .line 42
    :pswitch_0
    new-instance v0, Lcom/kddi/pdg/PdgAccessController;

    invoke-direct {v0, p0, p1}, Lcom/kddi/pdg/PdgAccessController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    .local v0, pdgac:Lcom/kddi/pdg/PdgAccessController;
    invoke-virtual {v0, p2}, Lcom/kddi/pdg/PdgAccessController;->getPrivacy(I)Z

    move-result v1

    .line 44
    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
