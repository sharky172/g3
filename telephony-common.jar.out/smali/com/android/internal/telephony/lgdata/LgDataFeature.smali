.class public Lcom/android/internal/telephony/lgdata/LgDataFeature;
.super Ljava/lang/Object;
.source "LgDataFeature.java"


# static fields
.field public static final ATANDT:I = 0x4

.field public static final BELL:I = 0xc

.field public static final CLR:I = 0x13

.field public static final CMCC:I = 0x1b

.field public static final CTC:I = 0x1a

.field public static final DCM:I = 0x3

.field public static final DTAG:I = 0x18

.field public static final KDDI:I = 0x8

.field public static final KT:I = 0x5

.field public static LGP_DATA_APN_DUMMY_APN_FOR_SKT_TEST_CT:Z = false

.field public static LGP_DATA_APN_IGNORE_HIPRI_APN_FOR_CDMA_MMS_CT:Z = false

.field public static LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Z = false

.field public static LGP_DATA_APN_MAKE_CLONE_APN_FOR_MSIM_CT:Z = false

.field public static LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO:Z = false

.field public static LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO_NUM:I = 0x0

.field public static LGP_DATA_APN_SELECT_CTC:Z = false

.field public static LGP_DATA_APN_SELECT_KDDI:Z = false

.field public static LGP_DATA_CPA_KDDI:Z = false

.field public static LGP_DATA_CTC_ROAMING:Z = false

.field public static LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Z = false

.field public static LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Z = false

.field public static LGP_DATA_DATACONNECTION_NOTIFY_ROAMING_ON_INFO:Z = false

.field public static LGP_DATA_DATACONNECTION_RETRY_CONFIG_KDDI:Z = false

.field public static LGP_DATA_DATACONNECTION_SUPPURT_ALL_ACCESS_FEATURE_ATT:Z = false

.field public static LGP_DATA_DATACONNECTOIN_MMS_BLOCK_ON_ROAMING_CT:Z = false

.field public static LGP_DATA_DATACONNECTOIN_SWITCH_APN_FOR_CDMA_MMS_CT:Z = false

.field public static LGP_DATA_IMS_PCSCF_RESTORATION_KDDI:Z = false

.field public static LGP_DATA_PPPOE_UPDATE_ROUTE_CTC:Z = false

.field public static LGP_DATA_ROAMING_SET_ROAMING_STATUS:Z = false

.field public static LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Z = false

.field public static LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_KDDI:Z = false

.field public static final LGUPLUS:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "LgDataFeature"

.field public static final LPP_FEATURE_TYPE_BOOLEAN:I = 0x0

.field public static final LPP_FEATURE_TYPE_BYTE:I = 0x6

.field public static final LPP_FEATURE_TYPE_CHAR:I = 0x7

.field public static final LPP_FEATURE_TYPE_DOUBLE:I = 0x5

.field public static final LPP_FEATURE_TYPE_FLOAT:I = 0x4

.field public static final LPP_FEATURE_TYPE_INTEGER:I = 0x1

.field public static final LPP_FEATURE_TYPE_LONG:I = 0x3

.field public static final LPP_FEATURE_TYPE_OBJECT:I = -0x1

.field public static final LPP_FEATURE_TYPE_SHORT:I = 0x2

.field public static final LPP_FEATURE_TYPE_STRING:I = 0x8

.field public static final MON:I = 0x11

.field public static final MPCS:I = 0x7

.field public static final MPDN_NOTSUPPORT:I = 0x0

.field public static final OPEN:I = 0xf

.field public static final ORG:I = 0x15

.field public static final RGS:I = 0xd

.field public static final SHB:I = 0x10

.field public static final SKT:I = 0x6

.field public static final SPCS:I = 0x9

.field private static final TAG_FEATURE:Ljava/lang/String; = "feature"

.field private static final TAG_FEATURE_ATTRIBUTE_LPP_NAME:Ljava/lang/String; = "name"

.field private static final TAG_FEATURE_ATTRIBUTE_LPP_TYPE:Ljava/lang/String; = "type"

.field private static final TAG_FEATURE_ATTRIBUTE_LPP_VALUE:Ljava/lang/String; = "value"

.field private static final TAG_ROOT:Ljava/lang/String; = "lpp"

.field private static final TAG_ROOT_ATTRIBUTE_MODEL:Ljava/lang/String; = "model"

.field private static final TAG_ROOT_ATTRIBUTE_OPERATOR:Ljava/lang/String; = "operator"

.field private static final TAG_ROOT_ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field public static final TCL:I = 0x14

.field public static final TLF:I = 0x19

.field public static final TLS:I = 0xe

.field public static final TMUS:I = 0xb

.field public static final TRF_PP:I = 0x17

.field public static final USC:I = 0x1c

.field public static final VDF:I = 0xa

.field public static final VIV:I = 0x12

.field public static final VZW:I = 0x1

.field public static final VZW_PP:I = 0x16

.field private static final XML_FILENAME:Ljava/lang/String; = "lpp_data"

.field private static sFeatureSet:I

.field public static sFeatureSetName:Ljava/lang/String;

.field private static sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;


# instance fields
.field public FEATURE_DATA_NO_MPDP_CHECK:Z

.field public LGE_DATA_IMS_ISIM_REFRESH_ATT:Z

.field public LGE_DATA_LGU_FIX_DNS_PARSING:Z

.field public LGP_DATA_APN_ADAPT_AVS_VZW:Z

.field public LGP_DATA_APN_ADD_APN_SCENARIO_TLS:Z

.field public LGP_DATA_APN_ADD_CDMA_DUMMY_APN_SPRINT:Z

.field public LGP_DATA_APN_ADD_DUN_TYPE:Z

.field public LGP_DATA_APN_ADD_RCS_TYPE:Z

.field public LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

.field public LGP_DATA_APN_ALLOW_EMPTY_IA_TYPE:Z

.field public LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

.field public LGP_DATA_APN_APNPROVISION_ATT:Z

.field public LGP_DATA_APN_APNSYNC:Z

.field public LGP_DATA_APN_APNSYNC_KR:Z

.field public LGP_DATA_APN_AUTOPROFILE:Z

.field public LGP_DATA_APN_AUTOPROFILE_CA_KT:Z

.field public LGP_DATA_APN_AUTOPROFILE_KR:Z

.field public LGP_DATA_APN_AUTOPROFILE_MPDN_SKT:Z

.field public LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

.field public LGP_DATA_APN_BACKUP:Z

.field public LGP_DATA_APN_BACKUP_VZW:Z

.field public LGP_DATA_APN_BEARER_MANAGEMENT_FOR_EMERGENCY_VZW:Z

.field public LGP_DATA_APN_BIP_PROFILE_UPLUS:Z

.field public LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

.field public LGP_DATA_APN_BLOCK_UNUSED_APN_TYPE_INIT:Z

.field public LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Z

.field public LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_ATT:Z

.field public LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

.field public LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_OPEN:Z

.field public LGP_DATA_APN_DISABLE_PROTOCOL_UI:Z

.field public LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

.field public LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN_KDDI:Z

.field public LGP_DATA_APN_DO_NOT_HANDLE_HIPRI_WITH_DEFAULT:Z

.field public LGP_DATA_APN_EFS_PDN_LIST_ERASE:Z

.field public LGP_DATA_APN_FOTA_UPGRADE_ATT:Z

.field public LGP_DATA_APN_GET_APNLIST_FOR_SLATE_SPRINT:Z

.field public LGP_DATA_APN_GSM_GLOBAL_PREFERED_APN_SPRINT:Z

.field public LGP_DATA_APN_HANDLE_ALL_TYPE_KR:Z

.field public LGP_DATA_APN_HANDLE_IA_TYPE_SPRINT:Z

.field public LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Z

.field public LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

.field public LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

.field public LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Z

.field public LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_TMUS:Z

.field public LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

.field public LGP_DATA_APN_INIT_RETURN_KOR_MPDN_SKT:Z

.field public LGP_DATA_APN_INIT_RETURN_KOR__MPDN_KT:Z

.field public LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

.field public LGP_DATA_APN_KEEP_PREFERAPN:Z

.field public LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

.field public LGP_DATA_APN_LTE_PCO_VZW:Z

.field public LGP_DATA_APN_MATCH_PROTOCOL_TYPE_OF_IA_WITH_DEFAULT:Z

.field public LGP_DATA_APN_MAXCONN_EX_VZW:Z

.field public LGP_DATA_APN_NODE_HANDLER_FOR_FOTA_SDM_VZW:Z

.field public LGP_DATA_APN_NOTIFY_WHEN_IMS_APN_CHANGED_VZW:Z

.field public LGP_DATA_APN_NOT_SEND_APNSYNC_WHEN_SINGLE_RAT_VZW:Z

.field public LGP_DATA_APN_ONLY_CONNECT_IMS_WHEN_RADIO_OFF_KDDI:Z

.field public LGP_DATA_APN_PROFILE_SETTING_KT:Z

.field public LGP_DATA_APN_PROFILE_SETTING_MPDN_UPLUS:Z

.field public LGP_DATA_APN_PROFILE_SETTING_SINGLE_PDN:Z

.field public LGP_DATA_APN_PROFILE_SETTING_SKT:Z

.field public LGP_DATA_APN_PROFILE_SETTING__MPDN_KT:Z

.field public LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

.field public LGP_DATA_APN_ROAMING_AUTOPROFILE_KT:Z

.field public LGP_DATA_APN_ROAMING_AUTOPROFILE_SKT:Z

.field public LGP_DATA_APN_SELECT_KR:Z

.field public LGP_DATA_APN_SELECT_TETHERING_PDN_SPRINT:Z

.field public LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Z

.field public LGP_DATA_APN_SETTING_PLMN_CHG_MODEM:Z

.field public LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Z

.field public LGP_DATA_APN_SUPPORT_EMERGENCY_APN:Z

.field public LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

.field public LGP_DATA_APN_SYNC_MDPN_SPRINT:Z

.field public LGP_DATA_APN_SYNC_MPDN_SPRINT:Z

.field public LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

.field public LGP_DATA_APN_SYNC_ONLY_CHANGED:Z

.field public LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

.field public LGP_DATA_APN_SYNC_PARAMETER:Z

.field public LGP_DATA_APN_SYNC_REATTACH_DEFAULT_PDN:Z

.field public LGP_DATA_APN_TRYSETUP_ANY_BEARER_FOR_GLOBAL_VZW:Z

