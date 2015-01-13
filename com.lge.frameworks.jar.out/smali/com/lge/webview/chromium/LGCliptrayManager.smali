.class public Lcom/lge/webview/chromium/LGCliptrayManager;
.super Ljava/lang/Object;
.source "LGCliptrayManager.java"

# interfaces
.implements Lcom/lge/webview/chromium/ILGCliptrayManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/webview/chromium/LGCliptrayManager$1;,
        Lcom/lge/webview/chromium/LGCliptrayManager$LGCliptrayActionItem;,
        Lcom/lge/webview/chromium/LGCliptrayManager$LGCliptrayHandler;
    }
.end annotation


# static fields
.field public static final CLIPTRAY_FEATURE_NAME:Ljava/lang/String; = "com.lge.software.cliptray"

.field private static final LGCLIPTRAY_COPY_DATA:I = 0x4

.field private static final LGCLIPTRAY_COPY_IMAGE:I = 0x3

.field private static final LGCLIPTRAY_COPY_TEXT:I = 0x2

.field private static final LGCLIPTRAY_ONPASTE:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "LGCliptrayManager"

.field private static sInstance:Lcom/lge/webview/chromium/LGCliptrayManager;


# instance fields
.field private mClient:Lcom/lge/webview/chromium/ILGCliptrayManager$LGCliptrayClient;

.field private mClientContext:Landroid/content/Context;

.field private mCliptrayManager:Lcom/lge/systemservice/core/CliptrayManager;

.field private mHandler:Landroid/os/Handler;

.field private mSelectActionItem:Lcom/lge/webview/chromium/ILGSelectActionPopupWindow$LGSelectActionItem;

