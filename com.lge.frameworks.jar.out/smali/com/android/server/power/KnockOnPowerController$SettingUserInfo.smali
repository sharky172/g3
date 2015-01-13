.class Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;
.super Ljava/lang/Object;
.source "KnockOnPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockOnPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingUserInfo"
.end annotation


# instance fields
.field knockCodeSetting:Z

.field knockOnSetting:Z

.field passwordLength:I

.field final synthetic this$0:Lcom/android/server/power/KnockOnPowerController;

.field userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/KnockOnPowerController;IZZI)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "on"
    .parameter "code"
    .parameter "len"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;->this$0:Lcom/android/server/power/KnockOnPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput p2, p0, Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;->userId:I

    .line 363
    iput-boolean p3, p0, Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;->knockOnSetting:Z

    .line 364
    iput-boolean p4, p0, Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;->knockCodeSetting:Z

    .line 365
    iput p5, p0, Lcom/android/server/power/KnockOnPowerController$SettingUserInfo;->passwordLength:I

    .line 366
    return-void
.end method
