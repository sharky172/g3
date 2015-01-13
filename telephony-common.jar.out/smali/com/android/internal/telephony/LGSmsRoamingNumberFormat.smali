.class public Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;
.super Ljava/lang/Object;
.source "LGSmsRoamingNumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;,
        Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;,
        Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AssistDialPNUtils;
    }
.end annotation


# static fields
.field private static areacodeInfo:[Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

.field private static mAssistDialPNUtils:Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AssistDialPNUtils;

.field private static mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

.field private static sInstance:Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    new-instance v0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AssistDialPNUtils;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AssistDialPNUtils;-><init>(Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    sput-object v0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mAssistDialPNUtils:Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AssistDialPNUtils;

    .line 22
    sput-object v1, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    .line 23
    sput-object v1, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->areacodeInfo:[Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    if-nez v0, :cond_0

    .line 40
    invoke-static {p1}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->initCountryOriginDataTable(Landroid/content/Context;)V

    .line 42
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->areacodeInfo:[Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->initAreaCodeInfo()V

    .line 45
    :cond_1
    return-void
.end method

.method private getAreacodeInfo(Ljava/lang/String;)Z
    .locals 7
    .parameter "pNumber"

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, i:I
    const/4 v0, 0x0

    .line 83
    .local v0, areacode:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1

    .line 85
    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    const/4 v1, 0x0

    :goto_1
    sget-object v4, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->areacodeInfo:[Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 97
    sget-object v4, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->areacodeInfo:[Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;->getAreacode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 102
    :cond_0
    return v2

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_0

    .line 93
    const/4 v4, 0x3

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    const-class v1, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;

    monitor-enter v1

    :try_start_0
    const-string v0, "You are using LGSmsRoamingNumberFormat"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->sInstance:Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    if-nez v0, :cond_1

    .line 51
    :cond_0
    const-string v0, "Creating LGSmsRoamingNumberFormat"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 52
    new-instance v0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->sInstance:Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;

    .line 55
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->sInstance:Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getDialLengthBeforePause(Ljava/lang/String;)I
    .locals 3
    .parameter "pNumber"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, count:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    .line 114
    :cond_0
    return v0

    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static initAreaCodeInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 450
    const/16 v0, 0x12d

    new-array v0, v0, [Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "201"

    const-string v4, "New Jersey"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "203"

    const-string v4, "Connecticut"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "204"

    const-string v4, "Manitoba"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "205"

    const-string v4, "Alabama"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "206"

    const-string v4, "Washington"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "207"

    const-string v4, "Maine"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "208"

    const-string v4, "Idaho"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "209"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "210"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "212"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "213"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "214"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "215"

    const-string v4, "Pennsylvania"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "216"

    const-string v4, "Ohio"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "217"

    const-string v4, "Illinois"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "218"

    const-string v4, "Minnesota"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "219"

    const-string v4, "Indiana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "224"

    const-string v4, "Illinois"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "225"

    const-string v4, "Louisiana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "226"

    const-string v4, "Ontario"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "228"

    const-string v4, "Mississippi"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "229"

    const-string v4, "Georgia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "231"

    const-string v4, "Michigan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "234"

    const-string v4, "Ohio"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "239"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "240"

    const-string v4, "Maryland"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "248"

    const-string v4, "Michigan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "250"

    const-string v4, "British Columbia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "251"

    const-string v4, "Alabama"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "252"

    const-string v4, "North Carolina"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "253"

    const-string v4, "Washington"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "254"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "256"

    const-string v4, "Alabama"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "260"

    const-string v4, "Indiana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "262"

    const-string v4, "Wisconsin"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "267"

    const-string v4, "Pennsylvania"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "269"

    const-string v4, "Michigan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "270"

    const-string v4, "Kentucky"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "276"

    const-string v4, "Virginia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "281"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "289"

    const-string v4, "Ontario"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "301"

    const-string v4, "Maryland"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "302"

    const-string v4, "Delaware"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "303"

    const-string v4, "Colorado"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "304"

    const-string v4, "West Virginia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "305"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "306"

    const-string v4, "Saskatchewan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "307"

    const-string v4, "Wyoming"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "308"

    const-string v4, "Nebraska"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "309"

    const-string v4, "Illinois"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "310"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "312"

    const-string v4, "Illinois"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "313"

    const-string v4, "Michigan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "314"

    const-string v4, "Missouri"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "315"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "316"

    const-string v4, "Kansas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "317"

    const-string v4, "Indiana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "318"

    const-string v4, "Louisiana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "319"

    const-string v4, "Iowa"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "320"

    const-string v4, "Minnesota"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "321"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "323"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "325"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "330"

    const-string v4, "Ohio"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "334"

    const-string v4, "Alabama"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "336"

    const-string v4, "North Carolina"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "337"

    const-string v4, "Louisiana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "339"

    const-string v4, "Massachusetts"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "347"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "351"

    const-string v4, "Massachusetts"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "352"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "360"

    const-string v4, "Washington"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "361"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "386"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "401"

    const-string v4, "Rhode Island"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "402"

    const-string v4, "Nebraska"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "403"

    const-string v4, "Alberta"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "404"

    const-string v4, "Georgia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "405"

    const-string v4, "Oklahoma"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "406"

    const-string v4, "Montana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "407"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "408"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "409"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "410"

    const-string v4, "Maryland"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "412"

    const-string v4, "Pennsylvania"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "413"

    const-string v4, "Massachusetts"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "414"

    const-string v4, "Wisconsin"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "415"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "416"

    const-string v4, "Ontario"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "417"

    const-string v4, "Missouri"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "418"

    const-string v4, "Quebec"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "419"

    const-string v4, "Ohio"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "423"

    const-string v4, "Tennessee"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "424"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "425"

    const-string v4, "Washington"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "430"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "432"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "434"

    const-string v4, "Virginia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "435"

    const-string v4, "Utah"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "438"

    const-string v4, "Quebec"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "440"

    const-string v4, "Ohio"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "443"

    const-string v4, "Maryland"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "450"

    const-string v4, "Quebec"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "469"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "478"

    const-string v4, "Georgia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "479"

    const-string v4, "Arkansas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "480"

    const-string v4, "Arizona"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "484"

    const-string v4, "Pennsylvania"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "501"

    const-string v4, "Arkansas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "502"

    const-string v4, "Kentucky"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "503"

    const-string v4, "Oregon"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "504"

    const-string v4, "Louisiana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "505"

    const-string v4, "New Mexico"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "506"

    const-string v4, "New Brunswick"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "507"

    const-string v4, "Minnesota"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "508"

    const-string v4, "Massachusetts"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "509"

    const-string v4, "Washington"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "510"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "512"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "513"

    const-string v4, "Ohio"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "514"

    const-string v4, "Quebec"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "515"

    const-string v4, "Iowa"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "516"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "517"

    const-string v4, "Michigan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "518"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "519"

    const-string v4, "Ontario"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "520"

    const-string v4, "Arizona"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "530"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "540"

    const-string v4, "Virginia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "541"

    const-string v4, "Oregon"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "551"

    const-string v4, "New Jersey"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "559"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "561"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "562"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "563"

    const-string v4, "Iowa"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "567"

    const-string v4, "Ohio"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "570"

    const-string v4, "Pennsylvania"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "571"

    const-string v4, "Virginia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "573"

    const-string v4, "Missouri"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "574"

    const-string v4, "Indiana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "575"

    const-string v4, "New Mexico"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "580"

    const-string v4, "Oklahoma"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "585"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "586"

    const-string v4, "Michigan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "601"

    const-string v4, "Mississippi"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "602"

    const-string v4, "Arizona"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "603"

    const-string v4, "New Hampshire"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "604"

    const-string v4, "British Columbia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "605"

    const-string v4, "South Dakota"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "606"

    const-string v4, "Kentucky"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "607"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "608"

    const-string v4, "Wisconsin"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "609"

    const-string v4, "New Jersey"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "610"

    const-string v4, "Pennsylvania"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "612"

    const-string v4, "Minnesota"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "613"

    const-string v4, "Ontario"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "614"

    const-string v4, "Ohio"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "615"

    const-string v4, "Tennessee"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "616"

    const-string v4, "Michigan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "617"

    const-string v4, "Massachusetts"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "618"

    const-string v4, "Illinois"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "619"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "620"

    const-string v4, "Kansas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "623"

    const-string v4, "Arizona"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "626"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "630"

    const-string v4, "Illinois"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "631"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "636"

    const-string v4, "Missouri"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "641"

    const-string v4, "Iowa"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "646"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "647"

    const-string v4, "Ontario"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "650"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "651"

    const-string v4, "Minnesota"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "660"

    const-string v4, "Missouri"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "661"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "662"

    const-string v4, "Mississippi"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "678"

    const-string v4, "Georgia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "682"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "701"

    const-string v4, "North Dakota"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "702"

    const-string v4, "Nevada"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "703"

    const-string v4, "Virginia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "704"

    const-string v4, "North Carolina"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "705"

    const-string v4, "Ontario"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "706"

    const-string v4, "Georgia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "707"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "708"

    const-string v4, "Illinois"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "709"

    const-string v4, "Newfoundland"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "712"

    const-string v4, "Iowa"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "713"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "714"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "715"

    const-string v4, "Wisconsin"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "716"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "717"

    const-string v4, "Pennsylvania"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "718"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "719"

    const-string v4, "Colorado"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "720"

    const-string v4, "Colorado"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "724"

    const-string v4, "Pennsylvania"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "727"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "731"

    const-string v4, "Tennessee"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "732"

    const-string v4, "New Jersey"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "734"

    const-string v4, "Michigan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "740"

    const-string v4, "Ohio"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "754"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "760"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "763"

    const-string v4, "Minnesota"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "765"

    const-string v4, "Indiana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "767"

    const-string v4, "Dominica"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "769"

    const-string v4, "Mississippi"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "770"

    const-string v4, "Georgia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "772"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "773"

    const-string v4, "Illinois"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "774"

    const-string v4, "Massachusetts"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "775"

    const-string v4, "Nevada"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "778"

    const-string v4, "British Columbia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "780"

    const-string v4, "Alberta"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "781"

    const-string v4, "Massachusetts"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "785"

    const-string v4, "Kansas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "786"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "800"

    const-string v4, "Toll Free Numbers"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "801"

    const-string v4, "Utah"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "802"

    const-string v4, "Vermont"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "803"

    const-string v4, "South Carolina"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "804"

    const-string v4, "Virginia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "805"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "806"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "807"

    const-string v4, "Ontario"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "808"

    const-string v4, "Hawaii"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "809"

    const-string v4, "Dominican Republic"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "812"

    const-string v4, "Indiana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "813"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "814"

    const-string v4, "Pennsylvania"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "815"

    const-string v4, "Illinois"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "816"

    const-string v4, "Missouri"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "817"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "818"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "819"

    const-string v4, "Quebec"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "828"

    const-string v4, "North Carolina"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "830"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "831"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "832"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "843"

    const-string v4, "South Carolina"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "845"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "847"

    const-string v4, "Illinois"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "848"

    const-string v4, "New Jersey"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "850"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "856"

    const-string v4, "New Jersey"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "857"

    const-string v4, "Massachusetts"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "858"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "859"

    const-string v4, "Kentucky"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "860"

    const-string v4, "Connecticut"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "861"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "863"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "864"

    const-string v4, "South Carolina"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "865"

    const-string v4, "Tennessee"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "866"

    const-string v4, "Toll Free Numbers"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "867"

    const-string v4, "Yukon, NW Terr., Nunavut"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "870"

    const-string v4, "Arkansas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "877"

    const-string v4, "Toll Free Numbers"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "878"

    const-string v4, "Pennsylvania"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "888"

    const-string v4, "Toll Free Numbers"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "901"

    const-string v4, "Tennessee"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "902"

    const-string v4, "Nova Scotia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "903"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "904"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "905"

    const-string v4, "Ontario"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "906"

    const-string v4, "Michigan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "907"

    const-string v4, "Alaska"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "908"

    const-string v4, "New Jersey"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "909"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "910"

    const-string v4, "North Carolina"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "912"

    const-string v4, "Georgia"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "913"

    const-string v4, "Kansas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "914"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "915"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "916"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "917"

    const-string v4, "New York"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "918"

    const-string v4, "Oklahoma"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "919"

    const-string v4, "North Carolina"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "920"

    const-string v4, "Wisconsin"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "925"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "928"

    const-string v4, "Arizona"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "931"

    const-string v4, "Tennessee"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "936"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "937"

    const-string v4, "Ohio"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "940"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "941"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "947"

    const-string v4, "Michigan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "949"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "951"

    const-string v4, "California"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "952"

    const-string v4, "Minnesota"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "954"

    const-string v4, "Florida"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "956"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "970"

    const-string v4, "Colorado"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "971"

    const-string v4, "Oregon"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "972"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "973"

    const-string v4, "New Jersey"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "978"

    const-string v4, "Massachusetts"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "979"

    const-string v4, "Texas"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "980"

    const-string v4, "North Carolina"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "985"

    const-string v4, "Louisiana"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-instance v2, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    const-string v3, "989"

    const-string v4, "Michigan"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->areacodeInfo:[Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;

    .line 552
    return-void
.end method

.method private static initCountryOriginDataTable(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 556
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 557
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/constants/SettingsConstants$AssistDial;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 561
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 562
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Lcom/lge/telephony/LGReferenceCountry;

    sput-object v1, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    .line 565
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v8, v1, :cond_2

    .line 567
    new-instance v9, Lcom/lge/telephony/LGReferenceCountry;

    invoke-direct {v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>()V

    .line 569
    .local v9, mRc:Lcom/lge/telephony/LGReferenceCountry;
    const-string v1, "countryindex"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setIndex(I)V

    .line 573
    const-string v1, "countryname"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setCountryName(Ljava/lang/String;)V

    .line 577
    const-string v1, "mcc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setMccCode(Ljava/lang/String;)V

    .line 581
    const-string v1, "countrycode"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setCountryCode(Ljava/lang/String;)V

    .line 585
    const-string v1, "iddprefix"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setIddPrefix(Ljava/lang/String;)V

    .line 589
    const-string v1, "nddprefix"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setNddPrefix(Ljava/lang/String;)V

    .line 593
    const-string v1, "nanp"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setNanp(Ljava/lang/String;)V

    .line 597
    const-string v1, "area"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setAreaCode(Ljava/lang/String;)V

    .line 601
    const-string v1, "length"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setNumLength(Ljava/lang/String;)V

    .line 605
    sget-object v1, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    aput-object v9, v1, v8

    .line 607
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 611
    .end local v8           #i:I
    .end local v9           #mRc:Lcom/lge/telephony/LGReferenceCountry;
    :catch_0
    move-exception v7

    .line 612
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    if-eqz v6, :cond_0

    .line 615
    .end local v7           #e:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 620
    :cond_0
    return-void

    .line 614
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_1

    .line 615
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 614
    :cond_1
    throw v1

    :cond_2
    if-eqz v6, :cond_0

    goto :goto_1
.end method

.method private isVZWSIM()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 118
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, mccmnc:Ljava/lang/String;
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, sim_state:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "READY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 125
    :cond_1
    const-string v3, "3104"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "3105"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "31012"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "311480"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "20404"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "org"

    .prologue
    .line 59
    const-string v2, ""

    .line 62
    .local v2, noHyphen:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v3, v2

    .line 77
    :goto_0
    return-object v3

    .line 66
    :cond_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 68
    .local v0, ch:C
    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x29

    if-eq v0, v3, :cond_1

    const/16 v3, 0x28

    if-eq v0, v3, :cond_1

    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    .line 66
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_2
    const/16 v3, 0x61

    if-gt v3, v0, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_3
    const/16 v3, 0x41

    if-gt v3, v0, :cond_5

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_5

    .line 72
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 74
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .end local v0           #ch:C
    :cond_6
    move-object v3, v2

    .line 77
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized convertNumber(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 23
    .parameter "numOrg"
    .parameter "isCDMA"
    .parameter "context"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    const-string v9, ""

    .line 137
    .local v9, numConverted:Ljava/lang/String;
    const-string v16, ""

    .line 138
    .local v16, returnnumber:Ljava/lang/String;
    const-string v17, ""

    .line 139
    .local v17, strCountry:Ljava/lang/String;
    const/4 v6, 0x0

    .line 140
    .local v6, bNumberPos:I
    const/4 v12, 0x0

    .line 141
    .local v12, otaIdd:Ljava/lang/String;
    const/4 v15, 0x0

    .line 143
    .local v15, refIdd:Ljava/lang/String;
    const/16 v5, 0x20

    .line 144
    .local v5, MAX_SEND_DIAL_LENGTH:I
    const/4 v3, 0x3

    .line 145
    .local v3, MAX_CC_LENGTH:I
    const/4 v14, 0x3

    .line 146
    .local v14, prepend_length:I
    const/4 v4, 0x5

    .line 148
    .local v4, MAX_IDD_LENGTH:I
    if-eqz p1, :cond_0

    .line 149
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat numOrg : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " length : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 152
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->removeHyphen(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 155
    if-nez v9, :cond_2

    move-object/from16 v9, p1

    .line 428
    .end local v9           #numConverted:Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v9

    .line 159
    .restart local v9       #numConverted:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->isVZWSIM()Z

    move-result v19

    if-nez v19, :cond_3

    .line 160
    const-string v19, "LGSmsRoamingNumberFormat It\'s not verizon Sim card"

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, p1

    .line 161
    goto :goto_0

    .line 164
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat isCDMA : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 166
    sget-object v19, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    move-object/from16 v0, v19

    array-length v10, v0

    .line 167
    .local v10, numCountry:I
    const-string v18, "011"

    .line 168
    .local v18, strPrepend:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat numCountry : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->getDialLengthBeforePause(Ljava/lang/String;)I

    move-result v6

    .line 171
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat bNumberPos : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 173
    sget-object v19, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mAssistDialPNUtils:Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AssistDialPNUtils;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AssistDialPNUtils;->getAssistedDialCurrentCountryInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v13

    .line 176
    .local v13, params:[Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2a

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x23

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 178
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat exception case : start \'*\' or \'#\' "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 136
    .end local v3           #MAX_CC_LENGTH:I
    .end local v4           #MAX_IDD_LENGTH:I
    .end local v5           #MAX_SEND_DIAL_LENGTH:I
    .end local v6           #bNumberPos:I
    .end local v9           #numConverted:Ljava/lang/String;
    .end local v10           #numCountry:I
    .end local v12           #otaIdd:Ljava/lang/String;
    .end local v13           #params:[Ljava/lang/String;
    .end local v14           #prepend_length:I
    .end local v15           #refIdd:Ljava/lang/String;
    .end local v16           #returnnumber:Ljava/lang/String;
    .end local v17           #strCountry:Ljava/lang/String;
    .end local v18           #strPrepend:Ljava/lang/String;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 181
    .restart local v3       #MAX_CC_LENGTH:I
    .restart local v4       #MAX_IDD_LENGTH:I
    .restart local v5       #MAX_SEND_DIAL_LENGTH:I
    .restart local v6       #bNumberPos:I
    .restart local v9       #numConverted:Ljava/lang/String;
    .restart local v10       #numCountry:I
    .restart local v12       #otaIdd:Ljava/lang/String;
    .restart local v13       #params:[Ljava/lang/String;
    .restart local v14       #prepend_length:I
    .restart local v15       #refIdd:Ljava/lang/String;
    .restart local v16       #returnnumber:Ljava/lang/String;
    .restart local v17       #strCountry:Ljava/lang/String;
    .restart local v18       #strPrepend:Ljava/lang/String;
    :cond_5
    const/16 v19, 0x20

    move/from16 v0, v19

    if-gt v6, v0, :cond_6

    :try_start_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 183
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat exception case : Over Number digit "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    :cond_7
    const/16 v19, 0x0

    aget-object v19, v13, v19

    if-nez v19, :cond_8

    .line 186
    const-string v19, "LGSmsRoamingNumberFormat currentCountry is null"

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    :cond_8
    const/16 v19, 0xa

    move/from16 v0, v19

    if-lt v6, v0, :cond_1

    .line 197
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 198
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "7"

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "20"

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "65"

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "90"

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 200
    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 7,20,65,90 exception number : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 206
    :cond_a
    const/16 v19, 0x1

    aget-object v12, v13, v19

    .line 207
    const/16 v19, 0x2

    aget-object v11, v13, v19

    .line 208
    .local v11, otaCC:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 1 currentCountry IDD : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  currentCountry CountryCode :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 210
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 211
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->getAreacodeInfo(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 212
    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 213
    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 215
    move-object/from16 v16, v9

    move-object/from16 v9, v16

    .line 216
    goto/16 :goto_0

    .line 218
    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "+1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v9, v16

    .line 219
    goto/16 :goto_0

    .line 225
    :cond_c
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 243
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->getAreacodeInfo(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 244
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x31

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 247
    if-eqz p2, :cond_d

    .line 248
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 249
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 2 CDMA NANP Remove +1 ADDR : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, v16

    .line 250
    goto/16 :goto_0

    .line 252
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 3 GSM NANP Bypass +1 ADDR : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    :cond_e
    const/16 v19, 0x1

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "011"

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 263
    const-string v7, ""

    .line 264
    .local v7, countryStr:Ljava/lang/String;
    const/16 v19, 0x4

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 265
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v10, :cond_1

    .line 266
    sget-object v19, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v19, v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v17

    .line 267
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 268
    move-object/from16 v16, v18

    .line 269
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 270
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 4 Not NANP Checked Country Number(+011) : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Country :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v20, v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, v16

    .line 271
    goto/16 :goto_0

    .line 265
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 280
    .end local v7           #countryStr:Ljava/lang/String;
    .end local v8           #i:I
    :cond_10
    const/4 v7, 0x0

    .line 281
    .restart local v7       #countryStr:Ljava/lang/String;
    const/16 v19, 0x1

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 282
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    if-ge v8, v10, :cond_1

    .line 283
    sget-object v19, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v19, v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v17

    .line 284
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 5 Not NANP Checked <+>countryStr : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  strCountry :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 285
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 286
    move-object/from16 v16, v18

    .line 287
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 288
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 6 Not NANP Checked <+>Country Number : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Country :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v20, v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, v16

    .line 289
    goto/16 :goto_0

    .line 282
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 296
    .end local v7           #countryStr:Ljava/lang/String;
    .end local v8           #i:I
    :cond_12
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x31

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 301
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->getAreacodeInfo(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 302
    if-eqz p2, :cond_13

    .line 303
    move-object/from16 v16, v9

    .line 304
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 7 CDMA NANP Only 1-908-XXXXXXX digit ADDR convert: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, v16

    .line 305
    goto/16 :goto_0

    .line 308
    :cond_13
    move-object/from16 v16, v9

    .line 309
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 8 GSM NANP Only 1-908-XXXXXXX digit ADDR convert: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, v16

    .line 310
    goto/16 :goto_0

    .line 313
    :cond_14
    const/16 v19, 0x0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "011"

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 314
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->getAreacodeInfo(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 315
    if-eqz p2, :cond_15

    .line 316
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x31

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 317
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 318
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 9 CDMA NANP Only 0111-908-XXXXXXX digit ADDR convert: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, v16

    .line 319
    goto/16 :goto_0

    .line 323
    :cond_15
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x31

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 324
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 325
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 10 GSM NANP Only 0111-908-XXXXXXX digit ADDR convert: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, v16

    .line 326
    goto/16 :goto_0

    .line 339
    :cond_16
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 12 Not NANP Checked Start <011>Country Number : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 345
    :cond_17
    const/4 v2, 0x0

    .line 346
    .local v2, IddStr:Ljava/lang/String;
    const/4 v7, 0x0

    .line 348
    .restart local v7       #countryStr:Ljava/lang/String;
    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 349
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 13 Check Current(Local) IDD : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  User Input IDD :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 350
    const/16 v19, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b

    .line 352
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->getAreacodeInfo(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 357
    if-eqz p2, :cond_18

    .line 358
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x31

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 359
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 360
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 14 CDMA NANP <Local IDD><1><Number> convert: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, v16

    .line 361
    goto/16 :goto_0

    .line 364
    :cond_18
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x31

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 365
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 366
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 15 GSM NANP <Local IDD><1><Number> convert: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, v16

    .line 367
    goto/16 :goto_0

    .line 372
    :cond_19
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    if-ge v8, v10, :cond_1

    .line 373
    sget-object v19, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v19, v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v17

    .line 374
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 376
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 16 International Number Not NANP :  <Local IDD><CC><Number>  countryStr: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "   strCountry :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 377
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 378
    move-object/from16 v16, v18

    .line 379
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 380
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 17 International Number Not NANP :  <Local IDD><CC><Number>  : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Country :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v20, v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, v16

    .line 381
    goto/16 :goto_0

    .line 372
    :cond_1a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 387
    .end local v8           #i:I
    :cond_1b
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_4
    if-ge v8, v10, :cond_1d

    .line 389
    sget-object v19, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v19, v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v15

    .line 390
    sget-object v19, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v19, v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v17

    .line 392
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 18 Not NANP Checked refIdd : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Idd of numConverted:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 393
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 19 strCountry : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Country of numConverted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 395
    if-eqz v15, :cond_1c

    .line 396
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_1c

    const/16 v19, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 398
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_1c

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 400
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 401
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 20 Not NANP Checked <IDD><Country><Number> : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move-object/from16 v9, v16

    .line 402
    goto/16 :goto_0

    .line 387
    :cond_1c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 408
    :cond_1d
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v10, :cond_1

    .line 409
    sget-object v19, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;->mRefCountryList:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v19, v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v17

    .line 410
    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 411
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 21 strCountry : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " countryStr "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 412
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_1e

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 413
    move-object/from16 v16, v18

    .line 414
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 415
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LGSmsRoamingNumberFormat 22 Not NANP Checked <Country><Number> : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  Converted : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v9, v16

    .line 416
    goto/16 :goto_0

    .line 408
    :cond_1e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5
.end method
