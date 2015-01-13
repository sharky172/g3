.class public final Lcom/android/internal/telephony/lgdata/DataProfileInfo;
.super Ljava/lang/Object;
.source "DataProfileInfo.java"


# static fields
.field public static final PROFILE_KDDI_ADMIN:I = 0x2

.field public static final PROFILE_KDDI_DEFAULT:I = 0x1

.field public static final PROFILE_KDDI_DUN:I = 0x4

.field public static final PROFILE_KDDI_IMS:I = 0x3

.field public static final PROFILE_KR_DEFAULT:I = 0x2

.field public static final PROFILE_KR_IMS:I = 0x1

.field public static final PROFILE_KR_INITIAL_ATTACH:I = 0x1

.field public static final VZW_DATA_PROFILE_ADMIN:I = 0x2

.field public static final VZW_DATA_PROFILE_DEFAULT:I = 0x3

.field public static final VZW_DATA_PROFILE_EMERGENCY:I = 0x6

.field public static final VZW_DATA_PROFILE_IMS:I = 0x1

.field public static final VZW_DATA_PROFILE_VZW800:I = 0x5

.field public static final VZW_DATA_PROFILE_VZWAPP:I = 0x4


# instance fields
.field public DATA_PROFILE_AUTH_PREF_PAP_CHAP_NOT_ALLOWED:I

.field private PDP_TYPE_IPV4:I

.field private PDP_TYPE_IPV4V6:I

.field private PDP_TYPE_IPV6:I

.field private PROFILE_ATT_DEFAULT:I

.field private PROFILE_ATT_EMERGENCY:I

.field private PROFILE_ATT_IMS:I

.field private PROFILE_CMCC_DEFAULT:I

.field private PROFILE_CMCC_IMS:I

.field private PROFILE_DEFAULT:I

.field private PROFILE_DUN:I

.field private PROFILE_EMERGENCY:I

.field private PROFILE_FOTA:I

.field private PROFILE_IMS:I

.field private PROFILE_INITIAL_ATTACH:I

.field private PROFILE_OPEN_DEFAULT:I

.field private PROFILE_OPEN_IMS:I

.field private PROFILE_SPCS_DEFAULT:I

.field private PROFILE_SPCS_DUN:I

.field private PROFILE_SPCS_FOTA:I

.field private PROFILE_TMUS_DEFAULT:I

.field private PROFILE_TMUS_IMS:I

.field private PROFILE_USC_DEFAULT:I

.field private PROFILE_USC_IMS:I

.field private PROFILE_USC_USCAPP:I

.field private PROFILE_VZW800:I

.field private PROFILE_VZWAPP:I

.field private PROFILE_VZW_ADMIN:I

.field private PROFILE_VZW_DEFAULT:I

.field public SKT_LTE_Roaming_APN:Ljava/lang/String;

.field public apn:Ljava/lang/String;

.field public authType:I

.field public bearer:I

.field public ehrpdProfileId:I

.field public emergencyPDN:Z

.field public inactivityTimer:I

.field public isEnabled:Z

.field public maxconn:I

.field public maxconn_t:I

.field public password:Ljava/lang/String;

.field public pcscfNeeded:Z

.field public pdpType:I

.field public profileId:I

.field private roaming:Z

.field public triggerEsmInfoRequest:Z

.field public user:Ljava/lang/String;

