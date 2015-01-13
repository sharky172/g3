.class public Lcom/lge/view/SafevolumeToast;
.super Ljava/lang/Object;
.source "SafevolumeToast.java"


# static fields
.field private static final MSG_HIDE_TOAST:I = 0x411

.field private static final MSG_SHOW_TOAST:I = 0x410

.field public static final TOAST_LONG_DELAY:J = 0xbb8L

.field public static final TOAST_SHORT_DELAY:J = 0x7d0L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field private mIsExpanded:Z

.field private mPosition:I

.field mStatusBarReceiver:Landroid/content/BroadcastReceiver;

.field private mToastLP:Landroid/view/WindowManager$LayoutParams;

.field mToastListener:Landroid/view/animation/Animation$AnimationListener;

.field private mToastString:Ljava/lang/String;

.field private mToastView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;

    .line 49
    new-instance v1, Lcom/lge/view/SafevolumeToast$1;

    invoke-direct {v1, p0}, Lcom/lge/view/SafevolumeToast$1;-><init>(Lcom/lge/view/SafevolumeToast;)V

    iput-object v1, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    .line 127
    new-instance v1, Lcom/lge/view/SafevolumeToast$2;

    invoke-direct {v1, p0}, Lcom/lge/view/SafevolumeToast$2;-><init>(Lcom/lge/view/SafevolumeToast;)V

    iput-object v1, p0, Lcom/lge/view/SafevolumeToast;->mToastListener:Landroid/view/animation/Animation$AnimationListener;

    .line 136
    new-instance v1, Lcom/lge/view/SafevolumeToast$3;

    invoke-direct {v1, p0}, Lcom/lge/view/SafevolumeToast$3;-><init>(Lcom/lge/view/SafevolumeToast;)V

    iput-object v1, p0, Lcom/lge/view/SafevolumeToast;->mStatusBarReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lge/view/SafevolumeToast;->mWindowManager:Landroid/view/WindowManager;

    .line 41
    iput-object p1, p0, Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.statusbar.expanded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v1, "com.lge.statusbar.collapsed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/lge/view/SafevolumeToast;->mStatusBarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/view/SafevolumeToast;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/view/SafevolumeToast;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mToastString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/view/SafevolumeToast;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/view/SafevolumeToast;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/lge/view/SafevolumeToast;->mPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/view/SafevolumeToast;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/view/SafevolumeToast;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/lge/view/SafevolumeToast;->mDelay:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/lge/view/SafevolumeToast;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/view/SafevolumeToast;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/lge/view/SafevolumeToast;->mIsExpanded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/lge/view/SafevolumeToast;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/lge/view/SafevolumeToast;->mIsExpanded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lge/view/SafevolumeToast;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/view/SafevolumeToast;->setToastVisibility(Z)V

    return-void
.end method

.method public static loadAnim(Landroid/content/Context;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 120
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 121
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 124
    :cond_0
    return-object v0
.end method

.method private setToastVisibility(Z)V
    .locals 2
    .parameter "vis"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public showToast(Ljava/lang/CharSequence;J)V
    .locals 4
    .parameter "strText"
    .parameter "delayMillis"

    .prologue
    const/16 v3, 0x411

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/view/SafevolumeToast;->mToastString:Ljava/lang/String;

    .line 107
    iput-wide p2, p0, Lcom/lge/view/SafevolumeToast;->mDelay:J

    .line 108
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/view/SafevolumeToast;->mPosition:I

    .line 109
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x410

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    return-void
.end method
