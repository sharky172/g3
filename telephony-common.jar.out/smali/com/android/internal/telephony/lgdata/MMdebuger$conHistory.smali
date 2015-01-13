.class Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/MMdebuger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "conHistory"
.end annotation


# instance fields
.field APNID:I

.field cid:I

.field cmdtype:I

.field curDay:I

.field curHour:I

.field curMinute:I

.field curMonth:I

.field curSecond:I

.field curYear:I

.field currRadioTech:I

.field serialnum:I

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
    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->this$0:Lcom/android/internal/telephony/lgdata/MMdebuger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curYear:I

    .line 120
    iput p3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curMonth:I

    .line 121
    iput p4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curDay:I

    .line 122
    iput p5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curHour:I

    .line 123
    iput p6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curMinute:I

    .line 124
    iput p7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curSecond:I

    .line 125
    return-void
.end method
