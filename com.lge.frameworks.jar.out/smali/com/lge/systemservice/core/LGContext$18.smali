.class final Lcom/lge/systemservice/core/LGContext$18;
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
.method constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createServiceManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 379
    new-instance v0, Lcom/lge/systemservice/core/LGPowerManagerHelper;

    invoke-direct {v0, p1}, Lcom/lge/systemservice/core/LGPowerManagerHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
