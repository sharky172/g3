.class Lcom/android/internal/telephony/dataconnection/DcController$PPPResync_BlockEHRPDInternetIPv6Task;
.super Ljava/util/TimerTask;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PPPResync_BlockEHRPDInternetIPv6Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    const-string v1, "PPPResync_BlockEHRPDInternetIPv6Task ongoing..."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    const v2, 0x42820

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 96
    return-void
.end method
