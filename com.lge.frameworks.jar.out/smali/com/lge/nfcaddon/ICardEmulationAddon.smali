.class public interface abstract Lcom/lge/nfcaddon/ICardEmulationAddon;
.super Ljava/lang/Object;
.source "ICardEmulationAddon.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/ICardEmulationAddon$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDefaultRoute()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDefaultRoute(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
