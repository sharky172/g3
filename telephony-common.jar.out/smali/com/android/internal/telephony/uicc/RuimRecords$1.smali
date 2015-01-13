.class Lcom/android/internal/telephony/uicc/RuimRecords$1;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;->handleCSimSmses(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

.field final synthetic val$simSmsMessage:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->val$simSmsMessage:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 771
    const/4 v0, 0x0

    const-string v1, "uicc_csim"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->val$simSmsMessage:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->mSimUpdateCSimMsgProvider(Ljava/util/ArrayList;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    const-string v0, "handleCSimSmses(), the SMS DB insertion from USIM is skiped or failed"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$800()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$802(Z)Z

    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->val$simSmsMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->updateCurrentIccCSimMessageProvider(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    const-string v0, "handleCSimSmses(), the SMS DB insertion from CSIM is failed"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method
