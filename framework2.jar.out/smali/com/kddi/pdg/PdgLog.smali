.class public final Lcom/kddi/pdg/PdgLog;
.super Ljava/lang/Object;
.source "PdgLog.java"


# static fields
.field private static final LOG_LEVEL_D:I = 0x4

.field private static final LOG_LEVEL_E:I = 0x1

.field private static final LOG_LEVEL_I:I = 0x3

.field private static final LOG_LEVEL_NONE:I = 0x0

.field private static final LOG_LEVEL_V:I = 0x5

.field private static final LOG_LEVEL_W:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PDG"

.field private static mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/kddi/pdg/PdgLog;->mLevel:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 148
    sget v0, Lcom/kddi/pdg/PdgLog;->mLevel:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    if-eqz p0, :cond_0

    .line 153
    const-string v0, "PDG"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 166
    if-eqz p0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/kddi/pdg/PdgLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 55
    sget v0, Lcom/kddi/pdg/PdgLog;->mLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    if-eqz p0, :cond_0

    .line 60
    const-string v0, "PDG"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/kddi/pdg/PdgLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .parameter "tr"

    .prologue
    .line 211
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 117
    sget v0, Lcom/kddi/pdg/PdgLog;->mLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    if-eqz p0, :cond_0

    .line 122
    const-string v0, "PDG"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 135
    if-eqz p0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/kddi/pdg/PdgLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->i(Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 179
    sget v0, Lcom/kddi/pdg/PdgLog;->mLevel:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    if-eqz p0, :cond_0

    .line 184
    const-string v0, "PDG"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 197
    if-eqz p0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/kddi/pdg/PdgLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->v(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 86
    sget v0, Lcom/kddi/pdg/PdgLog;->mLevel:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    if-eqz p0, :cond_0

    .line 91
    const-string v0, "PDG"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 104
    if-eqz p0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/kddi/pdg/PdgLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/pdg/PdgLog;->w(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method
