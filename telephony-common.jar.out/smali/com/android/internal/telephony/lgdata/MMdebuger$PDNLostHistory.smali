.class Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/MMdebuger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PDNLostHistory"
.end annotation


# instance fields
.field PDNIPv:I

.field PDNType:I

.field RadioTech:I

.field curDay:I

.field curHour:I

.field curMinute:I

.field curMonth:I

.field curSecond:I

.field curYear:I

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
    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->this$0:Lcom/android/internal/telephony/lgdata/MMdebuger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curYear:I

    .line 102
    iput p3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curMonth:I

    .line 103
    iput p4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curDay:I

    .line 104
    iput p5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curHour:I

    .line 105
    iput p6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curMinute:I

    .line 106
    iput p7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;->curSecond:I

    .line 107
    return-void
.end method
