.class public Lcom/lge/uicc/IccHandlerCTC;
.super Landroid/os/Handler;
.source "IccHandlerCTC.java"


# static fields
.field private static final EVENT_SIM_LOADED:I = 0x1

.field private static final FACTORY_PROPERTY:Ljava/lang/String; = "ro.factorytest"

.field private static mInstance:Lcom/lge/uicc/IccHandlerCTC;


# instance fields
.field flag:I

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/uicc/IccHandlerCTC;->flag:I

    .line 48
    const-string v1, "create instance"

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerCTC;->logd(Ljava/lang/String;)V

    .line 50
    const-string v1, "ro.factorytest"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, factoryTestStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const-string v1, "proxy.sim_state.intent"

    const/4 v2, 0x1

    const-string v3, "LOADED"

    invoke-static {v1, p0, v2, v3}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccHandlerCTC] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccHandlerCTC] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected static setup()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CTC"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sget-object v0, Lcom/lge/uicc/IccHandlerCTC;->mInstance:Lcom/lge/uicc/IccHandlerCTC;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/lge/uicc/IccHandlerCTC;

    invoke-direct {v0}, Lcom/lge/uicc/IccHandlerCTC;-><init>()V

    sput-object v0, Lcom/lge/uicc/IccHandlerCTC;->mInstance:Lcom/lge/uicc/IccHandlerCTC;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    .line 58
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/uicc/IccHandlerCTC;->loge(Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget v7, p0, Lcom/lge/uicc/IccHandlerCTC;->flag:I

    if-nez v7, :cond_0

    .line 61
    const-string v7, "EVENT_SIM_LOADED"

    invoke-static {v7}, Lcom/lge/uicc/IccHandlerCTC;->logd(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/lge/uicc/IccTools;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/uicc/IccHandlerCTC;->mContext:Landroid/content/Context;

    .line 63
    const-string v7, "proxy.sim_state"

    invoke-static {v7, v10}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, sim_state:Ljava/lang/String;
    const-string v7, "csim.state"

    invoke-static {v7, v10}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, csim_state:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "READY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 68
    .local v5, r:Landroid/content/res/Resources;
    const v7, 0x20d038c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, message:Ljava/lang/String;
    const v7, 0x104000a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, buttonOkTxt:Ljava/lang/String;
    const v7, 0x20d0388

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, operatorname:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/lge/uicc/IccHandlerCTC;->mContext:Landroid/content/Context;

    const v9, 0x20a01cb

    invoke-direct {v7, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/lge/uicc/IccHandlerCTC$1;

    invoke-direct {v8, p0}, Lcom/lge/uicc/IccHandlerCTC$1;-><init>(Lcom/lge/uicc/IccHandlerCTC;)V

    invoke-virtual {v7, v0, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 87
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 88
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7da

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 89
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 90
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 92
    .end local v0           #buttonOkTxt:Ljava/lang/String;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #operatorname:Ljava/lang/String;
    .end local v5           #r:Landroid/content/res/Resources;
    :cond_1
    const/4 v7, 0x1

    iput v7, p0, Lcom/lge/uicc/IccHandlerCTC;->flag:I

    .line 93
    const-string v7, "proxy.sim_state.intent"

    invoke-static {v7, p0}, Lcom/lge/uicc/LGUICC;->unregisterForConfig(Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
