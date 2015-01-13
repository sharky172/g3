.class final enum Landroid/view/VolumePanelEx$LGStreamResources;
.super Ljava/lang/Enum;
.source "VolumePanelEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanelEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LGStreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/VolumePanelEx$LGStreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/VolumePanelEx$LGStreamResources;

.field public static final enum AlarmStream:Landroid/view/VolumePanelEx$LGStreamResources;

.field public static final enum BluetoothSCOStream:Landroid/view/VolumePanelEx$LGStreamResources;

.field public static final enum DMBStream:Landroid/view/VolumePanelEx$LGStreamResources;

.field public static final enum FMStream:Landroid/view/VolumePanelEx$LGStreamResources;

.field public static final enum MasterStream:Landroid/view/VolumePanelEx$LGStreamResources;

.field public static final enum MediaStream:Landroid/view/VolumePanelEx$LGStreamResources;

.field public static final enum NotificationStream:Landroid/view/VolumePanelEx$LGStreamResources;

.field public static final enum RemoteStream:Landroid/view/VolumePanelEx$LGStreamResources;

.field public static final enum RingerStream:Landroid/view/VolumePanelEx$LGStreamResources;

.field public static final enum SYSTEMStream:Landroid/view/VolumePanelEx$LGStreamResources;

.field public static final enum VoiceStream:Landroid/view/VolumePanelEx$LGStreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 97
    new-instance v0, Landroid/view/VolumePanelEx$LGStreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v2, 0x0

    const/4 v3, 0x6

    const v4, 0x104044a

    const v5, 0x2020257

    const v6, 0x2020257

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanelEx$LGStreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->BluetoothSCOStream:Landroid/view/VolumePanelEx$LGStreamResources;

    .line 102
    new-instance v0, Landroid/view/VolumePanelEx$LGStreamResources;

    const-string v1, "RingerStream"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const v4, 0x20d02ef

    const v5, 0x2020260

    const v6, 0x2020267

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanelEx$LGStreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->RingerStream:Landroid/view/VolumePanelEx$LGStreamResources;

    .line 107
    new-instance v0, Landroid/view/VolumePanelEx$LGStreamResources;

    const-string v1, "VoiceStream"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x104044c

    const v5, 0x202025f

    const v6, 0x202025f

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanelEx$LGStreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->VoiceStream:Landroid/view/VolumePanelEx$LGStreamResources;

    .line 112
    new-instance v0, Landroid/view/VolumePanelEx$LGStreamResources;

    const-string v1, "AlarmStream"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const v4, 0x1040447

    const v5, 0x2020255

    const v6, 0x2020256

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanelEx$LGStreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->AlarmStream:Landroid/view/VolumePanelEx$LGStreamResources;

    .line 117
    new-instance v0, Landroid/view/VolumePanelEx$LGStreamResources;

    const-string v1, "MediaStream"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0x20d02ed

    const v5, 0x202025b

    const v6, 0x202025c

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanelEx$LGStreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->MediaStream:Landroid/view/VolumePanelEx$LGStreamResources;

    .line 122
    new-instance v0, Landroid/view/VolumePanelEx$LGStreamResources;

    const-string v1, "DMBStream"

    const/4 v2, 0x5

    const/16 v3, 0xb

    const v4, 0x104044d

    const v5, 0x2020266

    const v6, 0x2020267

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanelEx$LGStreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->DMBStream:Landroid/view/VolumePanelEx$LGStreamResources;

    .line 127
    new-instance v0, Landroid/view/VolumePanelEx$LGStreamResources;

    const-string v1, "NotificationStream"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const v4, 0x20d02ea

    const v5, 0x202025d

    const v6, 0x202025e

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanelEx$LGStreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->NotificationStream:Landroid/view/VolumePanelEx$LGStreamResources;

    .line 132
    new-instance v0, Landroid/view/VolumePanelEx$LGStreamResources;

    const-string v1, "FMStream"

    const/4 v2, 0x7

    const/16 v3, 0xa

    const v4, 0x104044d

    const v5, 0x2020266

    const v6, 0x2020267

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanelEx$LGStreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->FMStream:Landroid/view/VolumePanelEx$LGStreamResources;

    .line 137
    new-instance v0, Landroid/view/VolumePanelEx$LGStreamResources;

    const-string v1, "SYSTEMStream"

    const/16 v2, 0x8

    const/4 v3, 0x1

    const v4, 0x20d02eb

    const v5, 0x2020264

    const v6, 0x2020265

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanelEx$LGStreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->SYSTEMStream:Landroid/view/VolumePanelEx$LGStreamResources;

    .line 142
    new-instance v0, Landroid/view/VolumePanelEx$LGStreamResources;

    const-string v1, "MasterStream"

    const/16 v2, 0x9

    const/16 v3, -0x64

    const v4, 0x104044d

    const v5, 0x2020266

    const v6, 0x2020267

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanelEx$LGStreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->MasterStream:Landroid/view/VolumePanelEx$LGStreamResources;

    .line 147
    new-instance v0, Landroid/view/VolumePanelEx$LGStreamResources;

    const-string v1, "RemoteStream"

    const/16 v2, 0xa

    const/16 v3, -0xc8

    const v4, 0x104044d

    const v5, 0x108032c

    const v6, 0x1080320

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanelEx$LGStreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->RemoteStream:Landroid/view/VolumePanelEx$LGStreamResources;

    .line 96
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/view/VolumePanelEx$LGStreamResources;

    const/4 v1, 0x0

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->BluetoothSCOStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->RingerStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->VoiceStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->AlarmStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->MediaStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->DMBStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->NotificationStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->FMStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->SYSTEMStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->MasterStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/VolumePanelEx$LGStreamResources;->RemoteStream:Landroid/view/VolumePanelEx$LGStreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->$VALUES:[Landroid/view/VolumePanelEx$LGStreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "streamType"
    .parameter "descRes"
    .parameter "iconRes"
    .parameter "iconMuteRes"
    .parameter "show"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput p3, p0, Landroid/view/VolumePanelEx$LGStreamResources;->streamType:I

    .line 161
    iput p4, p0, Landroid/view/VolumePanelEx$LGStreamResources;->descRes:I

    .line 162
    iput p5, p0, Landroid/view/VolumePanelEx$LGStreamResources;->iconRes:I

    .line 163
    iput p6, p0, Landroid/view/VolumePanelEx$LGStreamResources;->iconMuteRes:I

    .line 164
    iput-boolean p7, p0, Landroid/view/VolumePanelEx$LGStreamResources;->show:Z

    .line 165
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/VolumePanelEx$LGStreamResources;
    .locals 1
    .parameter "name"

    .prologue
    .line 96
    const-class v0, Landroid/view/VolumePanelEx$LGStreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanelEx$LGStreamResources;

    return-object v0
.end method

.method public static values()[Landroid/view/VolumePanelEx$LGStreamResources;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/view/VolumePanelEx$LGStreamResources;->$VALUES:[Landroid/view/VolumePanelEx$LGStreamResources;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/VolumePanelEx$LGStreamResources;

    return-object v0
.end method
