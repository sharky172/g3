.class Lcom/lge/hardware/FmRadioInterface$1;
.super Lcom/lge/internal/hardware/fmradio/RdsData;
.source "FmRadioInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hardware/FmRadioInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field oldData:Lcom/lge/internal/hardware/fmradio/RdsData;

.field final synthetic this$0:Lcom/lge/hardware/FmRadioInterface;


# direct methods
.method constructor <init>(Lcom/lge/hardware/FmRadioInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lge/hardware/FmRadioInterface$1;->this$0:Lcom/lge/hardware/FmRadioInterface;

    invoke-direct {p0}, Lcom/lge/internal/hardware/fmradio/RdsData;-><init>()V

    return-void
.end method

.method private dispatch(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$1;->oldData:Lcom/lge/internal/hardware/fmradio/RdsData;

    invoke-virtual {p0, v1}, Lcom/lge/internal/hardware/fmradio/RdsData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$1;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iget-object v1, v1, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 188
    .local v0, m:Landroid/os/Message;
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/RdsData;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 189
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$1;->this$0:Lcom/lge/hardware/FmRadioInterface;

    invoke-virtual {v1, v0}, Lcom/lge/hardware/FmRadioInterface;->sendToObservers(Landroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public onRdsProgramServiceReported(Ljava/lang/String;)Z
    .locals 1
    .parameter "programService"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/RdsData;->clone()Lcom/lge/internal/hardware/fmradio/RdsData;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface$1;->oldData:Lcom/lge/internal/hardware/fmradio/RdsData;

    .line 159
    invoke-super {p0, p1}, Lcom/lge/internal/hardware/fmradio/RdsData;->onRdsProgramServiceReported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_PS:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {p0, v0}, Lcom/lge/hardware/FmRadioInterface$1;->dispatch(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRdsProgramTypeReported(I)Z
    .locals 1
    .parameter "programType"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/RdsData;->clone()Lcom/lge/internal/hardware/fmradio/RdsData;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface$1;->oldData:Lcom/lge/internal/hardware/fmradio/RdsData;

    .line 168
    invoke-super {p0, p1}, Lcom/lge/internal/hardware/fmradio/RdsData;->onRdsProgramTypeReported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRdsRadioTextReported(Ljava/lang/String;)Z
    .locals 1
    .parameter "radioText"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/RdsData;->clone()Lcom/lge/internal/hardware/fmradio/RdsData;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface$1;->oldData:Lcom/lge/internal/hardware/fmradio/RdsData;

    .line 176
    invoke-super {p0, p1}, Lcom/lge/internal/hardware/fmradio/RdsData;->onRdsRadioTextReported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_RT:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {p0, v0}, Lcom/lge/hardware/FmRadioInterface$1;->dispatch(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
