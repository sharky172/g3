.class public Lcom/android/server/ePDGNotifier;
.super Ljava/lang/Object;
.source "ePDGNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ePDGNotifier$1;,
        Lcom/android/server/ePDGNotifier$eRecord;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ePDGNotifier"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ePDGNotifier$eRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mePDGTracker:Lcom/android/server/ePDGTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ePDGTracker;)V
    .locals 1
    .parameter "context"
    .parameter "tracker"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, Lcom/android/server/ePDGNotifier;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    .line 70
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ePDGNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 74
    return-void
.end method

.method public static convertPDNState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 441
    packed-switch p0, :pswitch_data_0

    .line 447
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 443
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 445
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 187
    .local v0, b:Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/ePDGNotifier;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 189
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 191
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 172
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 174
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ePDGNotifier$eRecord;

    iget-object v2, v2, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    monitor-exit v3

    .line 181
    :goto_1
    return-void

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #recordCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public ePDGlisten(Landroid/net/IePDGStateListener;I)V
    .locals 13
    .parameter "callback"
    .parameter "events"

    .prologue
    .line 80
    if-eqz p2, :cond_6

    .line 82
    iget-object v10, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 84
    const/4 v6, 0x0

    .line 86
    .local v6, r:Lcom/android/server/ePDGNotifier$eRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/net/IePDGStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 87
    .local v1, b:Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 88
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    move-object v7, v6

    .end local v6           #r:Lcom/android/server/ePDGNotifier$eRecord;
    .local v7, r:Lcom/android/server/ePDGNotifier$eRecord;
    :goto_0
    if-ge v3, v0, :cond_5

    .line 89
    :try_start_1
    iget-object v9, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ePDGNotifier$eRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    .end local v7           #r:Lcom/android/server/ePDGNotifier$eRecord;
    .restart local v6       #r:Lcom/android/server/ePDGNotifier$eRecord;
    :try_start_2
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    if-ne v1, v9, :cond_4

    .line 100
    :goto_1
    iget v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->events:I

    xor-int/2addr v9, p2

    and-int v8, p2, v9

    .line 101
    .local v8, send:I
    iput p2, v6, Lcom/android/server/ePDGNotifier$eRecord;->events:I

    .line 103
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_0

    .line 104
    const/4 v9, 0x2

    new-array v5, v9, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .local v5, mystate:[I
    const/4 v9, 0x0

    const/4 v11, 0x0

    :try_start_3
    aput v11, v5, v9

    .line 107
    const/4 v9, 0x1

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v11, v11, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    aput v11, v5, v9

    .line 108
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v9, v5}, Landroid/net/IePDGStateListener;->onPDPStateChanged([I)V

    .line 109
    const/4 v9, 0x0

    const/4 v11, 0x1

    aput v11, v5, v9

    .line 110
    const/4 v9, 0x1

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v11, v11, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    aput v11, v5, v9

    .line 111
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v9, v5}, Landroid/net/IePDGStateListener;->onPDPStateChanged([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 128
    .end local v5           #mystate:[I
    :cond_0
    :goto_2
    and-int/lit8 v9, p2, 0x4

    if-eqz v9, :cond_1

    .line 130
    :try_start_4
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-boolean v11, v11, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    invoke-interface {v9, v11}, Landroid/net/IePDGStateListener;->onWiFiStatusChanged(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 135
    :cond_1
    :goto_3
    and-int/lit8 v9, p2, 0x8

    if-eqz v9, :cond_2

    .line 136
    :try_start_5
    iget-object v9, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget v9, v9, Lcom/android/server/ePDGTracker;->mLastfailreason:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v9, :cond_2

    .line 139
    :try_start_6
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget v11, v11, Lcom/android/server/ePDGTracker;->mLastfailreason:I

    invoke-interface {v9, v11}, Landroid/net/IePDGStateListener;->onErrorStatusChanged(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 145
    :cond_2
    :goto_4
    and-int/lit8 v9, p2, 0x10

    if-eqz v9, :cond_3

    .line 147
    const/4 v9, 0x7

    :try_start_7
    new-array v4, v9, [Ljava/lang/String;

    .line 149
    .local v4, myinfo:[Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v11, 0x0

    aput-object v11, v4, v9

    .line 150
    const/4 v9, 0x1

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v11, v11, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    aput-object v11, v4, v9

    .line 151
    const/4 v9, 0x2

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v11, v11, Lcom/android/server/ePDGTracker;->FQDNForEPDG:Ljava/lang/String;

    aput-object v11, v4, v9

    .line 152
    const/4 v9, 0x3

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v11, v11, Lcom/android/server/ePDGTracker;->ePDGAddrofThisnetwork:Ljava/lang/String;

    aput-object v11, v4, v9

    .line 153
    const/4 v9, 0x4

    const/4 v11, 0x0

    aput-object v11, v4, v9

    .line 154
    const/4 v9, 0x5

    const/4 v11, 0x0

    aput-object v11, v4, v9

    .line 155
    const/4 v9, 0x6

    const/4 v11, 0x0

    aput-object v11, v4, v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 157
    :try_start_8
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v9, v4}, Landroid/net/IePDGStateListener;->onConnectionParamStatus([Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    .line 162
    .end local v4           #myinfo:[Ljava/lang/String;
    :cond_3
    :goto_5
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 168
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v3           #i:I
    .end local v6           #r:Lcom/android/server/ePDGNotifier$eRecord;
    .end local v8           #send:I
    :goto_6
    return-void

    .line 88
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v3       #i:I
    .restart local v6       #r:Lcom/android/server/ePDGNotifier$eRecord;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-object v7, v6

    .end local v6           #r:Lcom/android/server/ePDGNotifier$eRecord;
    .restart local v7       #r:Lcom/android/server/ePDGNotifier$eRecord;
    goto/16 :goto_0

    .line 94
    :cond_5
    :try_start_a
    new-instance v6, Lcom/android/server/ePDGNotifier$eRecord;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/ePDGNotifier$eRecord;-><init>(Lcom/android/server/ePDGNotifier$1;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 95
    .end local v7           #r:Lcom/android/server/ePDGNotifier$eRecord;
    .restart local v6       #r:Lcom/android/server/ePDGNotifier$eRecord;
    :try_start_b
    iput-object v1, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    .line 96
    iput-object p1, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    .line 98
    iget-object v9, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 162
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v3           #i:I
    :catchall_0
    move-exception v9

    :goto_7
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v9

    .line 123
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v3       #i:I
    .restart local v5       #mystate:[I
    .restart local v8       #send:I
    :catch_0
    move-exception v2

    .line 124
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_c
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/ePDGNotifier;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 131
    .end local v2           #ex:Landroid/os/RemoteException;
    .end local v5           #mystate:[I
    :catch_1
    move-exception v2

    .line 132
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/ePDGNotifier;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 140
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 141
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/ePDGNotifier;->remove(Landroid/os/IBinder;)V

    goto :goto_4

    .line 158
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v4       #myinfo:[Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 159
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/ePDGNotifier;->remove(Landroid/os/IBinder;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 165
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #ex:Landroid/os/RemoteException;
    .end local v3           #i:I
    .end local v4           #myinfo:[Ljava/lang/String;
    .end local v6           #r:Lcom/android/server/ePDGNotifier$eRecord;
    .end local v8           #send:I
    :cond_6
    invoke-interface {p1}, Landroid/net/IePDGStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/ePDGNotifier;->remove(Landroid/os/IBinder;)V

    goto :goto_6

    .line 162
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v3       #i:I
    .restart local v7       #r:Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #r:Lcom/android/server/ePDGNotifier$eRecord;
    .restart local v6       #r:Lcom/android/server/ePDGNotifier$eRecord;
    goto :goto_7
.end method

.method public getTypebyid(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 396
    if-nez p1, :cond_0

    .line 397
    const-string v0, "ims"

    .line 405
    :goto_0
    return-object v0

    .line 398
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 399
    const-string v0, "vzwapp"

    goto :goto_0

    .line 400
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 401
    const-string v0, "CF"

    goto :goto_0

    .line 402
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 403
    const-string v0, "Static"

    goto :goto_0

    .line 405
    :cond_3
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public notifyADDRChange(I)V
    .locals 10
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 333
    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    if-ne p1, v1, :cond_0

    .line 345
    const/4 v6, 0x0

    .line 347
    .local v6, linkProperties:Landroid/net/LinkProperties;
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v0, v0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v0, v0, p1

    if-nez v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ePDGTracker;->getePDGLinkProp(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 353
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v1, v1, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/server/ePDGNotifier;->convertPDNState(I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ePDG_CH"

    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/ePDGTracker;->getAPNwithFid(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    .line 364
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v1, v1, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/server/ePDGNotifier;->convertPDNState(I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ePDG_CH"

    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/ePDGTracker;->getAPNwithFid(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    .line 375
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v1, v1, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/server/ePDGNotifier;->convertPDNState(I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ePDG_CH"

    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/ePDGTracker;->getAPNwithFid(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 386
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public notifyErrorStatus()V
    .locals 6

    .prologue
    .line 314
    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 316
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ePDGNotifier$eRecord;

    .line 317
    .local v2, r:Lcom/android/server/ePDGNotifier$eRecord;
    iget v3, v2, Lcom/android/server/ePDGNotifier$eRecord;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 319
    :try_start_1
    iget-object v3, v2, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget v5, v5, Lcom/android/server/ePDGTracker;->mLastfailreason:I

    invoke-interface {v3, v5}, Landroid/net/IePDGStateListener;->onErrorStatusChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 325
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ePDGNotifier;->handleRemoveListLocked()V

    .line 326
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 327
    return-void
.end method

.method public notifyPDPState(I)V
    .locals 14
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 212
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 221
    :cond_0
    if-ne p1, v1, :cond_2

    .line 224
    const/4 v6, 0x0

    .line 226
    .local v6, linkProperties:Landroid/net/LinkProperties;
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v0, v0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ePDGTracker;->getePDGLinkProp(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 233
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v1, v1, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/server/ePDGNotifier;->convertPDNState(I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ePDG"

    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/ePDGTracker;->getAPNwithFid(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    .line 244
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v1, v1, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/server/ePDGNotifier;->convertPDNState(I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ePDG"

    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/ePDGTracker;->getAPNwithFid(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    .line 255
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v1, v1, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/server/ePDGNotifier;->convertPDNState(I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ePDG"

    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/ePDGTracker;->getAPNwithFid(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    .end local v6           #linkProperties:Landroid/net/LinkProperties;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 276
    const/4 v0, 0x2

    :try_start_1
    new-array v12, v0, [I

    .line 278
    .local v12, mystate:[I
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/ePDGNotifier$eRecord;

    .line 279
    .local v13, r:Lcom/android/server/ePDGNotifier$eRecord;
    iget v0, v13, Lcom/android/server/ePDGNotifier$eRecord;->events:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 280
    const/4 v0, 0x0

    aput p1, v12, v0

    .line 281
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v2, v2, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v2, p1

    aput v2, v12, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :try_start_2
    iget-object v0, v13, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v0, v12}, Landroid/net/IePDGStateListener;->onPDPStateChanged([I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 284
    :catch_0
    move-exception v10

    .line 285
    .local v10, ex:Landroid/os/RemoteException;
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v13, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 290
    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #mystate:[I
    .end local v13           #r:Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 289
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #mystate:[I
    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/ePDGNotifier;->handleRemoveListLocked()V

    .line 290
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 266
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #mystate:[I
    .restart local v6       #linkProperties:Landroid/net/LinkProperties;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public notifyWIFIStatus()V
    .locals 6

    .prologue
    .line 296
    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 298
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ePDGNotifier$eRecord;

    .line 299
    .local v2, r:Lcom/android/server/ePDGNotifier$eRecord;
    iget v3, v2, Lcom/android/server/ePDGNotifier$eRecord;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 301
    :try_start_1
    iget-object v3, v2, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-boolean v5, v5, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    invoke-interface {v3, v5}, Landroid/net/IePDGStateListener;->onWiFiStatusChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 307
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ePDGNotifier;->handleRemoveListLocked()V

    .line 308
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    return-void
.end method

.method public notifyonConnectionParam(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 413
    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 415
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ePDGNotifier$eRecord;

    .line 416
    .local v3, r:Lcom/android/server/ePDGNotifier$eRecord;
    iget v4, v3, Lcom/android/server/ePDGNotifier$eRecord;->events:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    .line 419
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    .line 421
    .local v2, myinfo:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGNotifier;->getTypebyid(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 422
    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    aput-object v6, v2, v4

    .line 423
    const/4 v4, 0x2

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->FQDNForEPDG:Ljava/lang/String;

    aput-object v6, v2, v4

    .line 424
    const/4 v4, 0x3

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->ePDGAddrofThisnetwork:Ljava/lang/String;

    aput-object v6, v2, v4

    .line 425
    const/4 v4, 0x4

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v2, v4

    .line 426
    const/4 v4, 0x5

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v2, v4

    .line 427
    const/4 v4, 0x6

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :try_start_1
    iget-object v4, v3, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v4, v2}, Landroid/net/IePDGStateListener;->onConnectionParamStatus([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #myinfo:[Ljava/lang/String;
    .end local v3           #r:Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 435
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ePDGNotifier;->handleRemoveListLocked()V

    .line 436
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 437
    return-void
.end method