.field private mServiceContext:Lcom/lge/systemservice/core/LGContext;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 27
    iput-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mCliptrayManager:Lcom/lge/systemservice/core/CliptrayManager;

    .line 28
    iput-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mClientContext:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mClient:Lcom/lge/webview/chromium/ILGCliptrayManager$LGCliptrayClient;

    .line 33
    iput-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mSelectActionItem:Lcom/lge/webview/chromium/ILGSelectActionPopupWindow$LGSelectActionItem;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v2, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 27
    iput-object v2, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mCliptrayManager:Lcom/lge/systemservice/core/CliptrayManager;

    .line 28
    iput-object v2, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mClientContext:Landroid/content/Context;

    .line 32
    iput-object v2, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mClient:Lcom/lge/webview/chromium/ILGCliptrayManager$LGCliptrayClient;

    .line 33
    iput-object v2, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object v2, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mSelectActionItem:Lcom/lge/webview/chromium/ILGSelectActionPopupWindow$LGSelectActionItem;

    .line 49
    iput-object p1, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mClientContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mClientContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 52
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    const-string v1, "cliptray"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/CliptrayManager;

    iput-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mCliptrayManager:Lcom/lge/systemservice/core/CliptrayManager;

    .line 54
    new-instance v0, Lcom/lge/webview/chromium/LGCliptrayManager$LGCliptrayHandler;

    invoke-direct {v0, p0, v2}, Lcom/lge/webview/chromium/LGCliptrayManager$LGCliptrayHandler;-><init>(Lcom/lge/webview/chromium/LGCliptrayManager;Lcom/lge/webview/chromium/LGCliptrayManager$1;)V

    iput-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/lge/webview/chromium/LGCliptrayManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lge/webview/chromium/LGCliptrayManager;->pasteFromCliptray()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/webview/chromium/LGCliptrayManager;)Lcom/lge/systemservice/core/CliptrayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mCliptrayManager:Lcom/lge/systemservice/core/CliptrayManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/webview/chromium/LGCliptrayManager;)Lcom/lge/webview/chromium/ILGCliptrayManager$LGCliptrayClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mClient:Lcom/lge/webview/chromium/ILGCliptrayManager$LGCliptrayClient;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/webview/chromium/LGCliptrayManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    const-class v1, Lcom/lge/webview/chromium/LGCliptrayManager;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/lge/webview/chromium/LGCliptrayManager;->sInstance:Lcom/lge/webview/chromium/LGCliptrayManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/lge/webview/chromium/LGCliptrayManager;

    invoke-direct {v0, p0}, Lcom/lge/webview/chromium/LGCliptrayManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/webview/chromium/LGCliptrayManager;->sInstance:Lcom/lge/webview/chromium/LGCliptrayManager;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    sget-object v0, Lcom/lge/webview/chromium/LGCliptrayManager;->sInstance:Lcom/lge/webview/chromium/LGCliptrayManager;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static hasLGSystemCliptrayServiceFeature(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.lge.software.cliptray"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pasteFromCliptray()V
    .locals 8

    .prologue
    .line 146
    iget-object v6, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mClientContext:Landroid/content/Context;

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 147
    .local v3, clipboardManager:Landroid/content/ClipboardManager;
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 149
    .local v0, clipData:Landroid/content/ClipData;
    if-nez v0, :cond_1

    .line 150
    const-string v6, "LGCliptrayManager"

    const-string v7, "LGCliptrayHandler::LGCLIPTRAY_ONPASTE: clipData is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void

    .line 154
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 155
    const/4 v5, 0x0

    .line 156
    .local v5, pasteText:Ljava/lang/CharSequence;
    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 157
    .local v1, clipItem:Landroid/content/ClipData$Item;
    if-nez v1, :cond_3

    .line 158
    const-string v6, "LGCliptrayManager"

    const-string v7, "LGCliptrayHandler::LGCLIPTRAY_ONPASTE: clipItem is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 162
    .local v2, clipUri:Landroid/net/Uri;
    if-eqz v2, :cond_4

    const-string v6, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 166
    :cond_4
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 167
    if-nez v5, :cond_5

    if-eqz v2, :cond_5

    .line 168
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 171
    :cond_5
    iget-object v6, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mClient:Lcom/lge/webview/chromium/ILGCliptrayManager$LGCliptrayClient;

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 172
    iget-object v6, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mClient:Lcom/lge/webview/chromium/ILGCliptrayManager$LGCliptrayClient;

    invoke-interface {v6, v5}, Lcom/lge/webview/chromium/ILGCliptrayManager$LGCliptrayClient;->replaceSelection(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public copyImageToCliptray(Landroid/net/Uri;)V
    .locals 2
    .parameter "imgUri"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    :cond_0
    return-void
.end method

.method public copyToCliptray(Landroid/content/ClipData;)V
    .locals 2
    .parameter "clip"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 99
    :cond_0
    return-void
.end method

.method public copyToCliptray(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "selectedText"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 91
    .local v0, clip:Landroid/content/ClipData;
    iget-object v1, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 93
    .end local v0           #clip:Landroid/content/ClipData;
    :cond_0
    return-void
.end method

.method public getActionItem()Lcom/lge/webview/chromium/ILGSelectActionPopupWindow$LGSelectActionItem;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mSelectActionItem:Lcom/lge/webview/chromium/ILGSelectActionPopupWindow$LGSelectActionItem;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/lge/webview/chromium/LGCliptrayManager$LGCliptrayActionItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/webview/chromium/LGCliptrayManager$LGCliptrayActionItem;-><init>(Lcom/lge/webview/chromium/LGCliptrayManager;Lcom/lge/webview/chromium/LGCliptrayManager$1;)V

    iput-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mSelectActionItem:Lcom/lge/webview/chromium/ILGSelectActionPopupWindow$LGSelectActionItem;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mSelectActionItem:Lcom/lge/webview/chromium/ILGSelectActionPopupWindow$LGSelectActionItem;

    return-object v0
.end method

.method public hideCliptray()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mCliptrayManager:Lcom/lge/systemservice/core/CliptrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mCliptrayManager:Lcom/lge/systemservice/core/CliptrayManager;

    invoke-virtual {v0}, Lcom/lge/systemservice/core/CliptrayManager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mCliptrayManager:Lcom/lge/systemservice/core/CliptrayManager;

    invoke-virtual {v0}, Lcom/lge/systemservice/core/CliptrayManager;->hideCliptray()V

    .line 86
    :cond_0
    return-void
.end method

.method public setCliptrayClient(Lcom/lge/webview/chromium/ILGCliptrayManager$LGCliptrayClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mClient:Lcom/lge/webview/chromium/ILGCliptrayManager$LGCliptrayClient;

    .line 72
    return-void
.end method

.method public showCliptray()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mCliptrayManager:Lcom/lge/systemservice/core/CliptrayManager;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lge/webview/chromium/LGCliptrayManager;->mCliptrayManager:Lcom/lge/systemservice/core/CliptrayManager;

    invoke-virtual {v0}, Lcom/lge/systemservice/core/CliptrayManager;->showCliptray()V

    .line 78
    :cond_0
    return-void
.end method
