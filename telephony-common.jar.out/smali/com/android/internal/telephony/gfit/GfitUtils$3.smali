.class Lcom/android/internal/telephony/gfit/GfitUtils$3;
.super Ljava/lang/Object;
.source "GfitUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gfit/GfitUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$3;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1121
    packed-switch p2, :pswitch_data_0

    .line 1127
    :goto_0
    return-void

    .line 1124
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1121
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
