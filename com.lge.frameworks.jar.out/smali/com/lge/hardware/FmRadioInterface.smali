.class public Lcom/lge/hardware/FmRadioInterface;
.super Landroid/os/Handler;
.source "FmRadioInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hardware/FmRadioInterface$5;
    }
.end annotation


# static fields
.field private static final T:Ljava/lang/String;

.field private static essentialObservers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field chipsetHandler:Landroid/os/Handler;

.field currentFrequency:I

.field dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

.field dispatcher:Landroid/os/Messenger;

.field initialized:Z

.field isMockChipset:Z

.field isRDSOn:Z

.field isScanning:Z

.field mContext:Landroid/content/Context;

.field private mPreOperationListener:Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;

.field private mPreOperationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;",
            ">;"
        }
    .end annotation
.end field

.field on:Z

.field paused:Z

.field private rdsListener:Lcom/lge/internal/hardware/fmradio/RdsData;

.field statusMessenger:Landroid/os/Messenger;

.field switching:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/lge/hardware/FmRadioInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/hardware/FmRadioInterface;->T:Ljava/lang/String;

    .line 329
    new-instance v0, Lcom/lge/hardware/FmRadioInterface$4;

    invoke-direct {v0}, Lcom/lge/hardware/FmRadioInterface$4;-><init>()V

    sput-object v0, Lcom/lge/hardware/FmRadioInterface;->essentialObservers:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "con"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/lge/hardware/FmRadioInterface;->mContext:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/lge/hardware/FmRadioInterface;->chipsetHandler:Landroid/os/Handler;

    .line 33
    iput-object v1, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    .line 34
    iput-object v1, p0, Lcom/lge/hardware/FmRadioInterface;->dispatcher:Landroid/os/Messenger;

    .line 36
    iput-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->initialized:Z

    .line 37
    iput-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->on:Z

    .line 38
    iput-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->switching:Z

    .line 39
    iput-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->paused:Z

    .line 40
    iput-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->isScanning:Z

    .line 41
    iput-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->isMockChipset:Z

    .line 42
    iput-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->isRDSOn:Z

    .line 43
    iput v0, p0, Lcom/lge/hardware/FmRadioInterface;->currentFrequency:I

    .line 154
    new-instance v0, Lcom/lge/hardware/FmRadioInterface$1;

    invoke-direct {v0, p0}, Lcom/lge/hardware/FmRadioInterface$1;-><init>(Lcom/lge/hardware/FmRadioInterface;)V

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->rdsListener:Lcom/lge/internal/hardware/fmradio/RdsData;

    .line 193
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/lge/hardware/FmRadioInterface$2;

    invoke-direct {v1, p0}, Lcom/lge/hardware/FmRadioInterface$2;-><init>(Lcom/lge/hardware/FmRadioInterface;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->statusMessenger:Landroid/os/Messenger;

    .line 302
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->mPreOperationListeners:Ljava/util/Set;

    .line 304
    new-instance v0, Lcom/lge/hardware/FmRadioInterface$3;

    invoke-direct {v0, p0}, Lcom/lge/hardware/FmRadioInterface$3;-><init>(Lcom/lge/hardware/FmRadioInterface;)V

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->mPreOperationListener:Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;

    .line 98
    iput-object p1, p0, Lcom/lge/hardware/FmRadioInterface;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->createChipsetHandler(Landroid/content/Context;)Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->chipsetHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    const-string v1, "FmRadioInterfaceResult"

    invoke-direct {v0, v1}, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    .line 102
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->dispatcher:Landroid/os/Messenger;

    .line 103
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->chipsetHandler:Landroid/os/Handler;

    check-cast v0, Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;

    invoke-virtual {v0}, Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;->isMock()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->isMockChipset:Z

    .line 105
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hardware/FmRadioInterface;->statusMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2}, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->addObserver(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 106
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/lge/hardware/FmRadioInterface;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hardware/FmRadioInterface;)Lcom/lge/internal/hardware/fmradio/RdsData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->rdsListener:Lcom/lge/internal/hardware/fmradio/RdsData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hardware/FmRadioInterface;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->mPreOperationListeners:Ljava/util/Set;

    return-object v0
.end method

