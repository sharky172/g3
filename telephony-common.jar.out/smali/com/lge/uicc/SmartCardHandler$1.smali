.class Lcom/lge/uicc/SmartCardHandler$1;
.super Ljava/util/TimerTask;
.source "SmartCardHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/SmartCardHandler;->registerTimeoutTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/SmartCardHandler;


# direct methods
.method constructor <init>(Lcom/lge/uicc/SmartCardHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/lge/uicc/SmartCardHandler$1;->this$0:Lcom/lge/uicc/SmartCardHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lge/uicc/SmartCardHandler$1;->this$0:Lcom/lge/uicc/SmartCardHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    return-void
.end method
