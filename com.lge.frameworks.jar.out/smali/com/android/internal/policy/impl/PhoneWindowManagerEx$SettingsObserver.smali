.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 2232
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    .line 2233
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2234
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2238
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2240
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHotKeyCustomizing:Z

    if-eqz v1, :cond_0

    .line 2241
    const-string v1, "hotkey_short_package"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2243
    const-string v1, "hotkey_short_class"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2247
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGoHomeFromSetupWizard:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$1200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2248
    const-string v1, "go_home"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2253
    :cond_1
    const-string v1, "accessibility_easy_access_enabled_category"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2258
    const-string v1, "accessibility_touch_control_areas_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2260
    const-string v1, "accessibility_touch_control_areas_service_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2264
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSupportSmartCover:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2265
    const-string v1, "cover_type"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2266
    const-string v1, "quick_cover_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2267
    const-string v1, "quick_view_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2270
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mShakingGesture:Z

    if-eqz v1, :cond_3

    .line 2271
    const-string v1, "isai_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2272
    const-string v1, "isai_mode_select"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2273
    const-string v1, "isai_shortcut_package"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2274
    const-string v1, "isai_shortcut_class"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2278
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeKeyLongPressEnabled:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mQuickClipVolumeKeyCombo:Z

    if-eqz v1, :cond_5

    .line 2279
    :cond_4
    const-string v1, "shortcut_key_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2283
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->updateSettingsEx()V

    .line 2284
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->updateSettingsEx()V

    .line 2288
    return-void
.end method
