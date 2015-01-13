.class public Lcom/kddi/pdg/PdgStatusManager$PrivacyData;
.super Ljava/lang/Object;
.source "PdgStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/pdg/PdgStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyData"
.end annotation


# static fields
.field public static final CONTACTS:I = 0x0

.field public static final LOCATION:I = 0x1

.field public static final UIM:I = 0x2


# instance fields
.field private accessTime:J

.field private authState:I

.field private packageName:Ljava/lang/String;

.field private settingState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->packageName:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->settingState:I

    .line 44
    iput v1, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->authState:I

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->accessTime:J

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJ)V
    .locals 2
    .parameter "name"
    .parameter "setting"
    .parameter "auth"
    .parameter "accsess"

    .prologue
    const/4 v1, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->packageName:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->settingState:I

    .line 44
    iput v1, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->authState:I

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->accessTime:J

    .line 63
    iput-object p1, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->packageName:Ljava/lang/String;

    .line 64
    iput p2, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->settingState:I

    .line 65
    iput p3, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->authState:I

    .line 66
    iput-wide p4, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->accessTime:J

    .line 67
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->accessTime:J

    return-wide v0
.end method

.method public final getAuthState()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->authState:I

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSettingState()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->settingState:I

    return v0
.end method

.method public final setAccessTime(J)V
    .locals 0
    .parameter "access"

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->accessTime:J

    .line 126
    return-void
.end method

.method public final setAuthState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 116
    iput p1, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->authState:I

    .line 117
    return-void
.end method

.method public final setSettingState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 107
    iput p1, p0, Lcom/kddi/pdg/PdgStatusManager$PrivacyData;->settingState:I

    .line 108
    return-void
.end method
