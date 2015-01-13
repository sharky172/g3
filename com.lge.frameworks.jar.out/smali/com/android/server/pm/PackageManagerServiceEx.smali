.class public Lcom/android/server/pm/PackageManagerServiceEx;
.super Lcom/android/server/pm/PackageManagerService;
.source "PackageManagerServiceEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerServiceEx"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)V
    .locals 0
    .parameter "context"
    .parameter "installer"
    .parameter "factoryTest"
    .parameter "onlyCore"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)V

    .line 13
    return-void
.end method
