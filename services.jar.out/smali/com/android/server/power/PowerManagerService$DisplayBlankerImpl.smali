.class final Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayBlankerImpl"
.end annotation


# instance fields
.field private mBlanked:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3433
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3433
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public blankAllDisplays()V
    .locals 3

    .prologue
    .line 3438
    monitor-enter p0

    .line 3439
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->isDsdpState()Z

    move-result v0

    .line 3440
    .local v0, isDsdp:Z
    if-nez v0, :cond_0

    .line 3441
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 3442
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->blankAllDisplaysFromPowerManager()V

    .line 3443
    const/4 v1, 0x0

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Z)V

    .line 3444
    const/4 v1, 0x1

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4000(Z)V

    .line 3448
    :goto_0
    monitor-exit p0

    .line 3449
    return-void

    .line 3446
    :cond_0
    const-string v1, "PowerManagerService"

    const-string v2, "No blank all display for Dsdp"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3448
    .end local v0           #isDsdp:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3463
    monitor-enter p0

    .line 3464
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blanked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3465
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unblankAllDisplays()V
    .locals 1

    .prologue
    .line 3453
    monitor-enter p0

    .line 3454
    const/4 v0, 0x0

    :try_start_0
    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4000(Z)V

    .line 3455
    const/4 v0, 0x1

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Z)V

    .line 3456
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->unblankAllDisplaysFromPowerManager()V

    .line 3457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 3458
    monitor-exit p0

    .line 3459
    return-void

    .line 3458
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
