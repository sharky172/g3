.class Landroid/view/VolumePanelEx$LGStreamControl;
.super Ljava/lang/Object;
.source "VolumePanelEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanelEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGStreamControl"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field group:Landroid/view/ViewGroup;

.field hDivider:Landroid/widget/ImageView;

.field icon:Landroid/widget/ImageView;

.field iconMuteRes:I

.field iconRes:I

.field seekbarView:Landroid/widget/SeekBar;

.field streamType:I

.field final synthetic this$0:Landroid/view/VolumePanelEx;


# direct methods
.method private constructor <init>(Landroid/view/VolumePanelEx;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Landroid/view/VolumePanelEx$LGStreamControl;->this$0:Landroid/view/VolumePanelEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/VolumePanelEx;Landroid/view/VolumePanelEx$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroid/view/VolumePanelEx$LGStreamControl;-><init>(Landroid/view/VolumePanelEx;)V

    return-void
.end method
