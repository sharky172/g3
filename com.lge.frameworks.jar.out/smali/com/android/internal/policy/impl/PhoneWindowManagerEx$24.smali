.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$24;
.super Ljava/lang/Object;
.source "PhoneWindowManagerEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->showGoHomeDialog2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 3450
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3452
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "go_home"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3455
    const-string v8, "sys.ftm.theme"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3456
    .local v1, defTheme:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 3457
    :cond_0
    const-string v1, "com.lge.systemui.theme.white"

    .line 3459
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "navigation_bar_theme"

    const/4 v10, -0x2

    invoke-static {v8, v9, v1, v10}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3462
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.lge.setup_wizard.AUTORUNON"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3463
    .local v3, intent_autorun:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3467
    new-instance v4, Landroid/content/ComponentName;

    const-string v8, "com.android.LGSetupWizard"

    const-string v9, "com.android.LGSetupWizard.SetupStart"

    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    .local v4, name:Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3471
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v5, v4, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 3474
    const-string v8, "PhoneWindowManagerEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LGSetupWizardDisable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3478
    .local v0, Homeintent:Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3479
    const/high16 v8, 0x1400

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3481
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3484
    const-string v6, "com.android.LGSetupWizard"

    .line 3485
    .local v6, setupWizard:Ljava/lang/String;
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3487
    .local v7, version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 3488
    const-string v8, "4.1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 3489
    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 3493
    const-string v8, "PhoneWindowManagerEx"

    const-string v9, "######LGSetupWizard COMPONENT_ENABLED_STATE_DISABLED######"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    :cond_2
    :goto_0
    return-void

    .line 3496
    :cond_3
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 3497
    const-string v8, "PhoneWindowManagerEx"

    const-string v9, "haksung_temp LGSetupWizard COMPONENT_ENABLED_STATE_DISABLED"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3500
    :catch_0
    move-exception v2

    .line 3501
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "PhoneWindowManagerEx"

    const-string v9, "cannot disable setup wizard"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
