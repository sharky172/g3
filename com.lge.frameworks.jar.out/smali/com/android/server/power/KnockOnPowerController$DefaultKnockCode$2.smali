.class Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$2;
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

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1940
    iput-object p1, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$2;->this$1:Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;

    iput p2, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$2;->this$1:Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;

    iget-object v0, v0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockOnPowerController;

    iget v1, p0, Lcom/android/server/power/KnockOnPowerController$DefaultKnockCode$2;->val$id:I

    #calls: Lcom/android/server/power/KnockOnPowerController;->switchUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/KnockOnPowerController;->access$3400(Lcom/android/server/power/KnockOnPowerController;I)V

    .line 1944
    return-void
.end method
