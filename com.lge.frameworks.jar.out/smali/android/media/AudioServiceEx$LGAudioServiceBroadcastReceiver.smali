.class Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGAudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioServiceEx;


# direct methods
.method private constructor <init>(Landroid/media/AudioServiceEx;)V
    .locals 0
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioServiceEx;Landroid/media/AudioServiceEx$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1035
    invoke-direct {p0, p1}, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioServiceEx;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1041
    .local v8, action:Ljava/lang/String;
    const-string v1, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1042
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_view_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v21, 0x1

    .line 1044
    .local v21, isQuickCoverEnabled:Z
    :goto_0
    if-eqz v21, :cond_4

    .line 1045
    const-string v1, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 1048
    .local v25, quickCoverMode:I
    const/4 v1, 0x1

    move/from16 v0, v25

    if-ne v0, v1, :cond_2

    .line 1049
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const/4 v2, 0x1

    #setter for: Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$402(Landroid/media/AudioServiceEx;Z)Z

    .line 1167
    .end local v21           #isQuickCoverEnabled:Z
    .end local v25           #quickCoverMode:I
    :cond_0
    :goto_1
    return-void

    .line 1042
    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    .line 1050
    .restart local v21       #isQuickCoverEnabled:Z
    .restart local v25       #quickCoverMode:I
    :cond_2
    if-nez v25, :cond_3

    .line 1051
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$402(Landroid/media/AudioServiceEx;Z)Z

    goto :goto_1

    .line 1053
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$402(Landroid/media/AudioServiceEx;Z)Z

    goto :goto_1

    .line 1056
    .end local v25           #quickCoverMode:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$402(Landroid/media/AudioServiceEx;Z)Z

    goto :goto_1

    .line 1059
    .end local v21           #isQuickCoverEnabled:Z
    :cond_5
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1060
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    move-object/from16 v0, p1

    #calls: Landroid/media/AudioServiceEx;->refreshVolumePanel(Landroid/content/Context;)V
    invoke-static {v1, v0}, Landroid/media/AudioServiceEx;->access$500(Landroid/media/AudioServiceEx;Landroid/content/Context;)V

    goto :goto_1

    .line 1061
    :cond_6
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1062
    const/4 v15, 0x0

    .line 1064
    .local v15, file:Ljava/io/FileReader;
    const/16 v1, 0x400

    :try_start_0
    new-array v11, v1, [C

    .line 1065
    .local v11, buffer:[C
    const/4 v13, 0x0

    .line 1066
    .local v13, curState:I
    new-instance v16, Ljava/io/FileReader;

    const-string v1, "/sys/class/switch/h2w/state"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    .line 1067
    .end local v15           #file:Ljava/io/FileReader;
    .local v16, file:Ljava/io/FileReader;
    const/4 v1, 0x0

    const/16 v2, 0x400

    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v1, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v22

    .line 1068
    .local v22, len:I
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-direct {v1, v11, v2, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1070
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_AUDIO_HEADSET_TYPE:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v1, :cond_9

    .line 1071
    const/16 v17, 0x0

    .line 1073
    .local v17, file_type:Ljava/io/FileReader;
    const/16 v1, 0x400

    :try_start_2
    new-array v12, v1, [C

    .line 1074
    .local v12, buffer_name:[C
    const/16 v19, 0x0

    .line 1076
    .local v19, headsetType:I
    new-instance v18, Ljava/io/FileReader;

    const-string v1, "/sys/class/switch/h2w/name"

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    .line 1077
    .end local v17           #file_type:Ljava/io/FileReader;
    .local v18, file_type:Ljava/io/FileReader;
    const/4 v1, 0x0

    const/16 v2, 0x400

    :try_start_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v1, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v23

    .line 1078
    .local v23, len_name:I
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    move/from16 v0, v23

    invoke-direct {v1, v12, v2, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 1079
    .local v24, name:Ljava/lang/String;
    const/4 v1, 0x1

    if-eq v13, v1, :cond_7

    const/4 v1, 0x2

    if-ne v13, v1, :cond_c

    .line 1080
    :cond_7
    const-string v1, "h2w"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1081
    const-string v1, "HeadsetState=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1095
    :cond_8
    :goto_2
    if-eqz v18, :cond_9

    .line 1097
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 1106
    .end local v12           #buffer_name:[C
    .end local v18           #file_type:Ljava/io/FileReader;
    .end local v19           #headsetType:I
    .end local v23           #len_name:I
    .end local v24           #name:Ljava/lang/String;
    :cond_9
    :goto_3
    const/4 v1, 0x1

    if-ne v13, v1, :cond_f

    .line 1107
    const/4 v1, 0x4

    const/4 v2, 0x1

    :try_start_5
    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1119
    :goto_4
    if-eqz v16, :cond_17

    .line 1121
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    move-object/from16 v15, v16

    .line 1124
    .end local v16           #file:Ljava/io/FileReader;
    .restart local v15       #file:Ljava/io/FileReader;
    goto/16 :goto_1

    .line 1082
    .end local v15           #file:Ljava/io/FileReader;
    .restart local v12       #buffer_name:[C
    .restart local v16       #file:Ljava/io/FileReader;
    .restart local v18       #file_type:Ljava/io/FileReader;
    .restart local v19       #headsetType:I
    .restart local v23       #len_name:I
    .restart local v24       #name:Ljava/lang/String;
    :cond_a
    :try_start_7
    const-string v1, "h2w_advanced"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1083
    const-string v1, "HeadsetState=2"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 1090
    .end local v23           #len_name:I
    .end local v24           #name:Ljava/lang/String;
    :catch_0
    move-exception v14

    move-object/from16 v17, v18

    .line 1091
    .end local v12           #buffer_name:[C
    .end local v18           #file_type:Ljava/io/FileReader;
    .end local v19           #headsetType:I
    .local v14, e:Ljava/io/FileNotFoundException;
    .restart local v17       #file_type:Ljava/io/FileReader;
    :goto_5
    :try_start_8
    const-string v1, "AudioService"

    const-string v2, "/sys/class/switch/h2w/name not found while attempting to determine initial switch state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1095
    if-eqz v17, :cond_9

    .line 1097
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 1098
    :catch_1
    move-exception v14

    .line 1099
    .local v14, e:Ljava/io/IOException;
    :try_start_a
    const-string v1, "AudioService"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 1114
    .end local v14           #e:Ljava/io/IOException;
    .end local v17           #file_type:Ljava/io/FileReader;
    .end local v22           #len:I
    :catch_2
    move-exception v14

    move-object/from16 v15, v16

    .line 1115
    .end local v11           #buffer:[C
    .end local v13           #curState:I
    .end local v16           #file:Ljava/io/FileReader;
    .local v14, e:Ljava/io/FileNotFoundException;
    .restart local v15       #file:Ljava/io/FileReader;
    :goto_6
    :try_start_b
    const-string v1, "AudioService"

    const-string v2, "/sys/class/switch/h2w/state not found while attempting to determine initial switch state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1119
    if-eqz v15, :cond_0

    .line 1121
    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_1

    .line 1122
    :catch_3
    move-exception v14

    .line 1123
    .local v14, e:Ljava/io/IOException;
    const-string v1, "AudioService"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1084
    .end local v14           #e:Ljava/io/IOException;
    .end local v15           #file:Ljava/io/FileReader;
    .restart local v11       #buffer:[C
    .restart local v12       #buffer_name:[C
    .restart local v13       #curState:I
    .restart local v16       #file:Ljava/io/FileReader;
    .restart local v18       #file_type:Ljava/io/FileReader;
    .restart local v19       #headsetType:I
    .restart local v22       #len:I
    .restart local v23       #len_name:I
    .restart local v24       #name:Ljava/lang/String;
    :cond_b
    :try_start_d
    const-string v1, "h2w_aux"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1085
    const-string v1, "HeadsetState=3"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_2

    .line 1092
    .end local v23           #len_name:I
    .end local v24           #name:Ljava/lang/String;
    :catch_4
    move-exception v14

    move-object/from16 v17, v18

    .line 1093
    .end local v12           #buffer_name:[C
    .end local v18           #file_type:Ljava/io/FileReader;
    .end local v19           #headsetType:I
    .local v14, e:Ljava/lang/Exception;
    .restart local v17       #file_type:Ljava/io/FileReader;
    :goto_7
    :try_start_e
    const-string v1, "AudioService"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1095
    if-eqz v17, :cond_9

    .line 1097
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_3

    .line 1098
    :catch_5
    move-exception v14

    .line 1099
    .local v14, e:Ljava/io/IOException;
    :try_start_10
    const-string v1, "AudioService"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_3

    .line 1116
    .end local v14           #e:Ljava/io/IOException;
    .end local v17           #file_type:Ljava/io/FileReader;
    .end local v22           #len:I
    :catch_6
    move-exception v14

    move-object/from16 v15, v16

    .line 1117
    .end local v11           #buffer:[C
    .end local v13           #curState:I
    .end local v16           #file:Ljava/io/FileReader;
    .local v14, e:Ljava/lang/Exception;
    .restart local v15       #file:Ljava/io/FileReader;
    :goto_8
    :try_start_11
    const-string v1, "AudioService"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1119
    if-eqz v15, :cond_0

    .line 1121
    :try_start_12
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_1

    .line 1122
    :catch_7
    move-exception v14

    .line 1123
    .local v14, e:Ljava/io/IOException;
    const-string v1, "AudioService"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1088
    .end local v14           #e:Ljava/io/IOException;
    .end local v15           #file:Ljava/io/FileReader;
    .restart local v11       #buffer:[C
    .restart local v12       #buffer_name:[C
    .restart local v13       #curState:I
    .restart local v16       #file:Ljava/io/FileReader;
    .restart local v18       #file_type:Ljava/io/FileReader;
    .restart local v19       #headsetType:I
    .restart local v22       #len:I
    .restart local v23       #len_name:I
    .restart local v24       #name:Ljava/lang/String;
    :cond_c
    :try_start_13
    const-string v1, "HeadsetState=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_2

    .line 1095
    .end local v23           #len_name:I
    .end local v24           #name:Ljava/lang/String;
    :catchall_0
    move-exception v1

    move-object/from16 v17, v18

    .end local v12           #buffer_name:[C
    .end local v18           #file_type:Ljava/io/FileReader;
    .end local v19           #headsetType:I
    .restart local v17       #file_type:Ljava/io/FileReader;
    :goto_9
    if-eqz v17, :cond_d

    .line 1097
    :try_start_14
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    .line 1100
    :cond_d
    :goto_a
    :try_start_15
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    .line 1119
    .end local v17           #file_type:Ljava/io/FileReader;
    .end local v22           #len:I
    :catchall_1
    move-exception v1

    move-object/from16 v15, v16

    .end local v11           #buffer:[C
    .end local v13           #curState:I
    .end local v16           #file:Ljava/io/FileReader;
    .restart local v15       #file:Ljava/io/FileReader;
    :goto_b
    if-eqz v15, :cond_e

    .line 1121
    :try_start_16
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    .line 1124
    :cond_e
    :goto_c
    throw v1

    .line 1098
    .end local v15           #file:Ljava/io/FileReader;
    .restart local v11       #buffer:[C
    .restart local v12       #buffer_name:[C
    .restart local v13       #curState:I
    .restart local v16       #file:Ljava/io/FileReader;
    .restart local v18       #file_type:Ljava/io/FileReader;
    .restart local v19       #headsetType:I
    .restart local v22       #len:I
    .restart local v23       #len_name:I
    .restart local v24       #name:Ljava/lang/String;
    :catch_8
    move-exception v14

    .line 1099
    .restart local v14       #e:Ljava/io/IOException;
    :try_start_17
    const-string v1, "AudioService"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1098
    .end local v12           #buffer_name:[C
    .end local v14           #e:Ljava/io/IOException;
    .end local v18           #file_type:Ljava/io/FileReader;
    .end local v19           #headsetType:I
    .end local v23           #len_name:I
    .end local v24           #name:Ljava/lang/String;
    .restart local v17       #file_type:Ljava/io/FileReader;
    :catch_9
    move-exception v14

    .line 1099
    .restart local v14       #e:Ljava/io/IOException;
    const-string v2, "AudioService"

    const-string v3, ""

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1108
    .end local v14           #e:Ljava/io/IOException;
    .end local v17           #file_type:Ljava/io/FileReader;
    :cond_f
    const/4 v1, 0x2

    if-ne v13, v1, :cond_10

    .line 1109
    const/16 v1, 0x8

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto/16 :goto_4

    .line 1111
    :cond_10
    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1112
    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    goto/16 :goto_4

    .line 1122
    :catch_a
    move-exception v14

    .line 1123
    .restart local v14       #e:Ljava/io/IOException;
    const-string v1, "AudioService"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v15, v16

    .line 1124
    .end local v16           #file:Ljava/io/FileReader;
    .restart local v15       #file:Ljava/io/FileReader;
    goto/16 :goto_1

    .line 1122
    .end local v11           #buffer:[C
    .end local v13           #curState:I
    .end local v14           #e:Ljava/io/IOException;
    .end local v22           #len:I
    :catch_b
    move-exception v14

    .line 1123
    .restart local v14       #e:Ljava/io/IOException;
    const-string v2, "AudioService"

    const-string v3, ""

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 1131
    .end local v14           #e:Ljava/io/IOException;
    .end local v15           #file:Ljava/io/FileReader;
    :cond_11
    const-string v1, "com.lge.mirrorlink.audio.started"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1132
    const-string v1, "AudioService"

    const-string v2, "wkcp Broadcast Receiver: Got com.lge.mirrorlink.audio.started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const-string v1, "isVirtualMirrorLinkDevice=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1135
    :cond_12
    const-string v1, "com.lge.mirrorlink.audio.stopped"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1136
    const-string v1, "AudioService"

    const-string v2, "wkcp Broadcast Receiver: Got com.lge.mirrorlink.audio.stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const-string v1, "isVirtualMirrorLinkDevice=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1141
    :cond_13
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1142
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Landroid/media/AudioServiceEx;->mCurrentUserId:I
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$602(Landroid/media/AudioServiceEx;I)I

    .line 1143
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentUserId ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    #getter for: Landroid/media/AudioServiceEx;->mCurrentUserId:I
    invoke-static {v3}, Landroid/media/AudioServiceEx;->access$600(Landroid/media/AudioServiceEx;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1147
    :cond_14
    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 1149
    .local v10, btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v10, :cond_0

    .line 1150
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 1151
    .local v9, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v20, 0x1

    .line 1154
    .local v20, isConnected:Z
    :goto_d
    if-eqz v20, :cond_0

    .line 1155
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v0, v1, Landroid/media/AudioServiceEx;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 1156
    :try_start_18
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v24

    .line 1157
    .restart local v24       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    move-object/from16 v0, v24

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1158
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, v24

    iput-object v0, v1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 1159
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1162
    :cond_15
    monitor-exit v26

    goto/16 :goto_1

    .end local v24           #name:Ljava/lang/String;
    :catchall_2
    move-exception v1

    monitor-exit v26
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    throw v1

    .line 1151
    .end local v20           #isConnected:Z
    :cond_16
    const/16 v20, 0x0

    goto :goto_d

    .line 1119
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .restart local v15       #file:Ljava/io/FileReader;
    :catchall_3
    move-exception v1

    goto/16 :goto_b

    .line 1116
    :catch_c
    move-exception v14

    goto/16 :goto_8

    .line 1114
    :catch_d
    move-exception v14

    goto/16 :goto_6

    .line 1095
    .end local v15           #file:Ljava/io/FileReader;
    .restart local v11       #buffer:[C
    .restart local v13       #curState:I
    .restart local v16       #file:Ljava/io/FileReader;
    .restart local v17       #file_type:Ljava/io/FileReader;
    .restart local v22       #len:I
    :catchall_4
    move-exception v1

    goto/16 :goto_9

    .line 1092
    :catch_e
    move-exception v14

    goto/16 :goto_7

    .line 1090
    :catch_f
    move-exception v14

    goto/16 :goto_5

    .end local v17           #file_type:Ljava/io/FileReader;
    :cond_17
    move-object/from16 v15, v16

    .end local v16           #file:Ljava/io/FileReader;
    .restart local v15       #file:Ljava/io/FileReader;
    goto/16 :goto_1
.end method
