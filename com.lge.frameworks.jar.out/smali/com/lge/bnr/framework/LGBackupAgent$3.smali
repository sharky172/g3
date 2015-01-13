.class Lcom/lge/bnr/framework/LGBackupAgent$3;
.super Ljava/lang/Object;
.source "LGBackupAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/framework/LGBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public iBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/lge/bnr/framework/LGBackupAgent;


# direct methods
.method constructor <init>(Lcom/lge/bnr/framework/LGBackupAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getiBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->iBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "binder"

    .prologue
    const/4 v6, 0x1

    .line 133
    iput-object p2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->iBinder:Landroid/os/IBinder;

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, isSuccess:Z
    const-string v2, "LGBackupAgent"

    const-string v3, "onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v2, "TT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binder   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    invoke-static {p2}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v3

    #setter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v2, v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$302(Lcom/lge/bnr/framework/LGBackupAgent;Lcom/lge/bnr/remote/IRemoteBackup;)Lcom/lge/bnr/remote/IRemoteBackup;

    .line 141
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v2

    if-nez v2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 146
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mCallback:Lcom/lge/bnr/remote/IRemoteBackupCallback;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$400(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackupCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/bnr/remote/IRemoteBackup;->registerCallback(Lcom/lge/bnr/remote/IRemoteBackupCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 151
    if-eqz v1, :cond_a

    .line 152
    const-string v2, "LGBackupAgent"

    const-string v3, "finally isSuccess"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, "LGBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBackupThread.isAlive() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v4}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_b

    .line 155
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_c

    .line 158
    :cond_1
    const-string v2, "LGBackupAgent"

    const-string v3, "Thread.State.NEW"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 160
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "LGBackupAgent"

    const-string v3, "onServiceConnected RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    if-eqz v1, :cond_7

    .line 152
    const-string v2, "LGBackupAgent"

    const-string v3, "finally isSuccess"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, "LGBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBackupThread.isAlive() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v4}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_8

    .line 155
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_9

    .line 158
    :cond_2
    const-string v2, "LGBackupAgent"

    const-string v3, "Thread.State.NEW"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 160
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    goto :goto_1

    .line 151
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 152
    const-string v3, "LGBackupAgent"

    const-string v4, "finally isSuccess"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v3, "LGBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBackupThread.isAlive() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v5}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_5

    .line 155
    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v3, v4, :cond_6

    .line 158
    :cond_3
    const-string v3, "LGBackupAgent"

    const-string v4, "Thread.State.NEW"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 160
    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    #getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 151
    :goto_2
    throw v2

    .line 171
    :cond_4
    const-string v3, "LGBackupAgent"

    const-string v4, "remote connection failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 167
    :cond_5
    const-string v3, "LGBackupAgent"

    const-string v4, "Thread already started, so it can not be runed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 163
    :cond_6
    const-string v3, "LGBackupAgent"

    const-string v4, "Thread cant not be runed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 171
    .restart local v0       #e:Landroid/os/RemoteException;
    :cond_7
    const-string v2, "LGBackupAgent"

    const-string v3, "remote connection failed"

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_3
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    .restart local v0       #e:Landroid/os/RemoteException;
    :cond_8
    const-string v2, "LGBackupAgent"

    const-string v3, "Thread already started, so it can not be runed."

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_4
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 163
    .restart local v0       #e:Landroid/os/RemoteException;
    :cond_9
    const-string v2, "LGBackupAgent"

    const-string v3, "Thread cant not be runed."

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_5
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 171
    :cond_a
    const-string v2, "LGBackupAgent"

    const-string v3, "remote connection failed"

    goto :goto_3

    .line 167
    :cond_b
    const-string v2, "LGBackupAgent"

    const-string v3, "Thread already started, so it can not be runed."

    goto :goto_4

    .line 163
    :cond_c
    const-string v2, "LGBackupAgent"

    const-string v3, "Thread cant not be runed."

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$3;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    const/4 v1, 0x0

    #setter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v0, v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$302(Lcom/lge/bnr/framework/LGBackupAgent;Lcom/lge/bnr/remote/IRemoteBackup;)Lcom/lge/bnr/remote/IRemoteBackup;

    .line 187
    monitor-exit p0

    .line 189
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
