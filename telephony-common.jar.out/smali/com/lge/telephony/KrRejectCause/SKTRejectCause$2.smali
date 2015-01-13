.class Lcom/lge/telephony/KrRejectCause/SKTRejectCause$2;
.super Ljava/lang/Object;
.source "SKTRejectCause.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/KrRejectCause/SKTRejectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/KrRejectCause/SKTRejectCause;


# direct methods
.method constructor <init>(Lcom/lge/telephony/KrRejectCause/SKTRejectCause;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause$2;->this$0:Lcom/lge/telephony/KrRejectCause/SKTRejectCause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 184
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 185
    sput-boolean v1, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    .line 187
    :cond_0
    return v1
.end method
