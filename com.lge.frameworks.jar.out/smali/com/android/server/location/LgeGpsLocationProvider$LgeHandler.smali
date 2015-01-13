.class final Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;
.super Landroid/os/Handler;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LgeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LgeGpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;Lcom/android/server/location/LgeGpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 784
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 813
    :goto_0
    return-void

    .line 788
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 796
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 803
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$600(Lcom/android/server/location/LgeGpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #setter for: Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I
    invoke-static {v0, v4}, Lcom/android/server/location/LgeGpsLocationProvider;->access$702(Lcom/android/server/location/LgeGpsLocationProvider;I)I

    goto :goto_0

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #setter for: Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I
    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->access$702(Lcom/android/server/location/LgeGpsLocationProvider;I)I

    .line 807
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->handleCertRequest()V
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$900(Lcom/android/server/location/LgeGpsLocationProvider;)V

    goto :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
