.class Lcom/lge/view/SafevolumeToast$1;
.super Landroid/os/Handler;
.source "SafevolumeToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/SafevolumeToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/view/SafevolumeToast;


# direct methods
.method constructor <init>(Lcom/lge/view/SafevolumeToast;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const v9, 0x20e004f

    const/16 v3, 0x411

    const/16 v8, 0x57

    const/4 v1, -0x2

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 55
    .local v6, textView:Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 56
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastString:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$100(Lcom/lge/view/SafevolumeToast;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$200(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 59
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$200(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mPosition:I
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$300(Lcom/lge/view/SafevolumeToast;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 60
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$400(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/lge/view/SafevolumeToast;->access$200(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$500(Lcom/lge/view/SafevolumeToast;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$500(Lcom/lge/view/SafevolumeToast;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mDelay:J
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$600(Lcom/lge/view/SafevolumeToast;)J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 66
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_2
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    iget-object v2, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/view/SafevolumeToast;->access$700(Lcom/lge/view/SafevolumeToast;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x2030030

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    #setter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/lge/view/SafevolumeToast;->access$002(Lcom/lge/view/SafevolumeToast;Landroid/view/View;)Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v7, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mIsExpanded:Z
    invoke-static {v2}, Lcom/lge/view/SafevolumeToast;->access$800(Lcom/lge/view/SafevolumeToast;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v3, 0x7e8

    :goto_1
    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    #setter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v7, v0}, Lcom/lge/view/SafevolumeToast;->access$202(Lcom/lge/view/SafevolumeToast;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 75
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$200(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "SafeVolumeToast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$200(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 77
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$200(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 78
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$200(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mPosition:I
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$300(Lcom/lge/view/SafevolumeToast;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 79
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$400(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/lge/view/SafevolumeToast;->access$200(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 81
    .restart local v6       #textView:Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 82
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastString:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$100(Lcom/lge/view/SafevolumeToast;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$700(Lcom/lge/view/SafevolumeToast;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a

    iget-object v3, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    iget-object v3, v3, Lcom/lge/view/SafevolumeToast;->mToastListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v1, v2, v3}, Lcom/lge/view/SafevolumeToast;->loadAnim(Landroid/content/Context;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    const/4 v1, 0x1

    #calls: Lcom/lge/view/SafevolumeToast;->setToastVisibility(Z)V
    invoke-static {v0, v1}, Lcom/lge/view/SafevolumeToast;->access$900(Lcom/lge/view/SafevolumeToast;Z)V

    goto/16 :goto_0

    .line 69
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_4
    const/16 v3, 0x7d5

    goto/16 :goto_1

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$700(Lcom/lge/view/SafevolumeToast;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    iget-object v3, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    iget-object v3, v3, Lcom/lge/view/SafevolumeToast;->mToastListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v1, v2, v3}, Lcom/lge/view/SafevolumeToast;->loadAnim(Landroid/content/Context;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    const/4 v1, 0x0

    #calls: Lcom/lge/view/SafevolumeToast;->setToastVisibility(Z)V
    invoke-static {v0, v1}, Lcom/lge/view/SafevolumeToast;->access$900(Lcom/lge/view/SafevolumeToast;Z)V

    .line 93
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$400(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 94
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    #setter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0, v4}, Lcom/lge/view/SafevolumeToast;->access$002(Lcom/lge/view/SafevolumeToast;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x410
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
