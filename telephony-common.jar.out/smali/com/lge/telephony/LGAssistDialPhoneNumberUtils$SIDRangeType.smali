.class public Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$SIDRangeType;
.super Ljava/lang/Object;
.source "LGAssistDialPhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/LGAssistDialPhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIDRangeType"
.end annotation


# instance fields
.field private countryIndex:I

.field private end:I

.field private index:I

.field private start:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .parameter "index"
    .parameter "countryIndex"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1910
    iput p1, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$SIDRangeType;->index:I

    .line 1911
    iput p2, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$SIDRangeType;->countryIndex:I

    .line 1912
    iput p3, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$SIDRangeType;->start:I

    .line 1913
    iput p4, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$SIDRangeType;->end:I

    .line 1914
    return-void
.end method


# virtual methods
.method public getCountryIndex()I
    .locals 1

    .prologue
    .line 1902
    iget v0, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$SIDRangeType;->countryIndex:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 1906
    iget v0, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$SIDRangeType;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 1898
    iget v0, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$SIDRangeType;->start:I

    return v0
.end method
