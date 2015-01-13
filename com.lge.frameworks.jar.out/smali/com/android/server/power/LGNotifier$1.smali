.class Lcom/android/server/power/LGNotifier$1;
.super Ljava/lang/Object;
.source "LGNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LGNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LGNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/LGNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/server/power/LGNotifier$1;->this$0:Lcom/android/server/power/LGNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/power/LGNotifier$1;->this$0:Lcom/android/server/power/LGNotifier;

    iget-object v1, v0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LGNotifier$1;->this$0:Lcom/android/server/power/LGNotifier;

    iget-boolean v0, v0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/LGNotifier$1;->this$0:Lcom/android/server/power/LGNotifier;

    iget v0, v0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/server/power/LGNotifier$1;->this$0:Lcom/android/server/power/LGNotifier;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    .line 29
    iget-object v0, p0, Lcom/android/server/power/LGNotifier$1;->this$0:Lcom/android/server/power/LGNotifier;

    iget-object v0, v0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    invoke-interface {v0}, Lcom/android/server/power/ScreenOnBlocker;->release()V

    .line 31
    :cond_0
    monitor-exit v1

    .line 32
    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
