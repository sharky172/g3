.class public Lcom/lge/telephony/LGSimInfo;
.super Ljava/lang/Object;
.source "LGSimInfo.java"


# static fields
.field private static final sInstance:Lcom/lge/telephony/LGSimInfo;

.field private static sIsMultiSimEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/lge/telephony/LGSimInfo;

    invoke-direct {v0}, Lcom/lge/telephony/LGSimInfo;-><init>()V

    sput-object v0, Lcom/lge/telephony/LGSimInfo;->sInstance:Lcom/lge/telephony/LGSimInfo;

    .line 13
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/lge/telephony/LGSimInfo;->sIsMultiSimEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getDefault()Lcom/lge/telephony/LGSimInfo;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/lge/telephony/LGSimInfo;->sInstance:Lcom/lge/telephony/LGSimInfo;

    return-object v0
.end method


# virtual methods
.method public getMcc()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 38
    sget-boolean v4, Lcom/lge/telephony/LGSimInfo;->sIsMultiSimEnabled:Z

    if-eqz v4, :cond_1

    .line 39
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    .line 40
    .local v2, subscription:I
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, mSimNumeric:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 44
    .end local v0           #mSimNumeric:Ljava/lang/String;
    .end local v2           #subscription:I
    :cond_0
    :goto_0
    return-object v3

    .line 43
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, numeric:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x3

    .line 49
    sget-boolean v4, Lcom/lge/telephony/LGSimInfo;->sIsMultiSimEnabled:Z

    if-eqz v4, :cond_1

    .line 50
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    .line 51
    .local v2, subscription:I
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, mSimNumeric:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    .end local v0           #mSimNumeric:Ljava/lang/String;
    .end local v2           #subscription:I
    :cond_0
    :goto_0
    return-object v3

    .line 54
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, numeric:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    sget-boolean v1, Lcom/lge/telephony/LGSimInfo;->sIsMultiSimEnabled:Z

    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    .line 31
    .local v0, subscription:I
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    .end local v0           #subscription:I
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
