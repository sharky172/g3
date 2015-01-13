.class Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGWiFiHistory;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/MMdebuger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ePDGWiFiHistory"
.end annotation


# instance fields
.field TotalEve:D

.field curDay:I

.field curHour:I

.field curMinute:I

.field curMonth:I

.field curSecond:I

.field curYear:I

.field eve:D

.field lastBadPacket:D

.field lastEve:D

.field lastGoodPacket:D

.field lastRssi:D

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
    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGWiFiHistory;->this$0:Lcom/android/internal/telephony/lgdata/MMdebuger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGWiFiHistory;->curYear:I

    .line 139
    iput p3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGWiFiHistory;->curMonth:I

    .line 140
    iput p4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGWiFiHistory;->curDay:I

    .line 141
    iput p5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGWiFiHistory;->curHour:I

    .line 142
    iput p6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGWiFiHistory;->curMinute:I

    .line 143
    iput p7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$ePDGWiFiHistory;->curSecond:I

    .line 144
    return-void
.end method
