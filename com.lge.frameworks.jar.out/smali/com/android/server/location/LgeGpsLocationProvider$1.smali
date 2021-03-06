.class Lcom/android/server/location/LgeGpsLocationProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LgeGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, action:Ljava/lang/String;
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v4, "com.skt.intent.action.AGPS_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.skt.intent.action.GPS_TURN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 224
    :cond_0
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Lcom/android/server/location/LgeGpsLocationProvider;->access$002(Z)Z

    .line 225
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v4, v4, Lcom/android/server/location/LgeGpsLocationProvider;->mMapGpsState:Ljava/util/HashMap;

    const-string v5, "GPSstate"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->LgeSendMessage(IILjava/lang/Object;)V
    invoke-static {v2, v3, v3, v7}, Lcom/android/server/location/LgeGpsLocationProvider;->access$200(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V

    .line 272
    :cond_2
    :goto_0
    return-void

    .line 228
    :cond_3
    const-string v4, "com.skt.intent.action.AGPS_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.skt.intent.action.GPS_TURN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 229
    :cond_4
    const-string v2, "LgeGpsLocationProvider"

    const-string v4, "settings - LocationProvider = OFF"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/LgeGpsLocationProvider;->mMapGpsState:Ljava/util/HashMap;

    const-string v4, "GPSstate"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 231
    .local v1, state:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    if-nez v1, :cond_5

    move v2, v3

    :goto_1
    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->LgeSendMessage(IILjava/lang/Object;)V
    invoke-static {v4, v3, v2, v7}, Lcom/android/server/location/LgeGpsLocationProvider;->access$200(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 234
    .end local v1           #state:Ljava/lang/Integer;
    :cond_6
    const-string v4, "com.android.lge.action_at_timeout_uplus"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 235
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "RIL recovery progress!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->gpsRilRecovery()V
    invoke-static {v2}, Lcom/android/server/location/LgeGpsLocationProvider;->access$300(Lcom/android/server/location/LgeGpsLocationProvider;)V

    goto :goto_0

    .line 239
    :cond_7
    const-string v4, "VDF"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "SFR"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "1"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 240
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "TelephonyIntents.ACTION_SIM_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-virtual {v2, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeUpdateSimState(Landroid/content/Intent;)V

    goto :goto_0

    .line 244
    :cond_9
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "ATT"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "AIO"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 245
    :cond_a
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AIRPLANE_MODE_CHANGED received, operator= ATT, mSettingGpsEnable ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$000()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v4, v3, :cond_c

    .line 247
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Air plane ON!!! , mSettingGpsEnable ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$000()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Lcom/android/server/location/LgeGpsLocationProvider;->access$002(Z)Z

    .line 249
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v5, v4, Lcom/android/server/location/LgeGpsLocationProvider;->mMapGpsState:Ljava/util/HashMap;

    const-string v6, "GPSstate"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v3

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->LgeSendMessage(IILjava/lang/Object;)V
    invoke-static {v4, v3, v2, v7}, Lcom/android/server/location/LgeGpsLocationProvider;->access$200(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    move v4, v2

    .line 249
    goto :goto_2

    .line 252
    :cond_c
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/LgeGpsLocationProvider;->mMapGpsState:Ljava/util/HashMap;

    const-string v4, "GPSstate"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 253
    .restart local v1       #state:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    if-nez v1, :cond_d

    move v2, v3

    :goto_3
    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->LgeSendMessage(IILjava/lang/Object;)V
    invoke-static {v4, v3, v2, v7}, Lcom/android/server/location/LgeGpsLocationProvider;->access$200(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    .line 257
    .end local v1           #state:Ljava/lang/Integer;
    :cond_e
    const-string v3, "DCM"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 258
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "com.android.settings.gpsnotification.CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    :cond_f
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v2}, Lcom/android/server/location/LgeGpsConstants;->soundVibControl()V

    goto/16 :goto_0

    .line 262
    :cond_10
    const-string v3, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    const-string v4, "enabled"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z
    invoke-static {v3, v4}, Lcom/android/server/location/LgeGpsLocationProvider;->access$602(Lcom/android/server/location/LgeGpsLocationProvider;Z)Z

    .line 264
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPS_ENABLED_CHANGE_ACTION! , mNavigating ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z
    invoke-static {v5}, Lcom/android/server/location/LgeGpsLocationProvider;->access$600(Lcom/android/server/location/LgeGpsLocationProvider;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z
    invoke-static {v3}, Lcom/android/server/location/LgeGpsLocationProvider;->access$600(Lcom/android/server/location/LgeGpsLocationProvider;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I
    invoke-static {v3}, Lcom/android/server/location/LgeGpsLocationProvider;->access$700(Lcom/android/server/location/LgeGpsLocationProvider;)I

    move-result v3

    if-nez v3, :cond_2

    .line 268
    const-string v3, "LgeGpsLocationProvider"

    const-string v4, "send REQUEST_CACERT after mNavigating turned false"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    const/4 v4, 0x3

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->LgeSendMessage(IILjava/lang/Object;)V
    invoke-static {v3, v4, v2, v7}, Lcom/android/server/location/LgeGpsLocationProvider;->access$200(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V

    goto/16 :goto_0
.end method