.field public wait_time:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZIZIZZ)V
    .locals 1
    .parameter "profileId"
    .parameter "apn"
    .parameter "pdpType"
    .parameter "authType"
    .parameter "user"
    .parameter "password"
    .parameter "pcscfNeeded"
    .parameter "esmInfo"
    .parameter "bearer"
    .parameter "emergencyPDN"
    .parameter "inactivityTimer"
    .parameter "enabled"
    .parameter "roaming"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->DATA_PROFILE_AUTH_PREF_PAP_CHAP_NOT_ALLOWED:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    .line 42
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DUN:I

    .line 43
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_ADMIN:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_DEFAULT:I

    .line 54
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZWAPP:I

    .line 55
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW800:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_USCAPP:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_DEFAULT:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_DEFAULT:I

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_IMS:I

    .line 100
    const-string v0, "lte-roaming.sktelecom.com"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    .line 107
    iput p1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    .line 108
    iput-object p2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    .line 110
    iput-boolean p13, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    .line 112
    const-string v0, "IPV4V6"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    .line 121
    :goto_0
    iput p4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    .line 122
    iput-object p5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->user:Ljava/lang/String;

    .line 123
    iput-object p6, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->password:Ljava/lang/String;

    .line 124
    iput-boolean p7, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    .line 125
    iput-boolean p8, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    .line 126
    iput p9, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->bearer:I

    .line 127
    iput-boolean p10, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    .line 128
    iput p11, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getEhrpdProfileID()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    .line 130
    iput-boolean p12, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->isEnabled:Z

    .line 132
    const/16 v0, 0x3ff

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn:I

    .line 133
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn_t:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->wait_time:I

    .line 136
    return-void

    .line 115
    :cond_0
    const-string v0, "IPV6"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto :goto_0

    .line 119
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZIZIZZIII)V
    .locals 2
    .parameter "profileId"
    .parameter "apn"
    .parameter "pdpType"
    .parameter "authType"
    .parameter "user"
    .parameter "password"
    .parameter "pcscfNeeded"
    .parameter "esmInfo"
    .parameter "bearer"
    .parameter "emergencyPDN"
    .parameter "inactivityTimer"
    .parameter "enabled"
    .parameter "roaming"
    .parameter "maxconn"
    .parameter "maxconn_t"
    .parameter "wait_time"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->DATA_PROFILE_AUTH_PREF_PAP_CHAP_NOT_ALLOWED:I

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    .line 35
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    .line 36
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    .line 38
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    .line 39
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    .line 40
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    .line 41
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    .line 42
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DUN:I

    .line 43
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    .line 52
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_ADMIN:I

    .line 53
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_DEFAULT:I

    .line 54
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZWAPP:I

    .line 55
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW800:I

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    .line 59
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    .line 60
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    .line 62
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    .line 63
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    .line 70
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    .line 71
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    .line 72
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    .line 76
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    .line 77
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    .line 78
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_USCAPP:I

    .line 82
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_DEFAULT:I

    .line 83
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    .line 86
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_DEFAULT:I

    .line 87
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_IMS:I

    .line 100
    const-string v1, "lte-roaming.sktelecom.com"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    .line 144
    iput p1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    .line 145
    iput-object p2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    .line 147
    iput-boolean p13, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    .line 149
    const-string v1, "IPV4V6"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    .line 158
    :goto_0
    iput p4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    .line 159
    iput-object p5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->user:Ljava/lang/String;

    .line 160
    iput-object p6, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->password:Ljava/lang/String;

    .line 161
    iput-boolean p7, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    .line 162
    iput-boolean p8, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    .line 163
    iput p9, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->bearer:I

    .line 164
    iput-boolean p10, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    .line 165
    iput p11, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getEhrpdProfileID()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    .line 167
    iput-boolean p12, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->isEnabled:Z

    .line 168
    const/4 v1, -0x1

    move/from16 v0, p14

    if-ne v0, v1, :cond_2

    const/16 v1, 0x3ff

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn:I

    .line 170
    :goto_1
    const/4 v1, -0x1

    move/from16 v0, p15

    if-ne v0, v1, :cond_3

    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn_t:I

    .line 172
    :goto_2
    const/4 v1, -0x1

    move/from16 v0, p16

    if-ne v0, v1, :cond_4

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->wait_time:I

    .line 174
    :goto_3
    return-void

    .line 152
    :cond_0
    const-string v1, "IPV6"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto :goto_0

    .line 156
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto :goto_0

    .line 169
    :cond_2
    move/from16 v0, p14

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn:I

    goto :goto_1

    .line 171
    :cond_3
    move/from16 v0, p15

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn_t:I

    goto :goto_2

    .line 173
    :cond_4
    move/from16 v0, p16

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->wait_time:I

    goto :goto_3
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataProfile;Z)V
    .locals 8
    .parameter "dp"
    .parameter "roaming"

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->DATA_PROFILE_AUTH_PREF_PAP_CHAP_NOT_ALLOWED:I

    .line 34
    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    .line 35
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    .line 36
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    .line 38
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    .line 39
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    .line 40
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    .line 41
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    .line 42
    iput v7, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DUN:I

    .line 43
    const/4 v5, 0x6

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    .line 52
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_ADMIN:I

    .line 53
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_DEFAULT:I

    .line 54
    iput v7, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZWAPP:I

    .line 55
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW800:I

    .line 58
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    .line 59
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    .line 60
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    .line 62
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    .line 63
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    .line 70
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    .line 71
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    .line 72
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    .line 76
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    .line 77
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    .line 78
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_USCAPP:I

    .line 82
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_DEFAULT:I

    .line 83
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    .line 86
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_DEFAULT:I

    .line 87
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_IMS:I

    .line 100
    const-string v5, "lte-roaming.sktelecom.com"

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    .line 181
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getModemProfileID([Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    .line 182
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    .line 184
    iput-boolean p2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    .line 187
    if-eqz p2, :cond_5

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    .line 189
    .local v0, protocol:Ljava/lang/String;
    :goto_0
    const-string v5, "IPV4V6"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 190
    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    .line 199
    :goto_1
    iget v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 200
    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->DATA_PROFILE_AUTH_PREF_PAP_CHAP_NOT_ALLOWED:I

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    .line 204
    :goto_2
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->user:Ljava/lang/String;

    .line 205
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->password:Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->needPcscfAddrRequest()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    .line 208
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Z

    if-eqz v5, :cond_1

    .line 209
    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    if-nez v5, :cond_1

    .line 210
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    const-string v6, "ims"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    const-string v6, "IMS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->needTriggerEsmInfoRequest()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    .line 217
    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v5, v6, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    .line 219
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 221
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    if-ne v1, v5, :cond_3

    .line 222
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    .line 226
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v1, v2, :cond_9

    .line 228
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->bearer:I

    .line 234
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getInactivityTimer()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    .line 236
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

    if-eqz v1, :cond_4

    .line 237
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->inactivityTimer:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    .line 240
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getEhrpdProfileID()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    .line 241
    iget-boolean v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->isEnabled:Z

    .line 244
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn:I

    .line 245
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn_t:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn_t:I

    .line 246
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->wait_time:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->wait_time:I

    .line 249
    return-void

    .line 187
    .end local v0           #protocol:Ljava/lang/String;
    :cond_5
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    goto/16 :goto_0

    .line 192
    .restart local v0       #protocol:Ljava/lang/String;
    :cond_6
    const-string v5, "IPV6"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 193
    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto/16 :goto_1

    .line 196
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto/16 :goto_1

    .line 202
    :cond_8
    iget v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    goto/16 :goto_2

    .line 232
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->needEhrpdProfileUpdate()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v3

    :goto_4
    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->bearer:I

    goto :goto_3

    :cond_a
    move v1, v4

    goto :goto_4
.end method


# virtual methods
.method public getEhrpdProfileID()I
    .locals 7

    .prologue
    const/16 v3, 0x65

    const/4 v6, 0x1

    const/16 v1, 0x68

    const/16 v2, 0x67

    const/16 v0, 0x66

    .line 539
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 540
    iget v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    if-ne v4, v5, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v0

    .line 542
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_ADMIN:I

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 543
    goto :goto_0

    .line 544
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_DEFAULT:I

    if-ne v0, v1, :cond_3

    move v0, v2

    .line 545
    goto :goto_0

    .line 546
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZWAPP:I

    if-ne v0, v1, :cond_4

    move v0, v3

    .line 547
    goto :goto_0

    .line 548
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW800:I

    if-ne v0, v1, :cond_a

    .line 549
    const/16 v0, 0x69

    goto :goto_0

    .line 552
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_7

    .line 553
    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    if-eq v3, v4, :cond_0

    .line 556
    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    if-eq v3, v4, :cond_0

    .line 559
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    if-ne v0, v3, :cond_6

    move v0, v2

    .line 560
    goto :goto_0

    .line 562
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    if-ne v0, v2, :cond_a

    move v0, v1

    .line 563
    goto :goto_0

    .line 567
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_a

    .line 568
    iget v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-eq v4, v6, :cond_0

    .line 570
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    move v0, v1

    .line 571
    goto :goto_0

    .line 572
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    move v0, v2

    .line 573
    goto :goto_0

    .line 574
    :cond_9
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    move v0, v3

    .line 575
    goto :goto_0

    .line 577
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    add-int/lit8 v0, v0, 0x64

    goto :goto_0
.end method

.method public getInactivityTimer()I
    .locals 3

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 322
    .local v0, inactivityTimer:I
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 346
    :goto_0
    :pswitch_0
    return v0

    .line 324
    :pswitch_1
    const/16 v0, 0x59f

    .line 325
    goto :goto_0

    .line 327
    :pswitch_2
    const/16 v0, 0xd98

    .line 328
    goto :goto_0

    .line 331
    :pswitch_3
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    if-ne v1, v2, :cond_0

    .line 332
    const/16 v0, 0xf

    goto :goto_0

    .line 334
    :cond_0
    const/16 v0, 0x3c

    .line 336
    goto :goto_0

    .line 338
    :pswitch_4
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 339
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :cond_1
    const/16 v0, 0x3c

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getModemProfileID([Ljava/lang/String;)I
    .locals 6
    .parameter "types"

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 351
    if-eqz p1, :cond_0

    array-length v3, p1

    if-eqz v3, :cond_0

    const-string v3, "*"

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    if-nez v3, :cond_3

    .line 354
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 355
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_DEFAULT:I

    .line 530
    :cond_1
    :goto_0
    return v0

    .line 358
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto :goto_0

    .line 362
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v3

    if-ne v3, v2, :cond_9

    .line 364
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 365
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_DEFAULT:I

    goto :goto_0

    .line 367
    :cond_4
    const-string v1, "ims"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 368
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    goto :goto_0

    .line 371
    :cond_5
    const-string v1, "admin"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 372
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_ADMIN:I

    goto :goto_0

    .line 374
    :cond_6
    const-string v1, "vzwapp"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 375
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZWAPP:I

    goto :goto_0

    .line 377
    :cond_7
    const-string v1, "vzw800"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 378
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW800:I

    goto :goto_0

    .line 380
    :cond_8
    const-string v1, "emergency"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    goto :goto_0

    .line 389
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_d

    .line 390
    const-string v1, "ia"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 391
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto :goto_0

    .line 393
    :cond_a
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 394
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    goto :goto_0

    .line 396
    :cond_b
    const-string v1, "fota"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 397
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    goto :goto_0

    .line 399
    :cond_c
    const-string v1, "dun"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    goto/16 :goto_0

    .line 407
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_10

    .line 408
    const-string v1, "ia"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 409
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 411
    :cond_e
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 412
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    goto/16 :goto_0

    .line 414
    :cond_f
    const-string v1, "ims"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    goto/16 :goto_0

    .line 421
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v3

    if-ne v3, v5, :cond_15

    .line 422
    const-string v3, "default"

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "*"

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    move v0, v2

    .line 424
    goto/16 :goto_0

    .line 425
    :cond_12
    const-string v2, "admin"

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 426
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 427
    :cond_13
    const-string v2, "ims"

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 428
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 429
    :cond_14
    const-string v2, "dun"

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 430
    goto/16 :goto_0

    .line 435
    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    if-ne v2, v1, :cond_19

    .line 436
    const-string v1, "ia"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 437
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 439
    :cond_16
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 440
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    goto/16 :goto_0

    .line 442
    :cond_17
    const-string v1, "ims"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 443
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    goto/16 :goto_0

    .line 445
    :cond_18
    const-string v1, "emergency"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    goto/16 :goto_0

    .line 453
    :cond_19
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_1c

    .line 454
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 455
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    goto/16 :goto_0

    .line 457
    :cond_1a
    const-string v1, "ims"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 458
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    goto/16 :goto_0

    .line 460
    :cond_1b
    const-string v1, "usccapp"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_USCAPP:I

    goto/16 :goto_0

    .line 468
    :cond_1c
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1f

    .line 469
    const-string v1, "ia"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 470
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 472
    :cond_1d
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 473
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_DEFAULT:I

    goto/16 :goto_0

    .line 475
    :cond_1e
    const-string v1, "ims"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    goto/16 :goto_0

    .line 482
    :cond_1f
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_21

    .line 483
    const-string v1, "ia"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "*"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 492
    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_25

    .line 493
    const-string v1, "ia"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 494
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 496
    :cond_22
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "*"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 498
    :cond_23
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_DEFAULT:I

    goto/16 :goto_0

    .line 500
    :cond_24
    const-string v1, "ims"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_IMS:I

    goto/16 :goto_0

    .line 508
    :cond_25
    const-string v0, "ia"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 509
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 511
    :cond_26
    const-string v0, "ims"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 512
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    goto/16 :goto_0

    .line 514
    :cond_27
    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 515
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    if-ne v0, v5, :cond_29

    .line 517
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 520
    :cond_29
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    goto/16 :goto_0

    .line 523
    :cond_2a
    const-string v0, "fota"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 524
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    goto/16 :goto_0

    .line 526
    :cond_2b
    const-string v0, "emergency"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 527
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    goto/16 :goto_0

    .line 530
    :cond_2c
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0
.end method

.method public needEhrpdProfileUpdate()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 308
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needPcscfAddrRequest()Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 254
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 259
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 262
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 264
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    if-ne v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 267
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 268
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 269
    goto :goto_0

    .line 274
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_8

    .line 276
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v2, v3, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 279
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_a

    .line 280
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_IMS:I

    if-eq v2, v3, :cond_9

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v2, v3, :cond_0

    :cond_9
    move v0, v1

    goto :goto_0

    .line 283
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-eq v2, v3, :cond_b

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    if-eq v2, v3, :cond_b

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    if-ne v2, v3, :cond_0

    :cond_b
    move v0, v1

    .line 286
    goto/16 :goto_0
.end method

.method public needTriggerEsmInfoRequest()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    if-nez v1, :cond_0

    .line 303
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[DataProfileInfo] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->bearer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->isEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn_t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->wait_time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
