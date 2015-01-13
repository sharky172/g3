.class public Lcom/android/server/am/ActivityManagerServiceEx;
.super Lcom/android/server/am/ActivityManagerService;
.source "ActivityManagerServiceEx.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManagerServiceEx"


# instance fields
.field mATList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/IActivityTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public activityResumeNotification(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    const-string v4, "ActivityManagerServiceEx"

    const-string v5, "intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void

    .line 83
    :cond_0
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    if-eqz v4, :cond_2

    .line 89
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 90
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IActivityTrigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .local v3, trigger:Lcom/android/server/am/IActivityTrigger;
    if-eqz v3, :cond_1

    .line 93
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, activity:Ljava/lang/String;
    invoke-interface {v3, v0}, Lcom/android/server/am/IActivityTrigger;->activityResuming(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .end local v0           #activity:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 98
    :catch_0
    move-exception v1

    .line 100
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 108
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    .end local v3           #trigger:Lcom/android/server/am/IActivityTrigger;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public activityStartNotification(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    const-string v3, "ActivityManagerServiceEx"

    const-string v4, "intent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void

    .line 46
    :cond_0
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    if-eqz v3, :cond_2

    .line 52
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 53
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/IActivityTrigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .local v2, trigger:Lcom/android/server/am/IActivityTrigger;
    if-eqz v2, :cond_1

    .line 56
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, activity:Ljava/lang/String;
    invoke-interface {v2, v0}, Lcom/android/server/am/IActivityTrigger;->activityStarting(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .end local v0           #activity:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 70
    .end local v1           #i:I
    .end local v2           #trigger:Lcom/android/server/am/IActivityTrigger;
    :cond_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 61
    .restart local v1       #i:I
    .restart local v2       #trigger:Lcom/android/server/am/IActivityTrigger;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 117
    :pswitch_0
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/IActivityTrigger$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/am/IActivityTrigger;

    move-result-object v0

    .line 119
    .local v0, watcher:Lcom/android/server/am/IActivityTrigger;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerServiceEx;->registerActivityTrigger(Lcom/android/server/am/IActivityTrigger;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v1, 0x1

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_0
    .end packed-switch
.end method

.method protected registerActivityTrigger(Lcom/android/server/am/IActivityTrigger;)V
    .locals 1
    .parameter "trig"

    .prologue
    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
