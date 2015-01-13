.class public Lcom/lge/systemservice/core/LGLedRecord;
.super Ljava/lang/Object;
.source "LGLedRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL_LED_PLAY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LGLedRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_SHOW_LIGHTS_FORCE:I = 0x2

.field public static final FLAG_SHOW_LIGHTS_ONLY_LED_OFF:I = 0x0

.field public static final FLAG_SHOW_LIGHTS_ONLY_LED_ON:I = 0x1

.field public static final ID_ALARM:I = 0x8

.field public static final ID_CALENDAR_REMIND:I = 0x5

.field public static final ID_CALLING:I = 0x23

.field public static final ID_CALL_01:I = 0x9

.field public static final ID_CALL_02:I = 0xa

.field public static final ID_CALL_03:I = 0xb

.field public static final ID_CHARGING:I = 0x3

.field public static final ID_CHARGING_FULL:I = 0x4

.field public static final ID_FAILED_CHECKPASSWORD:I = 0x68

.field public static final ID_FAVORITE_MISSED_NOTI:I = 0xe

.field public static final ID_FELICA_ON:I = 0x65

.field public static final ID_GPS_ENABLED:I = 0x66

.field public static final ID_INCALL_BLUE:I = 0x16

.field public static final ID_INCALL_LIME:I = 0x1c

.field public static final ID_INCALL_ORANGE:I = 0x17

.field public static final ID_INCALL_PINK:I = 0x15

.field public static final ID_INCALL_PURPLE:I = 0x1a

.field public static final ID_INCALL_RED:I = 0x1b

.field public static final ID_INCALL_TURQUOISE:I = 0x19

.field public static final ID_INCALL_YELLOW:I = 0x18

.field public static final ID_INCOMING_CALL:I = 0x26

.field public static final ID_KNOCK_ON:I = 0x67

.field public static final ID_LCD_ON:I = 0x2

.field public static final ID_MISSED_NOTI:I = 0x7

.field public static final ID_MISSED_NOTI_BLUE:I = 0x12

.field public static final ID_MISSED_NOTI_BLUE_ONCE:I = 0x28

.field public static final ID_MISSED_NOTI_LIME:I = 0x20

.field public static final ID_MISSED_NOTI_LIME_ONCE:I = 0x2f

.field public static final ID_MISSED_NOTI_ONCE:I = 0x27

.field public static final ID_MISSED_NOTI_ORANGE:I = 0x13

.field public static final ID_MISSED_NOTI_ORANGE_ONCE:I = 0x2b

.field public static final ID_MISSED_NOTI_PINK:I = 0x11

.field public static final ID_MISSED_NOTI_PINK_ONCE:I = 0x29

.field public static final ID_MISSED_NOTI_PURPLE:I = 0x1e

.field public static final ID_MISSED_NOTI_PURPLE_ONCE:I = 0x2d

.field public static final ID_MISSED_NOTI_RED:I = 0x1f

.field public static final ID_MISSED_NOTI_RED_ONCE:I = 0x2e

.field public static final ID_MISSED_NOTI_TURQUOISE:I = 0x1d

.field public static final ID_MISSED_NOTI_TURQUOISE_ONCE:I = 0x2c

.field public static final ID_MISSED_NOTI_YELLOW:I = 0x14

.field public static final ID_MISSED_NOTI_YELLOW_ONCE:I = 0x2a

.field public static final ID_POWER_OFF:I = 0x6

.field public static final ID_POWER_ON:I = 0x1

.field public static final ID_REAR_MISSED_NOTI:I = 0x24

.field public static final ID_SOUND_RECORDING:I = 0x22

.field public static final ID_STOP:I = 0x0

.field public static final ID_TANGILE_CONNECT:I = 0x21

.field public static final ID_URGENT_CALL_MISSED_NOTI:I = 0x25

.field public static final ID_VOLUME_DOWN:I = 0xd

.field public static final ID_VOLUME_UP:I = 0xc

.field public static final ONLY_BACK_LED_PLAY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ONLY_FRONT_LED_PLAY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final SET_ALL_LED:I = 0x3

.field public static final SET_BACK_LED:I = 0x2

.field public static final SET_FRONT_LED:I = 0x1


# instance fields
.field public color:I

.field public flags:I

.field public infinite:Z

.field public mExceptional:Z

.field public mNativeNotification:Z

.field public offMS:I

.field public onMS:I

.field public patternFilePath:Ljava/lang/String;

.field public patternId:I

.field public pkgName:Ljava/lang/String;

.field public priority:I

.field public recordId:I

.field public whichLedPlay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 711
    new-instance v0, Lcom/lge/systemservice/core/LGLedRecord$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LGLedRecord$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LGLedRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 535
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    .line 542
    iput-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    .line 579
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 586
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    .line 593
    iput-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    .line 601
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    .line 609
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->infinite:Z

    .line 623
    iput v3, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    .line 627
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 628
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    .line 629
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    .line 630
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    .line 631
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    .line 632
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 633
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    .line 634
    iput-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    .line 635
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    .line 636
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    .line 637
    iput v3, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    .line 638
    iput-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 535
    iput v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    .line 542
    iput-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    .line 579
    iput v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 586
    iput v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    .line 593
    iput-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    .line 601
    iput-boolean v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    .line 609
    iput-boolean v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    .line 615
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->infinite:Z

    .line 623
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    .line 654
    return-void

    :cond_0
    move v0, v2

    .line 650
    goto :goto_0

    :cond_1
    move v1, v2

    .line 651
    goto :goto_1
.end method


# virtual methods
.method public clone()Lcom/lge/systemservice/core/LGLedRecord;
    .locals 2

    .prologue
    .line 658
    new-instance v0, Lcom/lge/systemservice/core/LGLedRecord;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LGLedRecord;-><init>()V

    .line 659
    .local v0, that:Lcom/lge/systemservice/core/LGLedRecord;
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 660
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    .line 661
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    .line 662
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    .line 663
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    .line 664
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 665
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    .line 666
    iget-object v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    .line 667
    iget-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    iput-boolean v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    .line 668
    iget-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    iput-boolean v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    .line 669
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    .line 670
    iget-object v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    .line 672
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/lge/systemservice/core/LGLedRecord;->clone()Lcom/lge/systemservice/core/LGLedRecord;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/lge/systemservice/core/LGLedRecord;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 676
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    iget v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    iget v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    iget v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    iget v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    iget v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    iget v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    iget v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    iget-boolean v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    iget-boolean v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    iget v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    if-nez v0, :cond_3

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    iget-object v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LGLedRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " patternId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recordId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExceptional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNativeNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " whichLedPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " patternFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 697
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    iget-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 705
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    iget-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 709
    return-void

    :cond_0
    move v0, v2

    .line 705
    goto :goto_0

    :cond_1
    move v1, v2

    .line 706
    goto :goto_1
.end method
