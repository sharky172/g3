.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BEST:I = 0x6

#the value of this static final field might be set in the static constructor
.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x0

.field public static final SIGNAL_STRENGTH_AWESOME:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static lastEcIoIndex:I

.field private static lastEcIoValues:[I

.field private static mLGRssiData:Lcom/lge/telephony/LGRssiData;


# instance fields
.field private AU_LTE_RSRP_VALUE:[I

.field private CMCC_LTE_RSRP_VALUE:[I

.field private LGE_GSM_ASU_VALUE:[I

.field private LGE_LTE_RSRP_VALUE:[I

.field private LGE_UMTS_ASU_VALUE:[I

.field private datafeature:I

.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mRadioTechnology:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 76
    invoke-static {}, Landroid/telephony/SignalStrength;->getNumSignalStrength()I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 78
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "none"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    const-string v1, "awesome"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "best"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 121
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    .line 123
    sput v3, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    .line 444
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 121
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x63

    const/4 v4, 0x0

    const v3, 0x7fffffff

    const/4 v2, 0x5

    const/4 v1, -0x1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v4, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 111
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 112
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/telephony/SignalStrength;->AU_LTE_RSRP_VALUE:[I

    .line 113
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/telephony/SignalStrength;->CMCC_LTE_RSRP_VALUE:[I

    .line 114
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 115
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 150
    iput v5, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 151
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 152
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 153
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 154
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 155
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 156
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 157
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 158
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 159
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 160
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 161
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 162
    iput v3, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 165
    iput v4, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 168
    iput v4, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 170
    return-void

    .line 111
    :array_0
    .array-data 0x4
        0xact 0xfft 0xfft 0xfft
        0xa2t 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x81t 0xfft 0xfft 0xfft
    .end array-data

    .line 112
    :array_1
    .array-data 0x4
        0xa7t 0xfft 0xfft 0xfft
        0x9dt 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 113
    :array_2
    .array-data 0x4
        0x9ft 0xfft 0xfft 0xfft
        0x97t 0xfft 0xfft 0xfft
        0x92t 0xfft 0xfft 0xfft
        0x8dt 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 115
    :array_4
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "tdScdmaRscp"
    .parameter "gsmFlag"

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 111
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 112
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/telephony/SignalStrength;->AU_LTE_RSRP_VALUE:[I

    .line 113
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Landroid/telephony/SignalStrength;->CMCC_LTE_RSRP_VALUE:[I

    .line 114
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 115
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 225
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 228
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 229
    return-void

    .line 111
    nop

    :array_0
    .array-data 0x4
        0xact 0xfft 0xfft 0xfft
        0xa2t 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x81t 0xfft 0xfft 0xfft
    .end array-data

    .line 112
    :array_1
    .array-data 0x4
        0xa7t 0xfft 0xfft 0xfft
        0x9dt 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 113
    :array_2
    .array-data 0x4
        0x9ft 0xfft 0xfft 0xfft
        0x97t 0xfft 0xfft 0xfft
        0x92t 0xfft 0xfft 0xfft
        0x8dt 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 115
    :array_4
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 2
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsmFlag"

    .prologue
    const/4 v1, 0x5

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 112
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/telephony/SignalStrength;->AU_LTE_RSRP_VALUE:[I

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/telephony/SignalStrength;->CMCC_LTE_RSRP_VALUE:[I

    .line 114
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 115
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 210
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 213
    return-void

    .line 111
    :array_0
    .array-data 0x4
        0xact 0xfft 0xfft 0xfft
        0xa2t 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x81t 0xfft 0xfft 0xfft
    .end array-data

    .line 112
    :array_1
    .array-data 0x4
        0xa7t 0xfft 0xfft 0xfft
        0x9dt 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 113
    :array_2
    .array-data 0x4
        0x9ft 0xfft 0xfft 0xfft
        0x97t 0xfft 0xfft 0xfft
        0x92t 0xfft 0xfft 0xfft
        0x8dt 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 115
    :array_4
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsmFlag"

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 111
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/telephony/SignalStrength;->AU_LTE_RSRP_VALUE:[I

    .line 113
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/telephony/SignalStrength;->CMCC_LTE_RSRP_VALUE:[I

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 115
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 240
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 243
    return-void

    .line 111
    :array_0
    .array-data 0x4
        0xact 0xfft 0xfft 0xfft
        0xa2t 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x81t 0xfft 0xfft 0xfft
    .end array-data

    .line 112
    :array_1
    .array-data 0x4
        0xa7t 0xfft 0xfft 0xfft
        0x9dt 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 113
    :array_2
    .array-data 0x4
        0x9ft 0xfft 0xfft 0xfft
        0x97t 0xfft 0xfft 0xfft
        0x92t 0xfft 0xfft 0xfft
        0x8dt 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 115
    :array_4
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x5

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 111
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 112
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/telephony/SignalStrength;->AU_LTE_RSRP_VALUE:[I

    .line 113
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Landroid/telephony/SignalStrength;->CMCC_LTE_RSRP_VALUE:[I

    .line 114
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 115
    new-array v1, v2, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of signalstrength parcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 374
    return-void

    .line 111
    :array_0
    .array-data 0x4
        0xact 0xfft 0xfft 0xfft
        0xa2t 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x81t 0xfft 0xfft 0xfft
    .end array-data

    .line 112
    :array_1
    .array-data 0x4
        0xa7t 0xfft 0xfft 0xfft
        0x9dt 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 113
    :array_2
    .array-data 0x4
        0x9ft 0xfft 0xfft 0xfft
        0x97t 0xfft 0xfft 0xfft
        0x92t 0xfft 0xfft 0xfft
        0x8dt 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 115
    :array_4
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "s"

    .prologue
    const/4 v1, 0x5

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 112
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/telephony/SignalStrength;->AU_LTE_RSRP_VALUE:[I

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/telephony/SignalStrength;->CMCC_LTE_RSRP_VALUE:[I

    .line 114
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 115
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 253
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 254
    return-void

    .line 111
    :array_0
    .array-data 0x4
        0xact 0xfft 0xfft 0xfft
        0xa2t 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x81t 0xfft 0xfft 0xfft
    .end array-data

    .line 112
    :array_1
    .array-data 0x4
        0xa7t 0xfft 0xfft 0xfft
        0x9dt 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 113
    :array_2
    .array-data 0x4
        0x9ft 0xfft 0xfft 0xfft
        0x97t 0xfft 0xfft 0xfft
        0x92t 0xfft 0xfft 0xfft
        0x8dt 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 115
    :array_4
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 6
    .parameter "gsmFlag"

    .prologue
    const/16 v5, 0x63

    const/4 v4, 0x0

    const v3, 0x7fffffff

    const/4 v2, 0x5

    const/4 v1, -0x1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v4, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 111
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 112
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/telephony/SignalStrength;->AU_LTE_RSRP_VALUE:[I

    .line 113
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/telephony/SignalStrength;->CMCC_LTE_RSRP_VALUE:[I

    .line 114
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 115
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 181
    iput v5, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 182
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 183
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 184
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 185
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 186
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 187
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 188
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 189
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 190
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 191
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 192
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 193
    iput v3, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 194
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 196
    iput v4, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 198
    return-void

    .line 111
    nop

    :array_0
    .array-data 0x4
        0xact 0xfft 0xfft 0xfft
        0xa2t 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x81t 0xfft 0xfft 0xfft
    .end array-data

    .line 112
    :array_1
    .array-data 0x4
        0xa7t 0xfft 0xfft 0xfft
        0x9dt 0xfft 0xfft 0xfft
        0x98t 0xfft 0xfft 0xfft
        0x8et 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 113
    :array_2
    .array-data 0x4
        0x9ft 0xfft 0xfft 0xfft
        0x97t 0xfft 0xfft 0xfft
        0x92t 0xfft 0xfft 0xfft
        0x8dt 0xfft 0xfft 0xfft
        0x88t 0xfft 0xfft 0xfft
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 115
    :array_4
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private checkOperatorbaseonIMSI(Ljava/lang/String;)Z
    .locals 6
    .parameter "operator"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 2154
    const/4 v0, 0x0

    .line 2155
    .local v0, result:Z
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2157
    .local v1, sim_imsi:Ljava/lang/String;
    const-string v2, "H3G"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2159
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "23205"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "23210"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "24002"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "22299"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "23420"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "23594"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "45403"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "45404"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2163
    :cond_0
    const-string v2, "checkOperatorbaseonIMSI: H3G IMSI"

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2164
    const/4 v0, 0x1

    .line 2174
    :cond_1
    :goto_0
    return v0

    .line 2168
    :cond_2
    const-string v2, "checkOperatorbaseonIMSI: No H3G"

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGsmUmtsLevelATT()I
    .locals 6

    .prologue
    .line 1720
    const/4 v2, 0x0

    .line 1722
    .local v2, level:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 1723
    .local v1, asu_dBm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    .line 1724
    .local v0, asu_Ecio:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v3

    .line 1726
    .local v3, mDataNetType:I
    packed-switch v3, :pswitch_data_0

    .line 1743
    :pswitch_0
    const v4, -0x37849

    if-ne v0, v4, :cond_0

    .line 1745
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->getRSSIindexGsm(I)I

    move-result v2

    .line 1754
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE_DEBUG] ATT getGsmUmtsLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1755
    return v2

    .line 1730
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->getRSSIindexGsm(I)I

    move-result v2

    .line 1731
    goto :goto_0

    .line 1738
    :pswitch_2
    invoke-direct {p0, v1, v0}, Landroid/telephony/SignalStrength;->getRSSIindexUmts(II)I

    move-result v2

    .line 1739
    goto :goto_0

    .line 1747
    :cond_0
    invoke-direct {p0, v1, v0}, Landroid/telephony/SignalStrength;->getRSSIindexUmts(II)I

    move-result v2

    goto :goto_0

    .line 1726
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getGsmUmtsLevelH3G()I
    .locals 6

    .prologue
    .line 2064
    const/4 v2, 0x0

    .line 2066
    .local v2, level:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 2067
    .local v1, asu_dBm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    .line 2068
    .local v0, asu_Ecio:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v3

    .line 2070
    .local v3, mDataNetType:I
    packed-switch v3, :pswitch_data_0

    .line 2087
    :pswitch_0
    const v4, -0x37849

    if-ne v0, v4, :cond_0

    .line 2089
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->getRSSIindexGsm(I)I

    move-result v2

    .line 2098
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE_DEBUG] H3G getGsmUmtsLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2099
    return v2

    .line 2074
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->getRSSIindexGsm(I)I

    move-result v2

    .line 2075
    goto :goto_0

    .line 2082
    :pswitch_2
    invoke-direct {p0, v1, v0}, Landroid/telephony/SignalStrength;->getRSSIindexUmts(II)I

    move-result v2

    .line 2083
    goto :goto_0

    .line 2091
    :cond_0
    invoke-direct {p0, v1, v0}, Landroid/telephony/SignalStrength;->getRSSIindexUmts(II)I

    move-result v2

    goto :goto_0

    .line 2070
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getGsmUmtsLevelTMO()I
    .locals 6

    .prologue
    .line 1812
    const/4 v2, 0x0

    .line 1814
    .local v2, level:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 1815
    .local v1, asu_dBm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    .line 1816
    .local v0, asu_Ecio:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v3

    .line 1818
    .local v3, mDataNetType:I
    packed-switch v3, :pswitch_data_0

    .line 1835
    :pswitch_0
    const v4, -0x37849

    if-ne v0, v4, :cond_0

    .line 1837
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->getRSSIindexGsm(I)I

    move-result v2

    .line 1846
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE_DEBUG] TMO getGsmUmtsLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1847
    return v2

    .line 1822
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->getRSSIindexGsm(I)I

    move-result v2

    .line 1823
    goto :goto_0

    .line 1830
    :pswitch_2
    invoke-direct {p0, v1, v0}, Landroid/telephony/SignalStrength;->getRSSIindexUmts(II)I

    move-result v2

    .line 1831
    goto :goto_0

    .line 1839
    :cond_0
    invoke-direct {p0, v1, v0}, Landroid/telephony/SignalStrength;->getRSSIindexUmts(II)I

    move-result v2

    goto :goto_0

    .line 1818
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getItemLevel(II[I)I
    .locals 4
    .parameter "value"
    .parameter "valid"
    .parameter "range"

    .prologue
    const v3, 0x7fffffff

    const/16 v2, 0x63

    .line 2117
    const/4 v1, 0x0

    .line 2120
    .local v1, level:I
    if-nez p3, :cond_0

    .line 2121
    const/4 v2, -0x1

    .line 2132
    :goto_0
    return v2

    .line 2123
    :cond_0
    if-ne p2, v2, :cond_1

    if-eq p1, v2, :cond_3

    :cond_1
    if-ne p2, v3, :cond_2

    if-eq p1, v3, :cond_3

    :cond_2
    if-le p1, p2, :cond_4

    .line 2124
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2126
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_5

    .line 2127
    aget v2, p3, v0

    if-lt p1, v2, :cond_6

    .line 2131
    :cond_5
    sget v2, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v3, v0, 0x1

    sub-int v1, v2, v3

    move v2, v1

    .line 2132
    goto :goto_0

    .line 2126
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getItemLevel(I[I)I
    .locals 4
    .parameter "value"
    .parameter "range"

    .prologue
    .line 2137
    const/4 v1, 0x0

    .line 2140
    .local v1, level:I
    if-nez p2, :cond_0

    .line 2141
    const/4 v2, -0x1

    .line 2148
    :goto_0
    return v2

    .line 2142
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 2143
    aget v2, p2, v0

    if-lt p1, v2, :cond_2

    .line 2147
    :cond_1
    sget v2, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v3, v0, 0x1

    sub-int v1, v2, v3

    move v2, v1

    .line 2148
    goto :goto_0

    .line 2142
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getLGRssiData()Lcom/lge/telephony/LGRssiData;
    .locals 1

    .prologue
    .line 2109
    sget-object v0, Landroid/telephony/SignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    if-nez v0, :cond_0

    .line 2110
    invoke-static {}, Lcom/lge/telephony/LGRssiData;->getInstance()Lcom/lge/telephony/LGRssiData;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    .line 2111
    sget-object v0, Landroid/telephony/SignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    invoke-virtual {v0}, Lcom/lge/telephony/LGRssiData;->init()V

    .line 2112
    const-string v0, "getLGRssiData: mLGRssiData is null"

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2114
    :cond_0
    sget-object v0, Landroid/telephony/SignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    return-object v0
.end method

.method private getLevelATT()I
    .locals 3

    .prologue
    .line 1671
    const/4 v1, 0x0

    .line 1672
    .local v1, level:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1674
    .local v0, asu:I
    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v2, :cond_0

    .line 1675
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelATT()I

    move-result v1

    .line 1676
    if-nez v1, :cond_0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_0

    .line 1677
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmUmtsLevelATT()I

    move-result v1

    .line 1681
    :cond_0
    return v1
.end method

.method private getLevelCT()I
    .locals 5

    .prologue
    .line 1640
    const/4 v2, 0x0

    .line 1642
    .local v2, level:I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 1643
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1644
    if-nez v2, :cond_0

    .line 1645
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 1664
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevelCT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1665
    return v2

    .line 1648
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1649
    if-nez v2, :cond_0

    .line 1650
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1651
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 1652
    .local v1, evdoLevel:I
    if-nez v1, :cond_2

    .line 1654
    move v2, v0

    goto :goto_0

    .line 1655
    :cond_2
    if-nez v0, :cond_3

    .line 1657
    move v2, v1

    goto :goto_0

    .line 1660
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    :goto_1
    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method private getLevelH3G()I
    .locals 3

    .prologue
    .line 2012
    const/4 v1, 0x0

    .line 2013
    .local v1, level:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 2015
    .local v0, asu:I
    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v2, :cond_0

    .line 2016
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelH3G()I

    move-result v1

    .line 2017
    if-nez v1, :cond_0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_0

    .line 2018
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmUmtsLevelH3G()I

    move-result v1

    .line 2022
    :cond_0
    return v1
.end method

.method private getLevelKDDI()I
    .locals 5

    .prologue
    .line 1599
    const/4 v2, 0x0

    .line 1601
    .local v2, level:I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 1602
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1603
    if-nez v2, :cond_0

    .line 1604
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 1607
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const/16 v4, -0x78

    if-eq v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const/16 v4, -0xa0

    if-eq v3, v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1610
    const-string v3, "KDDI signalstrength When in call"

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    .line 1633
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevelKDDI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1634
    return v2

    .line 1615
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1616
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 1617
    .local v1, evdoLevel:I
    if-nez v1, :cond_3

    .line 1619
    move v2, v0

    .line 1628
    :goto_1
    if-nez v2, :cond_1

    .line 1629
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMALEVEL is Unknown , getLteLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1620
    :cond_3
    if-nez v0, :cond_4

    .line 1622
    move v2, v1

    goto :goto_1

    .line 1625
    :cond_4
    if-ge v0, v1, :cond_5

    move v2, v0

    :goto_2
    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method private getLevelKR()I
    .locals 4

    .prologue
    .line 638
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_2

    .line 641
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 642
    .local v0, level:I
    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 657
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevelKR level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 659
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .end local v0           #level:I
    :cond_1
    return v0

    .line 645
    :cond_2
    const/4 v1, 0x0

    const-string/jumbo v2, "support_svlte"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    const-string/jumbo v2, "net.ims.ims_indicator"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 651
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0

    .line 654
    .end local v0           #level:I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0
.end method

.method private getLevelSPR()I
    .locals 4

    .prologue
    .line 1491
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 1492
    .local v1, networkType:I
    const/4 v0, 0x0

    .line 1494
    .local v0, level:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGsm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1496
    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v2, :cond_2

    .line 1497
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 1498
    if-nez v0, :cond_1

    .line 1499
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 1500
    if-nez v0, :cond_1

    .line 1501
    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 1505
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .line 1544
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report RSSI  (SPR) level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1545
    return v0

    .line 1511
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1512
    const-string v2, "getCallState = CALL_STATE_OFFHOOK"

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    goto :goto_0

    .line 1516
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1518
    packed-switch v1, :pswitch_data_0

    .line 1533
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 1534
    if-nez v0, :cond_1

    .line 1535
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .line 1536
    if-nez v0, :cond_1

    .line 1537
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    goto :goto_0

    .line 1521
    :pswitch_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1522
    goto :goto_0

    .line 1527
    :pswitch_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .line 1528
    goto :goto_0

    .line 1530
    :pswitch_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 1531
    goto :goto_0

    .line 1518
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getLevelTMO()I
    .locals 3

    .prologue
    .line 1761
    const/4 v1, 0x0

    .line 1762
    .local v1, level:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1764
    .local v0, asu:I
    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v2, :cond_0

    .line 1765
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelTMO()I

    move-result v1

    .line 1766
    if-nez v1, :cond_0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_0

    .line 1767
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmUmtsLevelTMO()I

    move-result v1

    .line 1771
    :cond_0
    return v1
.end method

.method private getLevelUSC()I
    .locals 3

    .prologue
    .line 1852
    const/4 v0, 0x0

    .line 1854
    .local v0, level:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGsm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1857
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    .line 1858
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 1864
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report RSSI  (USC) level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1866
    return v0

    .line 1860
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    goto :goto_0
.end method

.method private getLevelVZW()I
    .locals 6

    .prologue
    .line 1552
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 1554
    .local v3, networkType:I
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_2

    .line 1555
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1556
    .local v2, level:I
    if-nez v2, :cond_1

    .line 1557
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 1558
    if-nez v2, :cond_1

    .line 1559
    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    const/16 v4, 0xe

    if-ne v3, v4, :cond_1

    .line 1563
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v2

    .line 1591
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLevelVZW="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1593
    return v2

    .line 1568
    .end local v2           #level:I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 1569
    .restart local v2       #level:I
    if-nez v2, :cond_3

    .line 1570
    packed-switch v3, :pswitch_data_0

    .line 1582
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1583
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 1584
    .local v1, evdoLevel:I
    if-lt v0, v1, :cond_4

    move v2, v0

    .line 1588
    .end local v0           #cdmaLevel:I
    .end local v1           #evdoLevel:I
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLevelVZW() notGSM - networkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1573
    :pswitch_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    .line 1574
    goto :goto_1

    .line 1579
    :pswitch_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v2

    .line 1580
    goto :goto_1

    .restart local v0       #cdmaLevel:I
    .restart local v1       #evdoLevel:I
    :cond_4
    move v2, v1

    .line 1584
    goto :goto_1

    .line 1570
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getLteLevelATT()I
    .locals 3

    .prologue
    .line 1691
    const/4 v0, 0x0

    .line 1707
    .local v0, rsrpIconLevel:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x2c

    if-le v1, v2, :cond_0

    const/4 v0, 0x0

    .line 1714
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE_DEBUG] ATT: getLTELevel - rsrp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rsrpIconLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1716
    return v0

    .line 1708
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x55

    if-le v1, v2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 1709
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5f

    if-le v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 1710
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-le v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 1711
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-le v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 1712
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLteLevelH3G()I
    .locals 3

    .prologue
    .line 2032
    const/4 v0, 0x0

    .line 2049
    .local v0, rsrpIconLevel:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 2059
    :goto_0
    return v0

    .line 2050
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x55

    if-le v1, v2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 2051
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5f

    if-le v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 2052
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-le v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 2053
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-le v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 2054
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x82

    if-le v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 2055
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLteLevelTMO()I
    .locals 3

    .prologue
    .line 1781
    const/4 v0, 0x0

    .line 1798
    .local v0, rsrpIconLevel:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 1806
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE_DEBUG] TMO: getLTELevel - rsrp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rsrpIconLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1808
    return v0

    .line 1799
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x64

    if-le v1, v2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 1800
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x6e

    if-le v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 1801
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-le v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 1802
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-le v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 1803
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x87

    if-le v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 1804
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNumSignalStrength()I
    .locals 2

    .prologue
    .line 1470
    const-string v0, "BM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1472
    :cond_0
    const/4 v0, 0x7

    .line 1483
    :goto_0
    return v0

    .line 1475
    :cond_1
    const-string v0, "DCM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1476
    const/4 v0, 0x5

    goto :goto_0

    .line 1479
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNumSignalStrength: mRssiLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v1, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1480
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1481
    const/4 v0, 0x6

    goto :goto_0

    .line 1483
    :cond_3
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getOperatorSpecLevel()I
    .locals 3

    .prologue
    .line 1405
    const v0, 0xffff

    .line 1408
    .local v0, level:I
    const-string v1, "KR"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1409
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelKR()I

    move-result v0

    .line 1464
    .end local v0           #level:I
    :cond_0
    :goto_0
    return v0

    .line 1414
    .restart local v0       #level:I
    :cond_1
    const-string v1, "SPR"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1415
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelSPR()I

    move-result v0

    goto :goto_0

    .line 1421
    :cond_2
    const-string v1, "VZW"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "LRA"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const-string/jumbo v2, "trf_based_vzw"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1426
    :cond_3
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelVZW()I

    move-result v0

    goto :goto_0

    .line 1431
    :cond_4
    const-string v1, "ATT"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1432
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelATT()I

    move-result v0

    goto :goto_0

    .line 1437
    :cond_5
    const-string v1, "KDDI"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1438
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelKDDI()I

    move-result v0

    goto :goto_0

    .line 1443
    :cond_6
    const-string v1, "CTC"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1444
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelCT()I

    move-result v0

    goto :goto_0

    .line 1448
    :cond_7
    const-string v1, "US"

    const-string v2, "TMO"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1449
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelTMO()I

    move-result v0

    goto :goto_0

    .line 1454
    :cond_8
    const-string v1, "H3G"

    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->checkOperatorbaseonIMSI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "H3G"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1455
    :cond_9
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelH3G()I

    move-result v0

    goto :goto_0

    .line 1459
    :cond_a
    const-string v1, "USC"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1460
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelUSC()I

    move-result v0

    goto/16 :goto_0
.end method

.method private final getRSSIindexGsm(I)I
    .locals 9
    .parameter "asu"

    .prologue
    const/16 v8, -0x5b

    const/16 v7, -0x60

    const/16 v6, -0x61

    const/16 v5, -0x63

    const/16 v4, -0x67

    .line 1871
    const/4 v1, 0x0

    .line 1873
    .local v1, iconLevel:I
    const/4 v0, 0x0

    .line 1876
    .local v0, asulevel:I
    const-string v2, "US"

    const-string v3, "TMO"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1877
    if-le p1, v8, :cond_0

    const/4 v1, 0x5

    .line 1906
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LGE_DEBUG] getRSSIindexGsm asu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1908
    return v1

    .line 1878
    :cond_0
    if-le p1, v7, :cond_1

    if-gt p1, v8, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    .line 1879
    :cond_1
    if-le p1, v5, :cond_2

    if-gt p1, v7, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 1880
    :cond_2
    if-le p1, v4, :cond_3

    if-gt p1, v5, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    .line 1881
    :cond_3
    const/16 v2, -0x69

    if-le p1, v2, :cond_4

    if-gt p1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    .line 1882
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1885
    :cond_5
    const-string v2, "ATT"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1886
    const/16 v2, -0x4f

    if-lt p1, v2, :cond_6

    const/4 v1, 0x5

    goto :goto_0

    .line 1887
    :cond_6
    const/16 v2, -0x58

    if-lt p1, v2, :cond_7

    const/16 v2, -0x4f

    if-ge p1, v2, :cond_7

    const/4 v1, 0x4

    goto :goto_0

    .line 1888
    :cond_7
    if-lt p1, v6, :cond_8

    const/16 v2, -0x58

    if-ge p1, v2, :cond_8

    const/4 v1, 0x3

    goto :goto_0

    .line 1889
    :cond_8
    if-lt p1, v4, :cond_9

    if-ge p1, v6, :cond_9

    const/4 v1, 0x2

    goto :goto_0

    .line 1890
    :cond_9
    const/16 v2, -0x68

    if-gt p1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_0

    .line 1891
    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    .line 1895
    :cond_b
    const-string v2, "H3G"

    invoke-direct {p0, v2}, Landroid/telephony/SignalStrength;->checkOperatorbaseonIMSI(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "H3G"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1896
    :cond_c
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 1897
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1898
    const/16 v2, 0x63

    iget-object v3, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    invoke-direct {p0, v0, v2, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 1899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LGE_DEBUG] H3G getRSSIindexGsm asu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1903
    :cond_d
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 1904
    const/16 v2, 0x63

    iget-object v3, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    invoke-direct {p0, p1, v2, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    goto/16 :goto_0

    .line 1896
    :array_0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 1903
    :array_1
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final getRSSIindexUmts(II)I
    .locals 12
    .parameter "asu"
    .parameter "asu_ecio"

    .prologue
    const/16 v11, -0x69

    const/16 v10, -0x6b

    const/16 v9, -0x71

    const/16 v8, -0x59

    const/16 v7, -0x63

    .line 1913
    const/4 v0, 0x0

    .line 1915
    .local v0, iconLevel:I
    const/4 v1, 0x0

    .line 1916
    .local v1, iconLevel_ecio:I
    const/4 v3, 0x0

    .line 1917
    .local v3, iconLevel_ecio_sum:I
    const/4 v2, 0x0

    .line 1920
    .local v2, iconLevel_ecio_avr:I
    const-string v5, "US"

    const-string v6, "TMO"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1936
    if-le p1, v8, :cond_0

    const/4 v0, 0x5

    .line 2003
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE_DEBUG] getRSSIindexUMTS asu="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "asu_ecio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iconLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2005
    return v0

    .line 1937
    :cond_0
    const/16 v5, -0x61

    if-le p1, v5, :cond_1

    if-gt p1, v8, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 1938
    :cond_1
    const/16 v5, -0x67

    if-le p1, v5, :cond_2

    const/16 v5, -0x61

    if-gt p1, v5, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1939
    :cond_2
    if-le p1, v9, :cond_3

    const/16 v5, -0x67

    if-gt p1, v5, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 1940
    :cond_3
    const/16 v5, -0x7d

    if-le p1, v5, :cond_4

    if-gt p1, v9, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 1941
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1944
    :cond_5
    const-string v5, "ATT"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1945
    const/16 v5, -0x4f

    if-lt p1, v5, :cond_7

    const/4 v0, 0x5

    .line 1952
    :goto_1
    const/16 v5, -0x64

    if-le p2, v5, :cond_c

    const/4 v1, 0x5

    .line 1958
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BRIGHTHY] lastEcIoIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastEcIoValues.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1960
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    sget v6, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    aput v1, v5, v6

    .line 1962
    sget v5, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    sget-object v6, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v6, v6

    if-ne v5, v6, :cond_6

    const/4 v5, 0x0

    sput v5, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    .line 1964
    :cond_6
    const/4 v4, 0x0

    .local v4, kk:I
    :goto_3
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v5, v5

    if-ge v4, v5, :cond_10

    .line 1965
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    aget v5, v5, v4

    add-int/2addr v3, v5

    .line 1964
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1946
    .end local v4           #kk:I
    :cond_7
    if-lt p1, v8, :cond_8

    const/16 v5, -0x4f

    if-ge p1, v5, :cond_8

    const/4 v0, 0x4

    goto :goto_1

    .line 1947
    :cond_8
    if-lt p1, v7, :cond_9

    if-ge p1, v8, :cond_9

    const/4 v0, 0x3

    goto :goto_1

    .line 1948
    :cond_9
    if-lt p1, v11, :cond_a

    if-ge p1, v7, :cond_a

    const/4 v0, 0x2

    goto :goto_1

    .line 1949
    :cond_a
    if-ge p1, v11, :cond_b

    const/4 v0, 0x1

    goto :goto_1

    .line 1950
    :cond_b
    const/4 v0, 0x1

    goto :goto_1

    .line 1953
    :cond_c
    const/16 v5, -0x78

    if-le p2, v5, :cond_d

    const/4 v1, 0x4

    goto :goto_2

    .line 1954
    :cond_d
    const/16 v5, -0x8c

    if-le p2, v5, :cond_e

    const/4 v1, 0x3

    goto :goto_2

    .line 1955
    :cond_e
    const/16 v5, -0xa0

    if-le p2, v5, :cond_f

    const/4 v1, 0x2

    goto :goto_2

    .line 1956
    :cond_f
    const/4 v1, 0x1

    goto :goto_2

    .line 1967
    .restart local v4       #kk:I
    :cond_10
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v5, v5

    div-int v2, v3, v5

    .line 1968
    if-le v1, v2, :cond_11

    .line 1970
    :goto_4
    if-ge v0, v1, :cond_12

    :goto_5
    goto/16 :goto_0

    :cond_11
    move v1, v2

    .line 1968
    goto :goto_4

    :cond_12
    move v0, v1

    .line 1970
    goto :goto_5

    .line 1974
    .end local v4           #kk:I
    :cond_13
    const-string v5, "H3G"

    invoke-direct {p0, v5}, Landroid/telephony/SignalStrength;->checkOperatorbaseonIMSI(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "H3G"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1990
    :cond_14
    const/16 v5, -0x55

    if-lt p1, v5, :cond_15

    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1991
    :cond_15
    const/16 v5, -0x5b

    if-lt p1, v5, :cond_16

    const/16 v5, -0x55

    if-ge p1, v5, :cond_16

    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1992
    :cond_16
    if-lt p1, v7, :cond_17

    const/16 v5, -0x5b

    if-ge p1, v5, :cond_17

    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1993
    :cond_17
    if-lt p1, v10, :cond_18

    if-ge p1, v7, :cond_18

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 1994
    :cond_18
    const/16 v5, -0x73

    if-lt p1, v5, :cond_19

    if-ge p1, v10, :cond_19

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1995
    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1999
    :cond_1a
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 2000
    const/16 v5, 0x63

    iget-object v6, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    invoke-direct {p0, p1, v5, v6}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v0

    goto/16 :goto_0

    .line 1999
    :array_0
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1381
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 3
    .parameter "in"

    .prologue
    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of signalstrength parcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 386
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 387
    .local v0, ss:Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 388
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 389
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 390
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 391
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 392
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 393
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 394
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 395
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 396
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 397
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 398
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 401
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 402
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 403
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "m"

    .prologue
    .line 139
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 140
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 141
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1329
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1330
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1331
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1332
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1333
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1334
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1335
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1336
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1337
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1338
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1339
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1340
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1341
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1342
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1344
    const-string v0, "Dataf"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 1347
    const-string v0, "mRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 1349
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 324
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 325
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 326
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 327
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 328
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 329
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 330
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 331
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 332
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 333
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 334
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 335
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 336
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 337
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 339
    iget v0, p1, Landroid/telephony/SignalStrength;->datafeature:I

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 342
    iget v0, p1, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 344
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 1271
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    .local v2, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1280
    .end local v2           #s:Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1272
    :catch_0
    move-exception v1

    .line 1273
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1280
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1358
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1359
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1360
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1361
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1362
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1363
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1364
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1365
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1366
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1367
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1368
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1369
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1370
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1371
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1373
    const-string v0, "mRadioTechnology"

    iget v1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1375
    return-void
.end method

.method public getAsuLevel()I
    .locals 5

    .prologue
    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, asuLevel:I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 670
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 671
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 672
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 693
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsuLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 694
    return v0

    .line 674
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 677
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    .line 680
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 681
    .local v1, cdmaAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 682
    .local v2, evdoAsuLevel:I
    if-nez v2, :cond_3

    .line 684
    move v0, v1

    goto :goto_0

    .line 685
    :cond_3
    if-nez v1, :cond_4

    .line 687
    move v0, v2

    goto :goto_0

    .line 690
    :cond_4
    if-ge v1, v2, :cond_5

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 928
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 929
    .local v1, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 933
    .local v2, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 941
    .local v0, cdmaAsuLevel:I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 948
    .local v3, ecioAsuLevel:I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 949
    .local v4, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 950
    return v4

    .line 934
    .end local v0           #cdmaAsuLevel:I
    .end local v3           #ecioAsuLevel:I
    .end local v4           #level:I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 935
    .end local v0           #cdmaAsuLevel:I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 936
    .end local v0           #cdmaAsuLevel:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 937
    .end local v0           #cdmaAsuLevel:I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 938
    .end local v0           #cdmaAsuLevel:I
    :cond_4
    const/16 v0, 0x63

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 942
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 943
    .end local v3           #ecioAsuLevel:I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 944
    .end local v3           #ecioAsuLevel:I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 945
    .end local v3           #ecioAsuLevel:I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 946
    .end local v3           #ecioAsuLevel:I
    :cond_9
    const/16 v3, 0x63

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 948
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 877
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 878
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 883
    .local v1, cdmaEcio:I
    const/4 v3, 0x0

    .line 884
    .local v3, levelDbm:I
    const/4 v4, 0x0

    .line 885
    .local v4, levelEcio:I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/telephony/LGRssiData;->getCdmaDbmValue()[I

    move-result-object v5

    .line 886
    .local v5, mDbmValue:[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/telephony/LGRssiData;->getEcioValue()[I

    move-result-object v6

    .line 887
    .local v6, mEcioValue:[I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCdmaLevel - mDbmValue :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mEcioValue :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 890
    if-nez v5, :cond_0

    if-eqz v6, :cond_5

    .line 891
    :cond_0
    invoke-direct {p0, v0, v5}, Landroid/telephony/SignalStrength;->getItemLevel(I[I)I

    move-result v3

    .line 892
    invoke-direct {p0, v1, v6}, Landroid/telephony/SignalStrength;->getItemLevel(I[I)I

    move-result v4

    .line 894
    if-eq v3, v9, :cond_2

    if-eq v4, v9, :cond_2

    .line 895
    if-ge v3, v4, :cond_1

    move v7, v3

    :goto_0
    move v2, v7

    .line 919
    :goto_1
    return v2

    :cond_1
    move v7, v4

    .line 895
    goto :goto_0

    .line 896
    :cond_2
    if-eq v3, v9, :cond_3

    move v2, v3

    goto :goto_1

    .line 897
    :cond_3
    if-eq v4, v9, :cond_4

    move v2, v4

    goto :goto_1

    .line 899
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 904
    :cond_5
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_6

    const/4 v3, 0x4

    .line 911
    :goto_2
    const/16 v7, -0x5a

    if-lt v1, v7, :cond_a

    const/4 v4, 0x4

    .line 917
    :goto_3
    if-ge v3, v4, :cond_e

    move v2, v3

    .line 918
    .local v2, level:I
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCdmaLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 905
    .end local v2           #level:I
    :cond_6
    const/16 v7, -0x55

    if-lt v0, v7, :cond_7

    const/4 v3, 0x3

    goto :goto_2

    .line 906
    :cond_7
    const/16 v7, -0x5f

    if-lt v0, v7, :cond_8

    const/4 v3, 0x2

    goto :goto_2

    .line 907
    :cond_8
    const/16 v7, -0x64

    if-lt v0, v7, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    .line 908
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 912
    :cond_a
    const/16 v7, -0x6e

    if-lt v1, v7, :cond_b

    const/4 v4, 0x3

    goto :goto_3

    .line 913
    :cond_b
    const/16 v7, -0x82

    if-lt v1, v7, :cond_c

    const/4 v4, 0x2

    goto :goto_3

    .line 914
    :cond_c
    const/16 v7, -0x96

    if-lt v1, v7, :cond_d

    const/4 v4, 0x1

    goto :goto_3

    .line 915
    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    :cond_e
    move v2, v4

    .line 917
    goto :goto_4
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 703
    const v1, 0x7fffffff

    .line 705
    .local v1, dBm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 706
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_2

    .line 707
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 708
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 722
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 723
    :cond_0
    :goto_1
    return v0

    .line 710
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_0

    .line 713
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    goto :goto_0

    .line 716
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 717
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 719
    .local v2, evdoDbm:I
    if-eq v2, v4, :cond_0

    if-ne v0, v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-lt v0, v2, :cond_0

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 7

    .prologue
    .line 1009
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1010
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1014
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1021
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1028
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1029
    .local v2, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1030
    return v2

    .line 1015
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1016
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1017
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1018
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1019
    .end local v3           #levelEvdoDbm:I
    :cond_4
    const/16 v3, 0x63

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1022
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1023
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1024
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1025
    .end local v4           #levelEvdoSnr:I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1026
    .end local v4           #levelEvdoSnr:I
    :cond_9
    const/16 v4, 0x63

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1028
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 959
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 960
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 965
    .local v1, evdoSnr:I
    const/4 v3, 0x0

    .line 966
    .local v3, levelEvdoDbm:I
    const/4 v4, 0x0

    .line 967
    .local v4, levelEvdoSnr:I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/telephony/LGRssiData;->getEvdoDbmValue()[I

    move-result-object v5

    .line 968
    .local v5, mEvdoDbmValue:[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/telephony/LGRssiData;->getEvdoSnrValue()[I

    move-result-object v6

    .line 969
    .local v6, mEvdoSnrValue:[I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEvdoLevel - mEvdoDbmValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mEvdoSnrValue :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 972
    if-nez v5, :cond_0

    if-eqz v6, :cond_5

    .line 973
    :cond_0
    invoke-direct {p0, v0, v5}, Landroid/telephony/SignalStrength;->getItemLevel(I[I)I

    move-result v3

    .line 974
    invoke-direct {p0, v1, v6}, Landroid/telephony/SignalStrength;->getItemLevel(I[I)I

    move-result v4

    .line 976
    if-eq v3, v9, :cond_2

    if-eq v4, v9, :cond_2

    .line 977
    if-ge v3, v4, :cond_1

    move v7, v3

    :goto_0
    move v2, v7

    .line 1000
    :goto_1
    return v2

    :cond_1
    move v7, v4

    .line 977
    goto :goto_0

    .line 978
    :cond_2
    if-eq v3, v9, :cond_3

    move v2, v3

    goto :goto_1

    .line 979
    :cond_3
    if-eq v4, v9, :cond_4

    move v2, v4

    goto :goto_1

    .line 981
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 986
    :cond_5
    const/16 v7, -0x41

    if-lt v0, v7, :cond_6

    const/4 v3, 0x4

    .line 992
    :goto_2
    const/4 v7, 0x7

    if-lt v1, v7, :cond_a

    const/4 v4, 0x4

    .line 998
    :goto_3
    if-ge v3, v4, :cond_e

    move v2, v3

    .line 999
    .local v2, level:I
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEvdoLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 987
    .end local v2           #level:I
    :cond_6
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_7

    const/4 v3, 0x3

    goto :goto_2

    .line 988
    :cond_7
    const/16 v7, -0x5a

    if-lt v0, v7, :cond_8

    const/4 v3, 0x2

    goto :goto_2

    .line 989
    :cond_8
    const/16 v7, -0x69

    if-lt v0, v7, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    .line 990
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 993
    :cond_a
    const/4 v7, 0x5

    if-lt v1, v7, :cond_b

    const/4 v4, 0x3

    goto :goto_3

    .line 994
    :cond_b
    const/4 v7, 0x3

    if-lt v1, v7, :cond_c

    const/4 v4, 0x2

    goto :goto_3

    .line 995
    :cond_c
    const/4 v7, 0x1

    if-lt v1, v7, :cond_d

    const/4 v4, 0x1

    goto :goto_3

    .line 996
    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    :cond_e
    move v2, v4

    .line 998
    goto :goto_4
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 3

    .prologue
    .line 866
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 867
    .local v0, level:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGsmAsuLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 868
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 734
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 735
    .local v2, gsmSignalStrength:I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 736
    .local v0, asu:I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 737
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 741
    .local v1, dBm:I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 742
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_0
    move v0, v2

    .line 735
    goto :goto_0

    .line 739
    .restart local v0       #asu:I
    :cond_1
    const/4 v1, -0x1

    .restart local v1       #dBm:I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/16 v8, 0x63

    .line 753
    const/4 v1, 0x0

    .line 760
    .local v1, level:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 763
    .local v0, asu:I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAsuGsmValue()[I

    move-result-object v3

    .line 764
    .local v3, mAsuGsmValue:[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAsuUmtsValue()[I

    move-result-object v4

    .line 765
    .local v4, mAsuUmtsValue:[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAsuEtcValue()[I

    move-result-object v2

    .line 766
    .local v2, mAsuEtcValue:[I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGsmLevel - mAsuGsmValue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAsuUmtsValue :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 769
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    sget v6, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 771
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 784
    iget-object v6, p0, Landroid/telephony/SignalStrength;->LGE_UMTS_ASU_VALUE:[I

    invoke-direct {p0, v0, v8, v6}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 787
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LGE Spec: getGsmLevel getRadioTechnology()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 789
    if-ne v1, v9, :cond_1

    .line 853
    :cond_0
    :goto_1
    return v5

    .line 776
    :sswitch_0
    iget-object v6, p0, Landroid/telephony/SignalStrength;->LGE_GSM_ASU_VALUE:[I

    invoke-direct {p0, v0, v8, v6}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 777
    goto :goto_0

    :cond_1
    move v5, v1

    .line 789
    goto :goto_1

    .line 790
    :cond_2
    if-nez v3, :cond_3

    if-eqz v4, :cond_a

    .line 791
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 810
    :pswitch_0
    const-string v6, "KR"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 811
    if-eqz v3, :cond_4

    .line 812
    invoke-direct {p0, v0, v8, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 841
    :cond_4
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operator Spec: getGsmLevel getRadioTechnology()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", asu="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 843
    if-eq v1, v9, :cond_0

    move v5, v1

    goto :goto_1

    .line 795
    :pswitch_1
    invoke-direct {p0, v0, v8, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 796
    goto :goto_2

    .line 803
    :pswitch_2
    invoke-direct {p0, v0, v8, v4}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 804
    goto :goto_2

    .line 817
    :cond_5
    const-string v6, "VZW"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "LRA"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 819
    :cond_6
    invoke-direct {p0, v0, v8, v4}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 820
    goto :goto_2

    .line 825
    :cond_7
    const-string v6, "SPR"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 826
    invoke-direct {p0, v0, v8, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 827
    goto :goto_2

    .line 831
    :cond_8
    const-string v6, "CTC"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 832
    invoke-direct {p0, v0, v8, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    .line 833
    goto :goto_2

    .line 836
    :cond_9
    invoke-direct {p0, v0, v8, v3}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v1

    goto :goto_2

    .line 847
    :cond_a
    const/4 v5, 0x2

    if-le v0, v5, :cond_b

    if-ne v0, v8, :cond_c

    :cond_b
    const/4 v1, 0x0

    .line 852
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getGsmLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v5, v1

    .line 853
    goto/16 :goto_1

    .line 848
    :cond_c
    const/16 v5, 0xc

    if-lt v0, v5, :cond_d

    const/4 v1, 0x4

    goto :goto_3

    .line 849
    :cond_d
    const/16 v5, 0x8

    if-lt v0, v5, :cond_e

    const/4 v1, 0x3

    goto :goto_3

    .line 850
    :cond_e
    const/4 v5, 0x5

    if-lt v0, v5, :cond_f

    const/4 v1, 0x2

    goto :goto_3

    .line 851
    :cond_f
    const/4 v1, 0x1

    goto :goto_3

    .line 771
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 6

    .prologue
    .line 599
    const/4 v2, 0x0

    .line 602
    .local v2, level:I
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getOperatorSpecLevel()I

    move-result v2

    const v4, 0xffff

    if-eq v2, v4, :cond_0

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by getOperatorSpecLevel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v3, v2

    .line 632
    .end local v2           #level:I
    .local v3, level:I
    :goto_0
    return v3

    .line 606
    .end local v3           #level:I
    .restart local v2       #level:I
    :cond_0
    const/4 v2, 0x0

    .line 609
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_2

    .line 610
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 611
    if-nez v2, :cond_1

    .line 612
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    .line 613
    if-nez v2, :cond_1

    .line 614
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 631
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v3, v2

    .line 632
    .end local v2           #level:I
    .restart local v3       #level:I
    goto :goto_0

    .line 618
    .end local v3           #level:I
    .restart local v2       #level:I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 619
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 620
    .local v1, evdoLevel:I
    if-nez v1, :cond_3

    .line 622
    move v2, v0

    goto :goto_1

    .line 623
    :cond_3
    if-nez v0, :cond_4

    .line 625
    move v2, v1

    goto :goto_1

    .line 628
    :cond_4
    if-ge v0, v1, :cond_5

    move v2, v0

    :goto_2
    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method public getLteAsuLevel()I
    .locals 4

    .prologue
    .line 1157
    const/16 v0, 0x63

    .line 1158
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1172
    .local v1, lteDbm:I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1174
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lte Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1175
    return v0

    .line 1173
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 13

    .prologue
    const/16 v12, 0x12c

    const/16 v11, 0x3f

    const/16 v10, -0x2c

    const v9, 0x7fffffff

    const/4 v8, -0x1

    .line 1054
    const/4 v4, 0x0

    .local v4, rssiIconLevel:I
    const/4 v3, -0x1

    .local v3, rsrpIconLevel:I
    const/4 v5, -0x1

    .line 1057
    .local v5, snrIconLevel:I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getRsrpValue()[I

    move-result-object v0

    .line 1058
    .local v0, mLteRsrpValue:[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getRssnrValue()[I

    move-result-object v1

    .line 1059
    .local v1, mLteRssnrValue:[I
    invoke-static {}, Landroid/telephony/SignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getLteSignalValue()[I

    move-result-object v2

    .line 1061
    .local v2, mLteSignalValue:[I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLteLevel - mLteRsrp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mLteRssnr :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mLteSignalStrength : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1065
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    sget v6, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 1066
    const-string v6, "CMCC"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1068
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v7, p0, Landroid/telephony/SignalStrength;->CMCC_LTE_RSRP_VALUE:[I

    invoke-direct {p0, v6, v9, v7}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v6

    .line 1147
    :goto_0
    return v6

    .line 1070
    :cond_0
    const-string v6, "TEL"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1072
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v7, p0, Landroid/telephony/SignalStrength;->AU_LTE_RSRP_VALUE:[I

    invoke-direct {p0, v6, v9, v7}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v6

    goto :goto_0

    .line 1076
    :cond_1
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v7, p0, Landroid/telephony/SignalStrength;->LGE_LTE_RSRP_VALUE:[I

    invoke-direct {p0, v6, v9, v7}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v6

    goto :goto_0

    .line 1078
    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-eqz v2, :cond_9

    .line 1079
    :cond_3
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-direct {p0, v6, v10, v0}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v3

    .line 1080
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-direct {p0, v6, v12, v1}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v5

    .line 1082
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLTELevel - rsrp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " snr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rsrpIconLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " snrIconLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1085
    if-eq v5, v8, :cond_5

    if-eq v3, v8, :cond_5

    .line 1086
    if-ge v3, v5, :cond_4

    move v6, v3

    goto :goto_0

    :cond_4
    move v6, v5

    goto :goto_0

    .line 1089
    :cond_5
    if-eq v5, v8, :cond_6

    move v6, v5

    goto :goto_0

    .line 1091
    :cond_6
    if-eq v3, v8, :cond_7

    move v6, v3

    goto :goto_0

    .line 1093
    :cond_7
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-direct {p0, v6, v11, v2}, Landroid/telephony/SignalStrength;->getItemLevel(II[I)I

    move-result v4

    .line 1094
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLTELevel - rssi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rssiIconLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1097
    if-ne v4, v8, :cond_8

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_8
    move v6, v4

    goto/16 :goto_0

    .line 1101
    :cond_9
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v6, v10, :cond_c

    const/4 v3, -0x1

    .line 1114
    :cond_a
    :goto_1
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-le v6, v12, :cond_11

    const/4 v5, -0x1

    .line 1122
    :cond_b
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLTELevel - rsrp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " snr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rsrpIconLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " snrIconLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1126
    if-eq v5, v8, :cond_17

    if-eq v3, v8, :cond_17

    .line 1132
    if-ge v3, v5, :cond_16

    move v6, v3

    goto/16 :goto_0

    .line 1102
    :cond_c
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x55

    if-lt v6, v7, :cond_d

    const/4 v3, 0x4

    goto :goto_1

    .line 1103
    :cond_d
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x5f

    if-lt v6, v7, :cond_e

    const/4 v3, 0x3

    goto :goto_1

    .line 1104
    :cond_e
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x69

    if-lt v6, v7, :cond_f

    const/4 v3, 0x2

    goto :goto_1

    .line 1105
    :cond_f
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x73

    if-lt v6, v7, :cond_10

    const/4 v3, 0x1

    goto :goto_1

    .line 1106
    :cond_10
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x8c

    if-lt v6, v7, :cond_a

    const/4 v3, 0x0

    goto :goto_1

    .line 1115
    :cond_11
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0x82

    if-lt v6, v7, :cond_12

    const/4 v5, 0x4

    goto :goto_2

    .line 1116
    :cond_12
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0x2d

    if-lt v6, v7, :cond_13

    const/4 v5, 0x3

    goto :goto_2

    .line 1117
    :cond_13
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_14

    const/4 v5, 0x2

    goto :goto_2

    .line 1118
    :cond_14
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, -0x1e

    if-lt v6, v7, :cond_15

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1119
    :cond_15
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, -0xc8

    if-lt v6, v7, :cond_b

    .line 1120
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_16
    move v6, v5

    .line 1132
    goto/16 :goto_0

    .line 1135
    :cond_17
    if-eq v5, v8, :cond_18

    move v6, v5

    goto/16 :goto_0

    .line 1137
    :cond_18
    if-eq v3, v8, :cond_19

    move v6, v3

    goto/16 :goto_0

    .line 1140
    :cond_19
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-le v6, v11, :cond_1b

    const/4 v4, 0x0

    .line 1145
    :cond_1a
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLTELevel - rssi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rssiIconLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v6, v4

    .line 1147
    goto/16 :goto_0

    .line 1141
    :cond_1b
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v7, 0xc

    if-lt v6, v7, :cond_1c

    const/4 v4, 0x4

    goto :goto_3

    .line 1142
    :cond_1c
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_1d

    const/4 v4, 0x3

    goto :goto_3

    .line 1143
    :cond_1d
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v7, 0x5

    if-lt v6, v7, :cond_1e

    const/4 v4, 0x2

    goto :goto_3

    .line 1144
    :cond_1e
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v6, :cond_1a

    const/4 v4, 0x1

    goto :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getRadioTechnology()I
    .locals 1

    .prologue
    .line 1401
    iget v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 4

    .prologue
    .line 1239
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1242
    .local v1, tdScdmaDbm:I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1244
    .local v0, tdScdmaAsuLevel:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TD-SCDMA Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1245
    return v0

    .line 1243
    .end local v0           #tdScdmaAsuLevel:I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0       #tdScdmaAsuLevel:I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1191
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x19

    const/16 v6, -0x58

    const/16 v5, -0x5e

    const/16 v4, -0x64

    const/16 v3, -0x68

    .line 1203
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1206
    .local v1, tdScdmaDbm:I
    const-string v2, "CMCC"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1208
    if-gt v1, v7, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 1209
    :cond_0
    const/4 v0, 0x0

    .line 1229
    .local v0, level:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTdScdmaLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1230
    return v0

    .line 1210
    .end local v0           #level:I
    :cond_1
    if-lt v1, v6, :cond_2

    const/4 v0, 0x5

    .restart local v0       #level:I
    goto :goto_0

    .line 1211
    .end local v0           #level:I
    :cond_2
    if-lt v1, v5, :cond_3

    if-ge v1, v6, :cond_3

    const/4 v0, 0x4

    .restart local v0       #level:I
    goto :goto_0

    .line 1212
    .end local v0           #level:I
    :cond_3
    if-lt v1, v4, :cond_4

    if-ge v1, v5, :cond_4

    const/4 v0, 0x3

    .restart local v0       #level:I
    goto :goto_0

    .line 1213
    .end local v0           #level:I
    :cond_4
    if-lt v1, v3, :cond_5

    if-ge v1, v4, :cond_5

    const/4 v0, 0x2

    .restart local v0       #level:I
    goto :goto_0

    .line 1214
    .end local v0           #level:I
    :cond_5
    const/16 v2, -0x6e

    if-lt v1, v2, :cond_6

    if-ge v1, v3, :cond_6

    const/4 v0, 0x1

    .restart local v0       #level:I
    goto :goto_0

    .line 1215
    .end local v0           #level:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #level:I
    goto :goto_0

    .line 1220
    .end local v0           #level:I
    :cond_7
    if-gt v1, v7, :cond_8

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_9

    .line 1221
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #level:I
    goto :goto_0

    .line 1222
    .end local v0           #level:I
    :cond_9
    const/16 v2, -0x31

    if-lt v1, v2, :cond_a

    const/4 v0, 0x4

    .restart local v0       #level:I
    goto :goto_0

    .line 1223
    .end local v0           #level:I
    :cond_a
    const/16 v2, -0x49

    if-lt v1, v2, :cond_b

    const/4 v0, 0x3

    .restart local v0       #level:I
    goto :goto_0

    .line 1224
    .end local v0           #level:I
    :cond_b
    const/16 v2, -0x61

    if-lt v1, v2, :cond_c

    const/4 v0, 0x2

    .restart local v0       #level:I
    goto :goto_0

    .line 1225
    .end local v0           #level:I
    :cond_c
    const/16 v2, -0x78

    if-lt v1, v2, :cond_d

    const/4 v0, 0x1

    .restart local v0       #level:I
    goto :goto_0

    .line 1226
    .end local v0           #level:I
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #level:I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1253
    const/16 v0, 0x1f

    .line 1254
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 2
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 303
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 304
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 305
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 306
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 307
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 308
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 309
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 310
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 311
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 312
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 313
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 314
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 315
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 316
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 274
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 277
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1182
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .parameter "gsmFlag"

    .prologue
    .line 509
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 510
    return-void
.end method

.method public setRadioTechnology(I)V
    .locals 2
    .parameter "radioTechnology"

    .prologue
    .line 1391
    iput p1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set Radio Technology : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1393
    return-void
.end method

.method public setfeature(I)V
    .locals 0
    .parameter "feature"

    .prologue
    .line 514
    iput p1, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 515
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 7

    .prologue
    const/16 v1, 0x63

    const/16 v6, 0x8

    const/16 v2, -0x78

    const/4 v3, -0x1

    const v4, 0x7fffffff

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signal before validate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 468
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 471
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 472
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 474
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 475
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 477
    const-string v0, "KDDI"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 478
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-gt v0, v6, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 487
    :goto_4
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 488
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 489
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 490
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 493
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signal after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 498
    return-void

    :cond_4
    move v0, v1

    .line 468
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 471
    goto/16 :goto_1

    .line 472
    :cond_6
    const/16 v0, -0xa0

    goto/16 :goto_2

    :cond_7
    move v0, v3

    .line 475
    goto/16 :goto_3

    .line 481
    :cond_8
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-gt v0, v6, :cond_9

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_9
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    goto :goto_4

    :cond_a
    move v0, v4

    .line 488
    goto :goto_5

    :cond_b
    move v0, v4

    .line 489
    goto :goto_6

    :cond_c
    move v0, v4

    .line 490
    goto :goto_7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 410
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
