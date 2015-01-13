.class Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;
.super Ljava/lang/Object;
.source "MockMSimSmsManagerAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MockMSimSmsManager"
.end annotation


# static fields
.field private static sInstance:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-direct {v0}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;-><init>()V

    sput-object v0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->sInstance:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method public static getDefault()Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->sInstance:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    return-object v0
.end method


# virtual methods
.method public copyMessageToIcc([B[BII)Z
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "subscription"

    .prologue
    .line 158
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
    .line 221
    const/4 v0, -0x1

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "subscription"

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxEfSms(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 239
    const/4 v0, -0x1

    return v0
.end method

.method public getServiceCenterAddress(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 211
    const-string v0, ""

    return-object v0
.end method

.method public isFdnEnabledOnSubscription(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
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
    .line 153
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 146
    return-void
.end method

.method public setServiceCenterAddress(Ljava/lang/String;I)Z
    .locals 1
    .parameter "smsc"
    .parameter "subscription"

    .prologue
    .line 202
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
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public updateSmsOnSimReadStatus(IZI)Z
    .locals 1
    .parameter "index"
    .parameter "read"
    .parameter "subscription"

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method
