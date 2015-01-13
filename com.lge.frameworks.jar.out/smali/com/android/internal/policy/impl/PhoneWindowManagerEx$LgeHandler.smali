.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LgeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 372
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 382
    :goto_0
    return-void

    .line 374
    :pswitch_0
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "MSG_ENABLE_LGE_INPUTEVENT_MONITOR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->enableLgeInputEventMonitor()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    goto :goto_0

    .line 378
    :pswitch_1
    const-string v0, "PhoneWindowManagerEx"

    const-string v1, "MSG_DISABLE_MSG_ENABLE_LGE_INPUTEVENT_MONITOR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$LgeHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->disableLgeInputEventMonitor()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