.field public LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV:Z

.field public LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV_DEBUG_MESSAGE:Z

.field public LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

.field public LGP_DATA_APN_USE_DUMMY_PROFILE_IN_SINGLE_PDN_VZW:Z

.field public LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

.field public LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

.field public LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

.field public LGP_DATA_ATCMD_NO_READ_ESN:Z

.field public LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Z

.field public LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Z

.field public LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Z

.field public LGP_DATA_CLEAR_CAUSE_FOR_TCL:Z

.field public LGP_DATA_COMPRESSION_BLOCK_CODE_COMMON:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_BUGFIX_CONNSRV_EXCEPTION:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_FEATURE_USER_MEMORY_OVERFLOW:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_FIX_NETWORK_PREF:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_HANDLE_PACKET_SAMPLING_TIMER:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

.field public LGP_DATA_CTS_IPV6_PINGTEST:Z

.field public LGP_DATA_DAEMON_NETD_BANDWIDTH:Z

.field public LGP_DATA_DAEMON_NETD_BUGFIX_ILLEGALSTATE_EXCEPTION:Z

.field public LGP_DATA_DAEMON_NETD_FILE_CLOSE_ON_NATCONTROLLER:Z

.field public LGP_DATA_DAEMON_NETMGRD_PORT_INIT_RETRY:Z

.field public LGP_DATA_DATACONNECTION_ABCABC_RETRY:Z

.field public LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Z

.field public LGP_DATA_DATACONNECTION_AIRPLANEMODE:Z

.field public LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

.field public LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Z

.field public LGP_DATA_DATACONNECTION_ALWAYSON_ATTACH_DDS_SIM:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_SSDP_PKT_TO_MOBILE:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_NO_APN:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_WITH_2GCALL:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_NOTIFY_DATACONN_ON_STATE_FAILED:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_UNSOL_PROCESS:Z

.field public LGP_DATA_DATACONNECTION_CAN_GO_DORMANT_TRUE_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_CAUSE_FIX_GET_REJCAUSE:Z

.field public LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

.field public LGP_DATA_DATACONNECTION_CIQ_TMUS:Z

.field public LGP_DATA_DATACONNECTION_CONDITION_FOR_AUTO_ATTACH:Z

.field public LGP_DATA_DATACONNECTION_CTS:Z

.field public LGP_DATA_DATACONNECTION_DATACALL:Z

.field public LGP_DATA_DATACONNECTION_DATAENABLED_CONFIG_TLF_ES:Z

.field public LGP_DATA_DATACONNECTION_DATASTALL_ALARM_CONNECTED_ONLY:Z

.field public LGP_DATA_DATACONNECTION_DATASTALL_ALARM_NO_WAKEUP:Z

.field public LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

.field public LGP_DATA_DATACONNECTION_DISCONNECTED_NO_BLOCKED_STATE:Z

.field public LGP_DATA_DATACONNECTION_DO_NOT_TRYSETUP_DURING_WIFI_ON_GEMINI:Z

.field public LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Z

.field public LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Z

.field public LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

.field public LGP_DATA_DATACONNECTION_EPDG_DUAL_CONNECTIVITY_VZW:Z

.field public LGP_DATA_DATACONNECTION_EXCEPTION_HANDLING_FOR_GET_SERVICESTATE:Z

.field public LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Z

.field public LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_KT:Z

.field public LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_SKT:Z

.field public LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

.field public LGP_DATA_DATACONNECTION_FDN_DATA_CALL_BLOCK:Z

.field public LGP_DATA_DATACONNECTION_HANDLE_CONNECTING_DATACALL_ON_DCLISTCHANGED:Z

.field public LGP_DATA_DATACONNECTION_HANDLE_DATA_ENABLE_EVENT_MSIM:Z

.field public LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

.field public LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Z

.field public LGP_DATA_DATACONNECTION_IPV4_RETRY_RGS:Z

.field public LGP_DATA_DATACONNECTION_LCP_RETRY_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

.field public LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

.field public LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_LTE_ATTACH_ON_INSRV_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

.field public LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

.field public LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

.field public LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

.field public LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

.field public LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

.field public LGP_DATA_DATACONNECTION_MULTIRAB_KT:Z

.field public LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Z

.field public LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

.field public LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

.field public LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

.field public LGP_DATA_DATACONNECTION_NOT_SET_CURRENT_MAX_RETRY_COUNT:Z

.field public LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

.field public LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

.field public LGP_DATA_DATACONNECTION_PERMANENT_FAIL_TELSTRA:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY_SKT:Z

.field public LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

.field public LGP_DATA_DATACONNECTION_RADIOOFF_WAITINGTIME:Z

.field public LGP_DATA_DATACONNECTION_RECONNECT_AFTER_USER_PASSWORD_CHANGED:Z

.field public LGP_DATA_DATACONNECTION_RECONNECT_ON_APN_CHANGED_IN_MPDN:Z

.field public LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

.field public LGP_DATA_DATACONNECTION_REDIAL_FOR_NO_CAUSE_CODE:Z

.field public LGP_DATA_DATACONNECTION_REDUCE_HO_DELAY:Z

.field public LGP_DATA_DATACONNECTION_REG_VOICECALL_EVENT_MSIM:Z

.field public LGP_DATA_DATACONNECTION_RETRY_ALL_READY_APNCNXT_ON_APN_CHANGED:Z

.field public LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

.field public LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Z

.field public LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

.field public LGP_DATA_DATACONNECTION_SHARE_DC_WHEN_SAME_APN:Z

.field public LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

.field public LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_SVLTE:Z

.field public LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

.field public LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_INTERNETAPN_VZW:Z

.field public LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

.field public LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

.field public LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

.field public LGP_DATA_DATACONNECTION_VSNCP_RETRY_NUM_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

.field public LGP_DATA_DATAUSAGE_CLEAR_USAGE_HISTORY:Z

.field public LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

.field public LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Z

.field public LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Z

.field public LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Z

.field public LGP_DATA_DATAUSAGE_DATA_METER_APPLICATION_VZW:Z

.field public LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Z

.field public LGP_DATA_DATAUSAGE_EXCEPT_HOTSPOT_UPLUS:Z

.field public LGP_DATA_DATAUSAGE_FACTORY_RESET_KR:Z

.field public LGP_DATA_DATAUSAGE_LIMIT_EXCEED:Z

.field public LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

.field public LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Z

.field public LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Z

.field public LGP_DATA_DEBUG_1xEVDO_DEBUG:Z

.field public LGP_DATA_DEBUG_DATABLOCK:Z

.field public LGP_DATA_DEBUG_DATACALL_INFO:Z

.field public LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_VZW:Z

.field public LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

.field public LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG_TMUS:Z

.field public LGP_DATA_DEBUG_MPDN_INFO_UPLUS:Z

.field public LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

.field public LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

.field public LGP_DATA_DEBUG_UPDT:Z

.field public LGP_DATA_DISPLAY_IP_MPDN_KR:Z

.field public LGP_DATA_DORMANT_DISABLE_FD_IN_PRE_R8:Z

.field public LGP_DATA_DORMANT_FD:Z

.field public LGP_DATA_DORMANT_FD_BUGFIX_MPDN:Z

.field public LGP_DATA_DORMANT_FD_HIDDENMENU:Z

.field public LGP_DATA_DORMANT_FD_LGU:Z

.field public LGP_DATA_DORMANT_FD_REL8_PCH_NETWORK:Z

.field public LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Z

.field public LGP_DATA_DUN_NAI_FOR_TETHERING:Z

.field public LGP_DATA_EHRPD_FIX_PDN_TYPE_MATCH:Z

.field public LGP_DATA_EHRPD_INIT_EFS_CONFIG_FILE_UPLUS:Z

.field public LGP_DATA_EHRPD_UPDATE_PROFILE_DB:Z

.field public LGP_DATA_ENV_DCM_SETTINGS:Z

.field public LGP_DATA_ENV_FEATURE_MANAGEMENT:Z

.field public LGP_DATA_ENV_LGSF:Z

.field public LGP_DATA_ENV_SINGLETON:Z

.field public LGP_DATA_IMS_BARRING_UPLUS:Z

.field public LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

.field public LGP_DATA_IMS_BUGFIX_SIO_PORT_RELEASE_KT:Z

.field public LGP_DATA_IMS_DATA_MENU_NOT_CONRTOL:Z

.field public LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

.field public LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

.field public LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Z

.field public LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

.field public LGP_DATA_IMS_EMERGENCY_APN_SYNC:Z

.field public LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

.field public LGP_DATA_IMS_KEEP_INFO_ON_RAT_CHANGE:Z

.field public LGP_DATA_IMS_KR:Z

.field public LGP_DATA_IMS_PCSCF_RESTORATION:Z

.field public LGP_DATA_IMS_PEND_STARTING_TIME:Z

.field public LGP_DATA_IMS_REMOVE_TFT_UDP_PORT0_UPLUS:Z

.field public LGP_DATA_IMS_RESET_PERMANENT_FAIL_ON_ROAMING:Z

.field public LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Z

.field public LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

.field public LGP_DATA_KERNEL_BUGFIX_ROUTE:Z

.field public LGP_DATA_KERNEL_CONFIG:Z

.field public LGP_DATA_KERNEL_CONFIG_BIC:Z

.field public LGP_DATA_KERNEL_CRASHFIX_TCP_NUKE_ADDR:Z

.field public LGP_DATA_LTE_ROAMING_LGU:Z

.field public LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Z

.field public LGP_DATA_MODIFY_NETWORK_TRANSITION_WAKE_LOCK:Z

.field public LGP_DATA_NETD_CLATD_RECONFIGURATION:Z

.field public LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

.field public LGP_DATA_NV_POWER_UP_INIT:Z

.field public LGP_DATA_PATCH_DORMANT_FEATURE_DATA_NO_MPDP_CHECK:Z

.field public LGP_DATA_PATCH_SUSPEND_BUG_FIX_SIM_LOCK_WRC:Z

.field public LGP_DATA_PDN_ARBITRATION_CONFIG:Z

.field public LGP_DATA_PDN_CHECK_DATACALL_VALID:Z

.field public LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

.field public LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE_VZW:Z

.field public LGP_DATA_PDN_EMERGENCY_CALL:Z

.field public LGP_DATA_PDN_HO_TAU_REJECT_UPLUS:Z