.method private isServing()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v2, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    if-nez v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v1

    .line 273
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    invoke-virtual {v2}, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->getObserverNames()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/lge/hardware/FmRadioInterface;->essentialObservers:Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 275
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendToChipset(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 144
    sget-object v0, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->getFMRadioCommand(I)Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->rdsListener:Lcom/lge/internal/hardware/fmradio/RdsData;

    :goto_0
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->dispatcher:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 147
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->chipsetHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->mPreOperationListener:Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;

    goto :goto_0
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 1
    .parameter "name"
    .parameter "observer"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->addObserver(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 295
    return-void
.end method

.method public addPreExecuteListener(Ljava/lang/Object;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 318
    const-class v1, Lcom/lge/hardware/FmRadioInterface;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->mPreOperationListeners:Ljava/util/Set;

    check-cast p1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public currentFrequency()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/lge/hardware/FmRadioInterface;->currentFrequency:I

    return v0
.end method

.method public currentProgramService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->rdsListener:Lcom/lge/internal/hardware/fmradio/RdsData;

    invoke-virtual {v0}, Lcom/lge/internal/hardware/fmradio/RdsData;->getProgramService()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentProgramType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->rdsListener:Lcom/lge/internal/hardware/fmradio/RdsData;

    invoke-virtual {v0}, Lcom/lge/internal/hardware/fmradio/RdsData;->getProgramType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentRadioText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->rdsListener:Lcom/lge/internal/hardware/fmradio/RdsData;

    invoke-virtual {v0}, Lcom/lge/internal/hardware/fmradio/RdsData;->getRadioText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServingList()Ljava/util/Set;
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    if-nez v1, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    .line 282
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->getObserverNames()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 283
    .local v0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/lge/hardware/FmRadioInterface;->essentialObservers:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 109
    sget-object v2, Lcom/lge/hardware/FmRadioInterface;->T:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FmRadio received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->toStringFromMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->getFMRadioCommand(I)Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    move-result-object v1

    .line 112
    .local v1, cmd:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    sget-object v2, Lcom/lge/hardware/FmRadioInterface$5;->$SwitchMap$com$lge$internal$hardware$fmradio$FMRadioCommand:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/hardware/FmRadioInterface;->sendToChipset(Landroid/os/Message;)V

    .line 141
    return-void

    .line 115
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cause"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, cause:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/lge/hardware/FmRadioInterface;->initialized:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    const-string v2, "restore_service"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    :cond_1
    iput-boolean v5, p0, Lcom/lge/hardware/FmRadioInterface;->initialized:Z

    .line 118
    iget-object v2, p0, Lcom/lge/hardware/FmRadioInterface;->chipsetHandler:Landroid/os/Handler;

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/hardware/FmRadioInterface;->sendToChipset(Landroid/os/Message;)V

    goto :goto_0

    .line 123
    .end local v0           #cause:Ljava/lang/String;
    :pswitch_1
    iput-boolean v5, p0, Lcom/lge/hardware/FmRadioInterface;->paused:Z

    .line 124
    iget-object v2, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE_ANNOUNCED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/hardware/FmRadioInterface;->sendToObservers(Landroid/os/Message;)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-boolean v2, p0, Lcom/lge/hardware/FmRadioInterface;->initialized:Z

    if-nez v2, :cond_2

    .line 129
    iput-boolean v5, p0, Lcom/lge/hardware/FmRadioInterface;->initialized:Z

    .line 130
    iget-object v2, p0, Lcom/lge/hardware/FmRadioInterface;->chipsetHandler:Landroid/os/Handler;

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/hardware/FmRadioInterface;->sendToChipset(Landroid/os/Message;)V

    .line 132
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/hardware/FmRadioInterface;->paused:Z

    .line 133
    iget-object v2, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME_ANNOUNCED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/hardware/FmRadioInterface;->sendToObservers(Landroid/os/Message;)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->initialized:Z

    return v0
.end method

.method public isMock()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->isMockChipset:Z

    return v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->on:Z

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->paused:Z

    return v0
.end method

.method public isRDSOn()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->isRDSOn:Z

    return v0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->isScanning:Z

    return v0
.end method

.method public isSwitching()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->switching:Z

    return v0
.end method

.method public removeObserver(Landroid/os/Messenger;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    invoke-virtual {v0, p1}, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->removeObserver(Landroid/os/Messenger;)V

    .line 299
    invoke-virtual {p0}, Lcom/lge/hardware/FmRadioInterface;->terminateIfConditionMet()V

    .line 300
    return-void
.end method

.method public removePreExecuteListener(Ljava/lang/Object;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 324
    const-class v1, Lcom/lge/hardware/FmRadioInterface;

    monitor-enter v1

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->mPreOperationListeners:Ljava/util/Set;

    check-cast p1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 326
    monitor-exit v1

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendToObservers(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    return-void
.end method

.method public setCurrentFrequency(I)V
    .locals 0
    .parameter "currentFrequency"

    .prologue
    .line 66
    iput p1, p0, Lcom/lge/hardware/FmRadioInterface;->currentFrequency:I

    .line 67
    return-void
.end method

.method public setScanning()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->isScanning:Z

    .line 63
    return-void
.end method

.method public terminateIfConditionMet()V
    .locals 2

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->on:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/hardware/FmRadioInterface;->isSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lge/hardware/FmRadioInterface;->isServing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/hardware/FmRadioInterface;->paused:Z

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/lge/hardware/FmRadioInterface;->chipsetHandler:Landroid/os/Handler;

    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/hardware/FmRadioInterface;->sendToChipset(Landroid/os/Message;)V

    .line 291
    :cond_0
    return-void
.end method
