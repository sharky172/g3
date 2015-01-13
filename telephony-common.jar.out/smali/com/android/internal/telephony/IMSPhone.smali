.class public Lcom/android/internal/telephony/IMSPhone;
.super Lcom/android/internal/telephony/IIMSPhone$Stub;
.source "IMSPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMSPhone$1;,
        Lcom/android/internal/telephony/IMSPhone$MyHandler;
    }
.end annotation


# static fields
.field private static final BAL_ITEM_RADIO_IMS_CALL_STATE:I = 0xb

.field private static final BAL_ITEM_RADIO_SIP_REG_SENDING:I = 0xa

.field private static final BAL_ITEM_RADIO_VOLTE_NV_ITEMS:I = 0xc

.field private static DEBUG_LOG:Z = false

.field private static final OPERATOR:Ljava/lang/String; = null

.field private static final OPERATOR_ATT:Ljava/lang/String; = "ATT"

.field private static final OPERATOR_KDDI:Ljava/lang/String; = "KDDI"

.field private static final OPERATOR_KT:Ljava/lang/String; = "KT"

.field private static final OPERATOR_LGU:Ljava/lang/String; = "LGU"

.field private static final OPERATOR_SKT:Ljava/lang/String; = "SKT"

.field private static final OPERATOR_TMUS:Ljava/lang/String; = "TMO"

.field private static final OPERATOR_VZW:Ljava/lang/String; = "VZW"

.field private static final PHONE_STATE_1X_REGISTRATION:I = 0x2

.field private static final PHONE_STATE_CDMA_LOCK_INFO:I = 0x1

.field private static final PHONE_STATE_ICC_EF_READ_DONE:I = 0x3

.field private static final RIL_ICC_EF_LINEAR_FIXED_READ_DONE:I = 0x65

.field private static final RIL_ICC_EF_TRANSPARENT_READ_DONE:I = 0x66

.field private static final RIL_IMS_SET_E911_STATE:I = 0x68

.field private static final RIL_IMS_STATUS_FOR_UICC:I = 0x69

.field private static final RIL_IMS_STAUS_SET_DONE_FOR_DAN:I = 0x67

.field private static final RIL_RESPONSE:I = 0x64

.field private static final SET_E911_TELEPHONY_DIAL:I = 0x1

.field private static final SET_E911_TELEPHONY_HANGUP:I = 0x2

.field private static final SYS_INFO_ACCESS_NETWORK_INFO:I = 0x3

.field private static final SYS_INFO_APN:I = 0x9

.field private static final SYS_INFO_CLOSE_DATA_CONNECTION:I = 0x5

.field private static final SYS_INFO_CS_CALL_STATE:I = 0xf

.field private static final SYS_INFO_ICC_EF_READ:I = 0x7

.field private static final SYS_INFO_IMS_REGISTRATION_STATE:I = 0x4

.field private static final SYS_INFO_IMS_REGISTRATION_STATE_FOR_MODEM:I = 0x12

.field private static final SYS_INFO_IMS_REG_STATUS_FOR_DAN:I = 0xb

.field private static final SYS_INFO_IMS_STATUS_FOR_UICC:I = 0x10

.field private static final SYS_INFO_LTE_NETWORK_FEATURE:I = 0x8

.field private static final SYS_INFO_MODEM_INFO:I = 0x1

.field private static final SYS_INFO_PCSCF_ADDRESS:I = 0x2

.field private static final SYS_INFO_SET_E911_STATE:I = 0xd

.field private static final SYS_INFO_SET_E911_TELEPHONY:I = 0xe

.field private static final SYS_INFO_SRVCC_CALL_INFO:I = 0xa

.field private static final SYS_INFO_SRVCC_CNAP_INFO:I = 0xc

.field private static final SYS_INFO_SRVCC_IMSCALL_STATE_INFO:I = 0x13

.field private static final SYS_INFO_SRVCC_PARTYTYPE_INFO:I = 0x11

.field private static final TAG:Ljava/lang/String; = "LGIMS"

.field private static mContext:Landroid/content/Context;

.field private static mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