.field public LGP_DATA_PDN_KEEP_CONNECT_INFO_WHEN_NO_SERVICE:Z

.field public LGP_DATA_PDN_LTE_FIRST_IS_IMS:Z

.field public LGP_DATA_PDN_MEAN_TPUT_TLS:Z

.field public LGP_DATA_PDN_MPDN_KR:Z

.field public LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

.field public LGP_DATA_PDN_MPDN_VZW:Z

.field public LGP_DATA_PDN_OTA_UPLUS:Z

.field public LGP_DATA_PDN_QMI_WDS_CONNECTED_STATE_MISMATCH_FIX:Z

.field public LGP_DATA_PDN_QOS_CONFIG_KT:Z

.field public LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

.field public LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

.field public LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

.field public LGP_DATA_PDN_USE_DATA_ROAMING:Z

.field public LGP_DATA_PPP_LCP_VENDOR_SPECIFIC_PROTOCOL:Z

.field public LGP_DATA_PPP_LINK_CLOSE:Z

.field public LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Z

.field public LGP_DATA_RIL_BUGFIX_FD_FOR_MPDN:Z

.field public LGP_DATA_RIL_BUGFIX_FD_KT:Z

.field public LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

.field public LGP_DATA_RIL_DISABLE_PATIALRETRY:Z

.field public LGP_DATA_RIL_RESTART_ON_RILERROR:Z

.field public LGP_DATA_SIM_FOR_DUAL_IMSI_TLF_ES:Z

.field public LGP_DATA_SIM_MSIM_BLOCK_DATA_ENABLED_CHANGE:Z

.field public LGP_DATA_SIM_MSIM_DATAUSAGE:Z

.field public LGP_DATA_SIM_MSIM_DATAUSAGE_GEMINI:Z

.field public LGP_DATA_SIM_MSIM_DDS_HANDLE:Z

.field public LGP_DATA_SIM_MSIM_MTK_SUPPORT:Z

.field public LGP_DATA_SIM_MSIM_PREFERRED_DATA_SUBSCRIPTION_ON_GEMINI:Z

.field public LGP_DATA_SRCROUTE_PRIO_SET:Z

.field public LGP_DATA_SUM_PACKET_TRANSFER:Z

.field public LGP_DATA_SUPPORT_NV_MODE:Z

.field public LGP_DATA_TCPIP_DATASCHEDULER:Z

.field public LGP_DATA_TCPIP_DHCP_OPTION_CONFIG_KT:Z

.field public LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Z

.field public LGP_DATA_TCPIP_DNS_BUGFIX_MDNSD_MEMORY_ERROR_KR:Z

.field public LGP_DATA_TCPIP_DNS_LOCAL_ADDR_ALLOWED_KDDI:Z

.field public LGP_DATA_TCPIP_DNS_MPDN:Z

.field public LGP_DATA_TCPIP_DNS_RECORD_TYPE:Z

.field public LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Z

.field public LGP_DATA_TCPIP_DNS_SYSPROP_ENHANCE:Z

.field public LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

.field public LGP_DATA_TCPIP_ENHANCEMENT_OF_RESTRICTED_BACKGROUND_TRAFFIC:Z

.field public LGP_DATA_TCPIP_IMS_PDN_IPV6:Z

.field public LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

.field public LGP_DATA_TCPIP_IP_V6_SOCK_CLOSE:Z

.field public LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

.field public LGP_DATA_TCPIP_MTU_CONFIG:Z

.field public LGP_DATA_TCPIP_MTU_HOOKING_ON_TETHER:Z

.field public LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

.field public LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Z

.field public LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

.field public LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_KT:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_ON_RAT_CHANGE_UPLUS:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_SKT:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_TMUS:Z

.field public LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS:Z

.field public LGP_DATA_TCPIP_TCP_SYN_RETRY_CONFIG_UPLUS:Z

.field public LGP_DATA_TCPIP_TCP_TYPE_BIG_SKT:Z

.field public LGP_DATA_TCPIP_TCP_WINDOW_SCALING_USC:Z

.field public LGP_DATA_TCPIP_WINSIZE_CONFIG:Z

.field public LGP_DATA_TCPIP_WINSIZE_TEST_NUMERIC:Ljava/lang/String;

.field public LGP_DATA_TD_DEAD_OBJECT_EXCEPTION_IN_TRAFFIC_STATS:Z

.field public LGP_DATA_TETHERING_APN_LIST:Z

.field public LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

.field public LGP_DATA_TETHER_BUGFIX_CHECK_WIFI_STATUS:Z

.field public LGP_DATA_TETHER_BUGFIX_INFINTE_RETRY_ON_DISABLE_DATA:Z

.field public LGP_DATA_TETHER_CLEAR_IPRULE_FOR_UNTETHERING:Z

.field public LGP_DATA_TETHER_DISABLE_FETCHDUN:Z

.field public LGP_DATA_TETHER_FIX_ROUTE_TABLE_EXCEPTION:Z

.field public LGP_DATA_TETHER_IPV6_SUPPORT:Z

.field public LGP_DATA_TETHER_KEEP_FORWARD_IF_CLAT_ENABLED:Z

.field public LGP_DATA_TETHER_REMOVE_WIFI_UPSTREAM_TMUS:Z

.field public LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

.field public LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Z

.field public LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

.field public LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Z

.field public LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

.field public LGP_DATA_TOOL_EMUL_RIL:Z

.field public LGP_DATA_TOOL_MODEM_TEST_MODE_VZW:Z

.field public LGP_DATA_TOOL_PING6:Z

.field public LGP_DATA_TOOL_TCPDUMP:Z

.field public LGP_DATA_TRIGGER_SCRI_ON_IPV6_FOR_V4V6_REQUESTED:Z

.field public LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Z

.field public LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

.field public LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

.field public LGP_DATA_UIAPP_GPRS_REJECTED:Z

.field public LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

.field public LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Z

.field public LGP_DATA_UIAPP_MDM_API:Z

.field public LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_KR:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_KT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

.field public LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Z

.field public LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

.field public LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

.field public LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

.field public LGP_DATA_UIAPP_WIFI_OFF_CMCC:Z

.field public LGP_DATA_UMTS_RFC2507_OFF:Z

.field public LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Z

.field public LGP_DATA_XXXX_YYYYY:Z

.field public LG_DATA_CDMA_DUMMY_APN:Z

