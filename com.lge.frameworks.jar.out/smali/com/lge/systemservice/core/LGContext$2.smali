.class final Lcom/lge/systemservice/core/LGContext$2;
.super Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;
.source "LGContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LGContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createServiceManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 263
    new-instance v0, Lcom/lge/systemservice/core/VolumeVibratorManager;

    invoke-direct {v0, p1}, Lcom/lge/systemservice/core/VolumeVibratorManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public declared-synchronized getService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lge/systemservice/core/LGContext$2;->createServiceManager(Landroid/content/Context;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
