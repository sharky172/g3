.class Lcom/lge/systemservice/core/WfdServiceListener$1;
.super Lcom/lge/systemservice/core/IWfdServiceListener$Stub;
.source "WfdServiceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/WfdServiceListener;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/WfdServiceListener;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/WfdServiceListener;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lge/systemservice/core/WfdServiceListener$1;->this$0:Lcom/lge/systemservice/core/WfdServiceListener;

    invoke-direct {p0}, Lcom/lge/systemservice/core/IWfdServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/lge/systemservice/core/WfdServiceListener$1;->onFailure(I)V

    .line 23
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/lge/systemservice/core/WfdServiceListener$1;->onSuccess()V

    .line 19
    return-void
.end method
