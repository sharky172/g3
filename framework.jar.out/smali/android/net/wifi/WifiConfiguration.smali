.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$ProxySettings;,
        Landroid/net/wifi/WifiConfiguration$IpAssignment;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_ASSOCIATION_REJECT:I = 0x4

.field public static final DISABLED_AUTH_FAILURE:I = 0x3

.field public static final DISABLED_DHCP_FAILURE:I = 0x2

.field public static final DISABLED_DNS_FAILURE:I = 0x1

.field public static final DISABLED_UNKNOWN_REASON:I = 0x0

.field public static final INVALID_NETWORK_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WifiConfiguration"

.field public static final WAPI_ASCII_PASSWORD:I = 0x0

.field public static final WAPI_HEX_PASSWORD:I = 0x1

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final captiveCheckVarName:Ljava/lang/String; = "captive_check"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final wapiAsCertVarName:Ljava/lang/String; = "wapi_as_cert"

.field public static final wapiCertIndexVarName:Ljava/lang/String; = "cert_index"

.field public static final wapiPskTypeVarName:Ljava/lang/String; = "psk_key_type"

.field public static final wapiPskVarName:Ljava/lang/String; = "wapi_psk"

.field public static final wapiUserCertVarName:Ljava/lang/String; = "wapi_user_cert"

.field public static final wepKeyVarNames:[Ljava/lang/String; = null

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public captiveCheck:I

.field public disableReason:I

.field public enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field public hiddenSSID:Z

.field public ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field public linkProperties:Landroid/net/LinkProperties;

.field public networkId:I

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field public status:I

.field public wapiASCert:Ljava/lang/String;

.field public wapiCertIndex:I

.field public wapiPsk:Ljava/lang/String;

.field public wapiPskType:I

.field public wapiUserCert:Ljava/lang/String;

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wep_key0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "wep_key1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "wep_key2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "wep_key3"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 826
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 442
    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 443
    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 444
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 445
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 448
    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    .line 451
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 452
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 453
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 454
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 455
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 456
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 457
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 458
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 459
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_0
    const/4 v3, -0x1

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 463
    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 464
    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 465
    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 468
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 469
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 470
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 471
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 472
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    if-eqz p1, :cond_1

    .line 750
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 751
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 752
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 753
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 754
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 755
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, -0x1

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 758
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 759
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 763
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 764
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 766
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    .line 768
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 769
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 770
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 771
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 772
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 774
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 776
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 777
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 778
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 780
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .parameter "src"

    .prologue
    .line 682
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 684
    .local v0, cardinality:I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 685
    .local v2, set:Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 686
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    :cond_0
    return-object v2
.end method

.method private trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    .line 678
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2
    .parameter "dest"
    .parameter "set"

    .prologue
    .line 693
    const/4 v0, -0x1

    .line 695
    .local v0, nextSetBit:I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 698
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 700
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()I
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/16 v4, 0x9

    const/4 v3, 0x5

    .line 706
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 712
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 739
    :goto_0
    return v0

    .line 716
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 717
    const/4 v0, 0x4

    goto :goto_0

    .line 718
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 719
    goto :goto_0

    .line 720
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 721
    goto :goto_0

    .line 722
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 723
    goto :goto_0

    .line 726
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 727
    const/4 v0, 0x6

    goto :goto_0

    .line 728
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 729
    const/4 v0, 0x7

    goto :goto_0

    .line 733
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 734
    const/16 v0, 0x8

    goto :goto_0

    .line 735
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v4

    .line 736
    goto :goto_0

    .line 739
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 5
    .parameter "current"

    .prologue
    .line 644
    const/4 v1, 0x0

    .line 648
    .local v1, keyMgmt:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 649
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-nez v2, :cond_1

    .line 650
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 652
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v2, v3

    .line 656
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 657
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v1, v2, v3

    .line 660
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 665
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not an EAP network"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid config details"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 668
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p1, :cond_6

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    :goto_0
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 616
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    .line 632
    :goto_0
    return-object v2

    .line 617
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 618
    .local v0, length:I
    if-le v0, v7, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 619
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 626
    :cond_1
    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 628
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    .line 630
    .local v1, wifiSsid:Landroid/net/wifi/WifiSsid;
    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 632
    .end local v1           #wifiSsid:Landroid/net/wifi/WifiSsid;
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 480
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 481
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 484
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 494
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0xa

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v5, sbuf:Ljava/lang/StringBuilder;
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v6, :cond_2

    .line 501
    const-string v6, "* "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_0
    :goto_0
    const-string v6, "ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SSID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " BSSID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " PRIO: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    const-string v6, " KeyMgmt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 510
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 511
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    sget-object v6, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 513
    sget-object v6, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 502
    .end local v2           #k:I
    :cond_2
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 503
    const-string v6, "- DSBLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 515
    .restart local v2       #k:I
    :cond_3
    const-string v6, "??"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 519
    :cond_4
    const-string v6, " Protocols:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const/4 v3, 0x0

    .local v3, p:I
    :goto_3
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 521
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 522
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    sget-object v6, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_6

    .line 524
    sget-object v6, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 526
    :cond_6
    const-string v6, "??"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 530
    :cond_7
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    const-string v6, " AuthAlgorithms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const/4 v0, 0x0

    .local v0, a:I
    :goto_5
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v0, v6, :cond_a

    .line 533
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 534
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    sget-object v6, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_9

    .line 536
    sget-object v6, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 538
    :cond_9
    const-string v6, "??"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 542
    :cond_a
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    const-string v6, " PairwiseCiphers:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const/4 v4, 0x0

    .local v4, pc:I
    :goto_7
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v4, v6, :cond_d

    .line 545
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 546
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    sget-object v6, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_c

    .line 548
    sget-object v6, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_b
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 550
    :cond_c
    const-string v6, "??"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 554
    :cond_d
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    const-string v6, " GroupCiphers:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const/4 v1, 0x0

    .local v1, gc:I
    :goto_9
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v1, v6, :cond_10

    .line 557
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 558
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    sget-object v6, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_f

    .line 560
    sget-object v6, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_e
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 562
    :cond_f
    const-string v6, "??"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 566
    :cond_10
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " PSK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v6, :cond_11

    .line 568
    const/16 v6, 0x2a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    :cond_11
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 573
    const-string v6, " WapiAsCert: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_12
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    if-eqz v6, :cond_13

    .line 577
    const-string v6, " WapiUserCert: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_13
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    if-eq v6, v9, :cond_14

    .line 581
    const-string v6, " WapiCertIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    :cond_14
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    if-eq v6, v9, :cond_15

    .line 585
    const-string v6, " WapiPskType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    :cond_15
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IP assignment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proxy settings: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 784
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 788
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 789
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 791
    .local v3, wepKey:Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 793
    .end local v3           #wepKey:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 800
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 801
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 802
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 803
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 805
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 807
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    :cond_1
    :goto_2
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 820
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 821
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 822
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 823
    return-void

    .line 795
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 808
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 810
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 811
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
