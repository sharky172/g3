.class Landroid/view/VolumePanelEx$1;
.super Ljava/lang/Object;
.source "VolumePanelEx.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 225
    iput-object p1, p0, Landroid/view/VolumePanelEx$1;->this$0:Landroid/view/VolumePanelEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 227
    iget-object v0, p0, Landroid/view/VolumePanelEx$1;->this$0:Landroid/view/VolumePanelEx;

    invoke-virtual {v0}, Landroid/view/VolumePanelEx;->resetTimeout()V

    .line 228
    const/4 v0, 0x0

    return v0
.end method
