.class Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$1;
.super Ljava/lang/Object;
.source "EngineSimulator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->state_recv_stop_req()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

.field final synthetic val$location_copy:Lcom/qualcomm/location/vzw_library/VzwHalLocation;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$1;->this$1:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    iput-object p2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$1;->val$location_copy:Lcom/qualcomm/location/vzw_library/VzwHalLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$1;->this$1:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    invoke-static {v0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->access$300(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$1;->val$location_copy:Lcom/qualcomm/location/vzw_library/VzwHalLocation;

    invoke-interface {v0, v1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportLocation(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V

    .line 120
    return-void
.end method