.field public MPDNset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .line 98
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSetName:Ljava/lang/String;

    .line 100
    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 1599
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTIFY_ROAMING_ON_INFO:Z

    .line 1649
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPURT_ALL_ACCESS_FEATURE_ATT:Z

    .line 3067
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KDDI:Z

    .line 3068
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_KDDI:Z

    .line 3076
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CPA_KDDI:Z

    .line 3087
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS:Z

    .line 3093
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Z

    .line 3102
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_KDDI:Z

    .line 3110
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION_KDDI:Z

    .line 3120
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Z

    .line 3129
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Z

    .line 3141
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Z

    .line 3178
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO:Z

    .line 3179
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO_NUM:I

    .line 3342
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_CTC:Z

    .line 3344
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPPOE_UPDATE_ROUTE_CTC:Z

    .line 3352
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_HIPRI_APN_FOR_CDMA_MMS_CT:Z

    .line 3360
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DUMMY_APN_FOR_SKT_TEST_CT:Z

    .line 3368
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_SWITCH_APN_FOR_CDMA_MMS_CT:Z

    .line 3376
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_MMS_BLOCK_ON_ROAMING_CT:Z

    .line 3384
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MAKE_CLONE_APN_FOR_MSIM_CT:Z

    .line 3392
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTC_ROAMING:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "featureset"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 104
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_XXXX_YYYYY:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_DCM_SETTINGS:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE:Z

    .line 132
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SHARE_DC_WHEN_SAME_APN:Z

    .line 149
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BUGFIX_CHECK_WIFI_STATUS:Z

    .line 157
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_DISABLE_FETCHDUN:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RESET_PERMANENT_FAIL_ON_ROAMING:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Z

    .line 181
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHERING_APN_LIST:Z

    .line 190
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATASTALL_ALARM_CONNECTED_ONLY:Z

    .line 197
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_UNSOL_PROCESS:Z

    .line 208
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC:Z

    .line 217
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_FEATURE_USER_MEMORY_OVERFLOW:Z

    .line 224
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 231
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETD_FILE_CLOSE_ON_NATCONTROLLER:Z

    .line 238
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETD_BANDWIDTH:Z

    .line 245
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RADIOOFF_WAITINGTIME:Z

    .line 252
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_WITH_2GCALL:Z

    .line 262
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_NO_APN:Z

    .line 272
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETMGRD_PORT_INIT_RETRY:Z

    .line 280
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_BUGFIX_ROUTE:Z

    .line 288
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    .line 300
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Z

    .line 310
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_ALL_READY_APNCNXT_ON_APN_CHANGED:Z

    .line 321
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_BUGFIX_CONNSRV_EXCEPTION:Z

    .line 330
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_DUN_TYPE:Z

    .line 339
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 347
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_TCPDUMP:Z

    .line 356
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DATA_MENU_NOT_CONRTOL:Z

    .line 363
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETD_BUGFIX_ILLEGALSTATE_EXCEPTION:Z

    .line 371
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE:Z

    .line 379
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BUGFIX_INFINTE_RETRY_ON_DISABLE_DATA:Z

    .line 387
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_FIX_ROUTE_TABLE_EXCEPTION:Z

    .line 395
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RECONNECT_ON_APN_CHANGED_IN_MPDN:Z

    .line 403
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CAUSE_FIX_GET_REJCAUSE:Z

    .line 411
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CONDITION_FOR_AUTO_ATTACH:Z

    .line 423
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 434
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RECONNECT_AFTER_USER_PASSWORD_CHANGED:Z

    .line 443
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IP_V6_SOCK_CLOSE:Z

    .line 451
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_CRASHFIX_TCP_NUKE_ADDR:Z

    .line 459
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 470
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_CONFIG:Z

    .line 478
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_NOTIFY_DATACONN_ON_STATE_FAILED:Z

    .line 489
    const-string v0, "persist.lg.data.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DATACALL_INFO:Z

    .line 497
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KEEP_INFO_ON_RAT_CHANGE:Z

    .line 509
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_PING6:Z

    .line 517
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UMTS_RFC2507_OFF:Z

    .line 525
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_COMPRESSION_BLOCK_CODE_COMMON:Z

    .line 533
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_CONFIG:Z

    .line 534
    const-string v0, "persist.data.win.test.numeric"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_TEST_NUMERIC:Ljava/lang/String;

    .line 543
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 544
    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 554
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

    .line 562
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DISABLE_PATIALRETRY:Z

    .line 574
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_EMUL_RIL:Z

    .line 582
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    .line 591
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOT_SET_CURRENT_MAX_RETRY_COUNT:Z

    .line 600
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_RECORD_TYPE:Z

    .line 608
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_BUGFIX_MPDN:Z

    .line 617
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ABCABC_RETRY:Z

    .line 627
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_SINGLETON:Z

    .line 635
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_MDM_API:Z

    .line 643
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 656
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

    .line 663
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATASTALL_ALARM_NO_WAKEUP:Z

    .line 670
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HANDLE_PACKET_SAMPLING_TIMER:Z

    .line 678
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DDS_HANDLE:Z

    .line 686
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DATAUSAGE:Z

    .line 695
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DATABLOCK:Z

    .line 704
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TD_DEAD_OBJECT_EXCEPTION_IN_TRAFFIC_STATS:Z

    .line 712
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_LIMIT_EXCEED:Z

    .line 719
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_EXCEPTION_HANDLING_FOR_GET_SERVICESTATE:Z

    .line 728
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_CONFIG:Z

    .line 741
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_FEATURE_MANAGEMENT:Z

    .line 749
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ENHANCEMENT_OF_RESTRICTED_BACKGROUND_TRAFFIC:Z

    .line 756
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS:Z

    .line 764
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTS_IPV6_PINGTEST:Z

    .line 772
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CTS:Z

    .line 781
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_CONNECTING_DATACALL_ON_DCLISTCHANGED:Z

    .line 791
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 799
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    .line 807
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SRCROUTE_PRIO_SET:Z

    .line 817
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_FIX_NETWORK_PREF:Z

    .line 826
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_UPDT:Z

    .line 835
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ALLOW_EMPTY_IA_TYPE:Z

    .line 844
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MAXCONN_EX_VZW:Z

    .line 853
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_LGSF:Z

    .line 867
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_BUGFIX_FD_FOR_MPDN:Z

    .line 876
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TRIGGER_SCRI_ON_IPV6_FOR_V4V6_REQUESTED:Z

    .line 885
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_KEEP_FORWARD_IF_CLAT_ENABLED:Z

    .line 893
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_CLEAR_IPRULE_FOR_UNTETHERING:Z

    .line 902
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SUM_PACKET_TRANSFER:Z

    .line 912
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DISCONNECTED_NO_BLOCKED_STATE:Z

    .line 928
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_SINGLE_PDN:Z

    .line 930
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_DISABLE_FD_IN_PRE_R8:Z

    .line 938
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NETD_CLATD_RECONFIGURATION:Z

    .line 946
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MATCH_PROTOCOL_TYPE_OF_IA_WITH_DEFAULT:Z

    .line 954
    const-string v0, "persist.lg.data.datascheduler"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DATASCHEDULER:Z

    .line 964
    const-string v0, "persist.lg.data.autoprof.msim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_ENABLE_EVENT_MSIM:Z

    .line 973
    const-string v0, "persist.lg.data.autoprof.msim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REG_VOICECALL_EVENT_MSIM:Z

    .line 985
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    .line 993
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 1001
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 1010
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    .line 1018
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 1030
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 1042
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 1051
    const-string v0, "1"

    const-string v3, "persist.lg.data.block_ssdp"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_SSDP_PKT_TO_MOBILE:Z

    .line 1066
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 1078
    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 1086
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 1098
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 1106
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_RCS_TYPE:Z

    .line 1114
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 1122
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 1129
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

    .line 1137
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Z

    .line 1146
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_SYSPROP_ENHANCE:Z

    .line 1153
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_HOOKING_ON_TETHER:Z

    .line 1160
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LG_DATA_CDMA_DUMMY_APN:Z

    .line 1168
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DUN_NAI_FOR_TETHERING:Z

    .line 1176
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SUPPORT_NV_MODE:Z

    .line 1184
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Z

    .line 1194
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    .line 1202
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Z

    .line 1210
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_HIDDENMENU:Z

    .line 1218
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Z

    .line 1227
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    .line 1235
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    .line 1243
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    .line 1252
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    .line 1260
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISABLE_PROTOCOL_UI:Z

    .line 1268
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    .line 1276
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SUPPORT_EMERGENCY_APN:Z

    .line 1283
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 1290
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Z

    .line 1297
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MODIFY_NETWORK_TRANSITION_WAKE_LOCK:Z

    .line 1305
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    .line 1307
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_KEEP_CONNECT_INFO_WHEN_NO_SERVICE:Z

    .line 1314
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Z

    .line 1321
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 1329
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING:Z

    .line 1337
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SVLTE:Z

    .line 1345
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Z

    .line 1379
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 1387
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    .line 1396
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_PREFERAPN:Z

    .line 1405
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 1423
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_CHANGED:Z

    .line 1431
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    .line 1440
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 1449
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Z

    .line 1458
    const-string v0, "persist.service.privacy.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    .line 1467
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

    .line 1475
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    .line 1483
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    .line 1492
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDIAL_FOR_NO_CAUSE_CODE:Z

    .line 1508
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DO_NOT_TRYSETUP_DURING_WIFI_ON_GEMINI:Z

    .line 1518
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALWAYSON_ATTACH_DDS_SIM:Z

    .line 1528
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_MTK_SUPPORT:Z

    .line 1536
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DATAUSAGE_GEMINI:Z

    .line 1544
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_PREFERRED_DATA_SUBSCRIPTION_ON_GEMINI:Z

    .line 1552
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_UNUSED_APN_TYPE_INIT:Z

    .line 1567
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Z

    .line 1581
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_FOTA_UPGRADE_ATT:Z

    .line 1589
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP:Z

    .line 1607
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNPROVISION_ATT:Z

    .line 1615
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Z

    .line 1623
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DO_NOT_HANDLE_HIPRI_WITH_DEFAULT:Z

    .line 1635
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Z

    .line 1657
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGE_DATA_IMS_ISIM_REFRESH_ATT:Z

    .line 1665
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_ATT:Z

    .line 1673
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_EMERGENCY_APN_SYNC:Z

    .line 1684
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CIQ_TMUS:Z

    .line 1695
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_TMUS:Z

    .line 1703
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Z

    .line 1711
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CLEAR_USAGE_HISTORY:Z

    .line 1719
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Z

    .line 1727
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_REMOVE_WIFI_UPSTREAM_TMUS:Z

    .line 1735
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_TMUS:Z

    .line 1743
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG_TMUS:Z

    .line 1753
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    .line 1761
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_RETRY_RGS:Z

    .line 1783
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MEAN_TPUT_TLS:Z

    .line 1790
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_APN_SCENARIO_TLS:Z

    .line 1801
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GSM_GLOBAL_PREFERED_APN_SPRINT:Z

    .line 1809
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Z

    .line 1817
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Z

    .line 1825
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Z

    .line 1833
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Z

    .line 1852
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

    .line 1860
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Z

    .line 1868
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Z

    .line 1876
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Z

    .line 1884
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

    .line 1894
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Z

    .line 1902
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Z

    .line 1910
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GET_APNLIST_FOR_SLATE_SPRINT:Z

    .line 1918
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Z

    .line 1925
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_TETHERING_PDN_SPRINT:Z

    .line 1932
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_MDPN_SPRINT:Z

    .line 1933
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_MPDN_SPRINT:Z

    .line 1940
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Z

    .line 1947
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_IA_TYPE_SPRINT:Z

    .line 1954
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_CDMA_DUMMY_APN_SPRINT:Z

    .line 1961
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV:Z

    .line 1962
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV_DEBUG_MESSAGE:Z

    .line 1966
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_VZW:Z

    .line 1975
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

    .line 1983
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_MODEM_TEST_MODE_VZW:Z

    .line 1991
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

    .line 1999
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

    .line 2009
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    .line 2017
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

    .line 2025
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    .line 2032
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    .line 2040
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE_VZW:Z

    .line 2049
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 2057
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DATA_METER_APPLICATION_VZW:Z

    .line 2066
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    .line 2074
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    .line 2077
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

    .line 2086
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Z

    .line 2094
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

    .line 2101
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

    .line 2110
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    .line 2119
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOTIFY_WHEN_IMS_APN_CHANGED_VZW:Z

    .line 2126
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USE_DUMMY_PROFILE_IN_SINGLE_PDN_VZW:Z

    .line 2133
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BEARER_MANAGEMENT_FOR_EMERGENCY_VZW:Z

    .line 2141
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_LTE_PCO_VZW:Z

    .line 2149
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP_VZW:Z

    .line 2157
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_INTERNETAPN_VZW:Z

    .line 2165
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_TRYSETUP_ANY_BEARER_FOR_GLOBAL_VZW:Z

    .line 2173
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NODE_HANDLER_FOR_FOTA_SDM_VZW:Z

    .line 2181
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADAPT_AVS_VZW:Z

    .line 2190
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_EPDG_DUAL_CONNECTIVITY_VZW:Z

    .line 2199
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOT_SEND_APNSYNC_WHEN_SINGLE_RAT_VZW:Z

    .line 2207
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_VZW:Z

    .line 2216
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_WINDOW_SCALING_USC:Z

    .line 2224
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PEND_STARTING_TIME:Z

    .line 2230
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 2238
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 2246
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 2254
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 2263
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_FACTORY_RESET_KR:Z

    .line 2265
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 2273
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    .line 2282
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_BUGFIX_MDNSD_MEMORY_ERROR_KR:Z

    .line 2290
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    .line 2298
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 2306
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 2314
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

    .line 2322
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

    .line 2330
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 2338
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 2346
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE_KR:Z

    .line 2354
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_ALL_TYPE_KR:Z

    .line 2362
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Z

    .line 2370
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    .line 2378
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 2386
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 2399
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 2412
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_REL8_PCH_NETWORK:Z

    .line 2425
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    .line 2433
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    .line 2443
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    .line 2451
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_PARAMETER:Z

    .line 2454
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 2466
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    .line 2472
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 2480
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    .line 2488
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_CONFIG_BIC:Z

    .line 2496
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    .line 2504
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    .line 2511
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    .line 2519
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    .line 2526
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    .line 2534
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    .line 2542
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Z

    .line 2559
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Z

    .line 2567
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Z

    .line 2575
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Z

    .line 2583
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_SKT:Z

    .line 2592
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Z

    .line 2600
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_SKT:Z

    .line 2608
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_TYPE_BIG_SKT:Z

    .line 2616
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

    .line 2624
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    .line 2632
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

    .line 2639
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    .line 2647
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    .line 2655
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Z

    .line 2665
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INIT_RETURN_KOR_MPDN_SKT:Z

    .line 2666
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_SKT:Z

    .line 2667
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_SKT:Z

    .line 2668
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ATCMD_NO_READ_ESN:Z

    .line 2669
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_DATACALL_VALID:Z

    .line 2670
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_REATTACH_DEFAULT_PDN:Z

    .line 2671
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SETTING_PLMN_CHG_MODEM:Z

    .line 2672
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_EFS_PDN_LIST_ERASE:Z

    .line 2673
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PATCH_DORMANT_FEATURE_DATA_NO_MPDP_CHECK:Z

    .line 2674
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PATCH_SUSPEND_BUG_FIX_SIM_LOCK_WRC:Z

    .line 2675
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_QMI_WDS_CONNECTED_STATE_MISMATCH_FIX:Z

    .line 2677
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->FEATURE_DATA_NO_MPDP_CHECK:Z

    .line 2679
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE_MPDN_SKT:Z

    .line 2680
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ROAMING_AUTOPROFILE_SKT:Z

    .line 2692
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Z

    .line 2703
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Z

    .line 2710
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    .line 2717
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

    .line 2724
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DHCP_OPTION_CONFIG_KT:Z

    .line 2731
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BUGFIX_SIO_PORT_RELEASE_KT:Z

    .line 2738
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_QOS_CONFIG_KT:Z

    .line 2746
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_BUGFIX_FD_KT:Z

    .line 2754
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_KT:Z

    .line 2762
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Z

    .line 2770
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Z

    .line 2778
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING__MPDN_KT:Z

    .line 2785
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INIT_RETURN_KOR__MPDN_KT:Z

    .line 2792
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_KT:Z

    .line 2799
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ROAMING_AUTOPROFILE_KT:Z

    .line 2806
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_KT:Z

    .line 2814
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE_CA_KT:Z

    .line 2822
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Z

    .line 2839
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

    .line 2847
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_ARBITRATION_CONFIG:Z

    .line 2855
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Z

    .line 2863
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_EXCEPT_HOTSPOT_UPLUS:Z

    .line 2871
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

    .line 2879
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    .line 2887
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

    .line 2895
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_MPDN_INFO_UPLUS:Z

    .line 2903
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

    .line 2911
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

    .line 2919
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_ON_RAT_CHANGE_UPLUS:Z

    .line 2927
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_SYN_RETRY_CONFIG_UPLUS:Z

    .line 2935
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

    .line 2943
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Z

    .line 2954
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Z

    .line 2963
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

    .line 2975
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    .line 2983
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    .line 2991
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    .line 3000
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Z

    .line 3008
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_LGU:Z

    .line 3011
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_EHRPD_INIT_EFS_CONFIG_FILE_UPLUS:Z

    .line 3012
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BARRING_UPLUS:Z

    .line 3013
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BIP_PROFILE_UPLUS:Z

    .line 3014
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CAN_GO_DORMANT_TRUE_UPLUS:Z

    .line 3015
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPP_LCP_VENDOR_SPECIFIC_PROTOCOL:Z

    .line 3016
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ATTACH_ON_INSRV_UPLUS:Z

    .line 3017
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VSNCP_RETRY_NUM_UPLUS:Z

    .line 3018
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDUCE_HO_DELAY:Z

    .line 3019
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LCP_RETRY_UPLUS:Z

    .line 3020
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_HO_TAU_REJECT_UPLUS:Z

    .line 3021
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IMS_PDN_IPV6:Z

    .line 3022
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_MPDN_UPLUS:Z

    .line 3023
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NV_POWER_UP_INIT:Z

    .line 3024
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATACALL:Z

    .line 3025
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPP_LINK_CLOSE:Z

    .line 3026
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_1xEVDO_DEBUG:Z

    .line 3027
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_EHRPD_UPDATE_PROFILE_DB:Z

    .line 3028
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_EHRPD_FIX_PDN_TYPE_MATCH:Z

    .line 3029
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGE_DATA_LGU_FIX_DNS_PARSING:Z

    .line 3030
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_LTE_FIRST_IS_IMS:Z

    .line 3031
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_REMOVE_TFT_UDP_PORT0_UPLUS:Z

    .line 3039
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    .line 3049
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_WIFI_OFF_CMCC:Z

    .line 3059
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Z

    .line 3150
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Z

    .line 3157
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN_KDDI:Z

    .line 3164
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ONLY_CONNECT_IMS_WHEN_RADIO_OFF_KDDI:Z

    .line 3171
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_LOCAL_ADDR_ALLOWED_KDDI:Z

    .line 3184
    const-string v0, "VDF"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FDN_DATA_CALL_BLOCK:Z

    .line 3194
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Z

    .line 3211
    const-string v0, "TLF"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ES"

    const-string v3, "ro.build.target_country"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "TLF"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "COM"

    const-string v3, "ro.build.target_country"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATAENABLED_CONFIG_TLF_ES:Z

    .line 3224
    const-string v0, "TLF"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ES"

    const-string v3, "ro.build.target_country"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_FOR_DUAL_IMSI_TLF_ES:Z

    .line 3245
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    .line 3262
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

    .line 3274
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

    .line 3285
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_OPEN:Z

    .line 3293
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_BLOCK_DATA_ENABLED_CHANGE:Z

    .line 3307
    const-string v0, "TCL"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MX"

    const-string v3, "ro.build.target_country"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CLEAR_CAUSE_FOR_TCL:Z

    .line 3326
    const-string v0, "TEL"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AU"

    const-string v3, "ro.build.target_country"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_TELSTRA:Z

    .line 3407
    sput-object p1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSetName:Ljava/lang/String;

    .line 3408
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setFeatureSet(Ljava/lang/String;)V

    .line 3409
    return-void

    :cond_2
    move v0, v1

    .line 3211
    goto :goto_0

    :cond_3
    move v0, v1

    .line 3224
    goto :goto_1

    :cond_4
    move v0, v1

    .line 3307
    goto :goto_2

    :cond_5
    move v2, v1

    .line 3326
    goto :goto_3
