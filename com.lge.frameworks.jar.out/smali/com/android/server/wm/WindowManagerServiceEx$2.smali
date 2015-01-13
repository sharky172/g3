.class Lcom/android/server/wm/WindowManagerServiceEx$2;
.super Ljava/lang/Object;
.source "WindowManagerServiceEx.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerServiceEx;->moveWindowTokenToTop(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerServiceEx;

.field final synthetic val$windowList:Lcom/android/server/wm/WindowList;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerServiceEx;Lcom/android/server/wm/WindowList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceEx$2;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceEx$2;->val$windowList:Lcom/android/server/wm/WindowList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 2
    .parameter "state1"
    .parameter "state2"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$2;->val$windowList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx$2;->val$windowList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$2;->val$windowList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx$2;->val$windowList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    check-cast p1, Lcom/android/server/wm/WindowState;

    .end local p1
    check-cast p2, Lcom/android/server/wm/WindowState;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerServiceEx$2;->compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    return v0
.end method
