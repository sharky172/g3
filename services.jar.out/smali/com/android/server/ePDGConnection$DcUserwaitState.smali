.class Lcom/android/server/ePDGConnection$DcUserwaitState;
.super Lcom/android/internal/util/State;
.source "ePDGConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcUserwaitState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/server/ePDGConnection$DcUserwaitState;->this$0:Lcom/android/server/ePDGConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGConnection;Lcom/android/server/ePDGConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1129
    invoke-direct {p0, p1}, Lcom/android/server/ePDGConnection$DcUserwaitState;-><init>(Lcom/android/server/ePDGConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcUserwaitState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcUserwaitState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/server/ePDGConnection$DcUserwaitState;->this$0:Lcom/android/server/ePDGConnection;

    const-string v1, "DcUserwaitState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1147
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 1153
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1162
    iget-object v1, p0, Lcom/android/server/ePDGConnection$DcUserwaitState;->this$0:Lcom/android/server/ePDGConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcUserwaitState nothandled msg.what=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 1165
    const/4 v0, 0x0

    .line 1168
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 1157
    .end local v0           #retVal:Z
    :pswitch_0
    const/4 v0, 0x1

    .line 1158
    .restart local v0       #retVal:Z
    goto :goto_0

    .line 1153
    nop

    :pswitch_data_0
    .packed-switch 0x40002
        :pswitch_0
    .end packed-switch
.end method
