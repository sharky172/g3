.class Lcom/android/server/thm/ThemeIconManagerService$2;
.super Ljava/util/LinkedHashMap;
.source "ThemeIconManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/thm/ThemeIconManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;",
        "Landroid/content/thm/ThemeIconRedirectionMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/thm/ThemeIconManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/thm/ThemeIconManagerService;IFZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/thm/ThemeIconManagerService$2;->this$0:Lcom/android/server/thm/ThemeIconManagerService;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;",
            "Landroid/content/thm/ThemeIconRedirectionMap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;Landroid/content/thm/ThemeIconRedirectionMap;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
