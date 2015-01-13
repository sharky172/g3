.class Landroid/view/VolumePanelEx$LGWarningDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanelEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanelEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LGWarningDialogReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mVolumePanelEx:Landroid/view/VolumePanelEx;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/VolumePanelEx;)V
    .locals 2
    .parameter "context"
    .parameter "dialog"
    .parameter "volumePanel"

    .prologue
    .line 1163
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1164
    iput-object p1, p0, Landroid/view/VolumePanelEx$LGWarningDialogReceiver;->mContext:Landroid/content/Context;

    .line 1165
    iput-object p2, p0, Landroid/view/VolumePanelEx$LGWarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    .line 1166
    iput-object p3, p0, Landroid/view/VolumePanelEx$LGWarningDialogReceiver;->mVolumePanelEx:Landroid/view/VolumePanelEx;

    .line 1167
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1169
    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 1182
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1183
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 1184
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    iget-object v0, p0, Landroid/view/VolumePanelEx$LGWarningDialogReceiver;->mVolumePanelEx:Landroid/view/VolumePanelEx;

    invoke-virtual {v0}, Landroid/view/VolumePanel;->forceTimeout()V

    .line 1186
    iget-object v0, p0, Landroid/view/VolumePanelEx$LGWarningDialogReceiver;->mVolumePanelEx:Landroid/view/VolumePanelEx;

    invoke-virtual {v0}, Landroid/view/VolumePanelEx;->updateStates()V

    .line 1187
    return-void

    .line 1184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "unused"

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/view/VolumePanelEx$LGWarningDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1179
    invoke-direct {p0}, Landroid/view/VolumePanelEx$LGWarningDialogReceiver;->cleanUp()V

    .line 1180
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/view/VolumePanelEx$LGWarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1174
    invoke-direct {p0}, Landroid/view/VolumePanelEx$LGWarningDialogReceiver;->cleanUp()V

    .line 1175
    return-void
.end method
