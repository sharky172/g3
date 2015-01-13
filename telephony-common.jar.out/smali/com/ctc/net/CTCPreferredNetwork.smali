.class public Lcom/ctc/net/CTCPreferredNetwork;
.super Landroid/os/Handler;
.source "CTCPreferredNetwork.java"


# static fields
.field private static final ACTION_PREFERRED_NETWORK_GET:Ljava/lang/String; = "GetNetworkMode_CT_LTE"

.field private static final ACTION_PREFERRED_NETWORK_SET:Ljava/lang/String; = "SetNetworkMode_CT_LTE"

.field private static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "NetworkType"

.field protected static final LOG_TAG:Ljava/lang/String; = "RIL_CTPreferredNetwork"

.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1

.field private static final MESSAGE_SET_TDD_STATUS:I = 0x2

.field public static final NT_MODE_DEFAULT:I = 0x0

.field public static final NT_MODE_LTEOFF:I = 0x1


# instance fields
.field isIntentDuplicate:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSetNetworkType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->isIntentDuplicate:Z

    .line 42
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    iput v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mSetNetworkType:I

    .line 204
    new-instance v0, Lcom/ctc/net/CTCPreferredNetwork$1;

    invoke-direct {v0, p0}, Lcom/ctc/net/CTCPreferredNetwork$1;-><init>(Lcom/ctc/net/CTCPreferredNetwork;)V

    iput-object v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    invoke-direct {p0, p1}, Lcom/ctc/net/CTCPreferredNetwork;->register(Lcom/android/internal/telephony/Phone;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/ctc/net/CTCPreferredNetwork;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ctc/net/CTCPreferredNetwork;->getLteOnNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/ctc/net/CTCPreferredNetwork;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ctc/net/CTCPreferredNetwork;->getLteOffNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/ctc/net/CTCPreferredNetwork;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ctc/net/CTCPreferredNetwork;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mSetNetworkType:I

    return v0
.end method

.method static synthetic access$302(Lcom/ctc/net/CTCPreferredNetwork;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/ctc/net/CTCPreferredNetwork;->mSetNetworkType:I

    return p1
.end method

.method static synthetic access$400(Lcom/ctc/net/CTCPreferredNetwork;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getLteOffNetworkMode()I
    .locals 3

    .prologue
    .line 94
    const/4 v0, -0x1

    .line 95
    .local v0, setNetworkType:I
    invoke-direct {p0}, Lcom/ctc/net/CTCPreferredNetwork;->getPreferredNetworkMode()I

    move-result v1

    .line 97
    .local v1, settingsNetworkMode:I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 98
    const/4 v0, 0x7

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 100
    const/4 v0, 0x4

    goto :goto_0

    .line 101
    :cond_2
    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 102
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getLteOnNetworkMode()I
    .locals 3

    .prologue
    .line 75
    const/4 v0, -0x1

    .line 76
    .local v0, setNetworkType:I
    invoke-direct {p0}, Lcom/ctc/net/CTCPreferredNetwork;->getPreferredNetworkMode()I

    move-result v1

    .line 78
    .local v1, settingsNetworkMode:I
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 79
    const/16 v0, 0xa

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 83
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 84
    :cond_3
    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 88
    :cond_4
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private getPreferredNetworkMode()I
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, nwMode:I
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 246
    const-string v0, "RIL_CTPreferredNetwork"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method private register(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "SetNetworkMode_CT_LTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "GetNetworkMode_CT_LTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTC : CTCPreferredNetwork mPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private setPreferredNetworkMode(I)V
    .locals 3
    .parameter "networkType"

    .prologue
    .line 120
    if-ltz p1, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetworkMode invalid networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    const/16 v0, 0x8

    if-lt p1, v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_4g_network_onoff"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_4g_network_onoff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTC : dispose mPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 144
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 145
    iget v4, p0, Lcom/ctc/net/CTCPreferredNetwork;->mSetNetworkType:I

    invoke-direct {p0, v4}, Lcom/ctc/net/CTCPreferredNetwork;->setPreferredNetworkMode(I)V

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LteOnOffHandler: mSetNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/ctc/net/CTCPreferredNetwork;->getPreferredNetworkMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "use_4g_single_data_network_onoff"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 151
    .local v3, tddStatus:I
    if-ne v3, v7, :cond_3

    .line 152
    iget v4, p0, Lcom/ctc/net/CTCPreferredNetwork;->mSetNetworkType:I

    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    .line 153
    const-string v4, "CTC : LTE on & TDD on > LTE off => LTE off & TDD off"

    invoke-direct {p0, v4}, Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    const-wide/16 v5, 0x5

    invoke-virtual {p0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/Phone;->setLteBandMode(JLandroid/os/Message;)V

    goto :goto_0

    .line 156
    :cond_1
    const-string v4, "CTC : LTE off & TDD on > LTE on => LTE on & TDD on"

    invoke-direct {p0, v4}, Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    const-wide v5, 0x10000000000L

    invoke-virtual {p0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/Phone;->setLteBandMode(JLandroid/os/Message;)V

    goto :goto_0

    .line 163
    .end local v3           #tddStatus:I
    :cond_2
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 166
    :cond_3
    iput-boolean v6, p0, Lcom/ctc/net/CTCPreferredNetwork;->isIntentDuplicate:Z

    goto :goto_0

    .line 169
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 170
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 171
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v1, v4, v6

    .line 172
    .local v1, modemNetworkMode:I
    invoke-direct {p0}, Lcom/ctc/net/CTCPreferredNetwork;->getPreferredNetworkMode()I

    move-result v2

    .line 173
    .local v2, settingsNetworkMode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LteOnOffHandler: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " settingsNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 175
    if-ltz v1, :cond_4

    const/16 v4, 0xc

    if-gt v1, v4, :cond_4

    .line 177
    if-eq v1, v2, :cond_0

    .line 178
    move v2, v1

    .line 180
    invoke-direct {p0, v2}, Lcom/ctc/net/CTCPreferredNetwork;->setPreferredNetworkMode(I)V

    goto/16 :goto_0

    .line 184
    :cond_4
    sget v4, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-direct {p0, v4}, Lcom/ctc/net/CTCPreferredNetwork;->setPreferredNetworkMode(I)V

    .line 186
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-virtual {p0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 192
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 193
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 194
    const-string v4, "CTC : TDD OFF fail"

    invoke-direct {p0, v4}, Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 196
    :cond_5
    iput-boolean v6, p0, Lcom/ctc/net/CTCPreferredNetwork;->isIntentDuplicate:Z

    goto/16 :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reRegister(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTC : reRegister old mPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new phone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/net/CTCPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lcom/ctc/net/CTCPreferredNetwork;->register(Lcom/android/internal/telephony/Phone;)V

    .line 61
    return-void
.end method
