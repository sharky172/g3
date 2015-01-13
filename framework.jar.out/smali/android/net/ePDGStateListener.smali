.class public Landroid/net/ePDGStateListener;
.super Ljava/lang/Object;
.source "ePDGStateListener.java"


# static fields
.field public static final LISTEN_CONNECTION_PARAM:I = 0x10

.field public static final LISTEN_ERROR_STATUS:I = 0x8

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_PDP_STATE:I = 0x1

.field public static final LISTEN_WIFI_STATUS:I = 0x4


# instance fields
.field callback:Landroid/net/IePDGStateListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/net/ePDGStateListener$1;

    invoke-direct {v0, p0}, Landroid/net/ePDGStateListener$1;-><init>(Landroid/net/ePDGStateListener;)V

    iput-object v0, p0, Landroid/net/ePDGStateListener;->callback:Landroid/net/IePDGStateListener;

    .line 104
    new-instance v0, Landroid/net/ePDGStateListener$2;

    invoke-direct {v0, p0}, Landroid/net/ePDGStateListener$2;-><init>(Landroid/net/ePDGStateListener;)V

    iput-object v0, p0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method


# virtual methods
.method public onConnectionParamStatus([Ljava/lang/String;)V
    .locals 0
    .parameter "ConParam"

    .prologue
    .line 80
    return-void
.end method

.method public onErrorStatusChanged(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 71
    return-void
.end method

.method public onPDPStateChanged([I)V
    .locals 0
    .parameter "serviceState"

    .prologue
    .line 56
    return-void
.end method

.method public onWiFiStatusChanged(Z)V
    .locals 0
    .parameter "mWF"

    .prologue
    .line 64
    return-void
.end method
