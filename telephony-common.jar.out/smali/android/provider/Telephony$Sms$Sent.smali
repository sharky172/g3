.class public final Landroid/provider/Telephony$Sms$Sent;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sent"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1293
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    return-void
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 9
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1314
    const/4 v0, 0x0

    const-string v1, "KROperator"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v6, v0, :cond_0

    .line 1315
    sget-object v1, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v8, v7

    invoke-static/range {v0 .. v8}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZI)Landroid/net/Uri;

    move-result-object v0

    .line 1321
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v8

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v8}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZI)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;
    .locals 13
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "subId"

    .prologue
    .line 1341
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "KROperator"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1342
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v12}, Landroid/provider/Telephony$Sms$Sent;->addMessageEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JIIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1353
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZI)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static addMessageEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JIIJILjava/lang/String;)Landroid/net/Uri;
    .locals 14
    .parameter "resolver"
    .parameter "recipient"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "threadId"
    .parameter "protocol"
    .parameter "dcs"
    .parameter "groupid"
    .parameter "simcopy"
    .parameter "replyAddress"

    .prologue
    .line 1363
    const/4 v1, -0x1

    move-object/from16 v0, p12

    invoke-static {v1, v0}, Landroid/telephony/SmsMessage;->makeSmsHeader(ILjava/lang/String;)[B

    move-result-object v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    invoke-static/range {v1 .. v13}, Landroid/provider/Telephony$Sms$Sent;->addMessageExEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JIIJI[B)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static addMessageExEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JIIJI[B)Landroid/net/Uri;
    .locals 21
    .parameter "resolver"
    .parameter "recipient"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "threadId"
    .parameter "protocol"
    .parameter "dcs"
    .parameter "groupid"
    .parameter "simcopy"
    .parameter "header"

    .prologue
    .line 1372
    sget-object v1, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-object/from16 v17, p12

    invoke-static/range {v0 .. v20}, Landroid/provider/Telephony$Sms;->addMessageToUriEx(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJIIJIII[BZLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
