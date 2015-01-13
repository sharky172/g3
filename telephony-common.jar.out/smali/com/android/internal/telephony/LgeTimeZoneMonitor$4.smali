.class Lcom/android/internal/telephony/LgeTimeZoneMonitor$4;
.super Ljava/lang/Object;
.source "LgeTimeZoneMonitor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeTimeZoneMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$4;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 387
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$4;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mGuideAutomaticTimeSettingDialog:Landroid/app/AlertDialog;

    .line 391
    packed-switch p2, :pswitch_data_0

    .line 399
    :goto_0
    return-void

    .line 393
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$4;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    #getter for: Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->access$200(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$4;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    #getter for: Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->access$200(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
