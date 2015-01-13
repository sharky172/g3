.class public Lcom/kddi/android/CpaManager;
.super Ljava/lang/Object;
.source "CpaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/CpaManager$ConnInfo;,
        Lcom/kddi/android/CpaManager$Settings;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_ERROR:I = -0x3

.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

.field public static final CPA_CONNECTION_CHANGED:Ljava/lang/String; = "cpa_onSetupConnectionCompleted"

.field public static final DISCONNECTED:I = 0x4

.field public static final DISCONNECTING:I = 0x3

.field public static final EXTRA_CONNECTIVITY_STATUS:Ljava/lang/String; = "connStatus"

.field public static final EXTRA_ERRNO:Ljava/lang/String; = "errno"

.field public static final MODE_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field public static final MODE_NAVI:Ljava/lang/String; = "NAVI"

.field public static final PARAMETER_ERROR:I = -0x1

.field public static final RADIO_NOT_AVAILABLE:I = -0x2

.field public static final REQUEST_CPA_DISABLE:Ljava/lang/String; = "com.kddi.android.cpa.REQUEST_CPA_DISABLE"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RIL_Cpa"

.field public static final UNKNOWN_ERROR:I = -0x4


# instance fields
.field private mCPAStatus:I

.field private mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

.field private mContext:Landroid/content/Context;

.field private mErrno:I

.field private mPackageName:Ljava/lang/String;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettings:Lcom/kddi/android/CpaManager$Settings;

.field private final permName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/kddi/android/CpaManager;->mSettings:Lcom/kddi/android/CpaManager$Settings;

    .line 28
    iput-object v1, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    .line 29
    const/4 v1, 0x4

    iput v1, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    .line 30
    const/4 v1, -0x4

    iput v1, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 60
    const-string v1, "com.kddi.android.permission.MANAGE_CPA"

    iput-object v1, p0, Lcom/kddi/android/CpaManager;->permName:Ljava/lang/String;

    .line 62
    new-instance v1, Lcom/kddi/android/CpaManager$1;

    invoke-direct {v1, p0}, Lcom/kddi/android/CpaManager$1;-><init>(Lcom/kddi/android/CpaManager;)V

    iput-object v1, p0, Lcom/kddi/android/CpaManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    iput-object p1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    .line 207
    iget-object v1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.kddi.android.permission.MANAGE_CPA"

    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 208
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "PERMISSION_DENIED"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kddi/android/CpaManager;->mPackageName:Ljava/lang/String;

    .line 211
    new-instance v1, Lcom/kddi/android/CpaManager$ConnInfo;

    invoke-direct {v1}, Lcom/kddi/android/CpaManager$ConnInfo;-><init>()V

    iput-object v1, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "cpa_onSetupConnectionCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "com.kddi.android.cpa.REQUEST_CPA_DISABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    const-string v1, "RIL_Cpa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CpaManager mPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/kddi/android/CpaManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    return v0
.end method

