.class public Lcom/android/internal/widget/LGScrollingTabContainerView;
.super Lcom/android/internal/widget/ScrollingTabContainerView;
.source "LGScrollingTabContainerView.java"


# instance fields
.field private mAnimationLocked:Z

.field private mAnimationMode:Z

.field private mArrowLocated:Z

.field private mCurTabIndex:I

.field private mDestination:I

.field private mSelectedTabArrow:Landroid/widget/ImageView;

.field private mSource:I

.field private mTabAnim:Landroid/view/animation/Animation;

.field private mTabParentLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v5, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 56
    iput-boolean v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationLocked:Z

    .line 58
    iput v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSource:I

    .line 59
    iput v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    .line 62
    iput-boolean v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    .line 69
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 71
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    instance-of v5, v0, Lcom/android/internal/view/LGActionBarPolicy;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 72
    check-cast v2, Lcom/android/internal/view/LGActionBarPolicy;

    .line 73
    .local v2, lgAbp:Lcom/android/internal/view/LGActionBarPolicy;
    invoke-virtual {v2}, Lcom/android/internal/view/LGActionBarPolicy;->setHasAnimationFlag()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    .line 76
    .end local v2           #lgAbp:Lcom/android/internal/view/LGActionBarPolicy;
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    if-nez v5, :cond_1

    .line 106
    :goto_0
    return-void

    .line 81
    :cond_1
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 82
    .local v4, tapParentLayout:Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iput-object v4, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    .line 87
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20206c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 91
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .local v3, selectorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iput-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    .line 97
    iget-object v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    iget-object v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    iget-object v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/LGScrollingTabContainerView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationLocked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/LGScrollingTabContainerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationLocked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LGScrollingTabContainerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/LGScrollingTabContainerView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 249
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 250
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 240
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 241
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 231
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 121
    iget-boolean v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    if-nez v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mCurTabIndex:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 128
    .local v1, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    const/4 v0, 0x0

    .line 129
    .local v0, pos:I
    iget-boolean v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 131
    if-lez v0, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 133
    iget-object v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 135
    iput v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 112
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->onMeasure(II)V

    .line 116
    return-void
.end method

.method protected performCollapse()V
    .locals 4

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :cond_0
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 150
    return-void
.end method

.method protected performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 154
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    .line 156
    iget-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iput-boolean v4, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 162
    :cond_0
    return v4
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 267
    :cond_0
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 268
    return-void
.end method

.method public removeTabAt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 258
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 259
    return-void
.end method

.method public setTabSelected(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 169
    iget-boolean v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationMode:Z

    if-nez v1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 174
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationLocked:Z

    .line 175
    iget v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    iput v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSource:I

    .line 177
    iget-boolean v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    if-nez v1, :cond_1

    .line 178
    iput p1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mCurTabIndex:I

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 183
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v0, :cond_3

    .line 185
    iget v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mCurTabIndex:I

    if-ne v1, p1, :cond_2

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 187
    iput p1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mCurTabIndex:I

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    .line 193
    :cond_3
    iput p1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mCurTabIndex:I

    .line 196
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 198
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSource:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    .line 199
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 200
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 201
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/internal/widget/LGScrollingTabContainerView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LGScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/LGScrollingTabContainerView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method
