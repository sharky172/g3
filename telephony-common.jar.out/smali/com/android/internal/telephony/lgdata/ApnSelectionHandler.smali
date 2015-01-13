.class public Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;
.super Landroid/os/Handler;
.source "ApnSelectionHandler.java"


# static fields
.field public static final KDDI_LTE_NET_APN:Ljava/lang/String; = "uno.au-net.ne.jp"

.field public static final KDDI_LTE_NET_FOR_DATA_APN:Ljava/lang/String; = "au.au-net.ne.jp"

.field public static final KDDI_MCCMNC:Ljava/lang/String; = "44050"

.field public static final KDDI_MCCMNC54:Ljava/lang/String; = "44054"

.field public static final KDDI_ROAM_LTE_NET_APN:Ljava/lang/String; = "uno.au-net.ne.jp"

.field public static final KDDI_ROAM_LTE_NET_FOR_DATA_APN:Ljava/lang/String; = "au.au-net.ne.jp"

.field public static final KT_Domestic_APN:Ljava/lang/String; = "lte150.ktfwing.com"

.field public static final KT_MCCMNC:Ljava/lang/String; = "45008"

.field public static final KT_Roaming_APN:Ljava/lang/String; = "lte150.ktfwing.com"

.field public static final LGT_Domestic_APN:Ljava/lang/String; = "internet.lguplus.co.kr"

.field public static final LGT_MCCMNC:Ljava/lang/String; = "45006"

.field public static final LGT_Roaming_APN:Ljava/lang/String; = "wroaming.lguplus.co.kr"

.field public static final LGT_Roaming_LTE_APN:Ljava/lang/String; = "lte-roaming.lguplus.co.kr"

.field private static final LOG_TAG:Ljava/lang/String; = "[LGE_DATA][ApnSelectionHandler] "

.field public static final REASON_ADDED_APN_FAILED:Ljava/lang/String; = "Added_APN_failed"

.field public static final REASON_SELECT_DEFAULT_APN:Ljava/lang/String; = "Select_default_APN_between_domestic_and_roaming"

.field public static final SKT_Domestic_APN:Ljava/lang/String; = "lte.sktelecom.com"

.field public static final SKT_IMS_APN:Ljava/lang/String; = "ims"

.field public static final SKT_MCCMNC:Ljava/lang/String; = "45005"

.field public static final SKT_MVNO_MCCMNC:Ljava/lang/String; = "45011"

.field public static final SKT_Roaming_3G_APN:Ljava/lang/String; = "roaming.sktelecom.com"

.field public static final SKT_Roaming_LTE_APN:Ljava/lang/String; = "lte-roaming.sktelecom.com"


# instance fields
.field public APN_FAIL_Flag:Z

.field public Domestic_APN_ID:I

.field public IMS_APN_ID:I

.field public KDDI_LTE_NET_APN_ID:I

.field public KDDI_LTE_NET_FOR_DATA_APN_ID:I

.field public KDDI_ROAM_LTE_NET_APN_ID:I

.field public KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

.field public Last_default_APN_ID:I

.field public Roaming_3G_APN_ID:I

.field public Roaming_LTE_APN_ID:I

.field public Roaming_check_APN_ID:I

.field featureset:Ljava/lang/String;

