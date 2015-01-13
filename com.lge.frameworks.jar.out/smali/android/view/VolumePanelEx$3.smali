.class Landroid/view/VolumePanelEx$3;
.super Ljava/lang/Object;
.source "VolumePanelEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
.method constructor <init>(Landroid/view/VolumePanelEx;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Landroid/view/VolumePanelEx$3;->this$0:Landroid/view/VolumePanelEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 259
    iget-object v0, p0, Landroid/view/VolumePanelEx$3;->this$0:Landroid/view/VolumePanelEx;

    iget-boolean v0, v0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/view/VolumePanelEx$3;->this$0:Landroid/view/VolumePanelEx;

    iget-object v1, p0, Landroid/view/VolumePanelEx$3;->this$0:Landroid/view/VolumePanelEx;

    iget v1, v1, Landroid/view/VolumePanel;->mActiveStreamType:I

    #calls: Landroid/view/VolumePanelEx;->collapse(I)V
    invoke-static {v0, v1}, Landroid/view/VolumePanelEx;->access$000(Landroid/view/VolumePanelEx;I)V

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanelEx$3;->this$0:Landroid/view/VolumePanelEx;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 263
    iget-object v0, p0, Landroid/view/VolumePanelEx$3;->this$0:Landroid/view/VolumePanelEx;

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/view/VolumePanelEx$3;->this$0:Landroid/view/VolumePanelEx;

    iget v1, v1, Landroid/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 264
    return-void
.end method
