.class public Lcom/lge/media/RingtoneManagerEx;
.super Landroid/media/RingtoneManager;
.source "RingtoneManagerEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtoneManagerEx"

.field public static final TYPE_ALRAM_TIMER:I = 0x40

.field public static final TYPE_NOTIFICATION_SIM2:I = 0x10

.field public static final TYPE_NOTIFICATION_SIM3:I = 0x100

.field public static final TYPE_RINGTONE_SIM2:I = 0x8

.field public static final TYPE_RINGTONE_SIM3:I = 0x80

.field public static final TYPE_RINGTONE_VIDEOCALL:I = 0x20


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p1, p0, Lcom/lge/media/RingtoneManagerEx;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, setting:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-object v2

    .line 208
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, uriString:Ljava/lang/String;
    const-string v3, "RingtoneManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualDefaultRingtoneUri type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uriString is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 2
    .parameter "defaultRingtoneUri"

    .prologue
    const/4 v0, -0x1

    .line 243
    if-nez p0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    const/4 v0, 0x2

    goto :goto_0

    .line 249
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 250
    const/4 v0, 0x4

    goto :goto_0

    .line 251
    :cond_4
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_VIDEOCALL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 252
    const/16 v0, 0x20

    goto :goto_0

    .line 253
    :cond_5
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 254
    const/16 v0, 0x8

    goto :goto_0

    .line 255
    :cond_6
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    const/16 v0, 0x10

    goto :goto_0

    .line 257
    :cond_7
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_TIMER_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 258
    const/16 v0, 0x40

    goto :goto_0

    .line 259
    :cond_8
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM3_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 260
    const/16 v0, 0x80

    goto :goto_0

    .line 261
    :cond_9
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM3_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 262
    const/16 v0, 0x100

    goto :goto_0

    .line 263
    :cond_a
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGFORME_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const/16 v0, 0x200

    goto :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "type"

    .prologue
    .line 281
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 302
    :goto_0
    return-object v0

    .line 283
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 284
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 285
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 286
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 287
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 288
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_VIDEOCALL_URI:Landroid/net/Uri;

    goto :goto_0

    .line 289
    :cond_3
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_4

    .line 290
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

    goto :goto_0

    .line 291
    :cond_4
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_5

    .line 292
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    goto :goto_0

    .line 293
    :cond_5
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    .line 294
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_TIMER_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 295
    :cond_6
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_7

    .line 296
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM3_URI:Landroid/net/Uri;

    goto :goto_0

    .line 297
    :cond_7
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_8

    .line 298
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM3_URI:Landroid/net/Uri;

    goto :goto_0

    .line 299
    :cond_8
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_9

    .line 300
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGFORME_URI:Landroid/net/Uri;

    goto :goto_0

    .line 302
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRingtoneWithStreamType(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 5
    .parameter "context"
    .parameter "ringtoneUri"
    .parameter "streamType"

    .prologue
    .line 123
    :try_start_0
    new-instance v1, Landroid/media/RingtoneEx;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p2}, Landroid/media/RingtoneEx;-><init>(Landroid/content/Context;ZI)V

    .line 124
    .local v1, r:Landroid/media/Ringtone;
    invoke-virtual {v1, p1}, Landroid/media/RingtoneEx;->setUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1           #r:Landroid/media/Ringtone;
    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "RingtoneManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open ringtone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 168
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "ringtone"

    .line 189
    :goto_0
    return-object v0

    .line 170
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 171
    const-string v0, "notification_sound"

    goto :goto_0

    .line 172
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 173
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 174
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 175
    const-string v0, "ringtone_videocall"

    goto :goto_0

    .line 176
    :cond_3
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_4

    .line 177
    const-string v0, "ringtone_sim2"

    goto :goto_0

    .line 178
    :cond_4
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_5

    .line 179
    const-string v0, "notification_sound_sim2"

    goto :goto_0

    .line 180
    :cond_5
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    .line 181
    const-string v0, "timer_alert"

    goto :goto_0

    .line 182
    :cond_6
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_7

    .line 183
    const-string v0, "ringtone_sim3"

    goto :goto_0

    .line 184
    :cond_7
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_8

    .line 185
    const-string v0, "notification_sound_sim3"

    goto :goto_0

    .line 186
    :cond_8
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_9

    .line 187
    const-string v0, "ringforme"

    goto :goto_0

    .line 189
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 75
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    .line 99
    new-instance v0, Lcom/lge/media/RingtoneManagerEx;

    invoke-direct {v0, p0}, Lcom/lge/media/RingtoneManagerEx;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, rm:Lcom/lge/media/RingtoneManagerEx;
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lge/media/RingtoneManagerEx;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lge/media/RingtoneManagerEx;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 107
    :cond_0
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 78
    if-eqz p1, :cond_1

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, uri:Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 84
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 88
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 314
    invoke-static {p0}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    .line 224
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, setting:Ljava/lang/String;
    const-string v1, "RingtoneManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActualDefaultRingtoneUri getSettingForType type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ringtoneUri is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public inferStreamType()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 330
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 322
    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 327
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
        0x100 -> :sswitch_1
    .end sparse-switch
.end method

.method protected setFilterColumnsList(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 134
    .local v0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 142
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 145
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 148
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 151
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_5
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_6

    .line 154
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_6
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_7

    .line 157
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_7
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_8

    .line 160
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_8
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_9

    .line 163
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_9
    return-void
.end method
