.class public Lcom/lge/webview/chromium/ILGCliptrayManager$Factory;
.super Ljava/lang/Object;
.source "ILGCliptrayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/webview/chromium/ILGCliptrayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/webview/chromium/ILGCliptrayManager;
    .locals 1
    .parameter "c"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/lge/webview/chromium/LGCliptrayManager;->getInstance(Landroid/content/Context;)Lcom/lge/webview/chromium/LGCliptrayManager;

    move-result-object v0

    return-object v0
.end method
