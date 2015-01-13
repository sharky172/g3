.class public final Lcom/lge/systemservice/core/EmotionalLedManager;
.super Ljava/lang/Object;
.source "EmotionalLedManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/EmotionalLedManager$ErrorNums;
    }
.end annotation


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.emotionalled"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/IEmotionalLedManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/systemservice/core/EmotionalLedManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    .line 22
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IEmotionalLedManager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    if-nez v0, :cond_0

    .line 26
    const-string v0, "emotionled"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IEmotionalLedManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IEmotionalLedManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    return-object v0
.end method


# virtual methods
.method public clearAllLeds()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/lge/systemservice/core/EmotionalLedManager;->clearAllPatterns()I

    .line 163
    return-void
.end method

.method public clearAllPatterns()I
    .locals 4

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/lge/systemservice/core/EmotionalLedManager;->getService()Lcom/lge/systemservice/core/IEmotionalLedManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    .line 173
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    if-nez v2, :cond_0

    .line 174
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v1, -0x1

    .line 185
    :goto_0
    return v1

    .line 180
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/IEmotionalLedManager;->clearAllLeds()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, result:I
    goto :goto_0

    .line 181
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 182
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 183
    .restart local v1       #result:I
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEmotionalLedType()I
    .locals 4

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, ledType:I
    invoke-direct {p0}, Lcom/lge/systemservice/core/EmotionalLedManager;->getService()Lcom/lge/systemservice/core/IEmotionalLedManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    .line 336
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    if-nez v2, :cond_0

    .line 337
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v2, -0x1

    .line 345
    :goto_0
    return v2

    .line 341
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/IEmotionalLedManager;->getEmotionalLedType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 345
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public restart()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/lge/systemservice/core/EmotionalLedManager;->restartPatterns()I

    .line 199
    return-void
.end method

.method public restartPatterns()I
    .locals 4

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/lge/systemservice/core/EmotionalLedManager;->getService()Lcom/lge/systemservice/core/IEmotionalLedManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    .line 211
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    if-nez v2, :cond_0

    .line 212
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v1, -0x1

    .line 223
    :goto_0
    return v1

    .line 218
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/IEmotionalLedManager;->restart()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, result:I
    goto :goto_0

    .line 219
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 220
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 221
    .restart local v1       #result:I
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBrightness(I)V
    .locals 1
    .parameter "brightness"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/systemservice/core/EmotionalLedManager;->setBrightnessLed(II)I

    .line 297
    return-void
.end method

.method public setBrightnessLed(II)I
    .locals 4
    .parameter "brightness"
    .parameter "lednum"

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/lge/systemservice/core/EmotionalLedManager;->getService()Lcom/lge/systemservice/core/IEmotionalLedManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    .line 310
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    if-nez v2, :cond_0

    .line 311
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v1, -0x1

    .line 322
    :goto_0
    return v1

    .line 317
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IEmotionalLedManager;->setBrightness(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, result:I
    goto :goto_0

    .line 318
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 319
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 320
    .restart local v1       #result:I
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)V
    .locals 0
    .parameter "pkgName"
    .parameter "id"
    .parameter "record"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/systemservice/core/EmotionalLedManager;->startPattern(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I

    .line 44
    return-void
.end method

.method public startPattern(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I
    .locals 4
    .parameter "pkgName"
    .parameter "id"
    .parameter "record"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/lge/systemservice/core/EmotionalLedManager;->getService()Lcom/lge/systemservice/core/IEmotionalLedManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    .line 58
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    if-nez v2, :cond_0

    .line 59
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, -0x1

    .line 70
    :goto_0
    return v1

    .line 65
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/lge/systemservice/core/IEmotionalLedManager;->start(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, result:I
    goto :goto_0

    .line 66
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 67
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 68
    .restart local v1       #result:I
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop(Ljava/lang/String;I)V
    .locals 0
    .parameter "pkgName"
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/lge/systemservice/core/EmotionalLedManager;->stopPattern(Ljava/lang/String;I)I

    .line 85
    return-void
.end method

.method public stopPattern(Ljava/lang/String;I)I
    .locals 4
    .parameter "pkgName"
    .parameter "id"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/lge/systemservice/core/EmotionalLedManager;->getService()Lcom/lge/systemservice/core/IEmotionalLedManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    .line 98
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    if-nez v2, :cond_0

    .line 99
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, -0x1

    .line 110
    :goto_0
    return v1

    .line 105
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/IEmotionalLedManager;->stop(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, result:I
    goto :goto_0

    .line 106
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 107
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 108
    .restart local v1       #result:I
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)V
    .locals 0
    .parameter "pkgName"
    .parameter "id"
    .parameter "record"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/systemservice/core/EmotionalLedManager;->updatePattern(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I

    .line 125
    return-void
.end method

.method public updateLightList(IIIIIILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "recordId"
    .parameter "exceptional"
    .parameter "ledARGB"
    .parameter "ledOnMS"
    .parameter "ledOffMS"
    .parameter "pkg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    invoke-virtual/range {p0 .. p7}, Lcom/lge/systemservice/core/EmotionalLedManager;->updatePatternList(IIIIIILjava/lang/String;)I

    .line 248
    return-void
.end method

.method public updatePattern(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I
    .locals 4
    .parameter "pkgName"
    .parameter "id"
    .parameter "record"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/lge/systemservice/core/EmotionalLedManager;->getService()Lcom/lge/systemservice/core/IEmotionalLedManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    .line 138
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    if-nez v2, :cond_0

    .line 139
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, -0x1

    .line 150
    :goto_0
    return v1

    .line 145
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/lge/systemservice/core/IEmotionalLedManager;->update(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, result:I
    goto :goto_0

    .line 146
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 147
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 148
    .restart local v1       #result:I
    sget-object v2, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updatePatternList(IIIIIILjava/lang/String;)I
    .locals 10
    .parameter "action"
    .parameter "recordId"
    .parameter "exceptional"
    .parameter "ledARGB"
    .parameter "ledOnMS"
    .parameter "ledOffMS"
    .parameter "pkg"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/lge/systemservice/core/EmotionalLedManager;->getService()Lcom/lge/systemservice/core/IEmotionalLedManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    .line 271
    iget-object v0, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    if-nez v0, :cond_0

    .line 272
    sget-object v0, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    const-string v1, "cannot get service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v9, -0x1

    .line 283
    :goto_0
    return v9

    .line 278
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lge/systemservice/core/EmotionalLedManager;->mService:Lcom/lge/systemservice/core/IEmotionalLedManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/lge/systemservice/core/IEmotionalLedManager;->updateLightList(IIIIIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .local v9, result:I
    goto :goto_0

    .line 279
    .end local v9           #result:I
    :catch_0
    move-exception v8

    .line 280
    .local v8, ex:Landroid/os/RemoteException;
    const/4 v9, -0x1

    .line 281
    .restart local v9       #result:I
    sget-object v0, Lcom/lge/systemservice/core/EmotionalLedManager;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
