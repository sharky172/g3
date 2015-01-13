.class public Lcom/android/server/power/PasswordConverter;
.super Ljava/lang/Object;
.source "PasswordConverter.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static LCD_MAX_X:I = 0x0

.field private static LCD_MAX_Y:I = 0x0

.field private static final LEFTSHIFT_DIST:F = 2.0f

.field private static N_TOUCH_SLOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final VERIFIED_DIST:F = 0.3f

.field private static leftShiftDist:I

.field private static mDpi:I

.field private static mOrientations:[Z

.field private static mRotationFixed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/server/power/KnockOnPowerController;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/PasswordConverter;->TAG:Ljava/lang/String;

    .line 17
    sget-boolean v0, Lcom/android/server/power/KnockOnPowerController;->NOTUSER_DEBUG:Z

    sput-boolean v0, Lcom/android/server/power/PasswordConverter;->DEBUG:Z

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PasswordConverter;->mRotationFixed:Z

    return-void

    .line 27
    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertPositionToPassword(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, mPointArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v8, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPassword$EasyKnockType;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v7, password:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 83
    .local v9, pwSize:I
    const/4 v11, 0x1

    new-array v10, v11, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 85
    .local v10, tmp:[I
    const/4 v6, 0x0

    .line 86
    .local v6, p:Landroid/graphics/Point;
    const/4 v3, 0x0

    .line 87
    .local v3, isvalid:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v9, :cond_2

    .line 88
    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #p:Landroid/graphics/Point;
    check-cast v6, Landroid/graphics/Point;

    .line 91
    .restart local v6       #p:Landroid/graphics/Point;
    :cond_0
    if-eqz v6, :cond_1

    iget v11, v6, Landroid/graphics/Point;->x:I

    if-lez v11, :cond_1

    iget v11, v6, Landroid/graphics/Point;->y:I

    if-lez v11, :cond_1

    .line 92
    or-int/lit8 v3, v3, 0x1

    .line 87
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_2
    if-eqz v9, :cond_3

    if-nez v3, :cond_4

    .line 97
    :cond_3
    sget-object v11, Lcom/android/server/power/PasswordConverter;->TAG:Ljava/lang/String;

    const-string v12, "invalid touch points!"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v11, ""

    .line 122
    :goto_1
    return-object v11

    .line 101
    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v9, :cond_5

    .line 102
    new-instance v12, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v13, v11

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    invoke-direct {v12, v13, v11}, Lcom/android/server/power/EasyKnockPassword$EasyKnockType;-><init>(FF)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 105
    :cond_5
    sget v1, Lcom/android/server/power/PasswordConverter;->mDpi:I

    .line 106
    .local v1, dpi:I
    new-instance v5, Lcom/android/server/power/EasyKnockPassword;

    sget-boolean v11, Lcom/android/server/power/PasswordConverter;->mRotationFixed:Z

    invoke-direct {v5, v1, v11}, Lcom/android/server/power/EasyKnockPassword;-><init>(IZ)V

    .line 107
    .local v5, mPassword:Lcom/android/server/power/EasyKnockPassword;
    sget-boolean v11, Lcom/android/server/power/PasswordConverter;->DEBUG:Z

    if-eqz v11, :cond_6

    .line 108
    sget-object v11, Lcom/android/server/power/PasswordConverter;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mOrientations : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v14, 0x0

    aget-boolean v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v14, 0x1

    aget-boolean v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v14, 0x2

    aget-boolean v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v14, 0x3

    aget-boolean v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_6
    sget-object v11, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    invoke-virtual {v5, v8, v11}, Lcom/android/server/power/EasyKnockPassword;->getAnswers(Ljava/util/ArrayList;[Z)[I

    move-result-object v0

    .line 112
    .local v0, answers:[I
    move-object v10, v0

    .line 113
    const/4 v4, 0x1

    .local v4, j:I
    :goto_3
    array-length v11, v10

    if-ge v4, v11, :cond_8

    .line 114
    aget v11, v10, v4

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    rem-int v11, v4, v9

    if-nez v11, :cond_7

    .line 116
    const/16 v11, 0xa

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 119
    :cond_8
    sget-boolean v11, Lcom/android/server/power/PasswordConverter;->DEBUG:Z

    if-eqz v11, :cond_9

    .line 120
    sget-object v11, Lcom/android/server/power/PasswordConverter;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Array["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] string["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1
.end method

.method public static resetOrientation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    aput-boolean v2, v0, v2

    .line 70
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x1

    aput-boolean v2, v0, v1

    .line 71
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 72
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 73
    return-void
.end method

.method public static setDisplay(III)V
    .locals 2
    .parameter "dpi"
    .parameter "max_x"
    .parameter "max_y"

    .prologue
    .line 38
    const v0, 0x3e99999a

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/server/power/PasswordConverter;->N_TOUCH_SLOP:I

    .line 39
    const/high16 v0, 0x4000

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/server/power/PasswordConverter;->leftShiftDist:I

    .line 40
    sput p1, Lcom/android/server/power/PasswordConverter;->LCD_MAX_X:I

    .line 41
    sput p2, Lcom/android/server/power/PasswordConverter;->LCD_MAX_Y:I

    .line 42
    sput p0, Lcom/android/server/power/PasswordConverter;->mDpi:I

    .line 43
    return-void
.end method

.method public static setOrientation(I)V
    .locals 4
    .parameter "rotation"

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-static {}, Lcom/android/server/power/PasswordConverter;->resetOrientation()V

    .line 50
    packed-switch p0, :pswitch_data_0

    .line 60
    sget-object v0, Lcom/android/server/power/PasswordConverter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not  supported rotation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    aput-boolean v3, v0, p0

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setRotatedVariantPasswordChecking(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 31
    sput-boolean p0, Lcom/android/server/power/PasswordConverter;->mRotationFixed:Z

    .line 32
    return-void
.end method
