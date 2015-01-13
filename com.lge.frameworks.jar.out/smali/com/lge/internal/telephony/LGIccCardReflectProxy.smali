.class public Lcom/lge/internal/telephony/LGIccCardReflectProxy;
.super Ljava/lang/Object;
.source "LGIccCardReflectProxy.java"

# interfaces
.implements Lcom/lge/internal/telephony/IIccCardRetryCountable;


# static fields
.field private static sGetIccPin1RetryCount:Ljava/lang/reflect/Method;

.field private static sGetIccPin2RetryCount:Ljava/lang/reflect/Method;

.field private static sGetIccPuk1RetryCount:Ljava/lang/reflect/Method;

.field private static sGetIccPuk2RetryCount:Ljava/lang/reflect/Method;


# instance fields
.field private mIccCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPin1RetryCount:Ljava/lang/reflect/Method;

    .line 11
    sput-object v0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPin2RetryCount:Ljava/lang/reflect/Method;

    .line 12
    sput-object v0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPuk1RetryCount:Ljava/lang/reflect/Method;

    .line 13
    sput-object v0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPuk2RetryCount:Ljava/lang/reflect/Method;

    .line 17
    :try_start_0
    const-class v0, Lcom/android/internal/telephony/IccCard;

    const-string v1, "getIccPin1RetryCount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPin1RetryCount:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 21
    :goto_0
    :try_start_1
    const-class v0, Lcom/android/internal/telephony/IccCard;

    const-string v1, "getIccPin2RetryCount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPin2RetryCount:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 25
    :goto_1
    :try_start_2
    const-class v0, Lcom/android/internal/telephony/IccCard;

    const-string v1, "getIccPuk1RetryCount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPuk1RetryCount:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 29
    :goto_2
    :try_start_3
    const-class v0, Lcom/android/internal/telephony/IccCard;

    const-string v1, "getIccPuk2RetryCount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPuk2RetryCount:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0

    .line 32
    :goto_3
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_3

    .line 26
    :catch_1
    move-exception v0

    goto :goto_2

    .line 22
    :catch_2
    move-exception v0

    goto :goto_1

    .line 18
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 40
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 41
    return-void
.end method


# virtual methods
.method public getIccPin1RetryCount()I
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 51
    :try_start_0
    sget-object v1, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPin1RetryCount:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 55
    :goto_0
    return v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    .line 55
    goto :goto_0
.end method

.method public getIccPin2RetryCount()I
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 66
    :try_start_0
    sget-object v1, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPin2RetryCount:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    .line 70
    goto :goto_0
.end method

.method public getIccPuk1RetryCount()I
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 81
    :try_start_0
    sget-object v1, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPuk1RetryCount:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    .line 85
    goto :goto_0
.end method

.method public getIccPuk2RetryCount()I
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 96
    :try_start_0
    sget-object v1, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->sGetIccPuk2RetryCount:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/LGIccCardReflectProxy;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 100
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    .line 100
    goto :goto_0
.end method
