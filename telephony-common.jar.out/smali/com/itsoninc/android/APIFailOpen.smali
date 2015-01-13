.class public Lcom/itsoninc/android/APIFailOpen;
.super Ljava/lang/Object;
.source "APIFailOpen.java"

# interfaces
.implements Lcom/itsoninc/android/ItsOnOemInterface;


# instance fields
.field final DEBUG:Z

.field final LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsoninc/android/APIFailOpen;->DEBUG:Z

    .line 13
    const-class v0, Lcom/itsoninc/android/APIFailOpen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsoninc/android/APIFailOpen;->LOGTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public accountMms(Ljava/lang/String;)V
    .locals 0
    .parameter "transactionId"

    .prologue
    .line 133
    return-void
.end method

.method public authorizeIncomingMms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "address"
    .parameter "transactionId"

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeIncomingSms(Ljava/lang/String;Lcom/itsoninc/android/SmsType;Ljava/lang/String;)Z
    .locals 1
    .parameter "address"
    .parameter "type"
    .parameter "mimeType"

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeIncomingSms([B)Z
    .locals 1
    .parameter "pdu"

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeIncomingVoice(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeOutgoingMms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "address"
    .parameter "transactionId"

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeOutgoingMms(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter "transactionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeOutgoingSms(Ljava/lang/String;I)Z
    .locals 1
    .parameter "address"
    .parameter "serial"

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeOutgoingSms([BI)Z
    .locals 1
    .parameter "pdu"
    .parameter "serial"

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeOutgoingVoice(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public callWaiting(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public cleanupMms(Ljava/lang/String;)V
    .locals 0
    .parameter "transactionId"

    .prologue
    .line 139
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public dial(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public flash(Ljava/lang/String;)Z
    .locals 1
    .parameter "featureCode"

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public initFramework(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 209
    return-void
.end method

.method public initTelephony(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 215
    return-void
.end method

.method public isDataAllowed(JLjava/lang/String;)Z
    .locals 1
    .parameter "systemId"
    .parameter "operatorNumeric"

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public nitzTimeReceived(Ljava/lang/String;J)V
    .locals 0
    .parameter "time"
    .parameter "nitzReceiveTime"

    .prologue
    .line 185
    return-void
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .parameter "pid"
    .parameter "uid"
    .parameter "foregroundActivities"

    .prologue
    .line 191
    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .parameter "pid"
    .parameter "uid"
    .parameter "importance"

    .prologue
    .line 197
    return-void
.end method

.method public onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "iface"
    .parameter "apn"
    .parameter "apnType"

    .prologue
    .line 231
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 203
    return-void
.end method

.method public processCDMACallList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, callList:Ljava/util/List;,"Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    return-void
.end method

.method public processCallList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, callList:Ljava/util/List;,"Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    return-void
.end method

.method public registerActivityMapping(Ljava/lang/String;I)V
    .locals 0
    .parameter "url"
    .parameter "uid"

    .prologue
    .line 31
    return-void
.end method

.method public registerDownloadMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 19
    return-void
.end method

.method public registerMediaMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 25
    return-void
.end method

.method public rejectCall()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    return-void
.end method

.method public setDataConnectionHandler(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .parameter "handler"
    .parameter "trySetupDataMessage"

    .prologue
    .line 225
    return-void
.end method

.method public setEmergencyMode(Z)V
    .locals 0
    .parameter "inEmergencyMode"

    .prologue
    .line 178
    return-void
.end method

.method public setFrameworkInterface(Lcom/itsoninc/android/ItsOnFrameworkInterface;)V
    .locals 0
    .parameter "fwIf"

    .prologue
    .line 43
    return-void
.end method

.method public smsDone(I)V
    .locals 0
    .parameter "serial"

    .prologue
    .line 93
    return-void
.end method

.method public smsError(I)V
    .locals 0
    .parameter "serial"

    .prologue
    .line 99
    return-void
.end method
