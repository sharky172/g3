.class Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;
.super Landroid/content/BroadcastReceiver;
.source "PayPopup_Korea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/PayPopup_Korea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, action:Ljava/lang/String;
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "intent received :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v13, "android.net.conn.STARTING_IN_DATA_SETTING_DISABLE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 253
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "ACTION_STARTING_IN_DATA_SETTING_DISABLE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    sget-object v14, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    const/4 v15, 0x3

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 256
    :cond_1
    :try_start_1
    const-string v13, "android.net.conn.STARTING_IN_ROAM_SETTING_DISABLE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 257
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "ACTION_STARTING_IN_ROAM_SETTING_DISABLE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    sget-object v14, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    const/4 v15, 0x5

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v1           #action:Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 260
    .restart local v1       #action:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v13, "android.net.conn.STARTING_IN_DATA_SETTING_DISABLE_3GONLY"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 261
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "ACTION_STARTING_IN_DATA_SETTING_DISABLE_3GONLY"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    sget-object v14, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;I)V

    goto :goto_0

    .line 264
    :cond_3
    const-string v13, "android.net.conn.DATA_DATA_BLOCK_IN_MMS"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 265
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "ACTION_DATA_BLOCK_IN_MMS "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    sget-object v14, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    const/4 v15, 0x6

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;I)V

    goto :goto_0

    .line 270
    :cond_4
    const-string v13, "lge.intent.action.LGE_WIFI_3G_TRANSITION"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 271
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "lge.intent.action.LGE_WIFI_3G_TRANSITION"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "mobile_data"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 275
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "[LGE_DATA] WiFi Off / data enable"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    sget-object v14, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    const/16 v15, 0x9

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;I)V

    .line 279
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "mobile_data"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_0

    .line 280
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "[LGE_DATA] WiFi Off / data disable"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    sget-object v14, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    const/16 v15, 0xa

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;I)V

    goto/16 :goto_0

    .line 286
    :cond_6
    const-string v13, "com.lge.intent.action.LGE_CAMPED_MCC_CHANGE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 287
    const-string v9, "000"

    .line 288
    .local v9, new_mcc:Ljava/lang/String;
    const-string v10, "000"

    .line 290
    .local v10, old_mcc:Ljava/lang/String;
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "[LGE_DATA_ROAMING] Got LGTelephonyIntents.ACTION_CAMPED_MCC_CHANGE "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v13, "newmcc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 293
    const-string v13, "oldmcc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 294
    const-string v13, "FakeMccChange"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 296
    .local v4, fake_change:Z
    if-nez v10, :cond_7

    .line 297
    const-string v10, "000"

    .line 299
    :cond_7
    if-nez v9, :cond_8

    .line 300
    const-string v9, "000"

    .line 303
    :cond_8
    if-eqz v4, :cond_9

    .line 304
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "[LGE_DATA_ROAMING] Got TelephonyIntents.ACTION_CAMPED_FAKE_MCC_CHANGE "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    iget-object v13, v13, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v14, "SKTBASE"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    if-nez v13, :cond_a

    const-string v13, "450"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, "450"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "mobile_data"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_a

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "data_network_user_data_disable_setting"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "[LGE_DATA] <onDataConnectionAttached()> DATA_NETWORK_USER_DATA_DISABLE_SETTING : 1"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_a
    const-string v13, "000"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "intent_old_mcc"

    invoke-static {v13, v14, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    iget-object v13, v13, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v14, "KTBASE"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    iget-object v13, v13, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v14, "SKTBASE"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    if-nez v13, :cond_d

    .line 322
    :cond_c
    const-string v9, "000"

    .line 325
    :cond_d
    const-string v13, "000"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 326
    const-string v13, "000"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 327
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "intent_old_mcc"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 330
    :cond_e
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[LGE_DATA_ROAMING] old_mcc:  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", new_mcc:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz v10, :cond_f

    if-nez v9, :cond_10

    .line 333
    :cond_f
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "old_mcc:  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", new_mcc:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 334
    :cond_10
    const-string v13, "450"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const-string v13, "450"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 335
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "[LGE_DATA_ROAMING] MCC Change Roaming popup OK"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v13, "net.Is_phone_booted"

    const-string v14, "true"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;
    invoke-static {v13, v9}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$102(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->global_old_mcc:Ljava/lang/String;
    invoke-static {v13, v10}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$202(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 339
    :cond_11
    const-string v13, "450"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "450"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 340
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "[LGE_DATA_ROAMING] Domestic popup OK"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    iget-object v13, v13, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v14, "LGTBASE"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 344
    const-string v13, "net.Is_phone_booted"

    const-string v14, "true"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$300(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getLTEDataRoamingEnable()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 348
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "[LGE_DATA_ROAMING] when changed roaming to domestic and data_lte_roaming is 1, forcely set to 0"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$300(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mLgDcTracker:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->setLTEDataRoamingEnableNotApplyObserver(Z)V

    .line 354
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;
    invoke-static {v13, v9}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$102(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->global_old_mcc:Ljava/lang/String;
    invoke-static {v13, v10}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$202(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[LGE_DATA_ROAMING] roam_to_domestic_popup_need="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->roam_to_domestic_popup_need:Z
    invoke-static {v15}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$400(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->roam_to_domestic_popup_need:Z
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$400(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 360
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "roam_to_domesic : mcc_change"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    const-string v14, "roam_to_domesic"

    const-string v15, "default"

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->startPayPopup(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    const/4 v14, 0x0

    #setter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->roam_to_domestic_popup_need:Z
    invoke-static {v13, v14}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$402(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;Z)Z

    goto/16 :goto_0

    .line 366
    :cond_13
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "[LGE_DATA_ROAMING] incorrect intet!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 371
    .end local v4           #fake_change:Z
    .end local v9           #new_mcc:Ljava/lang/String;
    .end local v10           #old_mcc:Ljava/lang/String;
    :cond_14
    const-string v13, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 372
    const-string v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 373
    .local v3, enabled:Z
    if-eqz v3, :cond_15

    const/4 v13, 0x1

    :goto_1
    sput v13, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->airplane_mode:I

    .line 374
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[LGE_DATA_ROAMING] Airplane_mode popup airplane: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->airplane_mode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 373
    :cond_15
    const/4 v13, 0x0

    goto :goto_1

    .line 378
    .end local v3           #enabled:Z
    :cond_16
    const-string v13, "com.lge.DataEnabledSettingBootableSKT"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    const/16 v15, 0x190

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x1f4

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 381
    :cond_17
    const-string v13, "com.lge.DataNetworkModePayPopupKT"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    const/16 v15, 0x191

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x1f4

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 384
    :cond_18
    const-string v13, "com.lge.DataNetworkModePayPopupLGT"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    const/16 v15, 0x192

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x1f4

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 388
    :cond_19
    const-string v13, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a

    const-string v13, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    iget-object v13, v13, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v14, "KTBASE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 391
    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 392
    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkInfo;

    move-object v0, v13

    check-cast v0, Landroid/net/NetworkInfo;

    move-object v5, v0

    .line 394
    .local v5, info:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    .line 395
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_0

    .line 397
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    #setter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mMobileEnabled:Z
    invoke-static {v13, v14}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$502(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;Z)Z

    .line 398
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TYPE_MOBILE is Connected = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mMobileEnabled:Z
    invoke-static {v15}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$500(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, currentSubType:I
    const/4 v7, 0x0

    .line 404
    .local v7, isWifiConnected:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$600(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Landroid/net/ConnectivityManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 405
    .local v8, mobileNetworkInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$600(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Landroid/net/ConnectivityManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 406
    .local v12, wifiNetworkInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$600(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Landroid/net/ConnectivityManager;

    move-result-object v13

    if-eqz v13, :cond_1c

    .line 407
    if-eqz v8, :cond_1b

    .line 408
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 411
    :cond_1b
    if-eqz v12, :cond_1c

    .line 412
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    .line 416
    :cond_1c
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[LGE_DATA] mStatus : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    iget-boolean v15, v15, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mStatus:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " subtype : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " wifi state : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mMobileEnabled:Z
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$500(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    iget-object v13, v13, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v14, "KTBASE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    iget-boolean v13, v13, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mStatus:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1e

    .line 422
    const/4 v13, 0x1

    if-eq v2, v13, :cond_1d

    const/4 v13, 0x2

    if-ne v2, v13, :cond_1f

    .line 423
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x20d032b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 437
    .local v11, str_value:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$700(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/lge/wifi/extension/IWifiServiceExtension;

    move-result-object v13

    invoke-interface {v13}, Lcom/lge/wifi/extension/IWifiServiceExtension;->isShowKTPayPopup()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1e

    if-nez v7, :cond_1e

    .line 438
    new-instance v6, Landroid/content/Intent;

    const-string v13, "lge.intent.action.toast"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v6, intent_kr:Landroid/content/Intent;
    const-string v13, "text"

    invoke-virtual {v6, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    const-string v14, "[LGE_DATA] mWifiServiceExt.getShowKTPayPopup() = "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 445
    .end local v6           #intent_kr:Landroid/content/Intent;
    .end local v11           #str_value:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mMobileEnabled:Z
    invoke-static {v14}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$500(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Z

    move-result v14

    iput-boolean v14, v13, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mStatus:Z

    goto/16 :goto_0

    .line 424
    :cond_1f
    const/16 v13, 0xd

    if-ne v2, v13, :cond_20

    .line 425
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x20d032c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #str_value:Ljava/lang/String;
    goto :goto_2

    .line 426
    .end local v11           #str_value:Ljava/lang/String;
    :cond_20
    const/16 v13, 0xf

    if-eq v2, v13, :cond_21

    const/16 v13, 0xa

    if-eq v2, v13, :cond_21

    const/16 v13, 0x9

    if-eq v2, v13, :cond_21

    const/16 v13, 0x8

    if-eq v2, v13, :cond_21

    const/4 v13, 0x3

    if-ne v2, v13, :cond_22

    .line 429
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x20d032a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #str_value:Ljava/lang/String;
    goto/16 :goto_2

    .line 431
    .end local v11           #str_value:Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    const/16 v15, 0x258

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x1f4

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 450
    .end local v2           #currentSubType:I
    .end local v5           #info:Landroid/net/NetworkInfo;
    .end local v7           #isWifiConnected:Z
    .end local v8           #mobileNetworkInfo:Landroid/net/NetworkInfo;
    .end local v12           #wifiNetworkInfo:Landroid/net/NetworkInfo;
    :cond_23
    const-string v13, "com.lge.intent.action.OTA_USIM_REFRESH_TO_RESET"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 451
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    iget-object v13, v13, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v14, "KTBASE"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 452
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    const/4 v14, 0x1

    #setter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->intent_reset:Z
    invoke-static {v13, v14}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$802(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;Z)Z

    goto/16 :goto_0

    .line 457
    :cond_24
    const-string v13, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 458
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    const-string v14, "net.Is_phone_booted"

    const-string v15, "true"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    #setter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mbooting_phone:Z
    invoke-static {v13, v14}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$902(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;Z)Z

    .line 460
    const-string v13, "[LGE_DATA][PayPopUp_ko] "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[LGE_DATA] ACTION_BOOT_COMPLETED mbooting_phone = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mbooting_phone:Z
    invoke-static {v15}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$900(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mbooting_phone:Z
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$900(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/lgdata/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-static {v13}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea;->access$300(Lcom/android/internal/telephony/lgdata/PayPopup_Korea;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v13

    const-string v14, "dataAttached"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->lgdata_setupDataOnConnectableApns(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
