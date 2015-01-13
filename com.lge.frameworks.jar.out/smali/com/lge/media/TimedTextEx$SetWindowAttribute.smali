.class public final Lcom/lge/media/TimedTextEx$SetWindowAttribute;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetWindowAttribute"
.end annotation


# instance fields
.field public final borderColor:I

.field public final borderType:I

.field public final displayEffect:I

.field public final effectDirection:I

.field public final effectSpeed:I

.field public final fillColor:I

.field public final fillOpacity:I

.field public final justify:I

.field public final printDirection:I

.field public final scrollDirection:I

.field public final wordRap:I


# direct methods
.method public constructor <init>(IIIIIIIIIII)V
    .locals 3
    .parameter "justify"
    .parameter "printDirection"
    .parameter "scrollDirection"
    .parameter "wordRap"
    .parameter "displayEffect"
    .parameter "effectDirection"
    .parameter "effectSpeed"
    .parameter "fillColor"
    .parameter "fillOpacity"
    .parameter "borderType"
    .parameter "borderColor"

    .prologue
    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    const-string v0, "TimedTextEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetWindowAttribute"

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

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iput p1, p0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;->justify:I

    .line 1144
    iput p2, p0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;->printDirection:I

    .line 1145
    iput p3, p0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;->scrollDirection:I

    .line 1146
    iput p4, p0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;->wordRap:I

    .line 1147
    iput p5, p0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;->displayEffect:I

    .line 1148
    iput p6, p0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;->effectDirection:I

    .line 1149
    iput p7, p0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;->effectSpeed:I

    .line 1150
    iput p8, p0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;->fillColor:I

    .line 1151
    iput p9, p0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;->fillOpacity:I

    .line 1152
    iput p10, p0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;->borderType:I

    .line 1153
    iput p11, p0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;->borderColor:I

    .line 1154
    return-void
.end method
