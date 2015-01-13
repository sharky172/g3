.class public Lcom/android/internal/widget/ILockSettingsEx$Stub;
.super Ljava/lang/Object;
.source "ILockSettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettingsEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final TRANSACTION_CHECKPASSWORDS:I = 0x271a

.field static final TRANSACTION_CHECKPASSWORDSKIDSMODE:I = 0x271b

.field static final TRANSACTION_CHECK_KNOCKON:I = 0x2727

.field static final TRANSACTION_CHECK_MYFOLDER_KNOCK:I = 0x2724

.field static final TRANSACTION_CHECK_MYFOLDER_PASSWORD:I = 0x271e

.field static final TRANSACTION_CHECK_MYFOLDER_PATTERN:I = 0x2721

.field static final TRANSACTION_HAVE_MYFOLDER_KNOCK:I = 0x2722

.field static final TRANSACTION_HAVE_MYFOLDER_PASSWORD:I = 0x271c

.field static final TRANSACTION_HAVE_MYFOLDER_PATTERN:I = 0x271f

.field static final TRANSACTION_SET_LOCK_KNOCKON:I = 0x2726

.field static final TRANSACTION_SET_MYFOLDER_KNOCK:I = 0x2723

.field static final TRANSACTION_SET_MYFOLDER_PASSWORD:I = 0x271d

.field static final TRANSACTION_SET_MYFOLDER_PATTERN:I = 0x2720

.field static final TRANSACTION_checkBackupPin:I = 0x2714

.field static final TRANSACTION_checkPasswordKidsMode:I = 0x2719

.field static final TRANSACTION_checkPasswordsGetUsers:I = 0x2725

.field static final TRANSACTION_checkPatternKidsMode:I = 0x2713

.field static final TRANSACTION_haveBackupPin:I = 0x2716

.field static final TRANSACTION_havePasswordKidsMode:I = 0x2717

.field static final TRANSACTION_havePatternKidsMode:I = 0x2715

.field static final TRANSACTION_setLockBackupPin:I = 0x2712

.field static final TRANSACTION_setLockPasswordKidsMode:I = 0x2718

.field static final TRANSACTION_setLockPatternKidsMode:I = 0x2711


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettingsEx;
    .locals 1
    .parameter "obj"

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettingsEx$Stub;->asInterface(Lcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v0

    return-object v0
.end method

.method public static asInterface(Lcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/ILockSettingsEx;
    .locals 1
    .parameter "obj"

    .prologue
    .line 115
    new-instance v0, Lcom/android/internal/widget/ILockSettingsEx$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ILockSettingsEx$Stub$Proxy;-><init>(Lcom/android/internal/widget/ILockSettings;)V

    return-object v0
.end method

.method public static onTransact(Lcom/android/internal/widget/ILockSettingsEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "server"
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 120
    packed-switch p1, :pswitch_data_0

    move v6, v5

    .line 363
    :goto_0
    return v6

    .line 123
    :pswitch_0
    const-string v5, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .local v1, _arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->setLockPatternKidsMode(Ljava/lang/String;I)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 133
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :pswitch_1
    const-string v5, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->setLockBackupPin(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 143
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :pswitch_2
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkPatternKidsMode(Ljava/lang/String;I)Z

    move-result v3

    .line 149
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 154
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :pswitch_3
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkBackupPin(Ljava/lang/String;I)Z

    move-result v3

    .line 160
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 165
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :pswitch_4
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .local v0, _arg0:I
    invoke-interface {p0, v0}, Lcom/android/internal/widget/ILockSettingsEx;->havePatternKidsMode(I)Z

    move-result v3

    .line 169
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 174
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :pswitch_5
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .restart local v0       #_arg0:I
    invoke-interface {p0, v0}, Lcom/android/internal/widget/ILockSettingsEx;->haveBackupPin(I)Z

    move-result v3

    .line 178
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :pswitch_6
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, _arg1:Ljava/lang/String;
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->havePasswordKidsMode(ILjava/lang/String;)Z

    move-result v3

    .line 189
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 194
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :pswitch_7
    const-string v5, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, _arg2:Ljava/lang/String;
    invoke-interface {p0, v0, v1, v2}, Lcom/android/internal/widget/ILockSettingsEx;->setLockPasswordKidsMode(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 206
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    :pswitch_8
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 212
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-interface {p0, v0, v1, v2}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswordKidsMode(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 214
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_result:Z
    :pswitch_9
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 224
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswords(Ljava/lang/String;I)Z

    move-result v3

    .line 225
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 230
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :pswitch_a
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 236
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-interface {p0, v0, v1, v2}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswordsKidsMode(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 238
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 243
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_result:Z
    :pswitch_b
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    .local v0, _arg0:I
    invoke-interface {p0, v0}, Lcom/android/internal/widget/ILockSettingsEx;->haveMyFolderPassword(I)Z

    move-result v3

    .line 247
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 252
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :pswitch_c
    const-string v5, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->setMyFolderPassword(Ljava/lang/String;I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 262
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :pswitch_d
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkMyFolderPassword(Ljava/lang/String;I)Z

    move-result v3

    .line 268
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v3, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 273
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :pswitch_e
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 276
    .local v0, _arg0:I
    invoke-interface {p0, v0}, Lcom/android/internal/widget/ILockSettingsEx;->haveMyFolderPattern(I)Z

    move-result v3

    .line 277
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :pswitch_f
    const-string v5, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 287
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->setMyFolderPattern(Ljava/lang/String;I)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 292
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :pswitch_10
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkMyFolderPattern(Ljava/lang/String;I)Z

    move-result v3

    .line 298
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v3, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 303
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :pswitch_11
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    .local v0, _arg0:I
    invoke-interface {p0, v0}, Lcom/android/internal/widget/ILockSettingsEx;->haveMyFolderKnockCode(I)Z

    move-result v3

    .line 307
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v3, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 312
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :pswitch_12
    const-string v5, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 317
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->setMyFolderKnockCode(Ljava/lang/String;I)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 322
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :pswitch_13
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 327
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkMyFolderKnockCode(Ljava/lang/String;I)Z

    move-result v3

    .line 328
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v3, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 333
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :pswitch_14
    const-string v5, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-interface {p0, v0}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswordsGetUsers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 337
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 342
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_15
    const-string v5, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 347
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->setLockKnockOn(Ljava/lang/String;I)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 352
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :pswitch_16
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 357
    .restart local v1       #_arg1:I
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkKnockOn(Ljava/lang/String;I)Z

    move-result v3

    .line 358
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    if-eqz v3, :cond_e

    move v5, v6

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
