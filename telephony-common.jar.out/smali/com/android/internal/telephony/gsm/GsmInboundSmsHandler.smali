.class public Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "GsmInboundSmsHandler.java"


# static fields
.field private static _checkSMS:Ljava/lang/reflect/Method;

.field private static iqClient:Ljava/lang/Object;

.field private static volatile tryInit:I


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->iqClient:Ljava/lang/Object;

    .line 64
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->_checkSMS:Ljava/lang/reflect/Method;

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->tryInit:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .parameter "context"
    .parameter "storageMonitor"
    .parameter "phone"

    .prologue
    const/4 v5, 0x0

    .line 73
    const-string v1, "GsmInboundSmsHandler"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 74
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 75
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 77
    return-void
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .locals 1
    .parameter "context"
    .parameter "storageMonitor"
    .parameter "phone"

    .prologue
    .line 101
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V

    .line 102
    .local v0, handler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 103
    return-object v0
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 331
    packed-switch p0, :pswitch_data_0

    .line 340
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 335
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 337
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 308
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 17
    .parameter "smsb"

    .prologue
    .line 125
    move-object/from16 v8, p1

    check-cast v8, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 128
    .local v8, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v13, "lge_call_att"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 129
    sget v12, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->tryInit:I

    if-nez v12, :cond_0

    .line 130
    const/4 v12, 0x1

    sput v12, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->tryInit:I

    .line 131
    const-string v12, "LGDDM"

    const-string v13, "init reflection"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    const-string v12, "com.carrieriq.iqagent.client.IQClient"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 134
    .local v2, clazz:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    sput-object v12, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->iqClient:Ljava/lang/Object;

    .line 135
    const-string v12, "checkSMS"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->_checkSMS:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v2           #clazz:Ljava/lang/Class;
    :cond_0
    :goto_0
    sget-object v12, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->iqClient:Ljava/lang/Object;

    if-eqz v12, :cond_1

    .line 143
    const/4 v7, 0x0

    .line 145
    .local v7, ret:Z
    :try_start_1
    sget-object v12, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->_checkSMS:Ljava/lang/reflect/Method;

    sget-object v13, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->iqClient:Ljava/lang/Object;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 149
    :goto_1
    if-eqz v7, :cond_1

    .line 150
    const/4 v12, 0x1

    .line 265
    .end local v7           #ret:Z
    :goto_2
    return v12

    .line 136
    :catch_0
    move-exception v10

    .line 137
    .local v10, t:Ljava/lang/Throwable;
    const-string v12, "LGDDM"

    const-string v13, "reflection failed"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v12, 0x0

    sput-object v12, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->iqClient:Ljava/lang/Object;

    goto :goto_0

    .line 146
    .end local v10           #t:Ljava/lang/Throwable;
    .restart local v7       #ret:Z
    :catch_1
    move-exception v3

    .line 147
    .local v3, ex:Ljava/lang/Exception;
    const-string v12, "LGDDM"

    const-string v13, "invoke failed"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v7           #ret:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v13, "SKTfindFriends"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 158
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 161
    const-string v12, "Received short message type 0, Don\'t display or store it. Send Ack"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 162
    const/4 v12, 0x1

    goto :goto_2

    .line 169
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v13, "support_sprint_vvm"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 170
    const-string v12, "ro.chameleon.vvm"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, chameleon_VVM:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GSM(), chameleon_VVM : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 173
    const-string v12, "1"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 174
    :cond_3
    const-string v12, "Received MWI, Don\'t display or store it. Send Ack"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 175
    const/4 v12, 0x1

    goto :goto_2

    .line 181
    .end local v1           #chameleon_VVM:Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v11

    .line 183
    .local v11, ust:Lcom/android/internal/telephony/uicc/UsimServiceTable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v12, v11, v8}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v12

    goto/16 :goto_2

    .line 186
    .end local v11           #ust:Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_5
    const/4 v4, 0x0

    .line 187
    .local v4, handled:Z
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 189
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 190
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v4

    .line 191
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received voice mail indicator set SMS [isMWISetMessage]shouldStore="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v4, :cond_8

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 198
    :cond_6
    :goto_4
    if-eqz v4, :cond_b

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v13, "mwi_only_notify"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 201
    const/4 v12, 0x1

    new-array v6, v12, [[B

    .line 202
    .local v6, pdus:[[B
    const/4 v12, 0x0

    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v13

    aput-object v13, v6, v12

    .line 204
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v5, intent:Landroid/content/Intent;
    const-string v12, "pdus"

    invoke-virtual {v5, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 206
    const-string v12, "encoding"

    const/4 v13, 0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string v12, "notionly"

    const/4 v13, 0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    const-string v12, "format"

    const-string v13, "3gpp"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v12, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V

    .line 212
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #pdus:[[B
    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 191
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 193
    :cond_9
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 194
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 195
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v4

    .line 196
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v4, :cond_a

    const/4 v12, 0x1

    :goto_5
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    goto :goto_5

    .line 220
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v12, v13, :cond_c

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v12, v13, :cond_c

    .line 224
    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    .line 225
    .local v9, smsHeaderCompare:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v13, "DCM_MEMFULL_SMSPUSH"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    if-eqz v9, :cond_d

    iget-object v12, v9, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v12, :cond_d

    iget-object v12, v9, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v12, v12, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v13, 0xb84

    if-ne v12, v13, :cond_d

    .line 256
    .end local v9           #smsHeaderCompare:Lcom/android/internal/telephony/SmsHeader;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v13, "lgu_gsm_operator_message"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 257
    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v12

    if-eqz v12, :cond_12

    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v12

    iget-object v12, v12, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v12, :cond_12

    .line 258
    const/4 v12, 0x1

    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v13, v13, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v13}, Lcom/lge/telephony/LGUSmsUtils;->checkValidLmsMessage(I)Z

    move-result v13

    if-ne v12, v13, :cond_12

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->lgu:Lcom/lge/telephony/LGUSmsUtils;

    const/4 v13, 0x1

    invoke-virtual {v12, v8, v13}, Lcom/lge/telephony/LGUSmsUtils;->handleLMSMessage(Lcom/android/internal/telephony/SmsMessageBase;Z)I

    move-result v12

    goto/16 :goto_2

    .line 232
    .restart local v9       #smsHeaderCompare:Lcom/android/internal/telephony/SmsHeader;
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v12

    if-nez v12, :cond_e

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v12

    if-eqz v12, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v13, "dcm_voicemail_receive_memoryfull"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 234
    const-string v12, "dispatchMessage(), KEY_SMS_DCM_VOICEMAIL_RECEIVE_MEMORYFULL"

    invoke-static {v12}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_6

    .line 241
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v13, "lgu_dispatch"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 242
    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v12

    if-eqz v12, :cond_10

    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v12

    iget-object v12, v12, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v12, :cond_10

    .line 243
    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v12

    iget-object v12, v12, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v12, v12, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v12}, Lcom/lge/telephony/LGUSmsUtils;->isMessageProcessTid(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 244
    const/4 v12, 0x3

    goto/16 :goto_2

    .line 247
    :cond_10
    const/4 v12, 0x3

    goto/16 :goto_2

    .line 250
    :cond_11
    const/4 v12, 0x3

    goto/16 :goto_2

    .line 265
    .end local v9           #smsHeaderCompare:Lcom/android/internal/telephony/SmsHeader;
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v12

    goto/16 :goto_2
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "context"
    .parameter "phone"

    .prologue
    .line 80
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 82
    return-void
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->dispose()V

    .line 92
    const-string v0, "unregistered for 3GPP SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 93
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 94
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 320
    const-string v0, "onUpdatePhoneObject: dispose of old CellBroadcastHandler and make a new one"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->dispose()V

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 323
    return-void
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 4
    .parameter "voicemailCount"

    .prologue
    const/4 v3, 0x1

    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "KRVMSType"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " skip update mwi. KR operator has other spec."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 297
    :goto_0
    return-void

    .line 278
    :cond_0
    if-gez p1, :cond_2

    .line 279
    const/4 p1, -0x1

    .line 286
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 288
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 290
    .local v0, records:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_3

    .line 291
    const-string v1, "updateMessageWaitingIndicator: updating SIM Records"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 296
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->storeVoiceMailCount()V

    goto :goto_0

    .line 280
    .end local v0           #records:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    .line 283
    const/16 p1, 0xff

    goto :goto_1

    .line 294
    .restart local v0       #records:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    const-string v1, "updateMessageWaitingIndicator: SIM Records not found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2
.end method
