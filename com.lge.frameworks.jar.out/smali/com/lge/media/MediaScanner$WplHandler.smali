.class Lcom/lge/media/MediaScanner$WplHandler;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WplHandler"
.end annotation


# instance fields
.field final handler:Lorg/xml/sax/ContentHandler;

.field playListDirectory:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/media/MediaScanner;


# direct methods
.method public constructor <init>(Lcom/lge/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "fileList"

    .prologue
    .line 2218
    iput-object p1, p0, Lcom/lge/media/MediaScanner$WplHandler;->this$0:Lcom/lge/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2219
    iput-object p2, p0, Lcom/lge/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    .line 2221
    new-instance v2, Landroid/sax/RootElement;

    const-string v4, "smil"

    invoke-direct {v2, v4}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 2222
    .local v2, root:Landroid/sax/RootElement;
    const-string v4, "body"

    invoke-virtual {v2, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 2223
    .local v0, body:Landroid/sax/Element;
    const-string v4, "seq"

    invoke-virtual {v0, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 2224
    .local v3, seq:Landroid/sax/Element;
    const-string v4, "media"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    .line 2225
    .local v1, media:Landroid/sax/Element;
    invoke-virtual {v1, p0}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 2227
    invoke-virtual {v2}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    .line 2228
    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 2240
    return-void
.end method

.method getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/lge/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 2232
    const-string v1, ""

    const-string v2, "src"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2233
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2234
    iget-object v1, p0, Lcom/lge/media/MediaScanner$WplHandler;->this$0:Lcom/lge/media/MediaScanner;

    iget-object v2, p0, Lcom/lge/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    #calls: Lcom/lge/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/lge/media/MediaScanner;->access$3000(Lcom/lge/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :cond_0
    return-void
.end method
