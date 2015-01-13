.class public Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;
.super Lcom/lge/telephony/msim/LGMSimSmsManagerBase;
.source "MockMSimSmsManagerAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;
    }
.end annotation


# instance fields
.field private mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;-><init>()V

    .line 13
    invoke-static {}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->getDefault()Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    .line 14
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
    .line 36
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->copyMessageToIcc([B[BII)Z

    move-result v0

    return v0
.end method

.method public copySmsToIcc([B[BII)I
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "subscription"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->copySmsToIcc([B[BII)I

    move-result v0

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "subscription"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->deleteMessageFromIcc(II)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->disableCellBroadcast(II)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->enableCellBroadcast(II)Z

    move-result v0

    return v0
.end method

.method public getMaxEfSms(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->getMaxEfSms(I)I

    move-result v0

    return v0
.end method

.method public getServiceCenterAddress(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->getServiceCenterAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFdnEnabledOnSubscription(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->isFdnEnabledOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 7
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
    .line 29
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 31
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 22
    return-void
.end method

.method public setServiceCenterAddress(Ljava/lang/String;I)Z
    .locals 1
    .parameter "smsc"
    .parameter "subscription"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->setServiceCenterAddress(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateMessageOnIcc(II[BI)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .parameter "subscription"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->updateMessageOnIcc(II[BI)Z

    move-result v0

    return v0
.end method

.method public updateSmsOnSimReadStatus(IZI)Z
    .locals 1
    .parameter "index"
    .parameter "read"
    .parameter "subscription"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;->mMSimSmsManager:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->updateSmsOnSimReadStatus(IZI)Z

    move-result v0

    return v0
.end method
