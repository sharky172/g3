.class final Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;
.super Landroid/os/Handler;
.source "LGPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LGPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGPowerManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LGPowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LGPowerManagerService;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/server/power/LGPowerManagerService$LGPowerManagerHandler;->this$0:Lcom/android/server/power/LGPowerManagerService;

    .line 506
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 507
    return-void
.end method
