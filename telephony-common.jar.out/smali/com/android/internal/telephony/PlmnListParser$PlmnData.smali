.class Lcom/android/internal/telephony/PlmnListParser$PlmnData;
.super Ljava/lang/Object;
.source "PlmnListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PlmnListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlmnData"
.end annotation


# instance fields
.field public longName:Ljava/lang/String;

.field public numeric:Ljava/lang/String;

.field public shortName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/PlmnListParser;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PlmnListParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "mcc"
    .parameter "mnc"
    .parameter "longName"
    .parameter "shortName"

    .prologue
    const/4 v0, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->this$0:Lcom/android/internal/telephony/PlmnListParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->numeric:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->longName:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->shortName:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->numeric:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->longName:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->shortName:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->longName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
