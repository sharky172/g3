.class Landroid/view/VolumePanelEx$7;
.super Ljava/lang/Object;
.source "VolumePanelEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanelEx;->onDisplaySafeVolumeWarning(I)V
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
    .line 1091
    iput-object p1, p0, Landroid/view/VolumePanelEx$7;->this$0:Landroid/view/VolumePanelEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/view/VolumePanelEx$7;->this$0:Landroid/view/VolumePanelEx;

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->disableSafeMediaVolume()V

    .line 1094
    return-void
.end method
