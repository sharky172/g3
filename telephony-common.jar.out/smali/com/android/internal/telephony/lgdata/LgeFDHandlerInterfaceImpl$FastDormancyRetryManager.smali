.class Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;
.super Ljava/lang/Object;
.source "LgeFDHandlerInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FastDormancyRetryManager"
.end annotation


# instance fields
.field mConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

.field mRetryCount:I

.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;)V
    .locals 1
    .parameter
    .parameter "config"

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    .line 641
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mRetryCount:I

    .line 644
    iput-object p2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    .line 645
    return-void
.end method


# virtual methods
.method public increaseCount()V
    .locals 3

    .prologue
    .line 648
    iget v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mRetryCount:I

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseCount(): mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logv(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public isRetryNeeded()Z
    .locals 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRetryNeeded(): mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MaxRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->getFDMaxRetry()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logv(Ljava/lang/String;)V

    .line 662
    iget v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mRetryCount:I

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->getFDMaxRetry()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 663
    const/4 v0, 0x1

    .line 666
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetCount()V
    .locals 3

    .prologue
    .line 653
    iget v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mRetryCount:I

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mRetryCount:I

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->this$0:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCount(): mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logv(Ljava/lang/String;)V

    .line 657
    :cond_0
    return-void
.end method
