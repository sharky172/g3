.class Lcom/android/server/power/LGPowerManagerService$2;
.super Landroid/telephony/PhoneStateListener;
.source "LGPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LGPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LGPowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/LGPowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/server/power/LGPowerManagerService$2;->this$0:Lcom/android/server/power/LGPowerManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 709
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$2;->this$0:Lcom/android/server/power/LGPowerManagerService;

    const/4 v1, 0x3

    #calls: Lcom/android/server/power/LGPowerManagerService;->setQuickCharging(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/LGPowerManagerService;->access$1500(Lcom/android/server/power/LGPowerManagerService;I)V

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/LGPowerManagerService$2;->this$0:Lcom/android/server/power/LGPowerManagerService;

    const/4 v1, 0x4

    #calls: Lcom/android/server/power/LGPowerManagerService;->setQuickCharging(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/LGPowerManagerService;->access$1500(Lcom/android/server/power/LGPowerManagerService;I)V

    goto :goto_0
.end method
