.class Lcom/android/server/pm/UserManagerServiceEx;
.super Lcom/android/server/pm/UserManagerService;
.source "UserManagerServiceEx.java"


# static fields
.field private static final MAX_SUPPORTED_USERS:I = 0x18

.field private static final TAG:Ljava/lang/String; = "UserManagerServiceEx"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "pm"
    .parameter "installLock"
    .parameter "packagesLock"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 34
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 28
    const-string v29, "Only the system can create users"

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/UserManagerServiceEx;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v29

    if-eqz v29, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Lcom/lge/cappuccino/IMdm;->getAllowMultiUser(Landroid/content/ComponentName;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 33
    const/16 v27, 0x0

    .line 111
    :goto_0
    return-object v27

    .line 37
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 40
    .local v12, ident:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerServiceEx;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 41
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerServiceEx;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 42
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerServiceEx;->isUserLimitReachedLocked()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 43
    const/16 v27, 0x0

    monitor-exit v31
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v30
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 109
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 45
    :cond_1
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerServiceEx;->getNextAvailableIdLocked()I

    move-result v26

    .line 46
    .local v26, userId:I
    new-instance v27, Landroid/content/pm/UserInfo;

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v26

    move-object/from16 v2, p1

    move-object/from16 v3, v29

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 47
    .local v27, userInfo:Landroid/content/pm/UserInfo;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerServiceEx;->mBaseUserPath:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v28, userPath:Ljava/io/File;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/UserManagerServiceEx;->mNextSerialNumber:I

    move/from16 v29, v0

    add-int/lit8 v32, v29, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/UserManagerServiceEx;->mNextSerialNumber:I

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 50
    .local v20, now:J
    const-wide v32, 0xdc46c32800L

    cmp-long v29, v20, v32

    if-lez v29, :cond_4

    .end local v20           #now:J
    :goto_1
    move-wide/from16 v0, v20

    move-object/from16 v2, v27

    iput-wide v0, v2, Landroid/content/pm/UserInfo;->creationTime:J

    .line 51
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 52
    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->mkdirs()Z

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerServiceEx;->mUsers:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerServiceEx;->writeUserListLocked()V

    .line 55
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerServiceEx;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerServiceEx;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->createNewUserLILPw(ILjava/io/File;)V

    .line 57
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerServiceEx;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerServiceEx;->updateUserIdsLocked()V

    .line 60
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v24, restrictions:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerServiceEx;->mUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    const/16 v22, 0x0

    .line 63
    .local v22, p:Ljava/lang/Process;
    const/16 v16, 0x0

    .line 65
    .local v16, isr:Ljava/io/InputStreamReader;
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v29

    const-string v32, "ps"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v22

    .line 66
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Process;->waitFor()I

    .line 67
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v25, sb:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 70
    .end local v16           #isr:Ljava/io/InputStreamReader;
    .local v17, isr:Ljava/io/InputStreamReader;
    const/16 v29, 0x400

    :try_start_6
    move/from16 v0, v29

    new-array v7, v0, [C

    .line 71
    .local v7, buf:[C
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    .local v8, ch:I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v8, v0, :cond_5

    .line 72
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v7, v1, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 86
    .end local v7           #buf:[C
    .end local v8           #ch:I
    :catch_0
    move-exception v10

    move-object/from16 v16, v17

    .line 87
    .end local v17           #isr:Ljava/io/InputStreamReader;
    .end local v25           #sb:Ljava/lang/StringBuffer;
    .local v10, e:Ljava/lang/Exception;
    .restart local v16       #isr:Ljava/io/InputStreamReader;
    :goto_3
    :try_start_7
    const-string v29, "UserManagerServiceEx"

    const-string v32, "UserManagerServiceEx createUser Error"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 90
    if-eqz v16, :cond_2

    .line 92
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 99
    .end local v10           #e:Ljava/lang/Exception;
    :cond_2
    :goto_4
    :try_start_9
    monitor-exit v31
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 100
    :try_start_a
    monitor-exit v30
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 101
    if-eqz v27, :cond_3

    .line 102
    :try_start_b
    new-instance v5, Landroid/content/Intent;

    const-string v29, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v5, addedIntent:Landroid/content/Intent;
    const-string v29, "android.intent.extra.user_handle"

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerServiceEx;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    sget-object v30, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v31, "android.permission.MANAGE_USERS"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 106
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "persist.sys.theme"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 109
    .end local v5           #addedIntent:Landroid/content/Intent;
    :cond_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 50
    .end local v16           #isr:Ljava/io/InputStreamReader;
    .end local v22           #p:Ljava/lang/Process;
    .end local v24           #restrictions:Landroid/os/Bundle;
    .restart local v20       #now:J
    :cond_4
    const-wide/16 v20, 0x0

    goto/16 :goto_1

    .line 74
    .end local v20           #now:J
    .restart local v7       #buf:[C
    .restart local v8       #ch:I
    .restart local v17       #isr:Ljava/io/InputStreamReader;
    .restart local v22       #p:Ljava/lang/Process;
    .restart local v24       #restrictions:Landroid/os/Bundle;
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    :cond_5
    :try_start_c
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v32, "\n"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 75
    .local v23, processLinesAr:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 76
    .local v14, index:I
    move-object/from16 v6, v23

    .local v6, arr$:[Ljava/lang/String;
    array-length v0, v6

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v15, v14

    .end local v14           #index:I
    .local v15, index:I
    :goto_5
    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    aget-object v19, v6, v11

    .line 77
    .local v19, line:Ljava/lang/String;
    const-string v29, "[\\s]+"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, comps:[Ljava/lang/String;
    add-int/lit8 v14, v15, 0x1

    .end local v15           #index:I
    .restart local v14       #index:I
    if-eqz v15, :cond_6

    array-length v0, v9

    move/from16 v29, v0

    const/16 v32, 0x8

    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    .line 76
    :cond_6
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move v15, v14

    .end local v14           #index:I
    .restart local v15       #index:I
    goto :goto_5

    .line 81
    .end local v15           #index:I
    .restart local v14       #index:I
    :cond_7
    const/16 v29, 0x0

    aget-object v29, v9, v29

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "u"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 82
    const-string v29, "UserManagerServiceEx"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "uid : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v33, v9, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", pid : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v9, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", process : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x8

    aget-object v33, v9, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/16 v29, 0x1

    aget-object v29, v9, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Landroid/os/Process;->killProcessQuiet(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_6

    .line 90
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #buf:[C
    .end local v8           #ch:I
    .end local v9           #comps:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v14           #index:I
    .end local v18           #len$:I
    .end local v19           #line:Ljava/lang/String;
    .end local v23           #processLinesAr:[Ljava/lang/String;
    :catchall_0
    move-exception v29

    move-object/from16 v16, v17

    .end local v17           #isr:Ljava/io/InputStreamReader;
    .end local v25           #sb:Ljava/lang/StringBuffer;
    .restart local v16       #isr:Ljava/io/InputStreamReader;
    :goto_7
    if-eqz v16, :cond_8

    .line 92
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 96
    :cond_8
    :goto_8
    :try_start_e
    throw v29

    .line 99
    .end local v16           #isr:Ljava/io/InputStreamReader;
    .end local v22           #p:Ljava/lang/Process;
    .end local v24           #restrictions:Landroid/os/Bundle;
    .end local v26           #userId:I
    .end local v27           #userInfo:Landroid/content/pm/UserInfo;
    .end local v28           #userPath:Ljava/io/File;
    :catchall_1
    move-exception v29

    monitor-exit v31
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v29

    .line 100
    :catchall_2
    move-exception v29

    monitor-exit v30
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v29
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 109
    :catchall_3
    move-exception v29

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v29

    .line 90
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v7       #buf:[C
    .restart local v8       #ch:I
    .restart local v11       #i$:I
    .restart local v15       #index:I
    .restart local v17       #isr:Ljava/io/InputStreamReader;
    .restart local v18       #len$:I
    .restart local v22       #p:Ljava/lang/Process;
    .restart local v23       #processLinesAr:[Ljava/lang/String;
    .restart local v24       #restrictions:Landroid/os/Bundle;
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    .restart local v26       #userId:I
    .restart local v27       #userInfo:Landroid/content/pm/UserInfo;
    .restart local v28       #userPath:Ljava/io/File;
    :cond_9
    if-eqz v17, :cond_a

    .line 92
    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    move-object/from16 v16, v17

    .line 96
    .end local v17           #isr:Ljava/io/InputStreamReader;
    .restart local v16       #isr:Ljava/io/InputStreamReader;
    goto/16 :goto_4

    .line 93
    .end local v16           #isr:Ljava/io/InputStreamReader;
    .restart local v17       #isr:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v10

    .line 94
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_12
    const-string v29, "UserManagerServiceEx"

    const-string v32, "UserManagerServiceEx isr close Error"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v16, v17

    .line 96
    .end local v17           #isr:Ljava/io/InputStreamReader;
    .restart local v16       #isr:Ljava/io/InputStreamReader;
    goto/16 :goto_4

    .line 93
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #buf:[C
    .end local v8           #ch:I
    .end local v11           #i$:I
    .end local v15           #index:I
    .end local v18           #len$:I
    .end local v23           #processLinesAr:[Ljava/lang/String;
    .end local v25           #sb:Ljava/lang/StringBuffer;
    :catch_2
    move-exception v10

    .line 94
    const-string v29, "UserManagerServiceEx"

    const-string v32, "UserManagerServiceEx isr close Error"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 93
    .end local v10           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v10

    .line 94
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v32, "UserManagerServiceEx"

    const-string v33, "UserManagerServiceEx isr close Error"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_8

    .line 90
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_4
    move-exception v29

    goto :goto_7

    .line 86
    :catch_4
    move-exception v10

    goto/16 :goto_3

    .end local v16           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v7       #buf:[C
    .restart local v8       #ch:I
    .restart local v11       #i$:I
    .restart local v15       #index:I
    .restart local v17       #isr:Ljava/io/InputStreamReader;
    .restart local v18       #len$:I
    .restart local v23       #processLinesAr:[Ljava/lang/String;
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    :cond_a
    move-object/from16 v16, v17

    .end local v17           #isr:Ljava/io/InputStreamReader;
    .restart local v16       #isr:Ljava/io/InputStreamReader;
    goto/16 :goto_4
.end method

.method protected isUserLimitReachedLocked()Z
    .locals 7

    .prologue
    const/16 v6, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    iget-object v1, p0, Lcom/android/server/pm/UserManagerServiceEx;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 117
    .local v0, nUsers:I
    const-string v4, "UserManagerServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUserLimitReachedLocked(): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-lt v0, v6, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-lt v0, v6, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 117
    goto :goto_0

    :cond_1
    move v2, v3

    .line 118
    goto :goto_1
.end method
