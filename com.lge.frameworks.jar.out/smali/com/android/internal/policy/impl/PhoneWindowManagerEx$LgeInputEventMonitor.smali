.class final Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;
.super Ljava/lang/Object;
.source "PhoneWindowManagerEx.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LgeInputEventMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "motionEvent"

    .prologue
    const/4 v7, 0x0

    .line 427
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoost:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 429
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 458
    .end local v0           #action:I
    :cond_0
    :goto_0
    return-void

    .line 431
    .restart local v0       #action:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoostDownX:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$302(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)I

    .line 432
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoostDownY:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$402(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)I

    .line 433
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const-string v4, "/sys/class/graphics/fb0/mdp/vfps_boost"

    const-string v5, "1"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 436
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIfBoost:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->msysFSWrite:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$700(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoostDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 438
    .local v1, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVsyncBoostDownY:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$400(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 439
    .local v2, deltaY:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchSlopY:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchSlopX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$900(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 440
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const-string v5, "/sys/class/devfreq/g3-display.0/polling_interval"

    const-string v6, "0"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->msysFSWrite:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$702(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 441
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const-string v5, "/sys/class/devfreq/g3-display.0/cur_freq"

    const-string v6, "60"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->msysFSWrite:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$702(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 442
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIfBoost:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$602(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    goto/16 :goto_0

    .line 448
    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIfBoost:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    const-string v5, "/sys/class/devfreq/g3-display.0/polling_interval"

    const-string v6, "1000"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->msysFSWrite:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$702(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 450
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIfBoost:Z
    invoke-static {v3, v7}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$602(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    .line 451
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->msysFSWrite:Z
    invoke-static {v3, v7}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$702(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Z)Z

    goto/16 :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
