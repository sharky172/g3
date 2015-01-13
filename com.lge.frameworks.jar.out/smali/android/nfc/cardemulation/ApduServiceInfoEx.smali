.class public Landroid/nfc/cardemulation/ApduServiceInfoEx;
.super Landroid/nfc/cardemulation/ApduServiceInfo;
.source "ApduServiceInfoEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;
    }
.end annotation


# static fields
.field public static final POWER_STATE_BATTERY_OFF:I = 0x4

.field public static final POWER_STATE_SWITCH_OFF:I = 0x2

.field public static final POWER_STATE_SWITCH_ON:I = 0x1

.field public static final SECURE_ELEMENT_ESE:Ljava/lang/String; = "eSE"

.field public static final SECURE_ELEMENT_ROUTE_ALL:I = 0x3

.field public static final SECURE_ELEMENT_ROUTE_ESE:I = 0x1

.field public static final SECURE_ELEMENT_ROUTE_HOST:I = 0x0

.field public static final SECURE_ELEMENT_ROUTE_UICC:I = 0x2

.field public static final SECURE_ELEMENT_UICC:Ljava/lang/String; = "UICC"

.field static final TAG:Ljava/lang/String; = "ApduServiceInfoEx"


# instance fields
.field final mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 14
    .parameter "pm"
    .parameter "info"
    .parameter "onHost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct/range {p0 .. p3}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V

    .line 69
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 70
    .local v9, si:Landroid/content/pm/ServiceInfo;
    const/4 v4, 0x0

    .line 71
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    .line 73
    .local v3, nxpParser:Landroid/content/res/XmlResourceParser;
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_0

    .line 74
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;-><init>(II)V

    iput-object v11, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    .line 140
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v11, "android.nfc.cardemulation.host_apdu_service"

    invoke-virtual {v9, p1, v11}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 79
    const-string v11, "com.nxp.nfc.extensions"

    invoke-virtual {v9, p1, v11}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 80
    if-nez v4, :cond_1

    .line 81
    const-string v11, "ApduServiceInfoEx"

    const-string v12, "No com.nxp.nfc.extensions meta-data"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_1
    if-eqz v3, :cond_d

    .line 90
    :try_start_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 91
    .local v2, eventType:I
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 92
    .local v1, depth:I
    const/4 v8, 0x0

    .line 93
    .local v8, seName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 95
    .local v6, powerState:I
    :goto_2
    const/4 v11, 0x2

    if-eq v2, v11, :cond_2

    const/4 v11, 0x1

    if-eq v2, v11, :cond_2

    .line 96
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    goto :goto_2

    .line 83
    .end local v1           #depth:I
    .end local v2           #eventType:I
    .end local v6           #powerState:I
    .end local v8           #seName:Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 98
    .restart local v1       #depth:I
    .restart local v2       #eventType:I
    .restart local v6       #powerState:I
    .restart local v8       #seName:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, tagName:Ljava/lang/String;
    const-string v11, "extensions"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 100
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Meta-data does not start with <extensions> tag "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .end local v1           #depth:I
    .end local v2           #eventType:I
    .end local v6           #powerState:I
    .end local v8           #seName:Ljava/lang/String;
    .end local v10           #tagName:Ljava/lang/String;
    :catchall_0
    move-exception v11

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v11

    .line 104
    .restart local v1       #depth:I
    .restart local v2       #eventType:I
    .restart local v6       #powerState:I
    .restart local v8       #seName:Ljava/lang/String;
    .restart local v10       #tagName:Ljava/lang/String;
    :cond_3
    :goto_3
    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v11, 0x3

    if-ne v2, v11, :cond_4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v1, :cond_a

    :cond_4
    const/4 v11, 0x1

    if-eq v2, v11, :cond_a

    .line 105
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 107
    const-string v11, "nxp-se-ext-group"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 109
    const/4 v11, 0x2

    if-ne v2, v11, :cond_6

    const-string v11, "se-id"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 111
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v3, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 112
    if-eqz v8, :cond_5

    const-string v11, "eSE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "UICC"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 113
    :cond_5
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported se name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 115
    :cond_6
    const/4 v11, 0x2

    if-ne v2, v11, :cond_3

    const-string v11, "se-power-state"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 117
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v3, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, powerName:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v3, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "true"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v7, 0x1

    .line 119
    .local v7, powerValue:Z
    :goto_4
    const-string v11, "SwitchOn"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v7, :cond_8

    .line 120
    or-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 118
    .end local v7           #powerValue:Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    .line 121
    .restart local v7       #powerValue:Z
    :cond_8
    const-string v11, "SwitchOff"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v7, :cond_9

    .line 122
    or-int/lit8 v6, v6, 0x2

    goto/16 :goto_3

    .line 123
    :cond_9
    const-string v11, "BatteryOff"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v7, :cond_3

    .line 124
    or-int/lit8 v6, v6, 0x4

    goto/16 :goto_3

    .line 128
    .end local v5           #powerName:Ljava/lang/String;
    .end local v7           #powerValue:Z
    :cond_a
    if-eqz v8, :cond_c

    .line 129
    new-instance v12, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    const-string v11, "eSE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    :goto_5
    invoke-direct {v12, v11, v6}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;-><init>(II)V

    iput-object v12, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    .line 130
    const-string v11, "ApduServiceInfoEx"

    iget-object v12, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    invoke-virtual {v12}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :goto_6
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 129
    :cond_b
    const/4 v11, 0x2

    goto :goto_5

    .line 132
    :cond_c
    :try_start_3
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;-><init>(II)V

    iput-object v11, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 138
    .end local v1           #depth:I
    .end local v2           #eventType:I
    .end local v6           #powerState:I
    .end local v8           #seName:Ljava/lang/String;
    .end local v10           #tagName:Ljava/lang/String;
    :cond_d
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;-><init>(II)V

    iput-object v11, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;ZILandroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;)V
    .locals 0
    .parameter "info"
    .parameter "onHost"
    .parameter "description"
    .parameter
    .parameter "requiresUnlock"
    .parameter "bannerResource"
    .parameter "seExtension"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;",
            ">;ZI",
            "Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p4, aidGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;>;"
    invoke-direct/range {p0 .. p6}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;ZI)V

    .line 58
    iput-object p7, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;)V
    .locals 7
    .parameter "parents"
    .parameter "seExtension"

    .prologue
    .line 62
    iget-object v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-boolean v2, p1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    iget-object v3, p1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    iget-object v4, p1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    iget-boolean v5, p1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    iget v6, p1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;ZI)V

    .line 63
    iput-object p2, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    .line 64
    return-void
.end method


# virtual methods
.method public getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    return-object v0
.end method
