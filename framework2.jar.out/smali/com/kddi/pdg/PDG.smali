.class public final Lcom/kddi/pdg/PDG;
.super Ljava/lang/Object;
.source "PDG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/pdg/PDG$Settings;,
        Lcom/kddi/pdg/PDG$WhiteList;,
        Lcom/kddi/pdg/PDG$PdgStatus;
    }
.end annotation


# static fields
.field public static final ACCESS_KEY:Ljava/lang/String; = "permission"

.field public static final AUTH:Ljava/lang/String; = "com.kddi.android.pdg"

.field public static final AUTH_READ_ONLY:Ljava/lang/String; = "com.kddi.android.pdg.read_only"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
