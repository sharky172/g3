.class Lcom/android/internal/telephony/ePDGinterface$2;
.super Landroid/os/Handler;
.source "ePDGinterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ePDGinterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ePDGinterface;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ePDGinterface;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/ePDGinterface$2;->this$0:Lcom/android/internal/telephony/ePDGinterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 133
    .local v12, mAr:Landroid/os/AsyncResult;
    iget-object v13, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 134
    .local v13, mDcr:Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget-object v11, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 135
    .local v11, apntype:Ljava/lang/String;
    if-nez v13, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface$2;->this$0:Lcom/android/internal/telephony/ePDGinterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ePDG] ConvertResp DataCallResponse  RIL ERROR !!! : apntype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface$2;->this$0:Lcom/android/internal/telephony/ePDGinterface;

    const/16 v2, 0x64

    const/4 v3, -0x1

    const-string v5, "none"

    const-string v6, "none"

    const-string v7, "none"

    const-string v8, "none"

    const-string v9, "none"

    move v4, v1

    move v10, v1

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/ePDGinterface;->notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface$2;->this$0:Lcom/android/internal/telephony/ePDGinterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] ConvertResp DataCallResponse in handler : apntype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface$2;->this$0:Lcom/android/internal/telephony/ePDGinterface;

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/telephony/ePDGinterface;->ConvtRespEPDGSetupDataCall(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v11           #apntype:Ljava/lang/String;
    .end local v12           #mAr:Landroid/os/AsyncResult;
    .end local v13           #mDcr:Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface$2;->this$0:Lcom/android/internal/telephony/ePDGinterface;

    const-string v1, "[ePDG] RIL_REQUEST_ePDG_DEACTIVATE_DATA_CALL msg in handler response success"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface$2;->this$0:Lcom/android/internal/telephony/ePDGinterface;

    const-string v1, "[ePDG] EVENT_EPDG_WIFI get rsp from qcril"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
