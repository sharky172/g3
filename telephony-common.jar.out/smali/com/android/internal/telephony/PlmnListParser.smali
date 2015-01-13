.class public Lcom/android/internal/telephony/PlmnListParser;
.super Ljava/lang/Object;
.source "PlmnListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    }
.end annotation


# static fields
.field private static final ATTR_LONG_NAME:Ljava/lang/String; = "long_name"

.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final ATTR_SHORT_NAME:Ljava/lang/String; = "short_name"

.field private static final CUPSS_DIR:Ljava/lang/String; = null

.field private static final CUPSS_MCC_MNC_PLMNS_FILE:Ljava/lang/String; = "/config/plmns-mcc%s-mnc%s.xml"

.field private static final CUPSS_MCC_PLMNS_FILE:Ljava/lang/String; = "/config/plmns-mcc%s.xml"

.field private static final CUPSS_PLMNS_FILE:Ljava/lang/String; = "/config/plmns.xml"

.field private static final ELEMENT_NETWORK:Ljava/lang/String; = "network"

.field private static final ELEMENT_PLMNS:Ljava/lang/String; = "plmns"

.field private static final LOG_TAG:Ljava/lang/String; = "PlmnListParser"

.field private static final PLMNS_FILE:Ljava/lang/String; = "etc/plmns.xml"

.field private static mInstance:Lcom/android/internal/telephony/PlmnListParser;

.field private static mIsSimAvailable:Z

.field private static mPlmnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PlmnListParser$PlmnData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    const-string v0, "ro.lge.capp_cupss.rootdir"

    const-string v1, "/cust"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PlmnListParser;->CUPSS_DIR:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PlmnListParser;->mIsSimAvailable:Z

    .line 57
    sput-object v2, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    .line 58
    sput-object v2, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/PlmnListParser;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/internal/telephony/PlmnListParser;

    invoke-direct {v0}, Lcom/android/internal/telephony/PlmnListParser;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    .line 84
    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    invoke-direct {v0}, Lcom/android/internal/telephony/PlmnListParser;->parsePlmnsList()V

    .line 87
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PlmnListParser;->mIsSimAvailable:Z

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    invoke-direct {v0}, Lcom/android/internal/telephony/PlmnListParser;->parsePlmnsList()V

    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/PlmnListParser;->mIsSimAvailable:Z

    .line 93
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    return-object v0
.end method

.method private loadPlmnData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 174
    const-string v1, "network"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "mcc"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, mcc:Ljava/lang/String;
    const-string v1, "mnc"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, mnc:Ljava/lang/String;
    const-string v1, "long_name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, longName:Ljava/lang/String;
    const-string v1, "short_name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, shortName:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PlmnListParser$PlmnData;-><init>(Lcom/android/internal/telephony/PlmnListParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mnc:Ljava/lang/String;
    .end local v4           #longName:Ljava/lang/String;
    .end local v5           #shortName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private parsePlmnsList()V
    .locals 9

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/PlmnListParser;->resolveBestPlmnFile()Ljava/io/File;

    move-result-object v4

    .line 126
    .local v4, plmnFile:Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v5, 0x0

    .line 136
    .local v5, reader:Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    .end local v5           #reader:Ljava/io/FileReader;
    .local v6, reader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 139
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 140
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 142
    const-string v7, "plmns"

    invoke-static {v3, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 146
    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 148
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PlmnListParser;->loadPlmnData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/PlmnListParser$PlmnData;

    move-result-object v2

    .line 150
    .local v2, item:Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    if-eqz v2, :cond_3

    .line 152
    sget-object v7, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    if-nez v7, :cond_2

    .line 153
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    .line 156
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    iget-object v8, v2, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->numeric:Ljava/lang/String;

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 161
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #item:Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 162
    .end local v6           #reader:Ljava/io/FileReader;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v5       #reader:Ljava/io/FileReader;
    :goto_2
    :try_start_2
    const-string v7, "PlmnListParser"

    const-string v8, "Could not find plmns file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    goto :goto_0

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v1       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2       #item:Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #reader:Ljava/io/FileReader;
    :cond_3
    if-eqz v6, :cond_4

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_3
    move-object v5, v6

    .line 169
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_0

    .line 164
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #item:Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v7, "PlmnListParser"

    const-string v8, "Exception while parsing plmns file"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    if-eqz v5, :cond_0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v5, :cond_5

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_6
    throw v7

    :catch_3
    move-exception v8

    goto :goto_6

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v1       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2       #item:Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_4
    move-exception v7

    goto :goto_3

    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #item:Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_5

    .line 164
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_5
    move-exception v0

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_4

    .line 161
    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method private resolveBestPlmnFile()Ljava/io/File;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 189
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, networkOperator:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_1

    .line 192
    invoke-virtual {v7, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, mcc:Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, mnc:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/internal/telephony/PlmnListParser;->CUPSS_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/config/plmns-mcc%s-mnc%s.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v10

    aput-object v6, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, mccmncfileName:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v4, mccmncFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 217
    .end local v1           #mcc:Ljava/lang/String;
    .end local v4           #mccmncFile:Ljava/io/File;
    .end local v5           #mccmncfileName:Ljava/lang/String;
    .end local v6           #mnc:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 203
    .restart local v1       #mcc:Ljava/lang/String;
    .restart local v4       #mccmncFile:Ljava/io/File;
    .restart local v5       #mccmncfileName:Ljava/lang/String;
    .restart local v6       #mnc:Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/internal/telephony/PlmnListParser;->CUPSS_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/config/plmns-mcc%s.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, mccfileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, mccFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v4, v2

    .line 206
    goto :goto_0

    .line 211
    .end local v1           #mcc:Ljava/lang/String;
    .end local v2           #mccFile:Ljava/io/File;
    .end local v3           #mccfileName:Ljava/lang/String;
    .end local v4           #mccmncFile:Ljava/io/File;
    .end local v5           #mccmncfileName:Ljava/lang/String;
    .end local v6           #mnc:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/internal/telephony/PlmnListParser;->CUPSS_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/config/plmns.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, cupssFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v4, v0

    .line 213
    goto :goto_0

    .line 217
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/plmns.xml"

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getLongName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "numeric"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PlmnListParser;->isPlmnAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PlmnListParser$PlmnData;

    iget-object v0, v1, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->longName:Ljava/lang/String;

    .line 103
    .local v0, longName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const-string v1, "PlmnListParser"

    const-string v2, "Found the long name %s for numeric %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0           #longName:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "numeric"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PlmnListParser;->isPlmnAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PlmnListParser$PlmnData;

    iget-object v0, v1, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->shortName:Ljava/lang/String;

    .line 114
    .local v0, shortName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, "PlmnListParser"

    const-string v2, "Found the short name %s for numeric %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0           #shortName:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlmnAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "numeric"

    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
