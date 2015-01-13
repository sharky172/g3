.class Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/MMdebuger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ePDGEventHistory"
.end annotation


# instance fields
.field curDay:I

.field curHour:I

.field curMinute:I

.field curMonth:I

.field curSecond:I

.field curYear:I

.field event_type:I

.field pdn_type:I

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
    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->this$0:Lcom/android/internal/telephony/lgdata/MMdebuger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curYear:I

    .line 154
    iput p3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curMonth:I

    .line 155
    iput p4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curDay:I

    .line 156
    iput p5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curHour:I

    .line 157
    iput p6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curMinute:I

    .line 158
    iput p7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGEventHistory;->curSecond:I

    .line 159
    return-void
.end method
