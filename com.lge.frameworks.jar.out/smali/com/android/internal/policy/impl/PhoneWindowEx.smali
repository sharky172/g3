.class public Lcom/android/internal/policy/impl/PhoneWindowEx;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "PhoneWindowEx.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 6
    .parameter "decor"

    .prologue
    const/4 v5, 0x0

    .line 20
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 21
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowEx;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/lge/internal/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 22
    .local v1, ta:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowEx;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 23
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->statusBarBackgroundRes:I

    .line 24
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->navigationBarBackgroundRes:I

    .line 25
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    return-object v2
.end method
