.class public interface abstract Lcom/android/server/content/IContentServiceEx;
.super Ljava/lang/Object;
.source "IContentServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/IContentServiceEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract getMasterSyncAutomaticallyAsUser(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMasterSyncAutomaticallyAsUser(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