.end method

.method public static getFeatureSet()I
    .locals 1

    .prologue
    .line 3428
    sget v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;
    .locals 3

    .prologue
    .line 3420
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    if-nez v0, :cond_0

    .line 3422
    new-instance v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    const-string v1, "ro.afwdata.LGfeatureset"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .line 3424
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    return-object v0
.end method

.method private setFeatureSet(Ljava/lang/String;)V
    .locals 8
    .parameter "featureset"

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3432
    const-string v1, "VZWBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3433
    iput v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3435
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3436
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

    .line 3437
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

    .line 3438
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3439
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    .line 3440
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    .line 3441
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3442
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 3443
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RESET_PERMANENT_FAIL_ON_ROAMING:Z

    .line 3444
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Z

    .line 3445
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE:Z

    .line 3446
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3447
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING:Z

    .line 3448
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SVLTE:Z

    .line 3449
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 3450
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    .line 3451
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3452
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3453
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    .line 3456
    iput v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3457
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_VZW:Z

    .line 3458
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3459
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

    .line 3460
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    .line 3461
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

    .line 3462
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    .line 3463
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 3464
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    .line 3465
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Z

    .line 3466
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

    .line 3467
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Z

    .line 3468
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

    .line 3469
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    .line 3470
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOTIFY_WHEN_IMS_APN_CHANGED_VZW:Z

    .line 3471
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USE_DUMMY_PROFILE_IN_SINGLE_PDN_VZW:Z

    .line 3472
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BEARER_MANAGEMENT_FOR_EMERGENCY_VZW:Z

    .line 3473
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_LTE_PCO_VZW:Z

    .line 3474
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP_VZW:Z

    .line 3475
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3476
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE_VZW:Z

    .line 3477
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_INTERNETAPN_VZW:Z

    .line 3478
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_TRYSETUP_ANY_BEARER_FOR_GLOBAL_VZW:Z

    .line 3479
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOT_SEND_APNSYNC_WHEN_SINGLE_RAT_VZW:Z

    .line 3480
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_VZW:Z

    .line 3481
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Z

    .line 3485
    const-string v1, "persist.data.ePDGMode"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_EPDG_DUAL_CONNECTIVITY_VZW:Z

    .line 3487
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

    .line 3488
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    .line 3489
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_MODEM_TEST_MODE_VZW:Z

    .line 3490
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

    .line 3491
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

    .line 3492
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3493
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    .line 3494
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DATA_METER_APPLICATION_VZW:Z

    .line 3495
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NODE_HANDLER_FOR_FOTA_SDM_VZW:Z

    .line 3507
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

    .line 4009
    :cond_0
    :goto_0
    const-string v1, "persist.lg.data.load_feature"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->loadFeatures()V

    .line 4013
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    if-ne v1, v4, :cond_2

    .line 4014
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 4016
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

    if-ne v1, v4, :cond_3

    .line 4017
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

    .line 4020
    :cond_3
    return-void

    .line 3509
    :cond_4
    const-string v1, "VZWBASE_PP"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3510
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LG_DATA_CDMA_DUMMY_APN:Z

    .line 3511
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Z

    .line 3512
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Z

    .line 3513
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 3515
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    .line 3516
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    .line 3517
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 3518
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    .line 3519
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    .line 3520
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 3521
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3522
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    .line 3523
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    .line 3524
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    .line 3525
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DUN_NAI_FOR_TETHERING:Z

    .line 3527
    const/16 v1, 0x16

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto :goto_0

    .line 3528
    :cond_5
    const-string v1, "TRFBASE_PP"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3529
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LG_DATA_CDMA_DUMMY_APN:Z

    .line 3530
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Z

    .line 3531
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Z

    .line 3532
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 3534
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    .line 3535
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    .line 3536
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 3537
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    .line 3538
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    .line 3539
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 3540
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3541
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    .line 3542
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    .line 3543
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    .line 3545
    const/16 v1, 0x17

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto :goto_0

    .line 3546
    :cond_6
    const-string v1, "ATTBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3547
    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3548
    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3549
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3550
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 3551
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3552
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    .line 3553
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Z

    .line 3554
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    .line 3555
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    .line 3556
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_FOTA_UPGRADE_ATT:Z

    .line 3557
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP:Z

    .line 3558
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTIFY_ROAMING_ON_INFO:Z

    .line 3559
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNPROVISION_ATT:Z

    .line 3560
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Z

    .line 3561
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISABLE_PROTOCOL_UI:Z

    .line 3562
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Z

    .line 3563
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    .line 3564
    const-string v1, "persist.lg.data.IMSSupport"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3565
    const-string v1, "persist.lg.data.IMSSupport"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3566
    const-string v1, "persist.lg.data.IMSSupport"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    .line 3567
    const-string v1, "persist.lg.data.IMSSupport"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Z

    .line 3568
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_TEST_NUMERIC:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "310410"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_TEST_NUMERIC:Ljava/lang/String;

    .line 3569
    :cond_7
    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3570
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3571
    const-string v1, "persist.lg.data.IMSSupport"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGE_DATA_IMS_ISIM_REFRESH_ATT:Z

    .line 3572
    const-string v1, "LG-V410"

    const-string v2, "ro.model.name"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "LG-V410"

    const-string v2, "ro.product.model"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3573
    :cond_8
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPURT_ALL_ACCESS_FEATURE_ATT:Z

    .line 3575
    :cond_9
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DATA_MENU_NOT_CONRTOL:Z

    .line 3576
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    .line 3577
    const-string v1, "persist.lg.data.IMSSupport"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3578
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_ATT:Z

    .line 3579
    const-string v1, "persist.lg.data.IMSSupport"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_EMERGENCY_APN_SYNC:Z

    .line 3580
    const-string v1, "persist.service.privacy.enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    goto/16 :goto_0

    .line 3581
    :cond_a
    const-string v1, "TMUSBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3582
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3583
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3584
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3585
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3586
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    .line 3587
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    .line 3588
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    .line 3589
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3590
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Z

    .line 3591
    const-string v1, "persist.lgiqc.ext"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CIQ_TMUS:Z

    .line 3592
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3593
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_TMUS:Z

    .line 3594
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    .line 3595
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_PREFERAPN:Z

    .line 3596
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 3597
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Z

    .line 3598
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_REMOVE_WIFI_UPSTREAM_TMUS:Z

    .line 3599
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    .line 3600
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_TMUS:Z

    .line 3601
    const-string v1, "persist.service.privacy.enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG_TMUS:Z

    .line 3602
    const-string v1, "persist.service.privacy.enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    .line 3603
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3604
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Z

    .line 3605
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

    .line 3606
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

    goto/16 :goto_0

    .line 3607
    :cond_b
    const-string v1, "BELLBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3608
    const/16 v1, 0xc

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3609
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3610
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3611
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3612
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 3613
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    goto/16 :goto_0

    .line 3614
    :cond_c
    const-string v1, "RGSBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3615
    const/16 v1, 0xd

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3616
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3617
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3618
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3619
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    .line 3620
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Z

    .line 3621
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 3622
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    goto/16 :goto_0

    .line 3623
    :cond_d
    const-string v1, "TLSBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3624
    const/16 v1, 0xe

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3625
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3626
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3627
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3628
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MEAN_TPUT_TLS:Z

    .line 3629
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_APN_SCENARIO_TLS:Z

    .line 3630
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 3631
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    goto/16 :goto_0

    .line 3632
    :cond_e
    const-string v1, "SKTBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3633
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3635
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3636
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3637
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 3638
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 3639
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 3640
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3641
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3642
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 3643
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3644
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3645
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    .line 3646
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 3647
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    .line 3651
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    .line 3652
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 3653
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 3654
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    .line 3655
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 3656
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3657
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 3658
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 3659
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    .line 3660
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 3661
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 3662
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 3663
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Z

    .line 3664
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 3665
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    .line 3666
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    .line 3667
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    .line 3668
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    .line 3669
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    .line 3670
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    .line 3671
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    .line 3673
    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3674
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    .line 3675
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    .line 3676
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    .line 3677
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    .line 3678
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Z

    .line 3679
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    .line 3680
    const-string v1, "true"

    const-string v2, "persist.lg.data.usim_mobility"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3681
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    .line 3682
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3684
    :cond_f
    const-string v1, "true"

    const-string v2, "ro.support_mpdn"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3685
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3686
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 3691
    :cond_10
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

    .line 3692
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

    .line 3693
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    .line 3694
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Z

    .line 3695
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3696
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    .line 3697
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Z

    .line 3698
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Z

    .line 3699
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Z

    .line 3700
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    .line 3701
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Z

    .line 3702
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Z

    .line 3703
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    goto/16 :goto_0

    .line 3705
    :cond_11
    const-string v1, "KTBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3706
    iput v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v7, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3709
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3710
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3711
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 3712
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 3713
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 3714
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3715
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3716
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 3717
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3718
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3719
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    .line 3720
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 3721
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    .line 3725
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    .line 3726
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 3727
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    .line 3728
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 3729
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3730
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 3731
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 3732
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 3733
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 3734
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 3735
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 3736
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    .line 3737
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    .line 3738
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    .line 3739
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    .line 3740
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    .line 3741
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    .line 3743
    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3744
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    .line 3745
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    .line 3746
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    .line 3747
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    .line 3748
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    .line 3749
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Z

    .line 3750
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    .line 3751
    const-string v1, "true"

    const-string v2, "persist.lg.data.usim_mobility"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3752
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    .line 3753
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3755
    :cond_12
    const-string v1, "true"

    const-string v2, "ro.support_mpdn"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3756
    iput v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3757
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 3758
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 3763
    :cond_13
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    .line 3764
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

    .line 3765
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    .line 3766
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Z

    .line 3767
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Z

    .line 3768
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Z

    .line 3769
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    .line 3770
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Z

    .line 3771
    iput v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    goto/16 :goto_0

    .line 3773
    :cond_14
    const-string v1, "LGTBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3774
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3775
    const/4 v0, 0x0

    .line 3776
    .local v0, isSVLTE:I
    const-string v1, "telephony.lteOnCdmaDevice"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3778
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

    .line 3779
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3780
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3781
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3782
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 3783
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    .line 3784
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 3785
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 3786
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3787
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3788
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 3789
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3790
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3791
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    .line 3792
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 3793
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    .line 3797
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    .line 3798
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 3799
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 3800
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    .line 3801
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 3802
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3803
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 3804
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 3805
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 3806
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 3807
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 3808
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 3809
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    .line 3810
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    .line 3811
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    .line 3812
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    .line 3813
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    .line 3814
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    .line 3815
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    .line 3817
    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3818
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    .line 3819
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    .line 3820
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    .line 3821
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    .line 3822
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    .line 3823
    const-string v1, "true"

    const-string v2, "persist.lg.data.usim_mobility"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3824
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    .line 3826
    :cond_15
    const-string v1, "true"

    const-string v2, "ro.support_mpdn"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3827
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3828
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 3829
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

    .line 3834
    :cond_16
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    .line 3836
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    .line 3838
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

    .line 3839
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    .line 3840
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

    .line 3841
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3842
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

    .line 3843
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

    .line 3844
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    .line 3845
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Z

    .line 3846
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Z

    .line 3847
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Z

    .line 3848
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

    .line 3849
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    .line 3850
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    .line 3851
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Z

    .line 3852
    if-ne v0, v4, :cond_0

    .line 3853
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    .line 3854
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    .line 3855
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

    .line 3856
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    .line 3857
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    .line 3858
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Z

    .line 3859
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3860
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

    goto/16 :goto_0

    .line 3862
    .end local v0           #isSVLTE:I
    :cond_17
    const-string v1, "DCMBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3863
    const/4 v1, 0x3

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3864
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3865
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Z

    .line 3866
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    goto/16 :goto_0

    .line 3867
    :cond_18
    const-string v1, "MPCSBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3868
    const/4 v1, 0x7

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 3869
    :cond_19
    const-string v1, "KDDIBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3870
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3871
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 3873
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3874
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3875
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Z

    .line 3876
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    .line 3877
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3878
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    .line 3879
    iput v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3880
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    .line 3881
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3882
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 3883
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    .line 3884
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 3885
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 3886
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3887
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3888
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3891
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Z

    .line 3892
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Z

    .line 3893
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_KDDI:Z

    .line 3894
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Z

    .line 3895
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_KDDI:Z

    .line 3896
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS:Z

    .line 3897
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CPA_KDDI:Z

    .line 3898
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Z

    .line 3899
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN_KDDI:Z

    .line 3900
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ONLY_CONNECT_IMS_WHEN_RADIO_OFF_KDDI:Z

    .line 3901
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_LOCAL_ADDR_ALLOWED_KDDI:Z

    .line 3904
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KDDI:Z

    .line 3905
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    goto/16 :goto_0

    .line 3906
    :cond_1a
    const-string v1, "SPCSBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3907
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3910
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3911
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3912
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3913
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3914
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 3915
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3916
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3917
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 3918
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    .line 3919
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_CHANGED:Z

    .line 3920
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3921
    const-string v1, "persist.service.privacy.enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    .line 3924
    :cond_1b
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GET_APNLIST_FOR_SLATE_SPRINT:Z

    .line 3925
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GSM_GLOBAL_PREFERED_APN_SPRINT:Z

    .line 3926
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Z

    .line 3927
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

    .line 3928
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

    .line 3929
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_TETHERING_PDN_SPRINT:Z

    .line 3930
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Z

    .line 3931
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV:Z

    .line 3932
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV_DEBUG_MESSAGE:Z

    .line 3933
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_MPDN_SPRINT:Z

    .line 3934
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_IA_TYPE_SPRINT:Z

    .line 3935
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_CDMA_DUMMY_APN_SPRINT:Z

    .line 3936
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Z

    .line 3937
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Z

    .line 3938
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Z

    .line 3939
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Z

    .line 3940
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Z

    .line 3941
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Z

    .line 3942
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Z

    .line 3943
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Z

    .line 3944
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Z

    goto/16 :goto_0

    .line 3946
    :cond_1c
    const-string v1, "USCBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3947
    const/16 v1, 0x1c

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3949
    const/16 v1, 0x1c

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3950
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 3951
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3952
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3957
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_WINDOW_SCALING_USC:Z

    goto/16 :goto_0

    .line 3959
    :cond_1d
    const-string v1, "SHBBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3960
    const/16 v1, 0x10

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 3961
    :cond_1e
    const-string v1, "MONBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3962
    const/16 v1, 0x11

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 3963
    :cond_1f
    const-string v1, "CMCCBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3964
    const/16 v1, 0x1b

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3965
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3966
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3967
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    .line 3968
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    .line 3969
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_WIFI_OFF_CMCC:Z

    .line 3970
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    .line 3971
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    .line 3972
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    goto/16 :goto_0

    .line 3973
    :cond_20
    const-string v1, "CTCBASE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3974
    const/16 v1, 0x1a

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3975
    const/16 v1, 0x1a

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3976
    const/4 v0, 0x0

    .line 3977
    .restart local v0       #isSVLTE:I
    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3978
    const-string v1, "true"

    const-string v2, "ro.support_mpdn"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3979
    const/16 v1, 0x1a

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3981
    :cond_21
    const-string v1, "telephony.lteOnCdmaDevice"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3982
    if-ne v0, v4, :cond_22

    .line 3984
    :cond_22
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_CTC:Z

    .line 3985
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    .line 3986
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3987
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPPOE_UPDATE_ROUTE_CTC:Z

    .line 3988
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Z

    .line 3989
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_HIPRI_APN_FOR_CDMA_MMS_CT:Z

    .line 3990
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DUMMY_APN_FOR_SKT_TEST_CT:Z

    .line 3991
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_SWITCH_APN_FOR_CDMA_MMS_CT:Z

    .line 3992
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_MMS_BLOCK_ON_ROAMING_CT:Z

    .line 3993
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MAKE_CLONE_APN_FOR_MSIM_CT:Z

    .line 3994
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTC_ROAMING:Z

    .line 3995
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    .line 3996
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3997
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3998
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 3999
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 4000
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 4001
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    .line 4002
    iput-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    goto/16 :goto_0

    .line 4004
    .end local v0           #isSVLTE:I
    :cond_23
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4005
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setGlobalCommonFeatureSet()V

    goto/16 :goto_0
