.class public abstract Lcom/lge/systemservice/core/WfdServiceListener;
.super Ljava/lang/Object;
.source "WfdServiceListener.java"


# instance fields
.field private internal:Lcom/lge/systemservice/core/IWfdServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/lge/systemservice/core/WfdServiceListener$1;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/WfdServiceListener$1;-><init>(Lcom/lge/systemservice/core/WfdServiceListener;)V

    iput-object v0, p0, Lcom/lge/systemservice/core/WfdServiceListener;->internal:Lcom/lge/systemservice/core/IWfdServiceListener;

    .line 25
    return-void
.end method


# virtual methods
.method public getWfdServiceListener()Lcom/lge/systemservice/core/IWfdServiceListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/systemservice/core/WfdServiceListener;->internal:Lcom/lge/systemservice/core/IWfdServiceListener;

    return-object v0
.end method

.method public abstract onFailure(I)V
.end method

.method public abstract onSuccess()V
.end method
