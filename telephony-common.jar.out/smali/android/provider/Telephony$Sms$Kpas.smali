.class public final Landroid/provider/Telephony$Sms$Kpas;
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
    name = "Kpas"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final KPAS_BODY:Ljava/lang/String; = "body"

.field public static final KPAS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final KPAS_MESSAGEID:Ljava/lang/String; = "kpas_messageid"

.field public static final KPAS_SERIALNUMBER:Ljava/lang/String; = "kpas_serialnumber"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3011
    const-string v0, "content://sms/kpas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$Kpas;->KPAS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;II)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "resolver"
    .parameter "address"
    .parameter "name"
    .parameter "tag"
    .parameter "tag_eng"
    .parameter "threadId"
    .parameter "body"
    .parameter "message_id"
    .parameter "serialnumber"

    .prologue
    .line 3039
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3040
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3041
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3042
    const-string v1, "tag"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3043
    const-string v1, "tag_eng"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3044
    const-wide/16 v1, -0x1

    cmp-long v1, p6, v1

    if-eqz v1, :cond_0

    .line 3045
    const-string v1, "thread_id"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3047
    :cond_0
    const-string v1, "body"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    const-string v1, "kpas_messageid"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3049
    const-string v1, "kpas_serialnumber"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3050
    sget-object v1, Landroid/provider/Telephony$Sms$Kpas;->KPAS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
