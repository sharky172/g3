.class Lcom/android/internal/telephony/SingleBinary$1;
.super Landroid/content/BroadcastReceiver;
.source "SingleBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SingleBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SingleBinary;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SingleBinary;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary$1;->this$0:Lcom/android/internal/telephony/SingleBinary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, appIndex:I
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "appIndex"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 116
    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE][SBP] LGHOME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$000()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", BROWSER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$100()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TELEPHONY_PROVIDER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$200()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/android/internal/telephony/SingleBinary$1;->this$0:Lcom/android/internal/telephony/SingleBinary;

    #getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/internal/telephony/SingleBinary$1;->this$0:Lcom/android/internal/telephony/SingleBinary;

    #getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 133
    :cond_0
    invoke-static {v6}, Lcom/android/internal/telephony/SingleBinary;->access$202(Z)Z

    .line 134
    invoke-static {v6}, Lcom/android/internal/telephony/SingleBinary;->access$002(Z)Z

    .line 135
    invoke-static {v6}, Lcom/android/internal/telephony/SingleBinary;->access$102(Z)Z

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 137
    .local v2, pm:Landroid/os/PowerManager;
    const-string v3, "CUST Changed"

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 139
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_1
    :goto_1
    return-void

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_0
    invoke-static {v7}, Lcom/android/internal/telephony/SingleBinary;->access$002(Z)Z

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-static {v7}, Lcom/android/internal/telephony/SingleBinary;->access$102(Z)Z

    goto/16 :goto_0

    .line 124
    :pswitch_2
    invoke-static {v7}, Lcom/android/internal/telephony/SingleBinary;->access$202(Z)Z

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
