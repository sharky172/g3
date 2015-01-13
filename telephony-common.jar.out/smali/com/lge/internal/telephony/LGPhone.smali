.class public Lcom/lge/internal/telephony/LGPhone;
.super Ljava/lang/Object;
.source "LGPhone.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LGPhone"

.field private static final TYPE_EUIMID:I = 0x3

.field private static final TYPE_IMEI:I = 0x2

.field private static final TYPE_MEID:I = 0x1

.field private static sInstance:Lcom/lge/internal/telephony/LGPhone;


# instance fields
.field private mIsUpdateRoamingCountry:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault(Lcom/android/internal/telephony/Phone;)Lcom/lge/internal/telephony/LGPhone;
    .locals 3
    .parameter "phone"

    .prologue
    .line 39
    const-class v1, Lcom/lge/internal/telephony/LGPhone;

    monitor-enter v1

    :try_start_0
    const-string v0, "LGPhone"

    const-string v2, "You are using Phone for LG API"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v0, Lcom/lge/internal/telephony/LGPhone;->sInstance:Lcom/lge/internal/telephony/LGPhone;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/lge/internal/telephony/LGPhone;

    invoke-direct {v0}, Lcom/lge/internal/telephony/LGPhone;-><init>()V

    sput-object v0, Lcom/lge/internal/telephony/LGPhone;->sInstance:Lcom/lge/internal/telephony/LGPhone;

    .line 45
    :cond_0
    sget-object v0, Lcom/lge/internal/telephony/LGPhone;->sInstance:Lcom/lge/internal/telephony/LGPhone;

    invoke-virtual {v0, p0}, Lcom/lge/internal/telephony/LGPhone;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 47
    sget-object v0, Lcom/lge/internal/telephony/LGPhone;->sInstance:Lcom/lge/internal/telephony/LGPhone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCLIRSettingValue()I
    .locals 2

    .prologue
    .line 124
    const-string v0, "LGPhone"

    const-string v1, "dummy! getCLIRSettingValue"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentLine()I
    .locals 2

    .prologue
    .line 159
    const-string v0, "LGPhone"

    const-string v1, "getCurrentLine is not support!!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x2

    return v0
.end method

.method public getCurrentVoiceClass()I
    .locals 2

    .prologue
    .line 181
    const-string v0, "LGPhone"

    const-string v1, "getCurrentVoiceClass is not support!!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 11
    .parameter "type"

    .prologue
    const/16 v10, 0xe

    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, mDeviceId:Ljava/lang/String;
    const-string v7, "gsm.sim.state"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, prop:Ljava/lang/String;
    const-string v7, "READY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 64
    .local v1, isSIMReady:Z
    iget-object v7, p0, Lcom/lge/internal/telephony/LGPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, mImei:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/internal/telephony/LGPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, mEsn:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/internal/telephony/LGPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, mMeid:Ljava/lang/String;
    const-string v7, "ro.debuggable"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    .local v0, DBG:Z
    if-eqz v0, :cond_0

    .line 71
    const-string v7, "LGPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mImei = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   mEsn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   mMeid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 91
    const-string v7, "LGPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid type in getDeviceId("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    if-eqz v0, :cond_1

    .line 96
    const-string v7, "LGPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDeviceId("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    return-object v2

    .line 76
    :pswitch_0
    iget-object v7, p0, Lcom/lge/internal/telephony/LGPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 77
    goto :goto_0

    .line 79
    :pswitch_1
    move-object v2, v4

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    if-nez v1, :cond_2

    .line 83
    const/4 v2, 0x0

    goto :goto_0

    .line 84
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 85
    move-object v2, v5

    goto :goto_0

    .line 87
    :cond_3
    const/4 v2, 0x0

    .line 89
    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 2

    .prologue
    .line 192
    const-string v0, "LGPhone"

    const-string v1, "dummy! getVoiceCallForwardingFlag"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceCallForwardingFlagLine2()Z
    .locals 2

    .prologue
    .line 254
    const-string v0, "LGPhone"

    const-string v1, "dummy! getVoiceCallForwardingFlagLine2"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailAlphaTagForALS(I)Ljava/lang/String;
    .locals 2
    .parameter "line"

    .prologue
    .line 227
    const-string v0, "LGPhone"

    const-string v1, "dummy! getVoiceMailAlphaTagForALS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumberForALS(I)Ljava/lang/String;
    .locals 2
    .parameter "line"

    .prologue
    .line 215
    const-string v0, "LGPhone"

    const-string v1, "dummy! getVoiceMailNumberForALS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public isTwoLineSupported()Z
    .locals 2

    .prologue
    .line 203
    const-string v0, "LGPhone"

    const-string v1, "dummy! isTwoLineSupported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lge/internal/telephony/LGPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 28
    return-void
.end method

.method public setServiceLine(ILandroid/os/Message;)V
    .locals 2
    .parameter "line"
    .parameter "onComplete"

    .prologue
    .line 138
    const-string v0, "LGPhone"

    const-string v1, "dummy! setServiceLine"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public setVoiceMailNumberForALS(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "line"
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 244
    const-string v0, "LGPhone"

    const-string v1, "dummy! setVoiceMailNumberForALS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public storeALSSettingValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 149
    const-string v0, "LGPhone"

    const-string v1, "dummy! storeALSSettingValue"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public storeCLIRSettingValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 113
    const-string v0, "LGPhone"

    const-string v1, "dummy! storeCLIRSettingValue"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public toggleCurrentLine()I
    .locals 2

    .prologue
    .line 170
    const-string v0, "LGPhone"

    const-string v1, "toggleCurrentLine is not support!!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x2

    return v0
.end method
