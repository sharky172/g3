.class Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$AreaCode;
.super Ljava/lang/Object;
.source "LGAssistDialPhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/LGAssistDialPhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AreaCode"
.end annotation


# instance fields
.field private areacode:Ljava/lang/String;

.field private cityname:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/telephony/LGAssistDialPhoneNumberUtils;


# direct methods
.method private constructor <init>(Lcom/lge/telephony/LGAssistDialPhoneNumberUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "areacode"
    .parameter "cityname"

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$AreaCode;->this$0:Lcom/lge/telephony/LGAssistDialPhoneNumberUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1881
    iput-object p2, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$AreaCode;->areacode:Ljava/lang/String;

    .line 1882
    iput-object p3, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$AreaCode;->cityname:Ljava/lang/String;

    .line 1884
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/telephony/LGAssistDialPhoneNumberUtils;Ljava/lang/String;Ljava/lang/String;Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1867
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$AreaCode;-><init>(Lcom/lge/telephony/LGAssistDialPhoneNumberUtils;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAreacode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$AreaCode;->areacode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/lge/telephony/LGAssistDialPhoneNumberUtils$AreaCode;->cityname:Ljava/lang/String;

    return-object v0
.end method
