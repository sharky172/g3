.class final Lcom/lge/systemservice/core/LGContext$3;
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
    .line 272
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createServiceManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 275
    new-instance v0, Lcom/lge/systemservice/core/LGSDEncManager;

    invoke-direct {v0, p1}, Lcom/lge/systemservice/core/LGSDEncManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
