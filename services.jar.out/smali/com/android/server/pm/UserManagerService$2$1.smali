.class Lcom/android/server/pm/UserManagerService$2$1;
.super Ljava/lang/Thread;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$2;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1051
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1052
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    iget v3, v3, Lcom/android/server/pm/UserManagerService$2;->val$userHandle:I

    #calls: Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V
    invoke-static {v0, v3}, Lcom/android/server/pm/UserManagerService;->access$000(Lcom/android/server/pm/UserManagerService;I)V

    .line 1053
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1055
    return-void

    .line 1053
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1054
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
