.class Lcom/android/server/wm/WindowManagerServiceEx$1;
.super Landroid/os/Handler;
.source "WindowManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerServiceEx;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceEx$1;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, dsdpDisplayId:I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx$1;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v12, "display"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 122
    .local v1, displayManager:Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v7

    .line 123
    .local v7, presentationDisplays:[Landroid/view/Display;
    array-length v11, v7

    sput v11, Lcom/android/server/wm/WindowManagerServiceEx;->m_ExtDisplayNum:I

    .line 125
    sget v11, Lcom/android/server/wm/WindowManagerServiceEx;->m_ExtDisplayNum:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    .line 126
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v11}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 129
    :cond_0
    const/4 v3, 0x1

    .line 130
    .local v3, isMirroring:Z
    const/4 v5, 0x0

    .line 132
    .local v5, mirroringMode:I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx$1;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v12, v11, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 133
    :try_start_0
    sget v11, Lcom/android/server/wm/WindowManagerServiceEx;->m_ExtDisplayNum:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_2

    .line 134
    const-string v11, "WindowManager"

    const-string v13, "[DSDR][WMSE.java] No external Displays connected. sys.lge.dsdp.mode set to STOP"

    invoke-static {v11, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v5, 0x0

    .line 163
    :goto_0
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    sget v11, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    if-eq v11, v5, :cond_1

    .line 166
    sput v5, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    .line 167
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.lge.intent.action.DUAL_SCREEN_STATUS_CHANGED"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v6, notifyIntent:Landroid/content/Intent;
    const/high16 v11, 0x400

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    const-string v11, "Status"

    sget v12, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    sget v11, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 171
    const-string v11, "WindowManager"

    const-string v12, "[DSDR][WMSE.java] sys.lge.dsdp.mode set to START"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v11, "sys.lge.dsdp.mode"

    const-string v12, "start"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_1
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx$1;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    const/4 v13, -0x2

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 178
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DSDR][WMSE.java]mDsdpHandler() : sending broadcast - mDsdpMode == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v6           #notifyIntent:Landroid/content/Intent;
    :cond_1
    :goto_2
    return-void

    .line 138
    :cond_2
    :try_start_1
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx$1;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v11, v2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 139
    .local v0, displayContent:Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_3

    .line 140
    const-string v11, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DSDR][WMSE.java] Display ID = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Display Content is NULL. sys.lge.dsdp.mode set to STOP"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v11, "sys.lge.dsdp.mode"

    const-string v13, "stop"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v3, 0x1

    .line 143
    const/4 v11, 0x0

    sput v11, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    .line 144
    monitor-exit v12

    goto :goto_2

    .line 163
    .end local v0           #displayContent:Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 146
    .restart local v0       #displayContent:Lcom/android/server/wm/DisplayContent;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v10

    .line 147
    .local v10, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 148
    .local v9, windowCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    if-ge v4, v9, :cond_5

    .line 149
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 150
    .local v8, window:Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v13, 0x7e9

    if-ne v11, v13, :cond_6

    .line 151
    :cond_4
    const/4 v3, 0x0

    .line 157
    .end local v8           #window:Lcom/android/server/wm/WindowState;
    :cond_5
    const/4 v11, 0x1

    if-ne v3, v11, :cond_7

    .line 158
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 148
    .restart local v8       #window:Lcom/android/server/wm/WindowState;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 160
    .end local v8           #window:Lcom/android/server/wm/WindowState;
    :cond_7
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 174
    .end local v0           #displayContent:Lcom/android/server/wm/DisplayContent;
    .end local v4           #j:I
    .end local v9           #windowCount:I
    .end local v10           #windows:Lcom/android/server/wm/WindowList;
    .restart local v6       #notifyIntent:Landroid/content/Intent;
    :cond_8
    const-string v11, "WindowManager"

    const-string v12, "[DSDR][WMSE.java] sys.lge.dsdp.mode set to STOP"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v11, "sys.lge.dsdp.mode"

    const-string v12, "stop"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
