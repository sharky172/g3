.class Landroid/view/VolumePanelEx$5;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanelEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanelEx;->listenQuickCoverStatus()V
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
    .line 902
    iput-object p1, p0, Landroid/view/VolumePanelEx$5;->this$0:Landroid/view/VolumePanelEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 904
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 907
    .local v2, quickCoverMode:I
    const-string v5, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 908
    iget-object v5, p0, Landroid/view/VolumePanelEx$5;->this$0:Landroid/view/VolumePanelEx;

    iget-object v5, v5, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "quick_view_enable"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 910
    .local v1, isQuickCoverEnabled:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 911
    const-string v5, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 913
    invoke-static {}, Landroid/view/VolumePanelEx;->access$300()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_ACCESSORY_EVENT QucikCoverMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    iget-object v5, p0, Landroid/view/VolumePanelEx$5;->this$0:Landroid/view/VolumePanelEx;

    invoke-virtual {v5}, Landroid/view/VolumePanel;->forceTimeout()V

    .line 917
    if-ne v2, v3, :cond_3

    .line 918
    iget-object v4, p0, Landroid/view/VolumePanelEx$5;->this$0:Landroid/view/VolumePanelEx;

    #setter for: Landroid/view/VolumePanelEx;->mIsQuickCoverClose:Z
    invoke-static {v4, v3}, Landroid/view/VolumePanelEx;->access$402(Landroid/view/VolumePanelEx;Z)Z

    .line 928
    .end local v1           #isQuickCoverEnabled:Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v4

    .line 908
    goto :goto_0

    .line 919
    .restart local v1       #isQuickCoverEnabled:Z
    :cond_3
    if-nez v2, :cond_4

    .line 920
    iget-object v3, p0, Landroid/view/VolumePanelEx$5;->this$0:Landroid/view/VolumePanelEx;

    #setter for: Landroid/view/VolumePanelEx;->mIsQuickCoverClose:Z
    invoke-static {v3, v4}, Landroid/view/VolumePanelEx;->access$402(Landroid/view/VolumePanelEx;Z)Z

    goto :goto_1

    .line 922
    :cond_4
    iget-object v3, p0, Landroid/view/VolumePanelEx$5;->this$0:Landroid/view/VolumePanelEx;

    #setter for: Landroid/view/VolumePanelEx;->mIsQuickCoverClose:Z
    invoke-static {v3, v4}, Landroid/view/VolumePanelEx;->access$402(Landroid/view/VolumePanelEx;Z)Z

    goto :goto_1

    .line 925
    :cond_5
    iget-object v3, p0, Landroid/view/VolumePanelEx$5;->this$0:Landroid/view/VolumePanelEx;

    #setter for: Landroid/view/VolumePanelEx;->mIsQuickCoverClose:Z
    invoke-static {v3, v4}, Landroid/view/VolumePanelEx;->access$402(Landroid/view/VolumePanelEx;Z)Z

    goto :goto_1
.end method
