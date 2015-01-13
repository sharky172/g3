.class Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/MMdebuger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PDNFailHistory"
.end annotation


# instance fields
.field public LastFailPDNIPv:I

.field public LastFailPDNType:I

.field RequestRadioTech:I

.field ResponseRadioTech:I

.field curDay:I

.field curHour:I

.field curMinute:I

.field curMonth:I

.field curSecond:I

.field curYear:I

.field reason:I

.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/MMdebuger;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V
    .locals 0
    .parameter
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->this$0:Lcom/android/internal/telephony/lgdata/MMdebuger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curYear:I

    .line 70
    iput p3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curMonth:I

    .line 71
    iput p4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curDay:I

    .line 72
    iput p5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curHour:I

    .line 73
    iput p6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curMinute:I

    .line 74
    iput p7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curSecond:I

    .line 75
    return-void
.end method
