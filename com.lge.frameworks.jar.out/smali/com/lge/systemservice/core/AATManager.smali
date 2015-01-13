.class public Lcom/lge/systemservice/core/AATManager;
.super Ljava/lang/Object;
.source "AATManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "AAT"

.field private static final TAG:Ljava/lang/String; = "AAT"

.field private static final TITLE:Ljava/lang/String; = "AATManager"


# instance fields
.field private mService:Lcom/lge/systemservice/core/IAATManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IAATManager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/systemservice/core/AATManager;->mService:Lcom/lge/systemservice/core/IAATManager;

    if-nez v0, :cond_0

    .line 32
    const-string v0, "AAT"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IAATManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/AATManager;->mService:Lcom/lge/systemservice/core/IAATManager;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/AATManager;->mService:Lcom/lge/systemservice/core/IAATManager;

    return-object v0
.end method


# virtual methods
.method public AATFinalize()V
    .locals 3

    .prologue
    .line 74
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] AATFinalize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->AATFinalize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public AATInitialize()V
    .locals 3

    .prologue
    .line 52
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] AATInitialize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->AATInitialize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public AATsetLCDOnOff(Z)V
    .locals 3
    .parameter "Lcd_OnOff"

    .prologue
    .line 1235
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] AATsetLCDOnOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IAATManager;->AATsetLCDOnOff(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :goto_0
    return-void

    .line 1238
    :catch_0
    move-exception v0

    .line 1240
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public FolderTest_GetDetailTestSupportValue(I)Z
    .locals 3
    .parameter "nWhatTest"

    .prologue
    .line 1382
    const/4 v1, 0x1

    .line 1385
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IAATManager;->FolderTest_GetDetailTestSupportValue(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1391
    :goto_0
    return v1

    .line 1387
    :catch_0
    move-exception v0

    .line 1389
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public FolderTest_GetDimOnBacklightValue()F
    .locals 3

    .prologue
    .line 1422
    const/4 v1, 0x0

    .line 1425
    .local v1, mvalue:F
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->FolderTest_GetDimOnBacklightValue()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1431
    :goto_0
    return v1

    .line 1427
    :catch_0
    move-exception v0

    .line 1429
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public FolderTest_GetFilePath(I)Ljava/lang/String;
    .locals 3
    .parameter "nWhatPath"

    .prologue
    .line 1402
    const-string v1, ""

    .line 1405
    .local v1, mvalue:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IAATManager;->FolderTest_GetFilePath(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1411
    :goto_0
    return-object v1

    .line 1407
    :catch_0
    move-exception v0

    .line 1409
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public FolderTest_GetSupportedMenuList()[Z
    .locals 3

    .prologue
    .line 1362
    const/16 v2, 0x8

    new-array v1, v2, [Z

    .line 1365
    .local v1, mvalue:[Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->FolderTest_GetSupportedMenuList()[Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1371
    :goto_0
    return-object v1

    .line 1367
    :catch_0
    move-exception v0

    .line 1369
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public GetUsbOnOffValue()I
    .locals 3

    .prologue
    .line 1442
    const/4 v1, -0x1

    .line 1445
    .local v1, mvalue:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->GetUsbOnOffValue()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1451
    :goto_0
    return v1

    .line 1447
    :catch_0
    move-exception v0

    .line 1449
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public IsFMRadio()Z
    .locals 3

    .prologue
    .line 962
    const/4 v1, 0x0

    .line 966
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->IsFMRadio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 972
    :goto_0
    return v1

    .line 968
    :catch_0
    move-exception v0

    .line 970
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public IsSupportAutoFocus()Z
    .locals 3

    .prologue
    .line 1280
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] IsSupportAutoFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->IsSupportAutoFocus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1289
    :goto_0
    return v1

    .line 1283
    :catch_0
    move-exception v0

    .line 1287
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1289
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsSupportBarometer()Z
    .locals 3

    .prologue
    .line 579
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] IsSupportBarometer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->IsSupportBarometer()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 588
    :goto_0
    return v1

    .line 582
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 588
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsSupportGLOTestGps()Z
    .locals 3

    .prologue
    .line 198
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] IsSupportGLOTestGps"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->IsSupportGLOTestGps()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 207
    :goto_0
    return v1

    .line 201
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsSupportHookKeyTest()Z
    .locals 2

    .prologue
    .line 602
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->IsSupportHookKeyTest()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 611
    :goto_0
    return v1

    .line 604
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 611
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsSupportInvalidAATSet()Z
    .locals 3

    .prologue
    .line 1859
    const/4 v1, 0x0

    .line 1863
    .local v1, mInvalidAATSet:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->IsSupportInvalidAATSet()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1870
    :goto_0
    return v1

    .line 1865
    :catch_0
    move-exception v0

    .line 1867
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public IsSupportMura()Z
    .locals 3

    .prologue
    .line 940
    const/4 v1, 0x0

    .line 944
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->IsSupportMura()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 950
    :goto_0
    return v1

    .line 946
    :catch_0
    move-exception v0

    .line 948
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public IsSupportProximityCalibration()Z
    .locals 3

    .prologue
    .line 555
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] IsSupportProximityCalibration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->IsSupportProximityCalibration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 564
    :goto_0
    return v1

    .line 558
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 564
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsSupportShowInternalMemoryCapacity()Z
    .locals 3

    .prologue
    .line 1813
    const/4 v1, 0x0

    .line 1817
    .local v1, mIsSupportShowInternalMemoryCapacity:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->IsSupportShowInternalMemoryCapacity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1824
    :goto_0
    return v1

    .line 1819
    :catch_0
    move-exception v0

    .line 1821
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public IsSupportSubMic()Z
    .locals 3

    .prologue
    .line 1302
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] IsSupportSubMic"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->IsSupportSubMic()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1311
    :goto_0
    return v1

    .line 1305
    :catch_0
    move-exception v0

    .line 1309
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1311
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsSupportUSIM()Z
    .locals 3

    .prologue
    .line 916
    const/4 v1, 0x0

    .line 920
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->IsSupportUSIM()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 928
    :goto_0
    return v1

    .line 922
    :catch_0
    move-exception v0

    .line 926
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public NFC_Disable()Z
    .locals 3

    .prologue
    .line 288
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] NFC_Disable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->NFC_Disable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 297
    :goto_0
    return v1

    .line 291
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public NFC_Enable()Z
    .locals 3

    .prologue
    .line 265
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] NFC_Enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->NFC_Enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 274
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public NFC_Off([B)I
    .locals 2
    .parameter "response"

    .prologue
    .line 333
    :try_start_0
    const-string v0, "AAT"

    const-string v1, "[AATManager] NFC_Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IAATManager;->NFC_Off([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 341
    :goto_0
    return v0

    .line 336
    :catch_0
    move-exception v0

    .line 341
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public NFC_On([B)I
    .locals 2
    .parameter "response"

    .prologue
    .line 311
    :try_start_0
    const-string v0, "AAT"

    const-string v1, "[AATManager] NFC_On"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IAATManager;->NFC_On([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 319
    :goto_0
    return v0

    .line 314
    :catch_0
    move-exception v0

    .line 319
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public NFC_Reader([B)I
    .locals 2
    .parameter "response"

    .prologue
    .line 401
    :try_start_0
    const-string v0, "AAT"

    const-string v1, "[AATManager] NFC_Reader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IAATManager;->NFC_Reader([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 409
    :goto_0
    return v0

    .line 404
    :catch_0
    move-exception v0

    .line 409
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public NFC_SmartMX([B)I
    .locals 2
    .parameter "response"

    .prologue
    .line 378
    :try_start_0
    const-string v0, "AAT"

    const-string v1, "[AATManager] NFC_SmartMX"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IAATManager;->NFC_SmartMX([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 386
    :goto_0
    return v0

    .line 381
    :catch_0
    move-exception v0

    .line 386
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public NFC_Swp([B)I
    .locals 2
    .parameter "response"

    .prologue
    .line 355
    :try_start_0
    const-string v0, "AAT"

    const-string v1, "[AATManager] NFC_Swp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IAATManager;->NFC_Swp([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 363
    :goto_0
    return v0

    .line 358
    :catch_0
    move-exception v0

    .line 363
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public QwertyLedOff()V
    .locals 3

    .prologue
    .line 672
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] QwertyLedOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->QwertyLedOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 679
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public QwertyLedOn()V
    .locals 3

    .prologue
    .line 650
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] QwertyLedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->QwertyLedOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public RebootforModeChange(II)V
    .locals 4
    .parameter "index"
    .parameter "data"

    .prologue
    .line 781
    :try_start_0
    const-string v1, "AAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AATManager] RebootforModeChange, index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IAATManager;->RebootforModeChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 788
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public SetLoopbackParam(I)Ljava/lang/String;
    .locals 3
    .parameter "mode"

    .prologue
    .line 164
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] SetLoopbackParam"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IAATManager;->SetLoopbackParam(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    const-string v1, "AATManagerSetLoopbackParam error"

    goto :goto_0
.end method

.method public Start_AccCalibration([F)I
    .locals 3
    .parameter "returnval"

    .prologue
    .line 495
    :try_start_0
    const-string v0, "AAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AATManager] Start_AccCalibration return val : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IAATManager;->Start_AccCalibration([F)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 503
    :goto_0
    return v0

    .line 498
    :catch_0
    move-exception v0

    .line 503
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public Start_GyroCalibration()I
    .locals 2

    .prologue
    .line 509
    :try_start_0
    const-string v0, "AAT"

    const-string v1, "[AATManager] Start_GyroCalibration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/systemservice/core/IAATManager;->Start_GyroCalibration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 517
    :goto_0
    return v0

    .line 512
    :catch_0
    move-exception v0

    .line 517
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public Start_ProximityCalibration()I
    .locals 1

    .prologue
    .line 532
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/systemservice/core/IAATManager;->Start_ProximityCalibration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 539
    :goto_0
    return v0

    .line 534
    :catch_0
    move-exception v0

    .line 539
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public Start_SmartFactoryReset()V
    .locals 3

    .prologue
    .line 759
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] Start_SmartFactoryReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->Start_SmartFactoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    return-void

    .line 762
    :catch_0
    move-exception v0

    .line 766
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public ThresholdALC()F
    .locals 3

    .prologue
    .line 451
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] ThresholdALC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->ThresholdALC()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 459
    :goto_0
    return v1

    .line 454
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 459
    const/high16 v1, -0x4080

    goto :goto_0
.end method

.method public camcorder_submic(Z)V
    .locals 3
    .parameter "set"

    .prologue
    .line 422
    if-eqz p1, :cond_0

    .line 424
    :try_start_0
    const-string v0, "AAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AATManager] camcorder_submic : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/systemservice/core/IAATManager;->camcorder_submic(Z)V

    .line 438
    :goto_0
    return-void

    .line 429
    :cond_0
    const-string v0, "AAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AATManager] camcorder_submic : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/systemservice/core/IAATManager;->camcorder_submic(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createFmRadioMgrFMRadio()V
    .locals 2

    .prologue
    .line 1030
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->createFmRadioMgrFMRadio()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v0

    .line 1034
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public disableMTS()V
    .locals 2

    .prologue
    .line 1529
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->disableMTS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    :goto_0
    return-void

    .line 1531
    :catch_0
    move-exception v0

    .line 1533
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public disableOisProp()V
    .locals 2

    .prologue
    .line 1735
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->disableOisProp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    :goto_0
    return-void

    .line 1737
    :catch_0
    move-exception v0

    .line 1739
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public disableTouchPoint()V
    .locals 3

    .prologue
    .line 1912
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] disableTouchPoint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->disableTouchPoint()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    :goto_0
    return-void

    .line 1915
    :catch_0
    move-exception v0

    .line 1917
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public enableMTS()V
    .locals 2

    .prologue
    .line 1516
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->enableMTS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    :goto_0
    return-void

    .line 1518
    :catch_0
    move-exception v0

    .line 1520
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public enableOisProp()V
    .locals 2

    .prologue
    .line 1717
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->enableOisProp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1723
    :goto_0
    return-void

    .line 1719
    :catch_0
    move-exception v0

    .line 1721
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public enableTDMBTestActivity()Z
    .locals 3

    .prologue
    .line 1770
    const/4 v1, 0x0

    .line 1774
    .local v1, enableTDMBTest:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->enableTDMBTestActivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1781
    :goto_0
    return v1

    .line 1776
    :catch_0
    move-exception v0

    .line 1778
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public enableTouchPoint()V
    .locals 3

    .prologue
    .line 1899
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] enableTouchPoint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->enableTouchPoint()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1906
    :goto_0
    return-void

    .line 1902
    :catch_0
    move-exception v0

    .line 1904
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public felicacmdEXTIDM([B)Z
    .locals 3
    .parameter "idm"

    .prologue
    .line 1135
    const/4 v1, 0x0

    .line 1139
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IAATManager;->felicacmdEXTIDM([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1146
    :goto_0
    return v1

    .line 1141
    :catch_0
    move-exception v0

    .line 1143
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public finalizeGps()V
    .locals 3

    .prologue
    .line 243
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] finalizeGps"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->finalizeGps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public finalizeLoopback()V
    .locals 3

    .prologue
    .line 142
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] finalizeLoopback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->finalizeLoopback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getAATSWversion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1648
    const-string v1, ""

    .line 1652
    .local v1, swversion:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getAATSWversion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1658
    :goto_0
    return-object v1

    .line 1654
    :catch_0
    move-exception v0

    .line 1656
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getAccelCalSleep()Z
    .locals 4

    .prologue
    .line 1208
    const/4 v1, 0x0

    .line 1212
    .local v1, returnval:Z
    :try_start_0
    const-string v2, "AAT"

    const-string v3, "[AATManager] getAccelCalSleep"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getAccelCalSleep()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1221
    :goto_0
    return v1

    .line 1215
    :catch_0
    move-exception v0

    .line 1219
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getAccelerometerCalOption()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1183
    const-string v1, ""

    .line 1187
    .local v1, returnval:Ljava/lang/String;
    :try_start_0
    const-string v2, "AAT"

    const-string v3, "[AATManager] getAccelerometerCalOption"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getAccelerometerCalOption()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1196
    :goto_0
    return-object v1

    .line 1190
    :catch_0
    move-exception v0

    .line 1194
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getBatteryCapacityFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1588
    const-string v1, ""

    .line 1592
    .local v1, mBatt_capacity:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getBatteryCapacityFilePath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1599
    :goto_0
    return-object v1

    .line 1594
    :catch_0
    move-exception v0

    .line 1596
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getBatteryIDFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1611
    const-string v1, ""

    .line 1615
    .local v1, mBatt_valid_id:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getBatteryIDFilePath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1622
    :goto_0
    return-object v1

    .line 1617
    :catch_0
    move-exception v0

    .line 1619
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getBatteryThermistorFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1627
    const-string v1, ""

    .line 1631
    .local v1, mBatteryThermistorFilePath:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getBatteryThermistorFilePath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1638
    :goto_0
    return-object v1

    .line 1633
    :catch_0
    move-exception v0

    .line 1635
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getCameraResolution()[I
    .locals 4

    .prologue
    .line 623
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 627
    .local v1, resolution:[I
    :try_start_0
    const-string v2, "AAT"

    const-string v3, "[AATManager] getCameraResolution"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getCameraResolution()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 636
    :goto_0
    return-object v1

    .line 630
    :catch_0
    move-exception v0

    .line 634
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getCountSuppotedSIM()I
    .locals 3

    .prologue
    .line 824
    const/4 v1, -0x1

    .line 827
    .local v1, mvalue:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getCountSuppotedSIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 835
    :goto_0
    return v1

    .line 829
    :catch_0
    move-exception v0

    .line 833
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getHallSensorResult()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1546
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    .line 1550
    .local v1, mvalue:[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getHallSensorResult()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1556
    :goto_0
    return-object v1

    .line 1552
    :catch_0
    move-exception v0

    .line 1554
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getLedVal()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 740
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 744
    .local v1, ledval:[Ljava/lang/String;
    :try_start_0
    const-string v2, "AAT"

    const-string v3, "[AATManager] getLedVal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getLedVal()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 753
    :goto_0
    return-object v1

    .line 747
    :catch_0
    move-exception v0

    .line 751
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getLimitBatteryCapacity()I
    .locals 3

    .prologue
    .line 1786
    const/4 v1, 0x0

    .line 1790
    .local v1, mLimitBatteryCapacity:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getLimitBatteryCapacity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1797
    :goto_0
    return v1

    .line 1792
    :catch_0
    move-exception v0

    .line 1794
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxVolume(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 1693
    const/4 v1, -0x1

    .line 1697
    .local v1, mMaxVolume:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IAATManager;->getMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1704
    :goto_0
    return v1

    .line 1699
    :catch_0
    move-exception v0

    .line 1701
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getQuickMemoKeyCodeValue()I
    .locals 4

    .prologue
    .line 1253
    const/4 v1, 0x0

    .line 1257
    .local v1, returnval:I
    :try_start_0
    const-string v2, "AAT"

    const-string v3, "[AATManager] getQuickMemoKeyCodeValue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getQuickMemoKeyCodeValue()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1266
    :goto_0
    return v1

    .line 1260
    :catch_0
    move-exception v0

    .line 1264
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getQwertyStatusValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 691
    const-string v1, ""

    .line 695
    .local v1, enableval:Ljava/lang/String;
    :try_start_0
    const-string v2, "AAT"

    const-string v3, "[AATManager] getQwertyStatusValue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getQwertyStatusValue()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 704
    :goto_0
    return-object v1

    .line 698
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getSaveVolume(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 1670
    const/4 v1, -0x1

    .line 1674
    .local v1, mVolume:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IAATManager;->getSaveVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1681
    :goto_0
    return v1

    .line 1676
    :catch_0
    move-exception v0

    .line 1678
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getSupportVideoEncorder()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1158
    const-string v1, ""

    .line 1162
    .local v1, returnval:Ljava/lang/String;
    :try_start_0
    const-string v2, "AAT"

    const-string v3, "[AATManager] getSupportVideoEncorder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getSupportVideoEncorder()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1171
    :goto_0
    return-object v1

    .line 1165
    :catch_0
    move-exception v0

    .line 1169
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getTestOrderLength()I
    .locals 3

    .prologue
    .line 1482
    const/4 v1, -0x1

    .line 1485
    .local v1, mvalue:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getTestOrderLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1491
    :goto_0
    return v1

    .line 1487
    :catch_0
    move-exception v0

    .line 1489
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getTestOrderNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1462
    const-string v1, ""

    .line 1465
    .local v1, mvalue:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->getTestOrderNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1471
    :goto_0
    return-object v1

    .line 1467
    :catch_0
    move-exception v0

    .line 1469
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public initializeGps()V
    .locals 3

    .prologue
    .line 221
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] initializeGps"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->initializeGps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public initializeLoopback()V
    .locals 3

    .prologue
    .line 120
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] initializeLoopback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->initializeLoopback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isDualSIM()Z
    .locals 3

    .prologue
    .line 801
    const/4 v1, 0x0

    .line 805
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->isDualSIM()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 813
    :goto_0
    return v1

    .line 807
    :catch_0
    move-exception v0

    .line 811
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isFactoryTestMode()Z
    .locals 3

    .prologue
    .line 1322
    const/4 v1, 0x0

    .line 1325
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->isFactoryTestMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1331
    :goto_0
    return v1

    .line 1327
    :catch_0
    move-exception v0

    .line 1329
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public requestToCapSensor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "request"

    .prologue
    .line 1876
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1878
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IAATManager;->requestToCapSensor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1891
    :goto_0
    return-object v1

    .line 1882
    :cond_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] getService() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const-string v1, "AATManagerrequestToCapSensor error"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1886
    :catch_0
    move-exception v0

    .line 1890
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1891
    const-string v1, "AATManagerrequestToCapSensor error"

    goto :goto_0
.end method

.method public requestToService(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "i"
    .parameter "data"

    .prologue
    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IAATManager;->requestToService(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    const-string v1, "AATManagerrequestToService error"

    goto :goto_0
.end method

.method public resetData()V
    .locals 2

    .prologue
    .line 1504
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->resetData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    :goto_0
    return-void

    .line 1506
    :catch_0
    move-exception v0

    .line 1508
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAATStatus(Ljava/lang/String;)V
    .locals 2
    .parameter "aat_status"

    .prologue
    .line 1803
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IAATManager;->sendAATStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1809
    :goto_0
    return-void

    .line 1805
    :catch_0
    move-exception v0

    .line 1807
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setBackLedVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 1831
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] setBackLedVal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IAATManager;->setBackLedVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1840
    :goto_0
    return-void

    .line 1834
    :catch_0
    move-exception v0

    .line 1838
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setLedVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 720
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] setLedVal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IAATManager;->setLedVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 727
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setProximityCrossTalkValue(I)V
    .locals 2
    .parameter "proxLimit"

    .prologue
    .line 1753
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IAATManager;->setProximityCrossTalkValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1759
    :goto_0
    return-void

    .line 1755
    :catch_0
    move-exception v0

    .line 1757
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setRGBLedVal(Ljava/lang/String;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 1845
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] setRGBLedVal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IAATManager;->setRGBLedVal(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1854
    :goto_0
    return-void

    .line 1848
    :catch_0
    move-exception v0

    .line 1852
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setRotationSensor(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 474
    :try_start_0
    const-string v0, "AAT"

    const-string v1, "[AATManager] setRotationSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IAATManager;->setRotationSensor(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSpeakerState(Ljava/lang/String;)V
    .locals 4
    .parameter "mSpeakerState"

    .prologue
    .line 1568
    const-string v1, "AAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AATManager] setSpeakerState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IAATManager;->setSpeakerState(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    :goto_0
    return-void

    .line 1573
    :catch_0
    move-exception v0

    .line 1575
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setSpeakerphoneOnUse()Z
    .locals 3

    .prologue
    .line 177
    :try_start_0
    const-string v1, "AAT"

    const-string v2, "[AATManager] setSpeakerphoneOnUse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IAATManager;->setSpeakerphoneOnUse()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 184
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startAutoScanFMRadio()Z
    .locals 3

    .prologue
    .line 1047
    const/4 v1, 0x0

    .line 1051
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->startAutoScanFMRadio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1057
    :goto_0
    return v1

    .line 1053
    :catch_0
    move-exception v0

    .line 1055
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startBackwardScanFMRadio()Z
    .locals 3

    .prologue
    .line 1069
    const/4 v1, 0x0

    .line 1073
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->startBackwardScanFMRadio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1079
    :goto_0
    return v1

    .line 1075
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startForwardScanFMRadio()Z
    .locals 3

    .prologue
    .line 1091
    const/4 v1, 0x0

    .line 1095
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->startForwardScanFMRadio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1101
    :goto_0
    return v1

    .line 1097
    :catch_0
    move-exception v0

    .line 1099
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public switchUSBMode(I)V
    .locals 2
    .parameter "change_value"

    .prologue
    .line 1345
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IAATManager;->switchUSBMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :goto_0
    return-void

    .line 1347
    :catch_0
    move-exception v0

    .line 1349
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public testDualUSIM1()I
    .locals 3

    .prologue
    .line 847
    const/4 v1, -0x1

    .line 851
    .local v1, mvalue:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->testDualUSIM1()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 859
    :goto_0
    return v1

    .line 853
    :catch_0
    move-exception v0

    .line 857
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public testDualUSIM2()I
    .locals 3

    .prologue
    .line 870
    const/4 v1, -0x1

    .line 874
    .local v1, mvalue:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->testDualUSIM2()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 882
    :goto_0
    return v1

    .line 876
    :catch_0
    move-exception v0

    .line 880
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public testDualUSIM3()I
    .locals 3

    .prologue
    .line 893
    const/4 v1, -0x1

    .line 896
    .local v1, mvalue:I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->testDualUSIM3()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 904
    :goto_0
    return v1

    .line 898
    :catch_0
    move-exception v0

    .line 902
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public tuneFrequencyFMRadio(I)Z
    .locals 3
    .parameter "nFreq"

    .prologue
    .line 1113
    const/4 v1, 0x0

    .line 1117
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/IAATManager;->tuneFrequencyFMRadio(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1123
    :goto_0
    return v1

    .line 1119
    :catch_0
    move-exception v0

    .line 1121
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public turnOffFMRadio()Z
    .locals 3

    .prologue
    .line 1006
    const/4 v1, 0x0

    .line 1010
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->turnOffFMRadio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1016
    :goto_0
    return v1

    .line 1012
    :catch_0
    move-exception v0

    .line 1014
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public turnOnFMRadio()Z
    .locals 3

    .prologue
    .line 984
    const/4 v1, 0x0

    .line 988
    .local v1, mvalue:Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/AATManager;->getService()Lcom/lge/systemservice/core/IAATManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/systemservice/core/IAATManager;->turnOnFMRadio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 994
    :goto_0
    return v1

    .line 990
    :catch_0
    move-exception v0

    .line 992
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
