.class public final Lcom/lge/media/TimedTextEx$SetPenAttribute;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetPenAttribute"
.end annotation


# instance fields
.field public final edgeType:I

.field public final font:I

.field public final italics:I

.field public final offSet:I

.field public final penSize:I

.field public final textTag:I

.field public final underline:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 3
    .parameter "penSize"
    .parameter "font"
    .parameter "textTag"
    .parameter "offSet"
    .parameter "italics"
    .parameter "underline"
    .parameter "edgeType"

    .prologue
    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    const-string v0, "TimedTextEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetPenAttribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iput p1, p0, Lcom/lge/media/TimedTextEx$SetPenAttribute;->penSize:I

    .line 1212
    iput p2, p0, Lcom/lge/media/TimedTextEx$SetPenAttribute;->font:I

    .line 1213
    iput p3, p0, Lcom/lge/media/TimedTextEx$SetPenAttribute;->textTag:I

    .line 1214
    iput p4, p0, Lcom/lge/media/TimedTextEx$SetPenAttribute;->offSet:I

    .line 1215
    iput p5, p0, Lcom/lge/media/TimedTextEx$SetPenAttribute;->italics:I

    .line 1216
    iput p6, p0, Lcom/lge/media/TimedTextEx$SetPenAttribute;->underline:I

    .line 1217
    iput p7, p0, Lcom/lge/media/TimedTextEx$SetPenAttribute;->edgeType:I

    .line 1218
    return-void
.end method
