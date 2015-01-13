.class Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;
.super Ljava/lang/Object;
.source "LGSmsRoamingNumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AreaCode"
.end annotation


# instance fields
.field private areacode:Ljava/lang/String;

.field private cityname:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "areacode"
    .parameter "cityname"

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;->areacode:Ljava/lang/String;

    .line 445
    iput-object p2, p0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;->cityname:Ljava/lang/String;

    .line 446
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAreacode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;->areacode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AreaCode;->cityname:Ljava/lang/String;

    return-object v0
.end method