.field private static mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mCNAPInfo:Ljava/lang/String;

.field private mConnectedNumber:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string v0, "ro.build.target_operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    .line 116
    sput-object v2, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    .line 117
    sput-object v2, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    .line 118
    sput-object v2, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/IIMSPhone$Stub;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 122
    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    .line 123
    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 127
    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    .line 128
    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mConnectedNumber:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mCNAPInfo:Ljava/lang/String;

    .line 162
    const-string v0, "user"

    const-string v1, "ro.build.type"

    const-string v2, "userdebug"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    .line 166
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 167
    const-string v0, "LGIMS"

    const-string v1, "IMSPhone is created..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/IMSPhone;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/internal/telephony/IMSPhone;

    invoke-direct {v0}, Lcom/android/internal/telephony/IMSPhone;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    .line 134
    const-string v0, "com.lge.ims.phone"

    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 136
    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "LGIMS"

    const-string v1, "IMS phone sevice is Added to service manager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    return-object v0
.end method

.method public static getSysMonitor()Lcom/android/internal/telephony/ISysMonitor;
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    if-nez v0, :cond_0

    .line 204
    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "LGIMS"

    const-string v1, "ISysMonitor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    return-object v0
.end method

.method public static isPhoneRequired(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 145
    sget-object v2, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    if-eqz p0, :cond_2

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 152
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_2

    const-string v2, "com.lge.ims.imsphone"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setBalItem(II)V
    .locals 4
    .parameter "item"
    .parameter "data"

    .prologue
    .line 788
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 789
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBalItem :: item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), data ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 793
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_1

    .line 794
    const-string v1, "LGIMS"

    const-string v2, "mHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_1
    :goto_0
    return-void

    .line 799
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v1, :cond_3

    .line 800
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_1

    .line 801
    const-string v1, "LGIMS"

    const-string v2, "mCM is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 806
    :cond_3
    const/4 v0, -0x1

    .line 808
    .local v0, index:I
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 809
    packed-switch p1, :pswitch_data_0

    .line 815
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    .line 816
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_4
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 865
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 869
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, p2, v2}, Lcom/android/internal/telephony/Phone;->setModemIntegerItem(IILandroid/os/Message;)V

    goto :goto_0

    .line 811
    :pswitch_0
    const/4 v0, 0x7

    .line 812
    goto :goto_1

    .line 820
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 821
    packed-switch p1, :pswitch_data_1

    .line 827
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    .line 828
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 823
    :pswitch_1
    const v0, 0x6002d

    .line 824
    goto :goto_1

    .line 832
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 833
    packed-switch p1, :pswitch_data_2

    .line 839
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    .line 840
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 835
    :pswitch_2
    const v0, 0x6002d

    .line 836
    goto :goto_1

    .line 844
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 845
    :cond_8
    packed-switch p1, :pswitch_data_3

    .line 854
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    .line 855
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 847
    :pswitch_3
    const v0, 0x6002d

    .line 848
    goto/16 :goto_1

    .line 851
    :pswitch_4
    const/16 v0, 0x1e

    .line 852
    goto/16 :goto_1

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch

    .line 821
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch

    .line 833
    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_2
    .end packed-switch

    .line 845
    :pswitch_data_3
    .packed-switch 0xb
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getCNAPInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mCNAPInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mConnectedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getImsCallInfo()Lcom/android/internal/telephony/ImsCallInfo;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    return-object v0
.end method

