.class Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "UPlusRILEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UPlusRILEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBroadcastReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_LGT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$000(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)V

    .line 520
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$000(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)V

    .line 523
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_JCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const/4 v1, 0x2

    #calls: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$000(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)V

    .line 526
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_DCN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const/4 v1, 0x3

    #calls: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$000(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)V

    .line 529
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LG_NVITEM_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #calls: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->handleNVItemReset()V
    invoke-static {v0}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$100(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V

    .line 532
    :cond_4
    return-void
.end method
