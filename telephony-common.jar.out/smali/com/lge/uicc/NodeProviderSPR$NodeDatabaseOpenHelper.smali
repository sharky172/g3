.class Lcom/lge/uicc/NodeProviderSPR$NodeDatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NodeProviderSPR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/NodeProviderSPR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeDatabaseOpenHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/NodeProviderSPR;


# direct methods
.method public constructor <init>(Lcom/lge/uicc/NodeProviderSPR;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lge/uicc/NodeProviderSPR$NodeDatabaseOpenHelper;->this$0:Lcom/lge/uicc/NodeProviderSPR;

    .line 152
    const-string v0, "/carrier/apps/node.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 154
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 159
    const-string v0, "CREATE TABLE IF NOT EXISTS omadm_node(key TEXT,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 167
    return-void
.end method
