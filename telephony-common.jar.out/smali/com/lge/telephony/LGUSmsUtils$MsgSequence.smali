.class public Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
.super Ljava/lang/Object;
.source "LGUSmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/LGUSmsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgSequence"
.end annotation


# instance fields
.field public mEos:I

.field public mPdu:[B

.field final synthetic this$0:Lcom/lge/telephony/LGUSmsUtils;


# direct methods
.method public constructor <init>(Lcom/lge/telephony/LGUSmsUtils;I[B)V
    .locals 1
    .parameter
    .parameter "eos"
    .parameter "pdu"

    .prologue
    .line 904
    iput-object p1, p0, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;->this$0:Lcom/lge/telephony/LGUSmsUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;->mEos:I

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;->mPdu:[B

    .line 905
    iput p2, p0, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;->mEos:I

    .line 906
    iput-object p3, p0, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;->mPdu:[B

    .line 907
    return-void
.end method
