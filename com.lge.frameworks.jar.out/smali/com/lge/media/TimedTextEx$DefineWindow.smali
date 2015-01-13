.class public final Lcom/lge/media/TimedTextEx$DefineWindow;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefineWindow"
.end annotation


# instance fields
.field public final anchorHorizontal:I

.field public final anchorPoint:I

.field public final anchorVertical:I

.field public final columnCount:I

.field public final columnLock:I

.field public final penStyleID:I

.field public final priority:I

.field public final relativePosition:I

.field public final rowCount:I

.field public final rowLock:I

.field public final visible:I

.field public final windowID:I

.field public final windowStyleID:I


# direct methods
.method public constructor <init>(IIIIIIIIIIIII)V
    .locals 4
    .parameter "windowID"
    .parameter "priority"
    .parameter "anchorPoint"
    .parameter "relativePosition"
    .parameter "anchorVertical"
    .parameter "anchorHorizontal"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "rowLock"
    .parameter "columnLock"
    .parameter "visible"
    .parameter "windowStyleID"
    .parameter "penStyleID"

    .prologue
    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    const-string v1, "TimedTextEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefineWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iput p1, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->windowID:I

    .line 965
    iput p2, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->priority:I

    .line 966
    iput p3, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->anchorPoint:I

    .line 967
    iput p4, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->relativePosition:I

    .line 968
    iput p5, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->anchorVertical:I

    .line 969
    iput p6, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->anchorHorizontal:I

    .line 970
    iput p7, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->rowCount:I

    .line 971
    iput p8, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->columnCount:I

    .line 972
    iput p9, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->rowLock:I

    .line 973
    iput p10, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->columnLock:I

    .line 974
    iput p11, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->visible:I

    .line 975
    move/from16 v0, p12

    iput v0, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->windowStyleID:I

    .line 976
    move/from16 v0, p13

    iput v0, p0, Lcom/lge/media/TimedTextEx$DefineWindow;->penStyleID:I

    .line 977
    return-void
.end method
