.class public Lcom/itsoninc/android/ItsOnPhoneClientFactory;
.super Ljava/lang/Object;
.source "ItsOnPhoneClientFactory.java"


# static fields
.field static mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configure(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .parameter "ril"

    .prologue
    .line 12
    sput-object p0, Lcom/itsoninc/android/ItsOnPhoneClientFactory;->mRil:Lcom/android/internal/telephony/RIL;

    .line 13
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/itsoninc/android/ItsOnPhoneClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 16
    sget-object v0, Lcom/itsoninc/android/ItsOnPhoneClientFactory;->mRil:Lcom/android/internal/telephony/RIL;

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/itsoninc/android/ItsOnPhoneClient;

    sget-object v1, Lcom/itsoninc/android/ItsOnPhoneClientFactory;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1}, Lcom/itsoninc/android/ItsOnPhoneClient;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/RIL;)V

    goto :goto_0
.end method
