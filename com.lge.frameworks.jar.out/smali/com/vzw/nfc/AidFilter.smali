.class public final Lcom/vzw/nfc/AidFilter;
.super Ljava/lang/Object;
.source "AidFilter.java"


# static fields
.field private static mNfcAdapter:Lcom/lge/nfcaddon/INfcAdapterNxp;


# instance fields
.field private final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field public final DEFAULT_ROUTE_LOCATION:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/nfc/AidFilter;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 50
    iget-object v0, p0, Lcom/vzw/nfc/AidFilter;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->SecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v0, v1, :cond_0

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/vzw/nfc/AidFilter;->DEFAULT_ROUTE_LOCATION:I

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/vzw/nfc/AidFilter;->DEFAULT_ROUTE_LOCATION:I

    goto :goto_0
.end method

.method private getAid(Lcom/vzw/nfc/dos/AidRangeDo;Lcom/vzw/nfc/dos/AidMaskDo;)[B
    .locals 6
    .parameter "aid_range"
    .parameter "aid_mask"

    .prologue
    const/4 v5, 0x0

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, aid:[B
    invoke-virtual {p2}, Lcom/vzw/nfc/dos/AidMaskDo;->getAidMask()[B

    move-result-object v1

    .line 160
    .local v1, barr_aid_mask:[B
    const/4 v2, 0x0

    .line 162
    .local v2, count:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 163
    aget-byte v3, v1, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 169
    :cond_0
    if-eqz v2, :cond_1

    .line 170
    new-array v0, v2, [B

    .line 171
    invoke-virtual {p1}, Lcom/vzw/nfc/dos/AidRangeDo;->getAidRange()[B

    move-result-object v3

    invoke-static {v3, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_1
    return-object v0

    .line 166
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getPowerState(Lcom/vzw/nfc/dos/FilterEntryDo;)I
    .locals 6
    .parameter "filter_entry_do"

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, powerState:I
    invoke-virtual {p1}, Lcom/vzw/nfc/dos/FilterEntryDo;->getRoutingModeDo()Lcom/vzw/nfc/dos/RoutingModeDo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/RoutingModeDo;->getRoutingInfo()B

    move-result v2

    .line 179
    .local v2, routeInfo:I
    invoke-virtual {p1}, Lcom/vzw/nfc/dos/FilterEntryDo;->getFilterConditionTagDo()Lcom/vzw/nfc/dos/FilterConditionTagDo;

    move-result-object v0

    .line 180
    .local v0, conditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->getFilterConditionTag()B

    move-result v3

    const/16 v4, -0xf

    if-ne v3, v4, :cond_1

    .line 184
    const/4 v1, 0x1

    .line 190
    :cond_0
    :goto_0
    const-string v3, "AidFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPowerState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v1

    .line 185
    :cond_1
    if-eqz v2, :cond_0

    .line 188
    and-int/lit8 v3, v2, 0x2

    or-int/lit8 v3, v3, 0x4

    and-int/lit8 v4, v2, 0x4

    shr-int/lit8 v4, v4, 0x2

    or-int v1, v3, v4

    goto :goto_0
.end method

.method private static getServiceInterface()Lcom/lge/nfcaddon/INfcAdapterNxp;
    .locals 2

    .prologue
    .line 197
    sget-object v1, Lcom/vzw/nfc/AidFilter;->mNfcAdapter:Lcom/lge/nfcaddon/INfcAdapterNxp;

    if-eqz v1, :cond_0

    .line 198
    sget-object v1, Lcom/vzw/nfc/AidFilter;->mNfcAdapter:Lcom/lge/nfcaddon/INfcAdapterNxp;

    .line 208
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 202
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "nfcvendor"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 203
    .restart local v0       #b:Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 204
    const/4 v1, 0x0

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {v0}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcAdapterNxp;

    move-result-object v1

    sput-object v1, Lcom/vzw/nfc/AidFilter;->mNfcAdapter:Lcom/lge/nfcaddon/INfcAdapterNxp;

    .line 208
    sget-object v1, Lcom/vzw/nfc/AidFilter;->mNfcAdapter:Lcom/lge/nfcaddon/INfcAdapterNxp;

    goto :goto_0
.end method

.method private prepareRouteInfo(Lcom/vzw/nfc/dos/ClfFilterDoList;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "all_CLF_FILTER_DO"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vzw/nfc/dos/ClfFilterDoList;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/nfc/RouteEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vzw/nfc/RouteEntry;>;"
    invoke-virtual {p1}, Lcom/vzw/nfc/dos/ClfFilterDoList;->getClfFilterDos()Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, clf_FILTER_DOs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vzw/nfc/dos/ClfFilterDo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/nfc/dos/ClfFilterDo;

    .line 146
    .local v1, clf_FILTER_DO:Lcom/vzw/nfc/dos/ClfFilterDo;
    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vzw/nfc/dos/FilterEntryDo;->getAidRangeDo()Lcom/vzw/nfc/dos/AidRangeDo;

    move-result-object v6

    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vzw/nfc/dos/FilterEntryDo;->getAidMaskDo()Lcom/vzw/nfc/dos/AidMaskDo;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/vzw/nfc/AidFilter;->getAid(Lcom/vzw/nfc/dos/AidRangeDo;Lcom/vzw/nfc/dos/AidMaskDo;)[B

    move-result-object v0

    .line 149
    .local v0, aid:[B
    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vzw/nfc/AidFilter;->getPowerState(Lcom/vzw/nfc/dos/FilterEntryDo;)I

    move-result v5

    .line 150
    .local v5, powerState:I
    const-string v6, "AidFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prepareRouteInfo powerState"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v3, Lcom/vzw/nfc/RouteEntry;

    iget v6, p0, Lcom/vzw/nfc/AidFilter;->DEFAULT_ROUTE_LOCATION:I

    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vzw/nfc/dos/FilterEntryDo;->getVzwArDo()Lcom/vzw/nfc/dos/VzwPermissionDo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vzw/nfc/dos/VzwPermissionDo;->isVzwAllowed()Z

    move-result v7

    invoke-direct {v3, v0, v5, v6, v7}, Lcom/vzw/nfc/RouteEntry;-><init>([BIIZ)V

    .line 152
    .local v3, entry:Lcom/vzw/nfc/RouteEntry;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v0           #aid:[B
    .end local v1           #clf_FILTER_DO:Lcom/vzw/nfc/dos/ClfFilterDo;
    .end local v3           #entry:Lcom/vzw/nfc/RouteEntry;
    .end local v5           #powerState:I
    :cond_0
    return-void
.end method


# virtual methods
.method public disableFilterCondition(B)Z
    .locals 4
    .parameter "filterConditionTag"

    .prologue
    .line 125
    const/4 v2, 0x1

    .line 126
    .local v2, status:Z
    const/16 v3, -0xf

    if-ne v3, p1, :cond_0

    .line 128
    :try_start_0
    invoke-static {}, Lcom/vzw/nfc/AidFilter;->getServiceInterface()Lcom/lge/nfcaddon/INfcAdapterNxp;

    move-result-object v1

    .line 129
    .local v1, nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    if-eqz v1, :cond_1

    .line 130
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/lge/nfcaddon/INfcAdapterNxp;->setScreenOffCondition(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1           #nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    :cond_0
    :goto_0
    return v2

    .line 132
    .restart local v1       #nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 134
    .end local v1           #nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public enableFilterCondition(B)Z
    .locals 4
    .parameter "filterConditionTag"

    .prologue
    .line 102
    const/4 v2, 0x1

    .line 103
    .local v2, status:Z
    const/16 v3, -0xf

    if-ne v3, p1, :cond_0

    .line 105
    :try_start_0
    invoke-static {}, Lcom/vzw/nfc/AidFilter;->getServiceInterface()Lcom/lge/nfcaddon/INfcAdapterNxp;

    move-result-object v1

    .line 106
    .local v1, nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    if-eqz v1, :cond_1

    .line 107
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/lge/nfcaddon/INfcAdapterNxp;->setScreenOffCondition(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1           #nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    :cond_0
    :goto_0
    return v2

    .line 109
    .restart local v1       #nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 111
    .end local v1           #nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setFilterList([B)Z
    .locals 7
    .parameter "filterList"

    .prologue
    const/4 v5, 0x0

    .line 68
    const/4 v4, 0x1

    .line 69
    .local v4, status:Z
    new-instance v0, Lcom/vzw/nfc/dos/ClfFilterDoList;

    array-length v6, p1

    invoke-direct {v0, p1, v5, v6}, Lcom/vzw/nfc/dos/ClfFilterDoList;-><init>([BII)V

    .line 71
    .local v0, all_CLF_FILTER_DO:Lcom/vzw/nfc/dos/ClfFilterDoList;
    :try_start_0
    invoke-virtual {v0}, Lcom/vzw/nfc/dos/ClfFilterDoList;->translate()V
    :try_end_0
    .catch Lcom/vzw/nfc/dos/DoParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vzw/nfc/RouteEntry;>;"
    invoke-direct {p0, v0, v2}, Lcom/vzw/nfc/AidFilter;->prepareRouteInfo(Lcom/vzw/nfc/dos/ClfFilterDoList;Ljava/util/ArrayList;)V

    .line 81
    :try_start_1
    invoke-static {}, Lcom/vzw/nfc/AidFilter;->getServiceInterface()Lcom/lge/nfcaddon/INfcAdapterNxp;

    move-result-object v3

    .line 82
    .local v3, nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/vzw/nfc/RouteEntry;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/vzw/nfc/RouteEntry;

    invoke-interface {v3, v5}, Lcom/lge/nfcaddon/INfcAdapterNxp;->setVzwAidList([Lcom/vzw/nfc/RouteEntry;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .end local v3           #nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    :goto_0
    move v5, v4

    .line 92
    .end local v2           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vzw/nfc/RouteEntry;>;"
    :goto_1
    return v5

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Lcom/vzw/nfc/dos/DoParserException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 86
    .end local v1           #e:Lcom/vzw/nfc/dos/DoParserException;
    .restart local v2       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vzw/nfc/RouteEntry;>;"
    .restart local v3       #nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 88
    .end local v3           #nfcAdapterNxp:Lcom/lge/nfcaddon/INfcAdapterNxp;
    :catch_1
    move-exception v1

    .line 89
    .local v1, e:Landroid/os/RemoteException;
    const/4 v4, 0x0

    goto :goto_0
.end method