.end method

.method private setGlobalCommonFeatureSet()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4023
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MATCH_PROTOCOL_TYPE_OF_IA_WITH_DEFAULT:Z

    .line 4024
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 4025
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 4026
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 4027
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_RCS_TYPE:Z

    .line 4028
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    .line 4029
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

    .line 4030
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 4031
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_OPEN:Z

    .line 4032
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    .line 4033
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 4034
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Z

    .line 4035
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    .line 4036
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    .line 4037
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 4038
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 4039
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    .line 4040
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

    .line 4041
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

    .line 4042
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    .line 4043
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Z

    .line 4044
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Z

    .line 4045
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDIAL_FOR_NO_CAUSE_CODE:Z

    .line 4051
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_DISABLE_FD_IN_PRE_R8:Z

    .line 4052
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

    .line 4053
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Z

    .line 4054
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    .line 4055
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 4056
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Z

    .line 4057
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_BLOCK_DATA_ENABLED_CHANGE:Z

    .line 4058
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NETD_CLATD_RECONFIGURATION:Z

    .line 4059
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

    .line 4061
    const-string v0, "mtk"

    const-string v1, "ro.lge.chip.vendor"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4062
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setGlobalCommonFeatureSetForMTK()V

    .line 4064
    :cond_0
    return-void
