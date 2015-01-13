.class Lcom/android/internal/policy/impl/RestartAction;
.super Ljava/lang/Object;
.source "RestartAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RestartAction"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mCount:I

.field private mDefalutCount:I

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    .line 29
    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    .line 159
    new-instance v0, Lcom/android/internal/policy/impl/RestartAction$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/RestartAction$1;-><init>(Lcom/android/internal/policy/impl/RestartAction;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    .line 35
    sput-object p1, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x20b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    .line 37
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/RestartAction;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/RestartAction;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/RestartAction;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/RestartAction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->refreshRestartDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/RestartAction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->handleShow()V

    return-void
.end method

.method private createDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 73
    sget-boolean v1, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "RestartAction"

    const-string v2, "createDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 80
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    return-object v0
.end method

.method private getCountMsg(I)Landroid/text/SpannableStringBuilder;
    .locals 13
    .parameter "count"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 121
    sget-boolean v7, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 122
    const-string v7, "RestartAction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCountMsg() count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    .local v0, counter:Landroid/text/SpannableStringBuilder;
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string v8, "#4baac8"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v0, v7, v10, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 128
    sget-object v7, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    const v8, 0x20d0017

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, counterFormat:Ljava/lang/String;
    const-string v7, "%d"

    invoke-virtual {v1, v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, counterFormats:[Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    .local v6, spannedCount:Landroid/text/SpannableStringBuilder;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 134
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 135
    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 137
    sget-object v7, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060062

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 140
    sget-object v7, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    const v8, 0x20d0018

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, embeddedFormat:Ljava/lang/String;
    const-string v7, "%d"

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, embeddedFormats:[Ljava/lang/String;
    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 143
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 144
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 145
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v4           #embeddedFormat:Ljava/lang/String;
    .end local v5           #embeddedFormats:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v6

    .line 147
    :catch_0
    move-exception v3

    .line 148
    .local v3, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6           #spannedCount:Landroid/text/SpannableStringBuilder;
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v6       #spannedCount:Landroid/text/SpannableStringBuilder;
    goto :goto_0
.end method

.method private handleShow()V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->createDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->prepareDialog()V

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 66
    return-void
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "RestartAction"

    const-string v1, "prepareDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 93
    sget-boolean v0, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "RestartAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareDialog() mDefalutCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x20d0015

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/RestartAction;->getCountMsg(I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method private refreshRestartDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 104
    sget-boolean v0, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "RestartAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshRestartDialog() mCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    if-le v0, v3, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/RestartAction;->getCountMsg(I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 118
    return-void
.end method

.method public showDialog(Z)V
    .locals 2
    .parameter "keyguardShowing"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->handleShow()V

    goto :goto_0
.end method
