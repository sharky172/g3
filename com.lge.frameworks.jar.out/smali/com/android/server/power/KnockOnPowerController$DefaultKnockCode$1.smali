.class Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$1;
.super Ljava/lang/Object;
.source "KnockOnPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->launch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;

.field final synthetic val$matchedUser:Landroid/content/pm/UserInfo;


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;Landroid/content/pm/UserInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$1;->this$1:Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;

    iput-object p2, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$1;->val$matchedUser:Landroid/content/pm/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$1;->this$1:Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;

    iget-object v0, v0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    iget-object v1, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$1;->val$matchedUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    #calls: Lcom/android/server/power/KnockOnPowerController;->switchUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/KnockOnPowerController;->access$3400(Lcom/android/server/power/KnockOnPowerController;I)V

    .line 1930
    return-void
.end method
