.class public Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;
.super Ljava/lang/Object;
.source "KTRoamingPrefixAppender.java"

# interfaces
.implements Lcom/lge/telephony/RAD/RoamingPrefixAppender;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final KT_SHOW_ROAMING_PREFIX:Ljava/lang/String; = "show_roaming_prefix"

.field private static final LOG_TAG:Ljava/lang/String; = "KTRoamingPrefixAppender"

.field private static roamingPrefixAppender:Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;


# instance fields
.field private isSetAutodial:Z

.field private mCtx:Landroid/content/Context;

.field private mRadDialMode:I

.field private m_contentResolver:Landroid/content/ContentResolver;

.field private m_context:Landroid/content/Context;

.field private m_nRadMode:I

.field private szContryNumber:Ljava/lang/String;

.field private szDialNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->DEBUGGABLE:Z

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;

    return-void

    :cond_0
    move v0, v1

    .line 39
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "+"

    iput-object v0, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    .line 92
    const-string v0, "82"

    iput-object v0, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    .line 93
    iput v1, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->m_nRadMode:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->isSetAutodial:Z

    .line 96
    iput v1, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->mRadDialMode:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->mCtx:Landroid/content/Context;

    .line 104
    const-string v0, "Context pCtx is null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    iput-object p1, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->mCtx:Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->m_contentResolver:Landroid/content/ContentResolver;

    .line 107
    return-void
.end method

