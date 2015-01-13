.class final Lcom/lge/systemservice/core/VolumeVibratorManager$1;
.super Ljava/lang/Object;
.source "VolumeVibratorManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->access$002(Lcom/lge/systemservice/core/IVolumeVibratorManager;)Lcom/lge/systemservice/core/IVolumeVibratorManager;

    .line 93
    return-void
.end method