.method static synthetic access$002(Lcom/kddi/android/CpaManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    return p1
.end method

.method static synthetic access$100(Lcom/kddi/android/CpaManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/kddi/android/CpaManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/kddi/android/CpaManager;Lcom/kddi/android/CpaManager$ConnInfo;)Lcom/kddi/android/CpaManager$ConnInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    return-object p1
.end method


# virtual methods
.method public changeMode(Ljava/lang/String;Lcom/kddi/android/CpaManager$Settings;)I
    .locals 9
    .parameter "mode"
    .parameter "settings"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    const/4 v3, -0x1

    iput v3, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 226
    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 227
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "cpa_onSetupConnectionCompleted"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/kddi/android/CpaManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    const-string v3, "RIL_Cpa"

    const-string v4, "changeMode() recreate registerReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    const-string v3, "NAVI"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 236
    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 237
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "apn name null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 240
    :cond_1
    iget v3, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 242
    :cond_2
    iput v5, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 244
    iget v3, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    iget v4, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    invoke-virtual {p0, v3, v4, v8}, Lcom/kddi/android/CpaManager;->sendIntentToApplication(III)V

    .line 245
    const-string v3, "RIL_Cpa"

    const-string v4, "======================================================================"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v3, "RIL_Cpa"

    const-string v4, "=  DUPLICATED REQUEST changeMode(MODE_NAVI)                          ="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v3, "RIL_Cpa"

    const-string v4, "======================================================================"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v3, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 334
    :goto_0
    return v3

    .line 252
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.kddi.android.cpa_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "cpa_enable"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    const-string v3, "cpa_dun"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    const-string v3, "cpa_apn"

    iget-object v4, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v3, "cpa_user"

    iget-object v4, p2, Lcom/kddi/android/CpaManager$Settings;->userId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v3, "cpa_password"

    iget-object v4, p2, Lcom/kddi/android/CpaManager$Settings;->password:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v3, "cpa_authType"

    iget v4, p2, Lcom/kddi/android/CpaManager$Settings;->authType:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    const-string v3, "cpa_dns1"

    iget-object v4, p2, Lcom/kddi/android/CpaManager$Settings;->dns1:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v3, "cpa_dns2"

    iget-object v4, p2, Lcom/kddi/android/CpaManager$Settings;->dns2:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v3, "cpa_PackageName"

    iget-object v4, p0, Lcom/kddi/android/CpaManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    iput-object p2, p0, Lcom/kddi/android/CpaManager;->mSettings:Lcom/kddi/android/CpaManager$Settings;

    .line 265
    iput v6, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    .line 266
    iput v5, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 269
    iget v3, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    iget v4, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    const/4 v5, 0x5

    invoke-virtual {p0, v3, v4, v5}, Lcom/kddi/android/CpaManager;->sendIntentToApplication(III)V

    .line 272
    const-string v3, "RIL_Cpa"

    const-string v4, "======================================================================"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v3, "RIL_Cpa"

    const-string v4, "=  1. MODE_CHAGE_REQUEST > changeMode(MODE_NAVI)                     ="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v3, "RIL_Cpa"

    const-string v4, "======================================================================"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v3, "RIL_Cpa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=     CPA_STATUS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v3, "RIL_Cpa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=     APN        : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v3, "RIL_Cpa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=     USER_ID    : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/kddi/android/CpaManager$Settings;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v3, "RIL_Cpa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=     PASSWORD   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/kddi/android/CpaManager$Settings;->password:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v3, "RIL_Cpa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=     AUTH_TYPE  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/kddi/android/CpaManager$Settings;->authType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v3, "RIL_Cpa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=     Pri DNS    : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/kddi/android/CpaManager$Settings;->dns1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v3, "RIL_Cpa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=     Sec DNS    : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/kddi/android/CpaManager$Settings;->dns2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v3, "RIL_Cpa"

    const-string v4, "======================================================================"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v3, "RIL_Cpa"

    const-string v4, " "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_1
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 334
    iget v3, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    goto/16 :goto_0

    .line 286
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const-string v3, "DEFAULT"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 289
    iget v3, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    if-eq v3, v7, :cond_5

    iget v3, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    if-ne v3, v8, :cond_7

    .line 291
    :cond_5
    iput v5, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 294
    const-string v3, "ril.btdun.send"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, mSendIntent:Ljava/lang/String;
    iget v3, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    if-ne v3, v7, :cond_6

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 297
    iput v8, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    .line 301
    :cond_6
    iget v3, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    iget v4, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    const/4 v5, 0x6

    invoke-virtual {p0, v3, v4, v5}, Lcom/kddi/android/CpaManager;->sendIntentToApplication(III)V

    .line 302
    const-string v3, "RIL_Cpa"

    const-string v4, "======================================================================"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v3, "RIL_Cpa"

    const-string v4, "=  DUPLICATED REQUEST changeMode(MODE_DEFAULT)                       ="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v3, "RIL_Cpa"

    const-string v4, "======================================================================"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v3, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    goto/16 :goto_0

    .line 309
    .end local v2           #mSendIntent:Ljava/lang/String;
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.kddi.android.cpa_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "cpa_enable"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    iput v7, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    .line 314
    iput v5, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 317
    iget v3, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    iget v4, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    const/4 v5, 0x7

    invoke-virtual {p0, v3, v4, v5}, Lcom/kddi/android/CpaManager;->sendIntentToApplication(III)V

    .line 320
    const-string v3, "RIL_Cpa"

    const-string v4, "======================================================================"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v3, "RIL_Cpa"

    const-string v4, "=  3. MODE_CHAGE_REQUEST > changeMode(MODE_DEFAULT)                   "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v3, "RIL_Cpa"

    const-string v4, "======================================================================"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v3, "RIL_Cpa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=     CPA_STATUS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v3, "RIL_Cpa"

    const-string v4, "======================================================================"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v3, "RIL_Cpa"

    const-string v4, " "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 330
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getConnInfo()Lcom/kddi/android/CpaManager$ConnInfo;
    .locals 4

    .prologue
    .line 343
    const-string v0, "RIL_Cpa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnInfo() mCPAStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mErrno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget v0, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    const/4 v0, 0x0

    .line 356
    :goto_0
    return-object v0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    if-nez v0, :cond_2

    .line 348
    const-string v0, "RIL_Cpa"

    const-string v1, "getConnInfo() mConnInfo == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_1
    iget-object v0, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    goto :goto_0

    .line 351
    :cond_2
    const-string v0, "RIL_Cpa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnInfo() mConnInfo.localAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    iget-object v2, v2, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v0, "RIL_Cpa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnInfo() mConnInfo.dnsAddress[0]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    iget-object v2, v2, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v0, "RIL_Cpa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnInfo() mConnInfo.dnsAddress[1]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    iget-object v2, v2, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getConnStatus()I
    .locals 3

    .prologue
    .line 338
    const-string v0, "RIL_Cpa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnStatus() mCPAStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget v0, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    return v0
.end method

.method public sendIntentToApplication(III)V
    .locals 4
    .parameter "pStatus"
    .parameter "pError"
    .parameter "pCaller"

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, sintent:Landroid/content/Intent;
    const-string v1, "connStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string v1, "errno"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    const-string v1, "RIL_Cpa"

    const-string v2, "======================================================================"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v1, "RIL_Cpa"

    const-string v2, "=  Send Intent CONNECTIVITY_ACTION to APPLICATION                     "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v1, "RIL_Cpa"

    const-string v2, "======================================================================"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v1, "RIL_Cpa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=    CPA STATUS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "RIL_Cpa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=    ERROR      : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v1, "RIL_Cpa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=    Caller     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v1, "RIL_Cpa"

    const-string v2, "======================================================================"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v1, "RIL_Cpa"

    const-string v2, " "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method
