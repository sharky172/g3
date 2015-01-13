.class Landroid/view/VolumePanelEx$4;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanelEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanelEx;->listenToScreenStatus()V
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
    .line 874
    iput-object p1, p0, Landroid/view/VolumePanelEx$4;->this$0:Landroid/view/VolumePanelEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 877
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Landroid/view/VolumePanelEx$4;->this$0:Landroid/view/VolumePanelEx;

    #getter for: Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Landroid/view/VolumePanelEx;->access$200(Landroid/view/VolumePanelEx;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Landroid/view/VolumePanelEx$4;->this$0:Landroid/view/VolumePanelEx;

    #getter for: Landroid/view/VolumePanelEx;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Landroid/view/VolumePanelEx;->access$200(Landroid/view/VolumePanelEx;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 883
    iget-object v1, p0, Landroid/view/VolumePanelEx$4;->this$0:Landroid/view/VolumePanelEx;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 886
    :cond_0
    return-void
.end method
