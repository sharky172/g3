.class public final Lcom/lge/lgdrm/DrmContentSession;
.super Ljava/lang/Object;
.source "DrmContentSession.java"


# static fields
.field private static final DEFAULT_BROWSER_CLASS_NAME:Ljava/lang/String; = "com.android.browser.BrowserActivity"

.field private static final DEFAULT_BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.android.browser"

.field private static final TAG:Ljava/lang/String; = "DrmCntSes"


# instance fields
.field private contentList:[Lcom/lge/lgdrm/DrmContent;

.field private context:Landroid/content/Context;

.field private defaultContent:Lcom/lge/lgdrm/DrmContent;

.field private nativeSession:I

.field private nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private selectedContent:Lcom/lge/lgdrm/DrmContent;


# direct methods
.method private constructor <init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V
    .locals 0
    .parameter "content"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    .line 565
    iput-object p2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    .line 566
    return-void
.end method

.method private activateContent(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "resultReceiver"

    .prologue
    const/16 v5, 0x9

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1556
    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1557
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v4, v5, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return v2

    .line 1561
    :cond_1
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v4, v5, :cond_2

    .line 1562
    const-string v4, "com.lge.lgdrm.action.DRM_LGU_ACTIVATION"

    invoke-direct {p0, v0, v4, p1, p2}, Lcom/lge/lgdrm/DrmContentSession;->getIntent(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1569
    .local v1, intent:Landroid/content/Intent;
    :goto_1
    if-eqz v1, :cond_0

    .line 1572
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 1573
    goto :goto_0

    .line 1563
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v4

    const/16 v5, 0x3000

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 1564
    const-string v4, "com.lge.lgdrm.action.DRM_ACTIVATION"

    invoke-direct {p0, v0, v4, p1, p2}, Lcom/lge/lgdrm/DrmContentSession;->getIntent(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 1566
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {p0, v0, v4, p1, p2}, Lcom/lge/lgdrm/DrmContentSession;->getIntent(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public static getDrmTimeStatus(I)Z
    .locals 4
    .parameter "agentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 923
    sget-boolean v3, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v3, :cond_0

    .line 932
    :goto_0
    return v2

    .line 927
    :cond_0
    if-lt p0, v1, :cond_1

    const/16 v3, 0xa

    if-le p0, v3, :cond_2

    .line 928
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid agentType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 931
    :cond_2
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDrmTimeStatus(I)I

    move-result v0

    .line 932
    .local v0, status:I
    if-nez v0, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private getIntent(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "content"
    .parameter "action"
    .parameter "url"
    .parameter "resultReceiver"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x1000

    .line 1793
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.lge.lgdrm.action.DRM_LGU_ACTIVATION"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1796
    const-string v2, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v3, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1797
    const-string v2, "com.lge.lgdrm.extra.CONTENT_TYPE"

    invoke-virtual {p1}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1798
    const-string v2, "com.lge.lgdrm.extra.DRM_TYPE"

    invoke-virtual {p1}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1799
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 1802
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1834
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v1

    .line 1804
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "com.lge.lgdrm.action.DRM_ACTIVATION"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1805
    const-string v2, "com.lge.lgdrm.extra.ACTIVATION_URL"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    const-string v2, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v3, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1807
    const-string v2, "com.lge.lgdrm.extra.CONTENT_TYPE"

    invoke-virtual {p1}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1808
    const-string v2, "com.lge.lgdrm.extra.DRM_TYPE"

    invoke-virtual {p1}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1809
    :cond_2
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1811
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1813
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    const-string v4, "com.android.browser"

    invoke-direct {p0, v3, v4}, Lcom/lge/lgdrm/DrmContentSession;->isEnableCheckPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1814
    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    :cond_3
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1819
    const-string v3, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v4, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1821
    if-eqz p4, :cond_0

    .line 1823
    const-string v3, ";"

    invoke-virtual {p4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1824
    .local v0, component:[Ljava/lang/String;
    if-nez v0, :cond_4

    move-object v1, v2

    .line 1825
    goto :goto_0

    .line 1828
    :cond_4
    const-string v2, "com.lge.lgdrm.extra.RECEIVER_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .end local v0           #component:[Ljava/lang/String;
    :cond_5
    move-object v1, v2

    .line 1831
    goto :goto_0
.end method

.method private isEnableCheckPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 1650
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1651
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1654
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1656
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez v2, :cond_3

    .line 1676
    :cond_2
    :goto_0
    return v3

    .line 1662
    :cond_3
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1668
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    .line 1672
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_2

    .line 1673
    const-string v3, "DrmCntSes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnableCheckPackage() is exist("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const/4 v3, 0x1

    goto :goto_0

    .line 1663
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1664
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DrmCntSes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnableCheckPackage() is not found("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isForwardActionSupported(Lcom/lge/lgdrm/DrmContent;)I
    .locals 3
    .parameter "content"

    .prologue
    .line 1688
    const/4 v0, -0x1

    .line 1690
    .local v0, retVal:I
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 1692
    :cond_0
    const/4 v0, -0x1

    .line 1698
    :cond_1
    :goto_0
    return v0

    .line 1693
    :cond_2
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 1695
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRightRenewalActionSupported(Lcom/lge/lgdrm/DrmContent;)I
    .locals 4
    .parameter "content"

    .prologue
    const/4 v3, 0x1

    .line 1739
    const/4 v0, -0x1

    .line 1741
    .local v0, retVal:I
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v1, v3, :cond_0

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 1742
    :cond_0
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v1, v3, :cond_3

    .line 1743
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v2, 0x300

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v2, 0x301

    if-ne v1, v2, :cond_2

    .line 1744
    :cond_1
    const/4 v0, 0x0

    .line 1755
    :cond_2
    :goto_0
    return v0

    .line 1747
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1749
    :cond_4
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    .line 1750
    const/4 v0, 0x0

    goto :goto_0

    .line 1751
    :cond_5
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1752
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isSettingActionSupported(Lcom/lge/lgdrm/DrmContent;I)I
    .locals 5
    .parameter "content"
    .parameter "action"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1715
    const/4 v0, -0x1

    .line 1717
    .local v0, retVal:I
    iget-object v1, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v1, v2, p2}, Lcom/lge/lgdrm/DrmContentSession;->nativeIsSettingsAvailable(Ljava/lang/String;II)I

    move-result v0

    .line 1718
    if-nez v0, :cond_2

    .line 1719
    if-eq p2, v4, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 1720
    :cond_0
    iput v3, p1, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 1724
    :cond_1
    :goto_0
    iput-boolean v3, p1, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 1727
    :cond_2
    return v0

    .line 1721
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 1722
    iput v4, p1, Lcom/lge/lgdrm/DrmContent;->permisson:I

    goto :goto_0
.end method

.method private isTimeSyncActionSupported(Lcom/lge/lgdrm/DrmContent;)I
    .locals 3
    .parameter "content"

    .prologue
    .line 1767
    const/4 v0, -0x1

    .line 1769
    .local v0, retVal:I
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1770
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v2, 0x51

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_1

    .line 1771
    :cond_0
    const/4 v0, 0x0

    .line 1775
    :cond_1
    return v0
.end method

.method private native nativeActivateContent(ILjava/lang/String;ILjava/lang/String;)I
.end method

.method private static native nativeAuthCaller()Z
.end method

.method private native nativeConsumeRight(Ljava/lang/String;IIIJJ)I
.end method

.method private native nativeDestroySession(II)V
.end method

.method private native nativeDoRoap(ILjava/lang/String;ILjava/lang/String;)I
.end method

.method private static native nativeDrmOpen(Ljava/lang/String;ILjava/io/FileDescriptor;I[B)I
.end method

.method private static native nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private native nativeGetContentList(Ljava/lang/String;)[Lcom/lge/lgdrm/DrmContent;
.end method

.method private native nativeGetDecryptionInfo(ILjava/lang/String;II)[B
.end method

.method private native nativeGetDrmTime()J
.end method

.method private static native nativeGetDrmTimeStatus(I)I
.end method

.method private native nativeGetIndexByCID(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetRightInfo(Lcom/lge/lgdrm/DrmRight;Ljava/lang/String;III)I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private native nativeIsSettingsAvailable(Ljava/lang/String;II)I
.end method

.method private native nativeJudgeRight(Ljava/lang/String;III)I
.end method

.method private native nativeSetDecryptionInfo(ZILjava/lang/String;II)I
.end method

.method private static native nativeSetDrmTime(IJ)I
.end method

.method static newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;
    .locals 4
    .parameter "filename"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 584
    if-nez p0, :cond_0

    .line 585
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter filename is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 588
    :cond_0
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContentSession;->nativeIsDRM(Ljava/lang/String;)I

    move-result v1

    .line 589
    .local v1, contentType:I
    if-nez v1, :cond_1

    .line 590
    new-instance v2, Lcom/lge/lgdrm/DrmException;

    const-string v3, "Not DRM protected content"

    invoke-direct {v2, v3}, Lcom/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 593
    :cond_1
    new-instance v0, Lcom/lge/lgdrm/DrmContent;

    invoke-direct {v0, p0, v2, v2}, Lcom/lge/lgdrm/DrmContent;-><init>(Ljava/lang/String;II)V

    .line 595
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    invoke-static {v0, p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 596
    const/4 v2, 0x0

    .line 599
    :goto_0
    return-object v2

    :cond_2
    new-instance v2, Lcom/lge/lgdrm/DrmContentSession;

    invoke-direct {v2, v0, p1}, Lcom/lge/lgdrm/DrmContentSession;-><init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static openDrmStream(Ljava/io/FileDescriptor;[B)Lcom/lge/lgdrm/DrmStream;
    .locals 4
    .parameter "fd"
    .parameter "decInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1355
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return-object v1

    .line 1359
    :cond_1
    if-nez p0, :cond_2

    .line 1360
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter fd is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1362
    :cond_2
    if-nez p1, :cond_3

    .line 1363
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter decInfo is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1366
    :cond_3
    invoke-static {v1, v3, p0, v3, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;ILjava/io/FileDescriptor;I[B)I

    move-result v0

    .line 1367
    .local v0, nativeHandle:I
    if-eqz v0, :cond_0

    .line 1371
    new-instance v2, Lcom/lge/lgdrm/DrmStream;

    invoke-direct {v2, v1, v0}, Lcom/lge/lgdrm/DrmStream;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    goto :goto_0
.end method

.method public static openDrmStream(Ljava/lang/String;[B)Lcom/lge/lgdrm/DrmStream;
    .locals 4
    .parameter "filename"
    .parameter "decInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1322
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return-object v1

    .line 1326
    :cond_1
    if-nez p0, :cond_2

    .line 1327
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter filename is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1329
    :cond_2
    if-nez p1, :cond_3

    .line 1330
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter decInfo is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1333
    :cond_3
    invoke-static {p0, v3, v1, v3, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;ILjava/io/FileDescriptor;I[B)I

    move-result v0

    .line 1334
    .local v0, nativeHandle:I
    if-eqz v0, :cond_0

    .line 1338
    new-instance v1, Lcom/lge/lgdrm/DrmStream;

    invoke-direct {v1, p0, v0}, Lcom/lge/lgdrm/DrmStream;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static setDrmTime(IJ)I
    .locals 2
    .parameter "agentType"
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1018
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 1019
    const/4 v0, -0x1

    .line 1033
    :goto_0
    return v0

    .line 1022
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmContentSession;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1023
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1026
    :cond_1
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/16 v0, 0xa

    if-le p0, v0, :cond_3

    .line 1027
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid agentType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 1030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmContentSession;->nativeSetDrmTime(IJ)I

    move-result v0

    goto :goto_0
.end method

.method private setNextRequest(IIILjava/lang/String;[B)I
    .locals 1
    .parameter "session"
    .parameter "requestType"
    .parameter "httpMethod"
    .parameter "url"
    .parameter "data"

    .prologue
    .line 1595
    iput p1, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1598
    new-instance v0, Lcom/lge/lgdrm/DrmDldRequest;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmDldRequest;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 1599
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-nez v0, :cond_0

    .line 1600
    const/4 v0, -0x1

    .line 1607
    :goto_0
    return v0

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p2, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    .line 1603
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p3, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    .line 1604
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p4, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    .line 1605
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p5, v0, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    .line 1607
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startDldClient(Lcom/lge/lgdrm/DrmContent;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 1620
    iget v3, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v1, 0x3

    .line 1622
    .local v1, downloadAgent:I
    :goto_0
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    iget v4, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    invoke-static {v1, v3, v4}, Lcom/lge/lgdrm/DrmObjectSession;->newInstance(ILandroid/content/Context;I)Lcom/lge/lgdrm/DrmObjectSession;

    move-result-object v2

    .line 1628
    .local v2, session:Lcom/lge/lgdrm/DrmObjectSession;
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Lcom/lge/lgdrm/DrmDldClient;-><init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V

    .line 1631
    .local v0, dldClient:Lcom/lge/lgdrm/DrmDldClient;
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1632
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 1635
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmDldClient;->start()V

    .line 1636
    return-void

    .line 1620
    .end local v0           #dldClient:Lcom/lge/lgdrm/DrmDldClient;
    .end local v1           #downloadAgent:I
    .end local v2           #session:Lcom/lge/lgdrm/DrmObjectSession;
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method


# virtual methods
.method public consumeRight(JJ)I
    .locals 10
    .parameter "startTime"
    .parameter "usedTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 1194
    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    cmp-long v1, p3, v2

    if-gez v1, :cond_1

    .line 1195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_1
    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    cmp-long v1, p3, v2

    if-nez v1, :cond_2

    .line 1198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1201
    :cond_2
    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v9

    .line 1202
    .local v9, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v9, :cond_4

    .line 1203
    const/4 v0, -0x1

    .line 1215
    :cond_3
    :goto_0
    return v0

    .line 1206
    :cond_4
    iget v1, v9, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    iget v1, v9, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    .line 1210
    iget v0, v9, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_5

    iget-boolean v0, v9, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_5

    .line 1212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Select Right first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1215
    :cond_5
    iget-object v1, v9, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, v9, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v3, v9, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iget v4, v9, Lcom/lge/lgdrm/DrmContent;->permisson:I

    move-object v0, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/lge/lgdrm/DrmContentSession;->nativeConsumeRight(Ljava/lang/String;IIIJJ)I

    move-result v0

    goto :goto_0
.end method

.method public destroySession()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public getContent(Ljava/lang/String;)Lcom/lge/lgdrm/DrmContent;
    .locals 5
    .parameter "cid"

    .prologue
    const/4 v2, 0x0

    .line 638
    if-nez p1, :cond_0

    .line 639
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter cid is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 642
    :cond_0
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v3, :cond_2

    move-object v0, v2

    .line 664
    :cond_1
    :goto_0
    return-object v0

    .line 645
    :cond_2
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v3, v3, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    move-object v0, v2

    .line 646
    goto :goto_0

    .line 649
    :cond_3
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v3, v3, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetIndexByCID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 650
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    move-object v0, v2

    .line 651
    goto :goto_0

    .line 658
    :cond_4
    new-instance v0, Lcom/lge/lgdrm/DrmContent;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v3, v3, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v4, v4, Lcom/lge/lgdrm/DrmContent;->contentType:I

    invoke-direct {v0, v3, v1, v4}, Lcom/lge/lgdrm/DrmContent;-><init>(Ljava/lang/String;II)V

    .line 660
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v3, v3, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 661
    goto :goto_0
.end method

.method public getContentList()[Lcom/lge/lgdrm/DrmContent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 676
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 711
    :goto_0
    return-object v0

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    if-eqz v2, :cond_1

    .line 682
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v1, v1

    new-array v0, v1, [Lcom/lge/lgdrm/DrmContent;

    .line 685
    .local v0, list:[Lcom/lge/lgdrm/DrmContent;
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 689
    .end local v0           #list:[Lcom/lge/lgdrm/DrmContent;
    :cond_1
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v2, v2, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 690
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/lge/lgdrm/DrmContent;

    .line 691
    .restart local v0       #list:[Lcom/lge/lgdrm/DrmContent;
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    aput-object v1, v0, v4

    goto :goto_0

    .line 696
    .end local v0           #list:[Lcom/lge/lgdrm/DrmContent;
    :cond_2
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v2, v2, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetContentList(Ljava/lang/String;)[Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 697
    .restart local v0       #list:[Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_3

    move-object v0, v1

    .line 698
    goto :goto_0

    .line 701
    :cond_3
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    aput-object v2, v0, v4

    .line 703
    array-length v2, v0

    new-array v2, v2, [Lcom/lge/lgdrm/DrmContent;

    iput-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    .line 704
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    if-nez v2, :cond_4

    move-object v0, v1

    .line 705
    goto :goto_0

    .line 709
    :cond_4
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getDecryptionInfo()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1389
    invoke-static {}, Lcom/lge/lgdrm/DrmContentSession;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1390
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1393
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1394
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_1

    .line 1395
    const/4 v1, 0x0

    .line 1403
    :goto_0
    return-object v1

    .line 1398
    :cond_1
    iget v1, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v1, :cond_2

    .line 1400
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Select Right first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1403
    :cond_2
    iget v1, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v2, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDecryptionInfo(ILjava/lang/String;II)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getDrmTime()J
    .locals 2

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDrmTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRightList(I)[Lcom/lge/lgdrm/DrmRight;
    .locals 2
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 801
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x80

    if-le p1, v0, :cond_1

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid permission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Rights selection is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;
    .locals 2
    .parameter "defaults"

    .prologue
    .line 762
    const/4 v0, 0x0

    .line 764
    .local v0, temp:Lcom/lge/lgdrm/DrmContent;
    if-eqz p1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    .line 774
    :goto_0
    return-object v0

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v1, :cond_1

    .line 768
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    goto :goto_0

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    goto :goto_0
.end method

.method public getSelectedRight(Z)Lcom/lge/lgdrm/DrmRight;
    .locals 8
    .parameter "defaults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 873
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v6

    .line 874
    .local v6, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v6, :cond_1

    move-object v1, v7

    .line 890
    :cond_0
    :goto_0
    return-object v1

    .line 878
    :cond_1
    iget v0, v6, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v2, -0x4

    if-ne v0, v2, :cond_2

    iget-boolean v0, v6, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_2

    .line 880
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Select Right first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_2
    new-instance v1, Lcom/lge/lgdrm/DrmRight;

    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v0}, Lcom/lge/lgdrm/DrmRight;-><init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V

    .line 885
    .local v1, right:Lcom/lge/lgdrm/DrmRight;
    iget-object v2, v6, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v6, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, v6, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iget v5, v6, Lcom/lge/lgdrm/DrmContent;->permisson:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetRightInfo(Lcom/lge/lgdrm/DrmRight;Ljava/lang/String;III)I

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v7

    .line 887
    goto :goto_0
.end method

.method public isActionSupported(I)Z
    .locals 5
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1239
    const/4 v1, -0x1

    .line 1242
    .local v1, retVal:I
    if-lt p1, v3, :cond_0

    const/16 v4, 0x8

    if-le p1, v4, :cond_1

    .line 1243
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid action"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1246
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1247
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_3

    .line 1267
    :cond_2
    :goto_0
    return v2

    .line 1251
    :cond_3
    if-ne p1, v3, :cond_5

    .line 1252
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->isForwardActionSupported(Lcom/lge/lgdrm/DrmContent;)I

    move-result v1

    .line 1263
    :cond_4
    :goto_1
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    move v2, v3

    .line 1267
    goto :goto_0

    .line 1253
    :cond_5
    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    const/4 v4, 0x3

    if-eq p1, v4, :cond_6

    const/4 v4, 0x4

    if-ne p1, v4, :cond_7

    .line 1256
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/lge/lgdrm/DrmContentSession;->isSettingActionSupported(Lcom/lge/lgdrm/DrmContent;I)I

    move-result v1

    goto :goto_1

    .line 1257
    :cond_7
    const/4 v4, 0x7

    if-ne p1, v4, :cond_8

    .line 1258
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->isRightRenewalActionSupported(Lcom/lge/lgdrm/DrmContent;)I

    move-result v1

    goto :goto_1

    .line 1259
    :cond_8
    const/4 v4, 0x5

    if-ne p1, v4, :cond_4

    .line 1260
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->isTimeSyncActionSupported(Lcom/lge/lgdrm/DrmContent;)I

    move-result v1

    goto :goto_1
.end method

.method public isValidSession()Z
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_0

    .line 611
    const/4 v0, 0x0

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public judgeRight(IZ)I
    .locals 5
    .parameter "permission"
    .parameter "checkPreviewURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1127
    const/4 v1, 0x0

    .line 1130
    .local v1, preview:I
    if-lt p1, v2, :cond_0

    const/16 v3, 0x80

    if-le p1, v3, :cond_1

    .line 1131
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid permission"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1134
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1135
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_3

    .line 1136
    const/4 v2, -0x1

    .line 1152
    :cond_2
    :goto_0
    return v2

    .line 1139
    :cond_3
    if-eqz p2, :cond_4

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1144
    :cond_4
    if-nez p2, :cond_5

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    if-ne v3, v2, :cond_6

    .line 1145
    :cond_5
    const/4 v1, 0x1

    .line 1148
    :cond_6
    iput p1, v0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 1149
    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v3, v4, v1, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeJudgeRight(Ljava/lang/String;III)I

    move-result v2

    .line 1150
    .local v2, retVal:I
    iput v2, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    goto :goto_0
.end method

.method public obtainNewRight(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "type"
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1465
    const/4 v2, 0x0

    .line 1469
    .local v2, retVal:I
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1470
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Rights renewal is not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1473
    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 1474
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Invalid parameters"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1477
    :cond_2
    invoke-virtual {p0, v4}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1478
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_3

    move v3, v4

    .line 1503
    :goto_0
    return v3

    .line 1482
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1484
    .local v1, intentReceiver:Ljava/lang/String;
    if-ne p1, v3, :cond_6

    .line 1485
    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_5

    .line 1486
    const/4 v5, 0x0

    invoke-direct {p0, v5, v1}, Lcom/lge/lgdrm/DrmContentSession;->activateContent(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1487
    if-nez v2, :cond_4

    move v2, v3

    .line 1499
    :cond_4
    :goto_1
    if-gtz v2, :cond_7

    move v3, v4

    .line 1500
    goto :goto_0

    .line 1489
    :cond_5
    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v5, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v6, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v3, v5, v6, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeActivateContent(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 1491
    :cond_6
    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 1492
    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, p1, v3, v5, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeDoRoap(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1493
    if-lez v2, :cond_4

    .line 1495
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->startDldClient(Lcom/lge/lgdrm/DrmContent;)V

    goto :goto_1

    :cond_7
    move v3, v2

    .line 1503
    goto :goto_0
.end method

.method public openDrmStream()Lcom/lge/lgdrm/DrmStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1286
    invoke-static {}, Lcom/lge/lgdrm/DrmContentSession;->nativeAuthCaller()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1287
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Need proper permission to access drm"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1290
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1291
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_2

    .line 1305
    :cond_1
    :goto_0
    return-object v2

    .line 1295
    :cond_2
    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v4, -0x4

    if-ne v3, v4, :cond_3

    iget-boolean v3, v0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v3, :cond_3

    .line 1297
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Select Right first"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1300
    :cond_3
    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {v3, v4, v2, v5, v2}, Lcom/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;ILjava/io/FileDescriptor;I[B)I

    move-result v1

    .line 1301
    .local v1, nativeHandle:I
    if-eqz v1, :cond_1

    .line 1305
    new-instance v2, Lcom/lge/lgdrm/DrmStream;

    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/lge/lgdrm/DrmStream;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public selectContent(Lcom/lge/lgdrm/DrmContent;)I
    .locals 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 733
    if-nez p1, :cond_0

    .line 734
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter content is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_1

    .line 738
    const/4 v0, -0x1

    .line 747
    :goto_0
    return v0

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    invoke-virtual {v0, p1}, Lcom/lge/lgdrm/DrmContent;->isSibling(Lcom/lge/lgdrm/DrmContent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid content to this session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_2
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    .line 747
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectRight(Lcom/lge/lgdrm/DrmRight;)I
    .locals 3
    .parameter "right"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 830
    if-nez p1, :cond_0

    .line 831
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter right is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 834
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 835
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_1

    .line 836
    const/4 v1, -0x1

    return v1

    .line 839
    :cond_1
    invoke-virtual {p1, v0}, Lcom/lge/lgdrm/DrmRight;->isMatched(Lcom/lge/lgdrm/DrmContent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 840
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid right to this session"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Rights selection is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDecryptionInfo(Z)I
    .locals 7
    .parameter "reset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v6

    .line 1424
    .local v6, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v6, :cond_0

    .line 1425
    const/4 v0, -0x1

    .line 1439
    :goto_0
    return v0

    .line 1428
    :cond_0
    iget-boolean v0, v6, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_1

    .line 1429
    invoke-static {}, Lcom/lge/lgdrm/DrmContentSession;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1430
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1434
    :cond_1
    if-nez p1, :cond_2

    iget v0, v6, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_2

    iget-boolean v0, v6, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_2

    .line 1436
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Select Right first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1439
    :cond_2
    iget v2, v6, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v3, v6, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v6, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v5, v6, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmContentSession;->nativeSetDecryptionInfo(ZILjava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public syncDrmTime(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 957
    invoke-static {}, Lcom/lge/lgdrm/DrmContentSession;->nativeAuthCaller()Z

    move-result v3

    if-nez v3, :cond_0

    .line 958
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Need proper permission to access drm"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 961
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 962
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Time sync is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 964
    :cond_1
    if-nez p1, :cond_2

    .line 965
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter resultReceiver is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 967
    :cond_2
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v3, :cond_3

    .line 968
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "context is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 971
    :cond_3
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_5

    .line 972
    const-string v3, "DrmCntSes"

    const-string v4, "Use activity context instead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_4
    :goto_0
    return v2

    .line 977
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.lgdrm.action.DRM_SYNC_TIME"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 980
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-eqz v0, :cond_4

    .line 984
    const-string v2, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    const-string v2, "com.lge.lgdrm.extra.CONTENT_TYPE"

    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    const-string v2, "com.lge.lgdrm.extra.DRM_TYPE"

    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 987
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 989
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public uploadRight(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1525
    if-nez p1, :cond_0

    .line 1526
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter resultReceiver is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1528
    :cond_0
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1529
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1532
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1533
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_2

    .line 1534
    return v2

    .line 1537
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Rights upload is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
