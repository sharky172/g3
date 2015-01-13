.class Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    .line 4403
    iput-object p1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    .line 4404
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4405
    return-void
.end method


# virtual methods
.method public getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;
    .locals 1

    .prologue
    .line 4477
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-object v0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 4426
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 4409
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsCrossed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsEdged:Z

    if-eqz v0, :cond_3

    .line 4410
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsEdged:Z

    if-eqz v0, :cond_2

    .line 4411
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 4420
    :goto_0
    return v0

    .line 4413
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 4417
    :cond_3
    if-eqz p2, :cond_4

    .line 4418
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 4420
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4438
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 4441
    .local v1, offset:I
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 4442
    .local v2, selectionEnd:I
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-nez v4, :cond_2

    .line 4443
    if-lt v1, v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4473
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v5}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 4474
    :cond_1
    return-void

    .line 4445
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 4446
    .local v0, controller:Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_1

    .line 4448
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 4449
    .local v3, selectionStart:I
    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    if-ne v3, v4, :cond_3

    if-eq v2, v1, :cond_4

    :cond_3
    if-ne v3, v2, :cond_8

    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    if-ne v4, v1, :cond_8

    .line 4451
    :cond_4
    iget-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mMoveLeftToRight:Z

    if-eqz v4, :cond_6

    .line 4452
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 4453
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v1, v4, :cond_5

    .line 4454
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_0

    .line 4455
    :cond_5
    iget-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsCrossed:Z

    if-nez v4, :cond_0

    invoke-virtual {v0, v6}, Landroid/widget/Editor$SelectionModifierCursorController;->crossHandles(Z)V

    goto :goto_0

    .line 4457
    :cond_6
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 4458
    if-gtz v1, :cond_7

    .line 4459
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_0

    .line 4460
    :cond_7
    iget-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsCrossed:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/Editor$SelectionModifierCursorController;->crossHandles(Z)V

    goto/16 :goto_0

    .line 4462
    :cond_8
    if-le v3, v2, :cond_9

    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    if-gt v4, v1, :cond_9

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsCrossed:Z

    if-nez v4, :cond_9

    .line 4463
    invoke-virtual {v0, v6}, Landroid/widget/Editor$SelectionModifierCursorController;->crossHandles(Z)V

    goto/16 :goto_0

    .line 4464
    :cond_9
    if-ge v3, v2, :cond_a

    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    if-lt v4, v1, :cond_a

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsCrossed:Z

    if-eqz v4, :cond_a

    .line 4465
    invoke-virtual {v0, v5}, Landroid/widget/Editor$SelectionModifierCursorController;->crossHandles(Z)V

    goto/16 :goto_0

    .line 4466
    :cond_a
    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    if-ne v3, v4, :cond_b

    if-le v2, v1, :cond_b

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsCrossed:Z

    if-eqz v4, :cond_b

    if-le v3, v2, :cond_b

    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    if-le v4, v1, :cond_b

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mMoveLeftToRight:Z

    if-nez v4, :cond_c

    :cond_b
    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    if-ne v3, v4, :cond_0

    if-ge v2, v1, :cond_0

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsCrossed:Z

    if-nez v4, :cond_0

    if-ge v3, v2, :cond_0

    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    if-ge v4, v1, :cond_0

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mMoveLeftToRight:Z

    if-nez v4, :cond_0

    .line 4470
    :cond_c
    iget v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    goto/16 :goto_0
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 4431
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4433
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    .line 4434
    return-void
.end method
