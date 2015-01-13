.class Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;
.super Landroid/os/Handler;
.source "SmartCoverManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/SmartCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackRegister"
.end annotation


# static fields
.field private static final MSG_REGISTER:I


# instance fields
.field private final MAX_REGISTER_COUNT:I

.field private final WAIT_SERVICE_MILLIS:I

.field private awaiter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private registrant:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/systemservice/core/SmartCoverManager;

.field private tryCount:I


# direct methods
.method public constructor <init>(Lcom/lge/systemservice/core/SmartCoverManager;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->this$0:Lcom/lge/systemservice/core/SmartCoverManager;

    .line 94
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    const/16 v0, 0x14

    iput v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->MAX_REGISTER_COUNT:I

    .line 84
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->WAIT_SERVICE_MILLIS:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;Lcom/lge/systemservice/core/ISmartCoverCallback;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->register(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v0

    return v0
.end method

.method private onCompletedRegistrationLocked()V
    .locals 3

    .prologue
    .line 193
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;

    .line 194
    .local v0, clbk:Lcom/lge/systemservice/core/ISmartCoverCallback;
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    .end local v0           #clbk:Lcom/lge/systemservice/core/ISmartCoverCallback;
    :cond_1
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 199
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    .line 200
    return-void
.end method

.method private register(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z
    .locals 5
    .parameter "clbk"

    .prologue
    const/4 v1, 0x0

    .line 139
    if-nez p1, :cond_0

    .line 140
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Callback must be not null"

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :goto_0
    return v1

    .line 144
    :cond_0
    instance-of v2, p1, Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/lge/systemservice/core/SmartCoverManager$PenCallback;

    if-nez v2, :cond_1

    .line 145
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Is this proper callback?"

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "calling registerCallback()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->this$0:Lcom/lge/systemservice/core/SmartCoverManager;

    #calls: Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;
    invoke-static {v2}, Lcom/lge/systemservice/core/SmartCoverManager;->access$100(Lcom/lge/systemservice/core/SmartCoverManager;)Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v0

    .line 152
    .local v0, service:Lcom/lge/systemservice/core/ISmartCoverManager;
    if-eqz v0, :cond_5

    .line 153
    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverManager;Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 154
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "register(), Can\'t register callback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_3
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "register callback successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 165
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerAwaiter()V

    .line 177
    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 168
    :cond_5
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    monitor-enter v2

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    const/16 v3, 0x14

    if-lt v1, v3, :cond_6

    .line 172
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    .line 174
    :cond_6
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerDelayedLocked()V

    .line 175
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerAwaiter()V
    .locals 7

    .prologue
    .line 105
    iget-object v3, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->this$0:Lcom/lge/systemservice/core/SmartCoverManager;

    #calls: Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;
    invoke-static {v3}, Lcom/lge/systemservice/core/SmartCoverManager;->access$100(Lcom/lge/systemservice/core/SmartCoverManager;)Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v2

    .line 106
    .local v2, service:Lcom/lge/systemservice/core/ISmartCoverManager;
    iget-object v4, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    monitor-enter v4

    .line 107
    if-nez v2, :cond_0

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerDelayedLocked()V

    .line 109
    monitor-exit v4

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;

    .line 113
    .local v0, clbk:Lcom/lge/systemservice/core/ISmartCoverCallback;
    invoke-direct {p0, v2, v0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverManager;Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerDelayedLocked()V

    .line 115
    monitor-exit v4

    goto :goto_0

    .line 121
    .end local v0           #clbk:Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 118
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "callbacks successfully"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->onCompletedRegistrationLocked()V

    .line 121
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private registerCallback(Lcom/lge/systemservice/core/ISmartCoverManager;Lcom/lge/systemservice/core/ISmartCoverCallback;)Z
    .locals 4
    .parameter "service"
    .parameter "clbk"

    .prologue
    .line 125
    const/4 v1, 0x1

    .line 126
    .local v1, eventType:I
    instance-of v2, p2, Lcom/lge/systemservice/core/SmartCoverManager$PenCallback;

    if-eqz v2, :cond_0

    .line 127
    const/4 v1, 0x2

    .line 131
    :cond_0
    :try_start_0
    invoke-interface {p1, p2, v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 135
    :goto_0
    return v2

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerDelayedLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartCoverService is null or has some problem.. please waiting.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 184
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 185
    iget v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get tired of waiting SmartCoverService... Please register later"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 204
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartCoverService has been died. Tring to recover, please wait.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    .line 209
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerDelayedLocked()V

    .line 210
    monitor-exit v1

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerAwaiter()V

    .line 102
    :cond_0
    return-void
.end method
