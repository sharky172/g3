.class Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$1;
.super Ljava/lang/Object;
.source "VzwClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->schedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;


# direct methods
.method constructor <init>(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$1;->this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 530
    :try_start_0
    const-string v1, "VzwClientManager"

    const-string v2, "[schedule] wake up from delayed execution"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$1;->this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    invoke-virtual {v1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->handleEnQueueRequest()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
