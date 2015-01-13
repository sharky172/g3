.class Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AssistDialPNUtils;
.super Lcom/lge/telephony/LGAssistDialPhoneNumberUtils;
.source "LGSmsRoamingNumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGSmsRoamingNumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssistDialPNUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/telephony/LGSmsRoamingNumberFormat$AssistDialPNUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssistedDialCurrentCountryInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 28
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    .line 29
    .local v1, ret:[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils;->getAssistedDialCurrentCountry(Landroid/content/Context;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    .line 31
    .local v0, currentCountry:Lcom/lge/telephony/LGReferenceCountry;
    const/4 v4, 0x0

    if-nez v0, :cond_0

    move-object v2, v3

    :goto_0
    aput-object v2, v1, v4

    .line 32
    const/4 v4, 0x1

    if-nez v0, :cond_1

    move-object v2, v3

    :goto_1
    aput-object v2, v1, v4

    .line 33
    const/4 v2, 0x2

    if-nez v0, :cond_2

    :goto_2
    aput-object v3, v1, v2

    .line 34
    return-object v1

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method
