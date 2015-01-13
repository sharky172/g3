.class public Lcom/android/server/wm/WindowManagerServiceEx;
.super Lcom/android/server/wm/WindowManagerService;
.source "WindowManagerServiceEx.java"

# interfaces
.implements Lcom/android/server/wm/IWindowManagerEx;


# static fields
.field static final MIRRORING_DSDP:I = 0x1

.field static final MIRRORING_MIRRORING:I = 0x1

.field static final MIRRORING_MONITOR:I = 0x0

.field static final MIRRORING_NO_EXT:I = 0x0

.field static final MIRRORING_PRESENTATION:I = 0x2

.field public static final WIN_INFO_FRAME_SIZE:Ljava/lang/String; = "FRAME_SIZE"

.field public static final WIN_INFO_IS_FOCUSED:Ljava/lang/String; = "IS_FOCUSED"

.field public static final WIN_INFO_IS_VISIBLE:Ljava/lang/String; = "IS_VISIBLE"

.field public static final WIN_INFO_IS_WIN_VISIBLE:Ljava/lang/String; = "IS_WIN_VISIBLE"

.field public static final WIN_INFO_PACKAGE:Ljava/lang/String; = "PACKAGE"

.field public static final WIN_INFO_SHOWN_FRAME_SIZE:Ljava/lang/String; = "SHOWN_FRAME_SIZE"

.field public static final WIN_INFO_SURFACE_LAYER:Ljava/lang/String; = "SURFACE_LAYER"

.field public static final WIN_INFO_TITLE:Ljava/lang/String; = "TITLE"

.field public static final WIN_INFO_WIN_NUM:Ljava/lang/String; = "WIN_NUM"

.field public static mDsdpMode:I

.field public static m_ExtDisplayNum:I


