.class Lcom/lge/telephony/KrRejectCause/RejectCauseBase$7;
.super Ljava/lang/Object;
.source "RejectCauseBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showLocationFailDialogSKT(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;


# direct methods
.method constructor <init>(Lcom/lge/telephony/KrRejectCause/RejectCauseBase;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$7;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$7;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss networkDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$7;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    #getter for: Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->networkDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->access$000(Lcom/lge/telephony/KrRejectCause/RejectCauseBase;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->log(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$7;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-virtual {v0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->clearStatusId()V

    .line 422
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$7;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    const-string v1, "************** onDismiss*********************"

    invoke-virtual {v0, v1}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->log(Ljava/lang/String;)V

    .line 424
    return-void
.end method
