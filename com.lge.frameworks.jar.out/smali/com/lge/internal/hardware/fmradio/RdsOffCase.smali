.class public abstract Lcom/lge/internal/hardware/fmradio/RdsOffCase;
.super Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;
.source "RdsOffCase.java"


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 13
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v4, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v5, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v6, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v7, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    const-wide/16 v9, 0x7530

    move-object v0, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v10}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;-><init>(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Landroid/os/Message;J)V

    .line 17
    return-void
.end method
