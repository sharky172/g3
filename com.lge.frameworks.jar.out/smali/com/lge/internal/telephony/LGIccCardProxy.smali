.class public Lcom/lge/internal/telephony/LGIccCardProxy;
.super Ljava/lang/Object;
.source "LGIccCardProxy.java"

# interfaces
.implements Lcom/lge/internal/telephony/IIccCardRetryCountable;


# instance fields
.field private mIcc:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/internal/telephony/LGIccCardProxy;->mIcc:Lcom/android/internal/telephony/IccCard;

    .line 15
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/telephony/LGIccCardProxy;->mIcc:Lcom/android/internal/telephony/IccCard;

    .line 16
    return-void
.end method


# virtual methods
.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public getIccPin2RetryCount()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getIccPuk1RetryCount()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public getIccPuk2RetryCount()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