.end method

.method private setGlobalCommonFeatureSetForMTK()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4068
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DO_NOT_TRYSETUP_DURING_WIFI_ON_GEMINI:Z

    .line 4069
    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALWAYSON_ATTACH_DDS_SIM:Z

    .line 4070
    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_MTK_SUPPORT:Z

    .line 4071
    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DATAUSAGE_GEMINI:Z

    .line 4072
    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_PREFERRED_DATA_SUBSCRIPTION_ON_GEMINI:Z

    .line 4073
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_UNUSED_APN_TYPE_INIT:Z

    .line 4076
    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CONDITION_FOR_AUTO_ATTACH:Z

    .line 4077
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HANDLE_PACKET_SAMPLING_TIMER:Z

    .line 4081
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 4082
    return-void

    :cond_0
    move v0, v1

    .line 4076
    goto :goto_0
.end method

.method private writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "serializer"
    .parameter "name"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4109
    if-eqz p2, :cond_0

    const-string v0, "LGP_DATA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4111
    :cond_0
    const-string v0, "LgDataFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeFeatureAttribute(): Not LPP Data Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    :goto_0
    return-void

    .line 4115
    :cond_1
    const-string v0, "    "

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4116
    const-string v0, "feature"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4117
    const-string v0, "name"

    invoke-interface {p1, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4118
    const-string v0, "type"

    invoke-interface {p1, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4119
    const-string v0, "value"

    invoke-interface {p1, v1, v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4120
    const-string v0, "feature"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4121
    const-string v0, "\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method


# virtual methods
.method public deleteFeatureFile()V
    .locals 5

    .prologue
    .line 4326
    const/4 v0, 0x0

    .line 4331
    .local v0, XML_FILE_PATH:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 4333
    new-instance v1, Ljava/io/File;

    const-string v3, "lpp_data.xml"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4336
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4340
    :goto_0
    return-void

    .line 4337
    :catch_0
    move-exception v2

    .line 4338
    .local v2, ioe:Ljava/lang/Exception;
    const-string v3, "LgDataFeature"

    const-string v4, "deleteFeatureFile(): Error to delte file - lpp_data.xml"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllFeatureNames()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 4346
    const-class v7, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 4347
    .local v4, lgFeagureFields:[Ljava/lang/reflect/Field;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v4

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4348
    .local v6, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 4350
    .local v5, name:Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 4352
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4353
    if-eqz v5, :cond_0

    const-string v7, "LGP_DATA"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4350
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4355
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_1
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public getBooleanFeatureValue(Ljava/lang/String;)Z
    .locals 7
    .parameter "featureName"

    .prologue
    .line 4405
    const/4 v3, 0x0

    .line 4409
    .local v3, ret:Z
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4411
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 4422
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v3

    .line 4413
    :catch_0
    move-exception v2

    .line 4415
    .local v2, nsfe:Ljava/lang/NoSuchFieldException;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBooleanFeatureValue(): There is no such field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4417
    .end local v2           #nsfe:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 4419
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBooleanFeatureValue(): Exception found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFeatureValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "featureName"

    .prologue
    .line 4561
    const/4 v3, 0x0

    .line 4565
    .local v3, ret:Ljava/lang/Object;
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4566
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 4577
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v3           #ret:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 4568
    .restart local v3       #ret:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 4570
    .local v2, nsfe:Ljava/lang/NoSuchFieldException;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureValue(): There is no such field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4572
    .end local v2           #nsfe:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 4574
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureValue(): Exception found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIntegerFeatureValue(Ljava/lang/String;)I
    .locals 7
    .parameter "featureName"

    .prologue
    .line 4457
    const/4 v3, -0x1

    .line 4461
    .local v3, ret:I
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4463
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 4474
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v3

    .line 4465
    :catch_0
    move-exception v2

    .line 4467
    .local v2, nsfe:Ljava/lang/NoSuchFieldException;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntegerFeatureValue(): There is no such field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4469
    .end local v2           #nsfe:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 4471
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntegerFeatureValue(): Exception found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStringFeatureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "featureName"

    .prologue
    .line 4509
    const/4 v4, 0x0

    .line 4513
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    const-class v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 4515
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4526
    .end local v2           #field:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-object v4

    .line 4517
    :catch_0
    move-exception v3

    .line 4519
    .local v3, nsfe:Ljava/lang/NoSuchFieldException;
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStringFeatureValue(): There is no such field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4521
    .end local v3           #nsfe:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 4523
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStringFeatureValue(): Exception found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)I
    .locals 6
    .parameter "featureName"

    .prologue
    .line 4373
    :try_start_0
    const-class v3, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4375
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4377
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 4400
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return v3

    .line 4378
    .restart local v1       #field:Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 4379
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    .line 4380
    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    .line 4381
    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    goto :goto_0

    .line 4382
    :cond_4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    goto :goto_0

    .line 4383
    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    goto :goto_0

    .line 4384
    :cond_6
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x7

    goto :goto_0

    .line 4388
    :cond_7
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x8

    goto :goto_0

    .line 4391
    .end local v1           #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 4393
    .local v2, nsfe:Ljava/lang/NoSuchFieldException;
    const-string v3, "LgDataFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType(): There is no such field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4400
    .end local v2           #nsfe:Ljava/lang/NoSuchFieldException;
    :cond_8
    :goto_1
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 4395
    :catch_1
    move-exception v0

    .line 4397
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LgDataFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType(): Exception found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public loadFeatures()V
    .locals 21

    .prologue
    .line 4227
    const/4 v3, 0x0

    .line 4232
    .local v3, XML_FILE_PATH:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 4234
    new-instance v6, Ljava/io/File;

    const-string v18, "lpp_data.xml"

    move-object/from16 v0, v18

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4236
    .local v6, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 4239
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4245
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures(): Load all features from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 4249
    .local v15, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v15, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4251
    const/16 v16, 0x0

    .line 4252
    .local v16, type:I
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 4253
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v16

    goto :goto_0

    .line 4240
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #type:I
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v9

    .line 4241
    .local v9, fnfe:Ljava/io/FileNotFoundException;
    const-string v18, "LgDataFeature"

    const-string v19, "loadFeatures(): Error to open file - lpp_data.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4321
    .end local v9           #fnfe:Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 4256
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #type:I
    :cond_0
    :try_start_2
    const-string v18, "lpp"

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 4257
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "LPP Feature file does not start with lpp tag."

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 4305
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #type:I
    :catch_1
    move-exception v17

    .line 4306
    .local v17, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v18, "LgDataFeature"

    const-string v19, "loadFeatures(): Error parsing LPP features. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4313
    if-eqz v8, :cond_1

    .line 4315
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .end local v17           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    move-object v7, v8

    .line 4321
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 4265
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #type:I
    :cond_2
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 4261
    :cond_3
    :goto_3
    :try_start_5
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v16

    .line 4262
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 4313
    if-eqz v8, :cond_1

    .line 4315
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 4316
    :catch_2
    move-exception v18

    goto :goto_2

    .line 4268
    :cond_4
    :try_start_7
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 4269
    .local v14, nodeName:Ljava/lang/String;
    const-string v18, "feature"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 4270
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "LPP Feature file not well-formed."

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 4308
    .end local v14           #nodeName:Ljava/lang/String;
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #type:I
    :catch_3
    move-exception v4

    .line 4309
    .local v4, e:Ljava/lang/Exception;
    :try_start_8
    const-string v18, "LgDataFeature"

    const-string v19, "loadFeatures(): Error loading LPP features. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4313
    if-eqz v8, :cond_1

    .line 4315
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 4316
    :catch_4
    move-exception v18

    goto :goto_2

    .line 4273
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v14       #nodeName:Ljava/lang/String;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #type:I
    :cond_5
    const/16 v18, 0x0

    :try_start_a
    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4274
    .local v10, lpp_name:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4275
    .local v11, lpp_type:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4276
    .local v12, lpp_value:Ljava/lang/String;
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures():  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getType(Ljava/lang/String;)I

    move-result v5

    .line 4280
    .local v5, feature_type:I
    if-nez v5, :cond_7

    .line 4282
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setBooleanFeatureValue(Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_3

    .line 4313
    .end local v5           #feature_type:I
    .end local v10           #lpp_name:Ljava/lang/String;
    .end local v11           #lpp_type:Ljava/lang/String;
    .end local v12           #lpp_value:Ljava/lang/String;
    .end local v14           #nodeName:Ljava/lang/String;
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #type:I
    :catchall_0
    move-exception v18

    if-eqz v8, :cond_6

    .line 4315
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 4318
    :cond_6
    :goto_4
    throw v18

    .line 4284
    .restart local v5       #feature_type:I
    .restart local v10       #lpp_name:Ljava/lang/String;
    .restart local v11       #lpp_type:Ljava/lang/String;
    .restart local v12       #lpp_value:Ljava/lang/String;
    .restart local v14       #nodeName:Ljava/lang/String;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #type:I
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    .line 4288
    :try_start_c
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setIntegerFeatureValue(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_3

    .line 4290
    :catch_5
    move-exception v13

    .line 4292
    .local v13, nfe:Ljava/lang/NumberFormatException;
    :try_start_d
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures(): fail to parseInt, "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") as "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4295
    .end local v13           #nfe:Ljava/lang/NumberFormatException;
    :cond_8
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    .line 4297
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setStringFeatureValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4301
    :cond_9
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures(): fail to set "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") as "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_3

    .line 4316
    .end local v5           #feature_type:I
    .end local v10           #lpp_name:Ljava/lang/String;
    .end local v11           #lpp_type:Ljava/lang/String;
    .end local v12           #lpp_value:Ljava/lang/String;
    .end local v14           #nodeName:Ljava/lang/String;
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #type:I
    .restart local v17       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v18

    goto/16 :goto_2

    .end local v17           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v19

    goto/16 :goto_4
.end method

.method public saveFeatures()V
    .locals 22

    .prologue
    .line 4127
    const/4 v5, 0x0

    .line 4132
    .local v5, XML_FILE_PATH:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 4134
    new-instance v9, Ljava/io/File;

    const-string v18, "lpp_data.xml"

    move-object/from16 v0, v18

    invoke-direct {v9, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4136
    .local v9, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 4139
    .local v11, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4145
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .local v12, fos:Ljava/io/FileOutputStream;
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "saveFeatures(): Save all features to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v17

    .line 4151
    .local v17, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v12, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4152
    const-string v18, "UTF-8"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4153
    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4154
    const/16 v18, 0x0

    const-string v19, "lpp"

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4155
    const/16 v18, 0x0

    const-string v19, "model"

    const-string v20, "ro.product.device"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4156
    const/16 v18, 0x0

    const-string v19, "operator"

    const-string v20, "ro.afwdata.LGfeatureset"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4157
    const/16 v18, 0x0

    const-string v19, "version"

    const-string v20, "ro.lge.swversion"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4158
    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4160
    const-class v18, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    .line 4162
    .local v15, lgFeagureFields:[Ljava/lang/reflect/Field;
    move-object v6, v15

    .local v6, arr$:[Ljava/lang/reflect/Field;
    array-length v14, v6

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v14, :cond_6

    aget-object v8, v6, v13

    .line 4164
    .local v8, field:Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isPrimitive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v18

    if-eqz v18, :cond_3

    .line 4169
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 4171
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "boolean"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4162
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 4140
    .end local v6           #arr$:[Ljava/lang/reflect/Field;
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #lgFeagureFields:[Ljava/lang/reflect/Field;
    .end local v17           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 4141
    .local v10, fnfe:Ljava/io/FileNotFoundException;
    const-string v18, "LgDataFeature"

    const-string v19, "saveFeatures(): Error to open file - lpp_data.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4222
    .end local v10           #fnfe:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 4174
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #arr$:[Ljava/lang/reflect/Field;
    .restart local v8       #field:Ljava/lang/reflect/Field;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #lgFeagureFields:[Ljava/lang/reflect/Field;
    .restart local v17       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 4176
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "int"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 4179
    :catch_1
    move-exception v7

    .line 4181
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 4209
    .end local v6           #arr$:[Ljava/lang/reflect/Field;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #lgFeagureFields:[Ljava/lang/reflect/Field;
    :catch_2
    move-exception v7

    .line 4210
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4214
    if-eqz v12, :cond_2

    .line 4216
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    :goto_3
    move-object v11, v12

    .line 4222
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 4188
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #arr$:[Ljava/lang/reflect/Field;
    .restart local v8       #field:Ljava/lang/reflect/Field;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #lgFeagureFields:[Ljava/lang/reflect/Field;
    :cond_3
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    const-class v19, Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 4190
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "string"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 4198
    :catch_3
    move-exception v7

    .line 4200
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 4214
    .end local v6           #arr$:[Ljava/lang/reflect/Field;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #lgFeagureFields:[Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v18

    if-eqz v12, :cond_4

    .line 4216
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 4219
    :cond_4
    :goto_4
    throw v18

    .line 4194
    .restart local v6       #arr$:[Ljava/lang/reflect/Field;
    .restart local v8       #field:Ljava/lang/reflect/Field;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #lgFeagureFields:[Ljava/lang/reflect/Field;
    :cond_5
    :try_start_a
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 4195
    .local v16, obj:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "object"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    .line 4205
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v16           #obj:Ljava/lang/Object;
    :cond_6
    const/16 v18, 0x0

    :try_start_b
    const-string v19, "lpp"

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4206
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4207
    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 4214
    if-eqz v12, :cond_2

    .line 4216
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_3

    .line 4217
    :catch_4
    move-exception v18

    goto/16 :goto_3

    .end local v6           #arr$:[Ljava/lang/reflect/Field;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #lgFeagureFields:[Ljava/lang/reflect/Field;
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_5
    move-exception v18

    goto/16 :goto_3

    .end local v7           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v19

    goto :goto_4
.end method

.method public setBooleanFeatureValue(Ljava/lang/String;Z)V
    .locals 9
    .parameter "featureName"
    .parameter "value"

    .prologue
    .line 4429
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4431
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4433
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    .line 4434
    .local v5, old:Z
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 4435
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBooleanFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 4453
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v5           #old:Z
    :cond_0
    :goto_0
    return-void

    .line 4437
    :catch_0
    move-exception v4

    .line 4439
    .local v4, nsfe:Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBooleanFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4441
    .end local v4           #nsfe:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 4443
    .local v2, iae:Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBooleanFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4445
    .end local v2           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 4447
    .local v3, ipe:Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBooleanFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4449
    .end local v3           #ipe:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 4451
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBooleanFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFeatureValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .parameter "featureName"
    .parameter "value"

    .prologue
    .line 4584
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4586
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 4587
    .local v5, old:Ljava/lang/Object;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4588
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 4606
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v5           #old:Ljava/lang/Object;
    :goto_0
    return-void

    .line 4590
    :catch_0
    move-exception v4

    .line 4592
    .local v4, nsfe:Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4594
    .end local v4           #nsfe:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 4596
    .local v2, iae:Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4598
    .end local v2           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 4600
    .local v3, ipe:Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4602
    .end local v3           #ipe:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 4604
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIntegerFeatureValue(Ljava/lang/String;I)V
    .locals 9
    .parameter "featureName"
    .parameter "value"

    .prologue
    .line 4481
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4483
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4485
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 4486
    .local v5, old:I
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 4487
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setIntegerFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 4505
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v5           #old:I
    :cond_0
    :goto_0
    return-void

    .line 4489
    :catch_0
    move-exception v4

    .line 4491
    .local v4, nsfe:Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setIntegerFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4493
    .end local v4           #nsfe:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 4495
    .local v2, iae:Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setIntegerFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4497
    .end local v2           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 4499
    .local v3, ipe:Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setIntegerFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4501
    .end local v3           #ipe:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 4503
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setIntegerFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStringFeatureValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "featureName"
    .parameter "value"

    .prologue
    .line 4533
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4535
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4537
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4538
    .local v5, old:Ljava/lang/String;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4539
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStringFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 4557
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v5           #old:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4541
    :catch_0
    move-exception v4

    .line 4543
    .local v4, nsfe:Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStringFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4545
    .end local v4           #nsfe:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 4547
    .local v2, iae:Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStringFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4549
    .end local v2           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 4551
    .local v3, ipe:Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStringFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4553
    .end local v3           #ipe:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 4555
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStringFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public test()V
    .locals 8

    .prologue
    .line 4610
    const-string v5, "LGP_DATA_TETHER_BLOCK_GOOGLE_DNS"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getBooleanFeatureValue(Ljava/lang/String;)Z

    .line 4611
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: 1. LGP_DATA_TETHER_BLOCK_GOOGLE_DNS is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->saveFeatures()V

    .line 4613
    const-string v5, "LGP_DATA_TETHER_BLOCK_GOOGLE_DNS"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setBooleanFeatureValue(Ljava/lang/String;Z)V

    .line 4614
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: 2. LGP_DATA_TETHER_BLOCK_GOOGLE_DNS is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4615
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->loadFeatures()V

    .line 4616
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: 3. LGP_DATA_TETHER_BLOCK_GOOGLE_DNS is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getAllFeatureNames()[Ljava/lang/String;

    move-result-object v1

    .line 4619
    .local v1, features:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 4621
    .local v4, s:Ljava/lang/String;
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4623
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4086
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeatureSet Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FeatureSet Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4087
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
