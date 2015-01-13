.class Lcom/android/internal/telephony/dataconnection/DcTracker$2$2;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$2;

.field final synthetic val$mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$2;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2$2;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2$2;->val$mIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2$2;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2$2;->val$mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 643
    return-void
.end method
