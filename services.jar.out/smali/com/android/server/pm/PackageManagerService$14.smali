.class Lcom/android/server/pm/PackageManagerService$14;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingMove(Lcom/android/server/pm/PackageManagerService$MoveParams;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$currentStatus:I

.field final synthetic val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$MoveParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12742
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$14;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 12745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12746
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$14;->val$currentStatus:I

    move/from16 v22, v0

    .line 12747
    .local v22, returnCode:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$currentStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 12748
    const/4 v7, 0x0

    .line 12749
    .local v7, uidArr:[I
    const/4 v6, 0x0

    .line 12750
    .local v6, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 12751
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageParser$Package;

    .line 12752
    .local v19, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v19, :cond_6

    .line 12753
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " doesn\'t exist. Aborting move"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12755
    const/16 v22, -0x2

    .line 12769
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12770
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_1

    .line 12772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    #calls: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 12774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 12775
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 12776
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #pkg:Landroid/content/pm/PackageParser$Package;
    check-cast v19, Landroid/content/pm/PackageParser$Package;

    .line 12778
    .restart local v19       #pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v19, :cond_8

    .line 12779
    const-string v3, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " Package "

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v26, " doesn\'t exist. Aborting move"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12781
    const/16 v22, -0x2

    .line 12849
    :cond_0
    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12850
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 12852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    #calls: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 12855
    .end local v6           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #uidArr:[I
    .end local v19           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v3, 0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_f

    .line 12857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v3, :cond_2

    .line 12858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/16 v4, -0x6e

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 12872
    :cond_2
    :goto_2
    const/4 v3, -0x7

    move/from16 v0, v22

    if-eq v0, v3, :cond_4

    .line 12873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 12874
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageParser$Package;

    .line 12875
    .restart local v19       #pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_3

    .line 12876
    const/4 v3, 0x0

    move-object/from16 v0, v19

    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    .line 12878
    :cond_3
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 12881
    .end local v19           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v0, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->observer:Landroid/content/pm/IPackageMoveObserver;

    move-object/from16 v17, v0

    .line 12882
    .local v17, observer:Landroid/content/pm/IPackageMoveObserver;
    if-eqz v17, :cond_5

    .line 12884
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v3, v1}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 12889
    :cond_5
    :goto_3
    return-void

    .line 12756
    .end local v17           #observer:Landroid/content/pm/IPackageMoveObserver;
    .restart local v6       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #uidArr:[I
    .restart local v19       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 12757
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " code path changed from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " Aborting move and returning error"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12761
    const/16 v22, -0x6

    goto/16 :goto_0

    .line 12763
    :cond_7
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v23, v0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v5, v23, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 12766
    .end local v7           #uidArr:[I
    .local v23, uidArr:[I
    :try_start_7
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 12767
    .end local v6           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v20, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object/from16 v6, v20

    .end local v20           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v7, v23

    .end local v23           #uidArr:[I
    .restart local v7       #uidArr:[I
    goto/16 :goto_0

    .line 12769
    .end local v19           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    :goto_4
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v3

    .line 12782
    .restart local v19       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 12784
    const-string v3, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Package "

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v26, " code path changed from "

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v26, " to "

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v26, " Aborting move and returning error"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12788
    const/16 v22, -0x6

    goto/16 :goto_1

    .line 12790
    :cond_9
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 12791
    .local v18, oldCodePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v13

    .line 12792
    .local v13, newCodePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v16

    .line 12793
    .local v16, newResPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v15

    .line 12796
    .local v15, newNativePath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12798
    .local v14, newNativeDir:Ljava/io/File;
    #calls: Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$500(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_a

    #calls: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$600(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 12799
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v14}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesIfNeededLI(Ljava/io/File;Ljava/io/File;)I

    .line 12802
    :cond_a
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v25

    .line 12803
    .local v25, users:[I
    move-object/from16 v9, v25

    .local v9, arr$:[I
    array-length v12, v9

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_5
    if-ge v11, v12, :cond_c

    aget v24, v9, v11

    .line 12804
    .local v24, user:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, v24

    invoke-virtual {v3, v8, v15, v0}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_b

    .line 12806
    const/16 v22, -0x1

    .line 12803
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 12810
    .end local v24           #user:I
    :cond_c
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_d

    .line 12811
    move-object/from16 v0, v19

    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 12813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v19

    #calls: Lcom/android/server/pm/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->access$4900(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;)I

    move-result v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_d

    .line 12816
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 12817
    const/16 v22, -0x1

    .line 12821
    :cond_d
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_0

    .line 12822
    move-object/from16 v0, v19

    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 12823
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v13, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 12824
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v16

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 12825
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v15, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 12826
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/pm/PackageSetting;

    .line 12827
    .local v21, ps:Lcom/android/server/pm/PackageSetting;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 12828
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 12829
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 12831
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 12832
    move-object/from16 v0, v21

    iput-object v15, v0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 12834
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 12837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_e

    .line 12838
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v26, 0x4

    or-int v8, v8, v26

    iput v8, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 12842
    :goto_6
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/server/pm/GrantedPermissions;->setFlags(I)V

    .line 12843
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v3, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12846
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->writeLPr()V

    goto/16 :goto_1

    .line 12849
    .end local v9           #arr$:[I
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #newCodePath:Ljava/lang/String;
    .end local v14           #newNativeDir:Ljava/io/File;
    .end local v15           #newNativePath:Ljava/lang/String;
    .end local v16           #newResPath:Ljava/lang/String;
    .end local v18           #oldCodePath:Ljava/lang/String;
    .end local v19           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v21           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v25           #users:[I
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v3

    .line 12850
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v3

    .line 12840
    .restart local v9       #arr$:[I
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #newCodePath:Ljava/lang/String;
    .restart local v14       #newNativeDir:Ljava/io/File;
    .restart local v15       #newNativePath:Ljava/lang/String;
    .restart local v16       #newResPath:Ljava/lang/String;
    .restart local v18       #oldCodePath:Ljava/lang/String;
    .restart local v19       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v21       #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v25       #users:[I
    :cond_e
    :try_start_c
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const v26, -0x40001

    and-int v8, v8, v26

    iput v8, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    .line 12863
    .end local v6           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #uidArr:[I
    .end local v9           #arr$:[I
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #newCodePath:Ljava/lang/String;
    .end local v14           #newNativeDir:Ljava/io/File;
    .end local v15           #newNativePath:Ljava/lang/String;
    .end local v16           #newResPath:Ljava/lang/String;
    .end local v18           #oldCodePath:Ljava/lang/String;
    .end local v19           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v21           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v25           #users:[I
    :cond_f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 12865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 12866
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$14;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 12867
    monitor-exit v4

    goto/16 :goto_2

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v3

    .line 12878
    :catchall_4
    move-exception v3

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v3

    .line 12885
    .restart local v17       #observer:Landroid/content/pm/IPackageMoveObserver;
    :catch_0
    move-exception v10

    .line 12886
    .local v10, e:Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v4, "Observer no longer exists."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 12769
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v17           #observer:Landroid/content/pm/IPackageMoveObserver;
    .restart local v6       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v23       #uidArr:[I
    :catchall_5
    move-exception v3

    move-object/from16 v7, v23

    .end local v23           #uidArr:[I
    .restart local v7       #uidArr:[I
    goto/16 :goto_4

    .end local v6           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #uidArr:[I
    .restart local v20       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23       #uidArr:[I
    :catchall_6
    move-exception v3

    move-object/from16 v6, v20

    .end local v20           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v7, v23

    .end local v23           #uidArr:[I
    .restart local v7       #uidArr:[I
    goto/16 :goto_4
.end method