.method public static getRoamingPrefixAppender(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/Intent;)Lcom/lge/telephony/RAD/RoamingPrefixAppender;
    .locals 1
    .parameter "ctx"
    .parameter "cr"
    .parameter "intent"

    .prologue
    .line 65
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 66
    :cond_0
    sget-object v0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;

    .line 84
    :goto_0
    return-object v0

    .line 70
    :cond_1
    sget-object v0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;

    if-nez v0, :cond_2

    .line 72
    new-instance v0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;

    invoke-direct {v0, p0}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;

    .line 77
    :cond_2
    sget-object v0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;

    invoke-direct {v0, p1}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->readKTSetting(Landroid/content/ContentResolver;)Z

    .line 78
    sget-object v0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;

    invoke-direct {v0, p2}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->setRadDialMode(Landroid/content/Intent;)V

    .line 79
    sget-object v0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;

    invoke-direct {v0, p2}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->setRadMode(Landroid/content/Intent;)V

    .line 84
    sget-object v0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->mCtx:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 319
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    return v1
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "msg_format"
    .parameter "args"

    .prologue
    .line 49
    const-string v0, "KTRoamingPrefixAppender"

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method private readKTSetting(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "cr"

    .prologue
    const/4 v2, 0x1

    .line 334
    invoke-static {p1}, Lcom/lge/telephony/RAD/RADSettings$Roaming;->getIntCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    .line 335
    invoke-static {p1}, Lcom/lge/telephony/RAD/RADSettings$Roaming;->getNatCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    .line 338
    iput-boolean v2, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->isSetAutodial:Z

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "szDialNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", szContryNumber ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSetAutodial ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->isSetAutodial:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    return v2
.end method

.method private setRadDialMode(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 347
    const-string v0, "android.intent.extra.RAD_DIAL_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->mRadDialMode:I

    .line 348
    return-void
.end method

.method private setRadMode(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 352
    const-string v0, "intent.extra.RAD_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->m_nRadMode:I

    .line 353
    return-void
.end method


# virtual methods
.method public appendPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "pPhoneNum"

    .prologue
    const/16 v9, 0x30

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    .end local p1
    :goto_0
    return-object p1

    .line 206
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    .line 207
    .local v1, return_str:Ljava/lang/String;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 208
    .local v0, f:Ljava/util/Formatter;
    const-string v3, "+"

    iput-object v3, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    .line 210
    iget-object v3, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->m_contentResolver:Landroid/content/ContentResolver;

    const-string v4, "show_roaming_prefix"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, userRad:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appendPrefix pPhoneNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,userRad="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,szDialNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,isCustomerCenterNumberKt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/lge/telephony/RAD/KT/KTPhoneNumberUtil;->isCustomerCenterNumberKt(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,isForeignAffairsTradeNumberKt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/lge/telephony/RAD/KT/KTPhoneNumberUtil;->isForeignAffairsTradeNumberKt(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/lge/telephony/RAD/KT/KTPhoneNumberUtil;->isCustomerCenterNumberKt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/lge/telephony/RAD/KT/KTPhoneNumberUtil;->isForeignAffairsTradeNumberKt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 229
    :cond_1
    const-string v3, "%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    :goto_1
    const-string v3, "m_nRadMode : %d, appendPrefix : %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->m_nRadMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v1

    .line 278
    goto/16 :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_3

    .line 232
    const-string v3, "appendPrefix case 1 : start by 0"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    const-string v3, "%s%s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 235
    :cond_3
    const-string v3, "appendPrefix case 2 : not start by 0"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const-string v3, "%s%s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object p1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 240
    :cond_4
    iget v3, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->m_nRadMode:I

    if-ne v3, v7, :cond_b

    .line 243
    invoke-static {p1}, Lcom/lge/telephony/RAD/KT/KTPhoneNumberUtil;->isCustomerCenterNumberKt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    sget-boolean v3, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v3, :cond_5

    .line 245
    const-string v3, "appendPrefix case 4 : isCustomerCenterNumberKt"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_5
    const-string v3, "%s"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "+82221900901"

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 248
    :cond_6
    invoke-static {p1}, Lcom/lge/telephony/RAD/KT/KTPhoneNumberUtil;->isForeignAffairsTradeNumberKt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 249
    sget-boolean v3, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v3, :cond_7

    .line 250
    const-string v3, "appendPrefix case 5 : isForeignAffairsTradeNumberKt"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_7
    const-string v3, "%s"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "+82232100404"

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 255
    :cond_8
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_9

    .line 256
    const-string v3, "appendPrefix case 1 : start by 0"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    const-string v3, "%s%s%s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 260
    :cond_9
    const-string v3, "82"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_a

    .line 261
    const-string v3, "appendPrefix case 2-1 : start by 82"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    const-string v3, "%s%s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 266
    :cond_a
    const-string v3, "appendPrefix case 2-2 : not start by 0"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    const-string v3, "%s%s%s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 270
    :cond_b
    const-string v3, "appendPrefix case 3 : not RAD_MODE_KOR"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    const-string v3, "%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public isNeededToAddPrefix(Ljava/lang/String;)Z
    .locals 6
    .parameter "pPhoneNum"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    :goto_0
    return v1

    .line 116
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->m_contentResolver:Landroid/content/ContentResolver;

    const-string v4, "show_roaming_prefix"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, userRad:Ljava/lang/String;
    const-string v3, "KTRoamingPrefixAppender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userRad           "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 121
    goto :goto_0

    .line 125
    .end local v0           #userRad:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->isRoaming()Z

    move-result v3

    if-nez v3, :cond_2

    .line 126
    const-string v2, "check KT network - in KT network, no prefix"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {p1}, Lcom/lge/telephony/RAD/KT/KTPhoneNumberUtil;->isCustomerCenterNumberKt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Lcom/lge/telephony/RAD/KT/KTPhoneNumberUtil;->isForeignAffairsTradeNumberKt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    :cond_3
    const-string v3, "isSetAutodial : %b, mRadDialMode : %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->isSetAutodial:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    iget v5, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->mRadDialMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-boolean v3, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->isSetAutodial:Z

    if-eqz v3, :cond_9

    .line 166
    iget v3, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->mRadDialMode:I

    packed-switch v3, :pswitch_data_0

    .line 175
    const-string v3, "case  1-3"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v3, v1}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 176
    goto :goto_0

    .line 137
    :cond_4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 138
    const-string v2, "emergency phone number, no prefix"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_7

    .line 144
    :cond_6
    const-string v3, "check feature code(first char : *, #) s[0]=%c"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-direct {p0, v3, v2}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 150
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-gt v3, v4, :cond_8

    .line 151
    const-string v2, "phone number length <= 8, no prefix"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 156
    :cond_8
    const-string v3, "+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 157
    const-string v2, "phone number +"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 168
    :pswitch_0
    const-string v3, "case  1-1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v3, v1}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 169
    goto/16 :goto_0

    .line 171
    :pswitch_1
    const-string v2, "case  1-2"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 179
    :cond_9
    iget v3, p0, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->mRadDialMode:I

    packed-switch v3, :pswitch_data_1

    .line 188
    const-string v2, "case  2-3"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 181
    :pswitch_2
    const-string v3, "case  2-1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v3, v1}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 182
    goto/16 :goto_0

    .line 184
    :pswitch_3
    const-string v2, "case  2-2"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 179
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isPrefixAddedNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "pPhoneNum"

    .prologue
    const/4 v2, 0x0

    .line 285
    const-string v0, "isPrefixAddedNumber() is not implemented"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/lge/telephony/RAD/KT/KTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    return v2
.end method