# instance fields
.field private mDsdpHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    sput v0, Lcom/android/server/wm/WindowManagerServiceEx;->m_ExtDisplayNum:I

    .line 115
    sput v0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;ZZZ)V
    .locals 2
    .parameter "context"
    .parameter "pm"
    .parameter "displayManager"
    .parameter "inputManager"
    .parameter "haveInputMethods"
    .parameter "showBootMsgs"
    .parameter "onlyCore"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;ZZZ)V

    .line 118
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceEx$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerServiceEx$1;-><init>(Lcom/android/server/wm/WindowManagerServiceEx;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpHandler:Landroid/os/Handler;

    .line 39
    const-string v0, "sys.lge.dsdp.mode"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getSystemBarShownState()I
    .locals 12

    .prologue
    .line 313
    const/4 v3, 0x0

    .line 315
    .local v3, state:I
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 316
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 317
    .local v1, numDisplays:I
    const/4 v0, 0x0

    .local v0, displayNdx:I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 318
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v8

    .line 319
    .local v8, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 320
    .local v2, numWindows:I
    const/4 v7, 0x0

    .local v7, winNdx:I
    :goto_1
    if-ge v7, v2, :cond_3

    .line 321
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 324
    .local v6, w:Lcom/android/server/wm/WindowState;
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "StatusBar"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7d0

    if-ne v9, v11, :cond_2

    .line 326
    const/4 v4, 0x0

    .line 327
    .local v4, statusBarSize:I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x105000c

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 328
    .local v5, unexpandedStatusBarSize:I
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v9, :cond_0

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    if-eqz v9, :cond_0

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v9, :cond_0

    .line 329
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v4, v9, v11

    .line 330
    or-int/lit8 v3, v3, 0x1

    .line 334
    :cond_0
    if-le v4, v5, :cond_1

    .line 335
    and-int/lit8 v3, v3, -0x2

    .line 320
    .end local v4           #statusBarSize:I
    .end local v5           #unexpandedStatusBarSize:I
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 340
    :cond_2
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "NavigationBar"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7e3

    if-ne v9, v11, :cond_1

    .line 342
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v9, :cond_1

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v9, :cond_1

    .line 343
    or-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 317
    .end local v6           #w:Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 348
    .end local v2           #numWindows:I
    .end local v7           #winNdx:I
    .end local v8           #windows:Lcom/android/server/wm/WindowList;
    :cond_4
    monitor-exit v10

    .line 350
    return v3

    .line 348
    .end local v0           #displayNdx:I
    .end local v1           #numDisplays:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public getWindowInfoList(IZ)Ljava/util/List;
    .locals 11
    .parameter "displayNdx"
    .parameter "visibleOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    const-string v6, "android.permission.RETRIEVE_WINDOW_INFO"

    const-string v7, "getWindowInfo()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 373
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires RETRIEVE_WINDOW_INFO permission."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 376
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 377
    .local v1, numDisplays:I
    if-ltz p1, :cond_4

    if-ge p1, v1, :cond_4

    .line 378
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v5, wndList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 380
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 382
    .local v4, windowList:Lcom/android/server/wm/WindowList;
    const/4 v3, 0x0

    .local v3, winNdx:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 383
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 384
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz p2, :cond_1

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v6, :cond_2

    .line 385
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v0, bndl:Landroid/os/Bundle;
    const-string v6, "WIN_NUM"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    const-string v6, "SURFACE_LAYER"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    const-string v6, "TITLE"

    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v6, "PACKAGE"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v6, "FRAME_SIZE"

    const/4 v8, 0x4

    new-array v8, v8, [I

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    aput v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    aput v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    aput v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    aput v10, v8, v9

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 393
    const-string v6, "SHOWN_FRAME_SIZE"

    const/4 v8, 0x4

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->left:F

    aput v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    aput v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    aput v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    aput v10, v8, v9

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 396
    const-string v6, "IS_VISIBLE"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 397
    const-string v6, "IS_WIN_VISIBLE"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 398
    const-string v6, "IS_FOCUSED"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 399
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v0           #bndl:Landroid/os/Bundle;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 402
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_3
    monitor-exit v7

    .line 405
    .end local v3           #winNdx:I
    .end local v4           #windowList:Lcom/android/server/wm/WindowList;
    .end local v5           #wndList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :goto_1
    return-object v5

    .line 402
    .restart local v5       #wndList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 405
    .end local v5           #wndList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected handleDisplayAddedLocked(I)V
    .locals 2
    .parameter "displayId"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAddedLocked(I)V

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    return-void
.end method

.method protected handleDisplayRemovedLocked(I)V
    .locals 2
    .parameter "displayId"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 194
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowManagerService;->handleDisplayRemovedLocked(I)V

    .line 195
    return-void
.end method

.method public moveWindowTokenToTop(Landroid/os/IBinder;)V
    .locals 14
    .parameter "token"

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 263
    .local v4, origId:J
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 264
    :try_start_0
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowToken;

    .line 265
    .local v9, wtoken:Lcom/android/server/wm/WindowToken;
    if-nez v9, :cond_0

    .line 266
    const-string v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attempted to reorder non-existing token: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    monitor-exit v11

    .line 298
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v8

    .line 271
    .local v8, windowList:Lcom/android/server/wm/WindowList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v1, floatingWindowStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/wm/WindowState;>;"
    iget-object v10, v9, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 273
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 274
    iget-object v10, v9, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 275
    .local v7, win:Lcom/android/server/wm/WindowState;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    .end local v7           #win:Lcom/android/server/wm/WindowState;
    :cond_1
    new-instance v10, Lcom/android/server/wm/WindowManagerServiceEx$2;

    invoke-direct {v10, p0, v8}, Lcom/android/server/wm/WindowManagerServiceEx$2;-><init>(Lcom/android/server/wm/WindowManagerServiceEx;Lcom/android/server/wm/WindowList;)V

    invoke-static {v1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 285
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 286
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 287
    .local v6, st:Lcom/android/server/wm/WindowState;
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 290
    .end local v6           #st:Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v3, 0x0

    .line 291
    .local v3, moved:Z
    const/4 v2, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 292
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 293
    .restart local v6       #st:Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    .line 294
    const/4 v3, 0x1

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 296
    .end local v6           #st:Lcom/android/server/wm/WindowState;
    :cond_3
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 296
    .end local v0           #N:I
    .end local v1           #floatingWindowStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/wm/WindowState;>;"
    .end local v2           #i:I
    .end local v3           #moved:Z
    .end local v8           #windowList:Lcom/android/server/wm/WindowList;
    .end local v9           #wtoken:Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10
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
    .line 410
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/IWindowManagerEx$Stub;->onTransasct(Lcom/android/server/wm/IWindowManagerEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 411
    .local v0, handled:Z
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .locals 3
    .parameter "session"
    .parameter "client"
    .parameter "seq"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewVisibility"
    .parameter "flags"
    .parameter "outFrame"
    .parameter "outOverscanInsets"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    .line 213
    invoke-super/range {p0 .. p14}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v0

    .line 218
    .local v0, res:I
    sget v1, Lcom/android/server/wm/WindowManagerServiceEx;->m_ExtDisplayNum:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    :cond_0
    return v0
.end method

.method public removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "session"
    .parameter "win"

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 201
    sget v0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    :cond_0
    return-void
.end method

.method updateStatusBarVisibilityLocked(I)V
    .locals 9
    .parameter "visibility"

    .prologue
    .line 226
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v7, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    .line 227
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 228
    .local v5, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 229
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 230
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 231
    .local v6, ws:Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_1

    const-string v7, "com.lge.findlostphone"

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 229
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_1
    :try_start_0
    iget v1, v6, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 236
    .local v1, curValue:I
    xor-int v2, v1, p1

    .line 239
    .local v2, diff:I
    and-int/lit8 v2, v2, 0x7

    .line 241
    xor-int/lit8 v7, p1, -0x1

    and-int/2addr v2, v7

    .line 242
    xor-int/lit8 v7, v2, -0x1

    and-int/2addr v7, v1

    and-int v8, p1, v2

    or-int v4, v7, v8

    .line 243
    .local v4, newValue:I
    if-eq v4, v1, :cond_2

    .line 244
    iget v7, v6, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 245
    iput v4, v6, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 247
    :cond_2
    if-ne v4, v1, :cond_3

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v7, :cond_0

    .line 248
    :cond_3
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v8, v6, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v7, v8, p1, v4, v2}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 251
    .end local v1           #curValue:I
    .end local v2           #diff:I
    .end local v4           #newValue:I
    :catch_0
    move-exception v7

    goto :goto_1

    .line 255
    .end local v6           #ws:Lcom/android/server/wm/WindowState;
    :cond_4
    return-void
.end method
