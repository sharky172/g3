.class Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;
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
    .line 339
    iput-object p1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 341
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManualTimeZoneSettingDialog:Landroid/app/AlertDialog;

    .line 345
    packed-switch p2, :pswitch_data_0

    .line 354
    :goto_0
    return-void

    .line 348
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    #calls: Lcom/android/internal/telephony/LgeTimeZoneMonitor;->showTimeZonePickerWithCountry()V
    invoke-static {v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->access$100(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
    .end packed-switch
.end method
