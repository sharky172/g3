.class public interface abstract Lcom/android/server/am/IActivityTrigger;
.super Ljava/lang/Object;
.source "IActivityTrigger.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/IActivityTrigger$Stub;
    }
.end annotation


# virtual methods
.method public abstract activityResuming(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract activityStarting(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