.method public getSysInfo(IILjava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "item"
    .parameter "param"
    .parameter "paramEx"

    .prologue
    const v4, 0xffff

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 433
    packed-switch p1, :pswitch_data_0

    .line 595
    :pswitch_0
    sget-boolean v3, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 596
    const-string v3, "LGIMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    :goto_0
    return-object v2

    .line 437
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    .line 441
    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    .line 442
    if-eqz p3, :cond_1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "INET"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 445
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "INET"

    invoke-interface {v3, v4, p3}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 447
    :cond_3
    const/4 v3, 0x6

    if-ne p2, v3, :cond_6

    .line 448
    if-eqz p3, :cond_4

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 449
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "INET6"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 451
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "INET6"

    invoke-interface {v3, v4, p3}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 455
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 462
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    .line 466
    const/16 v3, 0xd

    if-eq p2, v3, :cond_0

    .line 468
    const/16 v3, 0xe

    if-ne p2, v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaInfo()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 477
    :pswitch_3
    new-array v2, v5, [Ljava/lang/String;

    .line 478
    .local v2, result:[Ljava/lang/String;
    const-string v3, "FAILURE"

    aput-object v3, v2, v7

    .line 480
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    .line 484
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 488
    if-eqz p3, :cond_7

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 489
    :cond_7
    const-string p3, "linear_fixed"

    .line 492
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 494
    .local v0, iccCP:Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 500
    .local v1, iccFH:Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_0

    .line 501
    const-string v3, "linear_fixed"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 503
    and-int v3, p2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 505
    const-string v3, "SUCCESS"

    aput-object v3, v2, v7

    goto/16 :goto_0

    .line 506
    :cond_9
    const-string v3, "transparent"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    and-int v3, p2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 509
    const-string v3, "SUCCESS"

    aput-object v3, v2, v7

    goto/16 :goto_0

    .line 519
    .end local v0           #iccCP:Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v1           #iccFH:Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v2           #result:[Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    .line 523
    const/4 v2, 0x0

    .line 527
    .restart local v2       #result:[Ljava/lang/String;
    if-ne p2, v5, :cond_c

    .line 528
    new-array v2, v5, [Ljava/lang/String;

    .line 530
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->isEmergencyCallSupportedOnLte()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 531
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 545
    :cond_a
    :goto_1
    if-eqz v2, :cond_0

    .line 546
    sget-boolean v3, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 547
    const-string v3, "LGIMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTE network feature :: param("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), result("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 533
    :cond_b
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_1

    .line 535
    :cond_c
    if-ne p2, v6, :cond_a

    .line 536
    new-array v2, v5, [Ljava/lang/String;

    .line 538
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->isVoiceCallSupprotedOnLte()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 539
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_1

    .line 541
    :cond_d
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_1

    .line 556
    .end local v2           #result:[Ljava/lang/String;
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    .line 560
    new-array v2, v5, [Ljava/lang/String;

    .line 562
    .restart local v2       #result:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto/16 :goto_0

    .line 569
    .end local v2           #result:[Ljava/lang/String;
    :pswitch_6
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    .line 573
    new-array v2, v5, [Ljava/lang/String;

    .line 575
    .restart local v2       #result:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_e

    .line 576
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 584
    :goto_2
    if-eqz v2, :cond_0

    .line 585
    sget-boolean v3, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 586
    const-string v3, "LGIMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 577
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_f

    .line 578
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_2

    .line 579
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_10

    .line 580
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_2

    .line 582
    :cond_10
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_2

    .line 433
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public handleRemoteException()V
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    .line 218
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.ims.action.IMS_PHONE_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "LGIMS"

    const-string v1, "handling remote exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    return-void
.end method

.method public setDefaultPhone(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "context"
    .parameter "phone"
    .parameter "cm"

    .prologue
    .line 172
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "LGIMS"

    const-string v2, "setDefaultPhone is called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_3

    .line 177
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_2

    .line 178
    const-string v1, "LGIMS"

    const-string v2, "context or phone or cm is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_2
    :goto_0
    return-void

    .line 183
    :cond_3
    sput-object p1, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    .line 184
    iput-object p3, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 185
    iput-object p2, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_4

    .line 188
    new-instance v1, Lcom/android/internal/telephony/IMSPhone$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/IMSPhone$MyHandler;-><init>(Lcom/android/internal/telephony/IMSPhone;Lcom/android/internal/telephony/IMSPhone$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    .line 191
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 193
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_5

    const-string v1, "com.lge.ims.srvcc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    if-nez v1, :cond_5

    .line 194
    const-string v1, "LGIMS"

    const-string v2, "SRVCC feature enabled..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v1, Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-direct {v1}, Lcom/android/internal/telephony/ImsCallInfoImpl;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    .line 199
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.ims.action.IMS_PHONE_STARTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/internal/telephony/ISysMonitor;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 780
    sget-boolean v0, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 781
    const-string v0, "LGIMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListener listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    sput-object p1, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    .line 784
    return-void
.end method

.method public setSysInfo(IIILjava/lang/String;)V
    .locals 5
    .parameter "item"
    .parameter "param1"
    .parameter "param2"
    .parameter "paramEx"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 606
    packed-switch p1, :pswitch_data_0

    .line 772
    :pswitch_0
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 773
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 609
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/IMSPhone;->setBalItem(II)V

    goto :goto_0

    .line 615
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    .line 619
    sget-boolean v2, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v2, :cond_1

    .line 620
    const-string v2, "LGIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REG STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_1
    if-lez p2, :cond_2

    .line 625
    .local v0, regState:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setIMSRegistate(Z)V

    goto :goto_0

    .end local v0           #regState:Z
    :cond_2
    move v0, v1

    .line 623
    goto :goto_1

    .line 631
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 635
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_3

    .line 636
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REG STATE FOR MODEM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->sendIMSRegistate(I)V

    goto :goto_0

    .line 645
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->closeImsPdn(I)V

    goto :goto_0

    .line 655
    :pswitch_5
    iput-object p4, p0, Lcom/android/internal/telephony/IMSPhone;->mConnectedNumber:Ljava/lang/String;

    .line 656
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/ImsCallInfoImpl;->setConnectedNumber(Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ImsCallInfoImpl;->setConnectedNumberPresentation(I)V

    .line 659
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/ImsCallInfoImpl;->setIsConferenceCall(I)V

    goto :goto_0

    .line 664
    :pswitch_6
    iput-object p4, p0, Lcom/android/internal/telephony/IMSPhone;->mCNAPInfo:Ljava/lang/String;

    .line 665
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    if-eqz v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/ImsCallInfoImpl;->setConnectedName(Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ImsCallInfoImpl;->setPartyType(I)V

    goto/16 :goto_0

    .line 676
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    if-eqz v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mImsCallInfo:Lcom/android/internal/telephony/ImsCallInfoImpl;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ImsCallInfoImpl;->setIMSCallState(I)V

    goto/16 :goto_0

    .line 685
    :pswitch_9
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 690
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    .line 691
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS REG is DONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/android/internal/telephony/Phone;->setImsStatusForDan(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 700
    :pswitch_a
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 704
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_5

    .line 705
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency Call State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency Call mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p2, p3, v2}, Lcom/android/internal/telephony/Phone;->setE911State(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 714
    :pswitch_b
    iget-object v2, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    .line 718
    sget-boolean v2, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v2, :cond_6

    .line 719
    const-string v2, "LGIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYS_INFO_SET_E911_TELEPHONY param2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v2, "LGIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYS_INFO_SET_E911_TELEPHONY paramEx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_6
    if-ne p2, v0, :cond_8

    .line 724
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_7

    .line 725
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SYS_INFO_SET_E911_TELEPHONY - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p4}, Lcom/android/internal/telephony/Phone;->dialForVolte(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 729
    :cond_8
    const/4 v2, 0x2

    if-ne p2, v2, :cond_b

    .line 731
    sget-boolean v2, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v2, :cond_9

    .line 732
    const-string v2, "LGIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYS_INFO_SET_E911_TELEPHONY - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_9
    if-ne p3, v0, :cond_a

    .line 736
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->hangUpForVolte(Z)Z

    goto/16 :goto_0

    .line 739
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->hangUpForVolte(Z)Z

    goto/16 :goto_0

    .line 745
    :cond_b
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 746
    const-string v1, "LGIMS"

    const-string v2, "SYS_INFO_SET_E911_TELEPHONY - NOT EXPECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 755
    :pswitch_c
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 759
    if-eqz p4, :cond_0

    .line 763
    sget-boolean v1, Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z

    if-eqz v1, :cond_c

    .line 764
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS Status for UICC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v1, "LGIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS Status code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p4, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_7
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method