.field private mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "dct"
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->APN_FAIL_Flag:Z

    .line 87
    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 89
    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->IMS_APN_ID:I

    .line 91
    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    .line 92
    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    .line 93
    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    .line 109
    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    .line 110
    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    .line 111
    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    .line 112
    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    .line 115
    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    .line 137
    const-string v0, "[LGE_DATA][ApnSelectionHandler] "

    const-string v1, "ApnSelectionHandler() has created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 141
    const-string v0, "ro.afwdata.LGfeatureset"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->featureset:Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method public findAllOperatorApnID(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 4
    .parameter "apn"

    .prologue
    .line 151
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    const-string v2, "<findAllOperatorApnID()> Entry !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, usim_mcc_mnc:Ljava/lang/String;
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<findAllOperatorApnID()> usim_mcc_mnc == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<findAllOperatorApnID()> apn.apn == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v1, "45006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "internet.lguplus.co.kr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    if-nez v1, :cond_1

    .line 163
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 164
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "wroaming.lguplus.co.kr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    if-nez v1, :cond_2

    .line 167
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    .line 168
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "lte-roaming.lguplus.co.kr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    if-nez v1, :cond_0

    .line 173
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    .line 174
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_0

    .line 178
    :cond_3
    const-string v1, "45008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 180
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "lte150.ktfwing.com"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    if-nez v1, :cond_4

    .line 181
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 182
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_0

    .line 183
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "lte150.ktfwing.com"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    if-nez v1, :cond_0

    .line 184
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    .line 185
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_0

    .line 189
    :cond_5
    const-string v1, "44050"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "44054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 190
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "uno.au-net.ne.jp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    if-nez v1, :cond_8

    .line 191
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    .line 192
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    .line 203
    :cond_7
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 204
    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    goto/16 :goto_0

    .line 193
    :cond_8
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "au.au-net.ne.jp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    if-nez v1, :cond_9

    .line 194
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    .line 195
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_1

    .line 196
    :cond_9
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "uno.au-net.ne.jp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    if-nez v1, :cond_a

    .line 197
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    .line 198
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_1

    .line 199
    :cond_a
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "au.au-net.ne.jp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    if-nez v1, :cond_7

    .line 200
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    .line 201
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_1

    .line 208
    :cond_b
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "lte.sktelecom.com"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    if-nez v1, :cond_c

    .line 210
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 211
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_0

    .line 214
    :cond_c
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "ims"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->IMS_APN_ID:I

    if-nez v1, :cond_d

    .line 215
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->IMS_APN_ID:I

    .line 216
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_0

    .line 219
    :cond_d
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "roaming.sktelecom.com"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    if-nez v1, :cond_e

    .line 221
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    .line 222
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_0

    .line 223
    :cond_e
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    const-string v2, "lte-roaming.sktelecom.com"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    if-nez v1, :cond_0

    .line 225
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    .line 226
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_0
.end method

.method public selectApn(Ljava/lang/String;)V
    .locals 9
    .parameter "reason"

    .prologue
    .line 232
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    const-string v7, "<selectApn()> Entry !"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, usim_mcc_mnc:Ljava/lang/String;
    const/4 v3, 0x0

    .line 235
    .local v3, changeAPN:Z
    const-string v6, "persist.radio.isroaming"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, IsRoaming_property:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v0

    .line 239
    .local v0, IsRoaming:Z
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredNetworkMode()I

    move-result v2

    .line 241
    .local v2, NWmode:I
    if-nez v5, :cond_0

    .line 242
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    const-string v7, "<selectApn()> usim_mcc_mnc is NULL. Just set \'Domestic APN\' to \'Preferred APN\', just in case!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    .line 536
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> usim_mcc_mnc : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> IsRoaming : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Domestic_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Roaming_3G_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Roaming_LTE_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Last_default_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v4

    .line 265
    .local v4, mDP:Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-eqz v4, :cond_2

    .line 266
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> getPreferredApn().id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-object v4, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 269
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDct.mPreferredDp == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v4

    .line 272
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDP == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_1
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDct.mPhone.getServiceState().getDataRegState() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDct.mPhone.getServiceState().getRadioTechnology() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v4, :cond_5

    .line 300
    :cond_1
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mAllDataProfilesList is NULL. || mAllDataProfilesList is Empty. || getPreferredApn() is NULL, getRadioTechnology["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 274
    :cond_2
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    const-string v7, "<selectApn()> getPreferredApn() is NULL. Just set \'Domestic APN\' to \'Preferred APN\' in case of initializing APN DB."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v6, "45005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "45011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "45006"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "45008"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "44050"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "44054"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 283
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    .line 285
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 287
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v4

    goto/16 :goto_1

    .line 289
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApnToDefault()V

    goto/16 :goto_1

    .line 323
    :cond_5
    const-string v6, "45005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "45011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "45006"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "45008"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "44050"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "44054"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 329
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v4

    .line 332
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    sget-boolean v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KDDI:Z

    if-eqz v6, :cond_8

    .line 333
    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    if-eq v6, v7, :cond_7

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    if-ne v6, v7, :cond_f

    .line 334
    :cond_7
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 335
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    .line 343
    :goto_2
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDP.id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> KDDI_LTE_NET_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> KDDI_ROAM_LTE_NET_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> KDDI_LTE_NET_FOR_DATA_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Default APN ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Roaming APN ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_8
    const-string v6, "Select_default_APN_between_domestic_and_roaming"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 360
    if-eqz v4, :cond_b

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    if-gt v6, v7, :cond_b

    .line 365
    if-eqz v0, :cond_16

    .line 367
    const-string v6, "45005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "45011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 369
    :cond_9
    packed-switch v2, :pswitch_data_0

    .line 382
    :pswitch_0
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    .line 385
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->featureset:Ljava/lang/String;

    const-string v7, "LGTBASE"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 388
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    .line 389
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> For SKT USIM and U+ handset, setting Roaming_3G_APN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    if-eq v6, v7, :cond_b

    .line 433
    const/4 v3, 0x1

    .line 457
    :cond_b
    :goto_5
    if-eqz v3, :cond_e

    .line 458
    if-eqz v0, :cond_1c

    .line 460
    const-string v6, "45005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "45011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 461
    :cond_c
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> net.Is_LTERoaming_allowed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "net.Is_LTERoaming_allowed"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> NWmode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    sparse-switch v2, :sswitch_data_0

    .line 474
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    .line 478
    :goto_6
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->featureset:Ljava/lang/String;

    const-string v7, "LGTBASE"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 481
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    .line 482
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> For SKT USIM and U+ handset, setting Roaming_3G_APN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_d
    :goto_7
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 529
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInitialProfiles()[Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendModemProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;)V

    .line 530
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v7, "apnChanged"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->disconnectApnOnApnSelected(Ljava/lang/String;)V

    .line 534
    :cond_e
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> changeAPN : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mPreferredApn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    :cond_f
    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    if-eq v6, v7, :cond_10

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    if-ne v6, v7, :cond_11

    .line 337
    :cond_10
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 338
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    goto/16 :goto_2

    .line 340
    :cond_11
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    const-string v7, "<selectApn()> user setting APN"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 372
    :pswitch_1
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_3

    .line 378
    :pswitch_2
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_3

    .line 394
    :cond_12
    const-string v6, "45006"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 395
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getLgDataFeature()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    if-eqz v6, :cond_14

    .line 397
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getLTEDataRoamingEnable()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 398
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    .line 399
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> IsRoaming: LTE Roaming enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 401
    :cond_13
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    .line 402
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> IsRoaming: W/G Roaming enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 407
    :cond_14
    packed-switch v2, :pswitch_data_1

    .line 420
    :pswitch_3
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_4

    .line 410
    :pswitch_4
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_4

    .line 416
    :pswitch_5
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_4

    .line 429
    :cond_15
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_4

    .line 436
    :cond_16
    if-eqz v4, :cond_b

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    if-eq v6, v7, :cond_b

    .line 437
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 446
    :cond_17
    const-string v6, "Added_APN_failed"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 447
    if-eqz v4, :cond_b

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    if-le v6, v7, :cond_b

    .line 452
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 466
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_6

    .line 470
    :sswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_6

    .line 488
    :cond_18
    const-string v6, "45006"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 489
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getLgDataFeature()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    if-eqz v6, :cond_1a

    .line 491
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getLTEDataRoamingEnable()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 492
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    .line 493
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> changeAPN, LTE Roaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 495
    :cond_19
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    .line 496
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> changeAPN, W/G Roaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 502
    :cond_1a
    sparse-switch v2, :sswitch_data_1

    .line 512
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    .line 504
    :sswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    .line 508
    :sswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    .line 520
    :cond_1b
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    .line 523
    :cond_1c
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 464
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 407
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 502
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public selectApnForLteRoamingOfUplus(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 540
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<selectApnForLTERoamingOfUplus()> enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    if-eqz p1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    .line 548
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 549
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<selectApnForLTERoamingOfUplus()> mPreferredApn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInitialProfiles()[Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendModemProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;)V

    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v2, "apnChanged"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->disconnectApnOnApnSelected(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 558
    .local v0, defaultContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_2

    .line 559
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLTEDataOnRoamingChange(), state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "permFailCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 561
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    const-string v2, "handleLTEDataOnRoamingChange(), trysetupdata"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 567
    :cond_0
    :goto_1
    return-void

    .line 545
    .end local v0           #defaultContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_0

    .line 565
    .restart local v0       #defaultContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    const-string v2, "APN_TYPE_DEFAULT is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
