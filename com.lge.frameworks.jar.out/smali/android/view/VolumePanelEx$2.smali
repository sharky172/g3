.class Landroid/view/VolumePanelEx$2;
.super Landroid/app/Dialog;
.source "VolumePanelEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanelEx;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanelEx;


# direct methods
.method constructor <init>(Landroid/view/VolumePanelEx;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    iput-object p1, p0, Landroid/view/VolumePanelEx$2;->this$0:Landroid/view/VolumePanelEx;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/view/VolumePanelEx$2;->this$0:Landroid/view/VolumePanelEx;

    invoke-virtual {v0}, Landroid/view/VolumePanel;->forceTimeout()V

    .line 249
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
