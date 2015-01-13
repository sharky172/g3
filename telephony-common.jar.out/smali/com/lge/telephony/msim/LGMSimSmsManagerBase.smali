.class public abstract Lcom/lge/telephony/msim/LGMSimSmsManagerBase;
.super Ljava/lang/Object;
.source "LGMSimSmsManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LGMSimSmsManagerBase"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for common API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, errorMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private static logUnexpectedMTKMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for MTK API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, errorMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private static logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 28
    const-string v0, "LGMSimSmsManagerBase"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method private static logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for QCOM API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, errorMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public copyMessageToIcc([B[BII)Z
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "subscription"

    .prologue
    .line 109
    const-string v0, "copyMessageToIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public copySmsToIcc([B[BII)I
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "subscription"

    .prologue
    .line 212
    const-string v0, "copySmsToIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 213
    const/4 v0, -0x1

    return v0
.end method

.method public copySmsToIccPrivate([B[BIII)I
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "sms_format"
    .parameter "subscription"

    .prologue
    .line 249
    const-string v0, "copySmsToIccPrivate"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 250
    const/4 v0, -0x1

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "subscription"

    .prologue
    .line 121
    const-string v0, "deleteMessageFromIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public deleteMessageFromIccMultiMode(III)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "smsformat"
    .parameter "subscription"

    .prologue
    .line 262
    const-string v0, "deleteMessageFromIccMultiMode"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 160
    const-string v0, "disableCellBroadcast"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 148
    const-string v0, "enableCellBroadcast"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxEfSms(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 234
    const-string v0, "getMaxEfSms"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 235
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxEfSmsMultiMode(II)I
    .locals 1
    .parameter "smsformat"
    .parameter "subscription"

    .prologue
    .line 275
    const-string v0, "getMaxEfSmsMultiMode"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 276
    const/4 v0, -0x1

    return v0
.end method

.method public getServiceCenterAddress(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 197
    const-string v0, "getServiceCenterAddress"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFdnEnabledOnSubscription(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 223
    const-string v0, "isFdnEnabledOnSubscription"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 1
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "sendMultipartTextMessage"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 1
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 77
    const-string v0, "sendTextMessage"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public setServiceCenterAddress(Ljava/lang/String;I)Z
    .locals 1
    .parameter "smsc"
    .parameter "subscription"

    .prologue
    .line 186
    const-string v0, "setServiceCenterAddress"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public updateMessageOnIcc(II[BI)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .parameter "subscription"

    .prologue
    .line 136
    const-string v0, "updateMessageOnIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public updateSmsOnSimReadStatus(IZI)Z
    .locals 1
    .parameter "index"
    .parameter "read"
    .parameter "subscription"

    .prologue
    .line 174
    const-string v0, "updateSmsOnSimReadStatus"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    return v0
.end method
