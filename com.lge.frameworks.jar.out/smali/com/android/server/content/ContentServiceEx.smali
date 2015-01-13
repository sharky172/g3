.class public Lcom/android/server/content/ContentServiceEx;
.super Lcom/android/server/content/ContentService;
.source "ContentServiceEx.java"

# interfaces
.implements Lcom/android/server/content/IContentServiceEx;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentServiceEx"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/ContentService;-><init>(Landroid/content/Context;Z)V

    .line 16
    iput-object p1, p0, Lcom/android/server/content/ContentServiceEx;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public getMasterSyncAutomaticallyAsUser(I)Z
    .locals 6
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v3, p0, Lcom/android/server/content/ContentServiceEx;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 29
    .local v0, identityToken:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentServiceEx;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 30
    .local v2, syncManager:Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    :goto_0
    return v3

    .line 34
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    const/4 v3, 0x0

    goto :goto_0

    .line 34
    .end local v2           #syncManager:Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/content/IContentServiceEx$Stub;->onTransact(Lcom/android/server/content/IContentServiceEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 21
    .local v0, handled:Z
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/content/ContentService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 6
    .parameter "flag"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v3, p0, Lcom/android/server/content/ContentServiceEx;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "LGMDMEmailUIAdapter"

    invoke-interface {v3, v4, v5}, Lcom/lge/cappuccino/IMdm;->checkDisabledSystemService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 53
    .local v0, identityToken:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentServiceEx;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 54
    .local v2, syncManager:Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2           #syncManager:Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
