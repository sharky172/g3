.class public Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;
.super Ljava/lang/Object;
.source "NfcConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerStatus"
.end annotation


# instance fields
.field DefaultOnOffType:Ljava/lang/String;

.field long_name:Ljava/lang/String;

.field mcc:Ljava/lang/String;

.field mnc:Ljava/lang/String;

.field short_name:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/nfcconfig/NfcConfigParser;


# direct methods
.method public constructor <init>(Lcom/lge/nfcconfig/NfcConfigParser;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->this$0:Lcom/lge/nfcconfig/NfcConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "oncardrwp2p"

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigParser$PowerStatus;->DefaultOnOffType:Ljava/lang/String;

    return-void
.end method
