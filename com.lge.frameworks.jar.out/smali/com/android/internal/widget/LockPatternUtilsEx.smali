.class public Lcom/android/internal/widget/LockPatternUtilsEx;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "LockPatternUtilsEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    }
.end annotation


# static fields
.field public static final BACKUPPIN_FOR_KNOCK_ON_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.backuppinknockoneverchosen"

.field public static final BACKUPPIN_FOR_PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.backuppinpatterneverchosen"

.field public static final KNOCK_CODE_DUPULICATED:Ljava/lang/String; = "lockscreen.knockcode_dupulicated"

.field public static final KNOCK_ON_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.knockoneverchosen"

.field public static final LOCKSCREEN_KNOCK_ON_ENABLED:Ljava/lang/String; = "lockscreen.knockon_enabled"

.field public static final LOCKSCREEN_KNOCK_ON_LENGTH:Ljava/lang/String; = "lockscreen.knockon_length"

.field public static final LOCKSCREEN_MYFOLDER_KNOCK_ON_LENGTH:Ljava/lang/String; = "lockscreen.myfolder_knockon_length"

.field public static final LOCKSCREEN_MYFOLDER_LOCKTYPE:Ljava/lang/String; = "lockscreen.myfolder_locktype"

.field public static final LOCKSCREEN_MYFOLDER_PATTERN_ENABLED:Ljava/lang/String; = "lockscreen.myfolder_pattern_enabled"

.field public static final MYFOLDER_LOCKTYPE_KNOCKCODE:I = 0x1

.field public static final MYFOLDER_LOCKTYPE_NONE:I = 0x0

.field public static final MYFOLDER_LOCKTYPE_PATTERN:I = 0x2

.field public static final MYFOLDER_LOCKTYPE_PIN:I = 0x3

.field public static final PASSWORD_EXPIRE_MODE:Ljava/lang/String; = "PASSWORD_EXPIRE"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsEx"

.field private static final carrier:Ljava/lang/String;


# instance fields
.field private mHiddenPatternDisabled:Z

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mLockSettingsServiceEx:Lcom/android/internal/widget/ILockSettingsEx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "ro.build.target_operator"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsEx;->carrier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mHiddenPatternDisabled:Z

    .line 70
    return-void
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 771
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsServiceEx:Lcom/android/internal/widget/ILockSettingsEx;

    if-nez v0, :cond_0

    .line 779
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettingsEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsServiceEx:Lcom/android/internal/widget/ILockSettingsEx;

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsServiceEx:Lcom/android/internal/widget/ILockSettingsEx;

    return-object v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .locals 6
    .parameter "userId"

    .prologue
    const-wide/16 v4, 0x0

    .line 86
    const-string v3, "lockscreen.password_salt"

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1

    .line 87
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    .line 89
    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    .line 90
    const-string v3, "lockscreen.password_salt"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 91
    const-string v3, "LockPatternUtilsEx"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private isLockPassword()Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    .locals 9

    .prologue
    const-wide/32 v7, 0x20000

    const-wide/16 v5, 0x0

    .line 593
    const-string v4, "lockscreen.password_type"

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 594
    .local v2, mode:J
    const-string v4, "lockscreen.password_type_alternate"

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 596
    .local v0, backupMode:J
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v4

    if-eqz v4, :cond_1

    cmp-long v4, v2, v7

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_1

    cmp-long v4, v0, v7

    if-nez v4, :cond_1

    .line 599
    :cond_0
    sget-object v4, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PIN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 606
    :goto_0
    return-object v4

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/32 v4, 0x40000

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    const-wide/32 v4, 0x50000

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    const-wide/32 v4, 0x60000

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 604
    :cond_2
    sget-object v4, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PASSWORD:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    goto :goto_0

    .line 606
    :cond_3
    sget-object v4, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->NONE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    goto :goto_0
.end method

.method private isLockPassword(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    .locals 10
    .parameter "userId"

    .prologue
    const-wide/32 v8, 0x20000

    const-wide/16 v6, 0x0

    .line 627
    const-string v5, "lockscreen.password_type"

    invoke-virtual {p0, v5, v6, v7, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 628
    .local v3, mode:J
    const-string v5, "lockscreen.password_type_alternate"

    invoke-virtual {p0, v5, v6, v7, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 629
    .local v0, backupMode:J
    sget-object v2, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->NONE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 630
    .local v2, lockType:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->savedPasswordExists(I)Z

    move-result v5

    if-eqz v5, :cond_2

    cmp-long v5, v3, v8

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->usingBiometricWeak(I)Z

    move-result v5

    if-eqz v5, :cond_2

    cmp-long v5, v0, v8

    if-nez v5, :cond_2

    .line 633
    :cond_0
    sget-object v2, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PIN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 640
    :cond_1
    :goto_0
    return-object v2

    .line 634
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->savedPasswordExists(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/32 v5, 0x40000

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    const-wide/32 v5, 0x50000

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    const-wide/32 v5, 0x60000

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    .line 638
    :cond_3
    sget-object v2, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PASSWORD:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    goto :goto_0
.end method

.method private isMyFolderPatternEnabled()Z
    .locals 2

    .prologue
    .line 1082
    const-string v0, "lockscreen.myfolder_pattern_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setMyFolderLockType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 1086
    const-string v0, "lockscreen.myfolder_locktype"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1087
    return-void
.end method

.method private setMyFolderPatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1078
    const-string v0, "lockscreen.myfolder_pattern_enabled"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1079
    return-void
.end method


# virtual methods
.method public ResetLockoutAttemptDeadline()V
    .locals 5

    .prologue
    .line 501
    const-wide/16 v0, 0x0

    .line 502
    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 503
    return-void
.end method

.method public changeLockSettingForKidsMode()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 1094
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "Power_button_state"

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1097
    .local v1, previousButtonState:I
    if-ne v1, v7, :cond_1

    .line 1098
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v0

    .line 1099
    .local v0, powerButtonState:Z
    const/4 v3, 0x0

    .line 1100
    .local v3, val:I
    if-eqz v0, :cond_2

    .line 1101
    const/4 v3, 0x1

    .line 1105
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "Power_button_state"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1106
    if-eq v3, v9, :cond_0

    .line 1107
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    .line 1109
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    invoke-static {v4, v5, v8, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1111
    .local v2, previousLockTimeout:I
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    invoke-static {v4, v5, v8, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1113
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "Lock_timeout_before_guest_mode"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1116
    .end local v0           #powerButtonState:Z
    .end local v2           #previousLockTimeout:I
    .end local v3           #val:I
    :cond_1
    return-void

    .line 1103
    .restart local v0       #powerButtonState:Z
    .restart local v3       #val:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public checkBackupPin(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 239
    .local v1, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 241
    :goto_0
    return v2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkBackupPinFile()Z
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->savedBackupPinExists()Z

    move-result v0

    return v0
.end method

.method public checkKnockOn(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 211
    .local v1, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkKnockOn(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 213
    :goto_0
    return v2

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkMyFolderKnockCode(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 958
    .local v1, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkMyFolderKnockCode(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 960
    :goto_0
    return v2

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkMyFolderPattern(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1055
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 1057
    .local v1, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkMyFolderPattern(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1059
    :goto_0
    return v2

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkMyFolderPin(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 1014
    .local v1, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkMyFolderPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1016
    :goto_0
    return v2

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPasswordKidsMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "password"
    .parameter "key"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 196
    .local v1, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v2

    invoke-interface {v2, p1, v1, p2}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswordKidsMode(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 198
    :goto_0
    return v2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPasswords(Ljava/lang/String;)Z
    .locals 3
    .parameter "passwords"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 254
    .local v1, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswords(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 256
    :goto_0
    return v2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPasswordsGetUsers(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "passwords"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswordsGetUsers(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, re:Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public checkPasswordsKidsMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "passwords"
    .parameter "key"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 220
    .local v1, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v2

    invoke-interface {v2, p1, v1, p2}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswordsKidsMode(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 222
    :goto_0
    return v2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPatternKidsMode(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 180
    .local v1, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettingsEx;->checkPatternKidsMode(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 182
    :goto_0
    return v2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public clearLock(Z)V
    .locals 4
    .parameter "isFallback"

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 301
    const-string v0, "LockPatternUtilsEx"

    const-string v1, "clearLock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOCKON_LOCK_SET"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_knockon_length_change"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOCKON_LENGTH_KEY"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 310
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternUtilsEx;->setDupulicatedKnockCode(Z)V

    .line 313
    const-string v0, "SPR"

    sget-object v1, Lcom/android/internal/widget/LockPatternUtilsEx;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BM"

    sget-object v1, Lcom/android/internal/widget/LockPatternUtilsEx;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TRF"

    sget-object v1, Lcom/android/internal/widget/LockPatternUtilsEx;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->isOMADM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    const-string v0, "LockPatternUtilsEx"

    const-string v1, "clearLock() : OMADM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->setOMADMPolicy()V

    .line 317
    :cond_1
    return-void
.end method

.method public clearMyFolderLock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1068
    const-string v0, "LockPatternUtilsEx"

    const-string v1, "clear My Folder lock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveMyFolderPin(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveMyFolderKnockCode(Ljava/lang/String;)V

    .line 1071
    const-string v0, "lockscreen.myfolder_knockon_length"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1072
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveMyFolderPattern(Ljava/util/List;)V

    .line 1073
    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternUtilsEx;->setMyFolderPatternEnabled(Z)V

    .line 1074
    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternUtilsEx;->setMyFolderLockType(I)V

    .line 1075
    return-void
.end method

.method public clearOMADM(Z)V
    .locals 3
    .parameter "isFallback"

    .prologue
    const/4 v2, 0x0

    .line 325
    const-string v0, "LockPatternUtilsEx"

    const-string v1, "clearOMADM()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-nez p1, :cond_0

    .line 327
    const-string v0, "LockPatternUtilsEx"

    const-string v1, "deleteGallery()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 330
    :cond_0
    const/high16 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 332
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 335
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 336
    const-string v0, "lockscreen.password_type_alternate"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 337
    return-void
.end method

.method protected finishBiometricWeak()V
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->isOMADM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-super {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 389
    :cond_0
    return-void
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 3
    .parameter "userId"

    .prologue
    .line 159
    const-string v2, "device_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    .line 161
    .local v1, service:Landroid/app/admin/IDevicePolicyManager;
    const/4 v0, 0x0

    .line 162
    .local v0, attempts:I
    if-eqz v1, :cond_0

    .line 164
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 165
    :catch_0
    move-exception v2

    goto :goto_0

    .line 166
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected getKeyguardStoredPasswordQuality(I)I
    .locals 5
    .parameter "userId"

    .prologue
    const-wide/32 v3, 0x10000

    .line 529
    const-string v1, "lockscreen.password_type"

    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1

    long-to-int v0, v1

    .line 534
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 535
    const-string v1, "lockscreen.password_type_alternate"

    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1

    long-to-int v0, v1

    .line 539
    :cond_0
    return v0
.end method

.method public getLockScreenType()Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    .locals 4

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->isLockPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PATTERN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 673
    :goto_0
    return-object v0

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOCKON_LOCK_SET"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 671
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    goto :goto_0

    .line 673
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->isLockPassword()Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    move-result-object v0

    goto :goto_0
.end method

.method public getLockScreenType(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    .locals 4
    .parameter "userId"

    .prologue
    .line 678
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->NONE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 679
    .local v0, lockType:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->isLockPattern(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PATTERN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 686
    :goto_0
    return-object v0

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "KNOCKON_LOCK_SET"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 682
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    goto :goto_0

    .line 684
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->isLockPassword(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    move-result-object v0

    goto :goto_0
.end method

.method protected getLong(Ljava/lang/String;JI)J
    .locals 4
    .parameter "secureSettingKey"
    .parameter "defaultValue"
    .parameter "userId"

    .prologue
    .line 73
    const-wide/16 v1, 0x0

    .line 75
    .local v1, ret:J
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 76
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :cond_0
    move-wide p2, v1

    .line 81
    .end local p2
    :goto_0
    return-wide p2

    .line 80
    .restart local p2
    :catch_0
    move-exception v0

    .line 81
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getMyFolderKnockOnPasswordLength()J
    .locals 3

    .prologue
    .line 972
    const-string v0, "lockscreen.myfolder_knockon_length"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMyFolderLockType()I
    .locals 3

    .prologue
    .line 1090
    const-string v0, "lockscreen.myfolder_locktype"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getOMADMLockCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 746
    const-string v0, "LockPatternUtilsEx"

    const-string v1, "OMADM getOMADM LockCode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lg_omadm_lwmo_lock_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBackupPinforKnockOnEverChosen()Z
    .locals 2

    .prologue
    .line 897
    const-string v0, "lockscreen.backuppinknockoneverchosen"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackupPinforPatternOnEverChosen()Z
    .locals 2

    .prologue
    .line 874
    const-string v0, "lockscreen.backuppinpatterneverchosen"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDupulicatedKnockCode()Z
    .locals 2

    .prologue
    .line 842
    const-string v0, "lockscreen.knockcode_dupulicated"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDupulicatedKnockCode(I)Z
    .locals 2
    .parameter "userId"

    .prologue
    .line 832
    const-string v0, "lockscreen.knockcode_dupulicated"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isHiddenPatternDisabled()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mHiddenPatternDisabled:Z

    return v0
.end method

.method public isKnockOnEverChosen()Z
    .locals 2

    .prologue
    .line 822
    const-string v0, "lockscreen.knockoneverchosen"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLockPattern()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 515
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    int-to-long v2, v5

    .line 516
    .local v2, mode:J
    const-wide/32 v5, 0x10000

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    move v1, v0

    .line 518
    .local v1, isPatternMode:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 519
    .local v0, isPattern:Z
    :goto_1
    return v0

    .end local v0           #isPattern:Z
    .end local v1           #isPatternMode:Z
    :cond_0
    move v1, v4

    .line 516
    goto :goto_0

    .restart local v1       #isPatternMode:Z
    :cond_1
    move v0, v4

    .line 518
    goto :goto_1
.end method

.method public isLockPattern(I)Z
    .locals 7
    .parameter "userId"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    int-to-long v2, v5

    .line 584
    .local v2, mode:J
    const-wide/32 v5, 0x10000

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    move v1, v0

    .line 585
    .local v1, isPatternMode:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->isLockPatternEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->savedPatternExists(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 586
    .local v0, isPattern:Z
    :goto_1
    return v0

    .end local v0           #isPattern:Z
    .end local v1           #isPatternMode:Z
    :cond_0
    move v1, v4

    .line 584
    goto :goto_0

    .restart local v1       #isPatternMode:Z
    :cond_1
    move v0, v4

    .line 585
    goto :goto_1
.end method

.method protected isLockPatternEnabled(I)Z
    .locals 7
    .parameter "userId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v5, 0x10000

    .line 555
    const-string v3, "lockscreen.password_type_alternate"

    invoke-virtual {p0, v3, v5, v6, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move v0, v1

    .line 559
    .local v0, backupEnabled:Z
    :goto_0
    const-string v3, "lock_pattern_autolock"

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "lockscreen.password_type"

    invoke-virtual {p0, v3, v5, v6, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v1

    .end local v0           #backupEnabled:Z
    :cond_1
    move v0, v2

    .line 555
    goto :goto_0

    .restart local v0       #backupEnabled:Z
    :cond_2
    move v1, v2

    .line 559
    goto :goto_1
.end method

.method public isOMADM()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 755
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lg_omadm_lwmo_lock_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 756
    const-string v1, "LockPatternUtilsEx"

    const-string v2, "OMADM Lock is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :goto_0
    return v0

    .line 759
    :cond_0
    const-string v0, "LockPatternUtilsEx"

    const-string v2, "OMADM Lock is OFF"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 760
    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->isOMADM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-super {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    .line 509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public passwordToHash(Ljava/lang/String;I)[B
    .locals 9
    .parameter "password"
    .parameter "userID"

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    const/4 v2, 0x0

    .line 122
    :goto_0
    return-object v2

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 113
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 115
    .local v2, hashed:[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtilsEx;->getSalt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 116
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 117
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 118
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtilsEx;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtilsEx;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 119
    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtilsEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readBackupPin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "password"

    .prologue
    .line 728
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->readBackupPinFile(Ljava/lang/String;)Z

    move-result v0

    .line 729
    .local v0, check:Z
    if-eqz v0, :cond_0

    .line 733
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public readBackupPinFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "password"

    .prologue
    .line 712
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->checkBackupPin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 140
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 147
    return-void
.end method

.method public rollbackLockSettingForNormalMode()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 1119
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "Power_button_state"

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1122
    .local v0, previousButtonState:I
    if-eq v0, v7, :cond_0

    .line 1123
    if-ne v0, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    .line 1124
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "Power_button_state"

    invoke-static {v2, v4, v7, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1126
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.UPDATE_POWER_BUTTON_INSTANT_LOCK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1129
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "Lock_timeout_before_guest_mode"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1132
    .local v1, previousLockTimeout:I
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v1, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1136
    .end local v1           #previousLockTimeout:I
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 1123
    goto :goto_0
.end method

.method public saveBackupPin(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveLockBackupPin(Ljava/lang/String;I)V

    .line 381
    return-void
.end method

.method public saveKnockOnPassword(Ljava/lang/String;I)V
    .locals 2
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveLockKnockOn(Ljava/lang/String;II)V

    .line 794
    if-eqz p1, :cond_0

    .line 795
    const-string v0, "lockscreen.knockoneverchosen"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 797
    :cond_0
    return-void
.end method

.method public saveKnockOnPassword(Ljava/lang/String;IZ)V
    .locals 2
    .parameter "password"
    .parameter "quality"
    .parameter "isFallback"

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveLockKnockOn(Ljava/lang/String;II)V

    .line 809
    if-eqz p1, :cond_0

    .line 810
    const-string v0, "lockscreen.knockoneverchosen"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 812
    :cond_0
    return-void
.end method

.method public saveLockBackupPin(Ljava/lang/String;I)V
    .locals 4
    .parameter "password"
    .parameter "userHandle"

    .prologue
    .line 486
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettingsEx;->setLockBackupPin(Ljava/lang/String;I)V

    .line 487
    if-eqz p1, :cond_0

    .line 488
    if-nez p2, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 495
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtilsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockKnockOn(Ljava/lang/String;I)V
    .locals 1
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveLockKnockOn(Ljava/lang/String;II)V

    .line 398
    return-void
.end method

.method public saveLockKnockOn(Ljava/lang/String;II)V
    .locals 29
    .parameter "password"
    .parameter "quality"
    .parameter "userHandle"

    .prologue
    .line 408
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v4, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->setLockKnockOn(Ljava/lang/String;I)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 410
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_8

    .line 411
    if-nez p3, :cond_0

    .line 413
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 416
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/android/internal/widget/LockPatternUtilsEx;->computePasswordQuality(Ljava/lang/String;I)I

    move-result v23

    .line 417
    .local v23, computedQuality:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 418
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearKnockCodeDB(I)V

    .line 419
    const-string v4, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v12, v13, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 420
    if-eqz v23, :cond_6

    .line 421
    const/4 v6, 0x0

    .line 422
    .local v6, letters:I
    const/4 v7, 0x0

    .line 423
    .local v7, uppercase:I
    const/4 v8, 0x0

    .line 424
    .local v8, lowercase:I
    const/4 v9, 0x0

    .line 425
    .local v9, numbers:I
    const/4 v10, 0x0

    .line 426
    .local v10, symbols:I
    const/4 v11, 0x0

    .line 427
    .local v11, nonletter:I
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_4

    .line 428
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    .line 429
    .local v22, c:C
    const/16 v4, 0x41

    move/from16 v0, v22

    if-lt v0, v4, :cond_1

    const/16 v4, 0x5a

    move/from16 v0, v22

    if-gt v0, v4, :cond_1

    .line 430
    add-int/lit8 v6, v6, 0x1

    .line 431
    add-int/lit8 v7, v7, 0x1

    .line 427
    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 432
    :cond_1
    const/16 v4, 0x61

    move/from16 v0, v22

    if-lt v0, v4, :cond_2

    const/16 v4, 0x7a

    move/from16 v0, v22

    if-gt v0, v4, :cond_2

    .line 433
    add-int/lit8 v6, v6, 0x1

    .line 434
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 435
    :cond_2
    const/16 v4, 0x30

    move/from16 v0, v22

    if-lt v0, v4, :cond_3

    const/16 v4, 0x39

    move/from16 v0, v22

    if-gt v0, v4, :cond_3

    .line 436
    add-int/lit8 v9, v9, 0x1

    .line 437
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 439
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 440
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 443
    .end local v22           #c:C
    :cond_4
    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v12, p3

    invoke-virtual/range {v3 .. v12}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 455
    .end local v6           #letters:I
    .end local v7           #uppercase:I
    .end local v8           #lowercase:I
    .end local v9           #numbers:I
    .end local v10           #symbols:I
    .end local v11           #nonletter:I
    .end local v25           #i:I
    :goto_2
    const-string v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 456
    .local v26, passwordHistory:Ljava/lang/String;
    if-nez v26, :cond_5

    .line 457
    new-instance v26, Ljava/lang/String;

    .end local v26           #passwordHistory:Ljava/lang/String;
    invoke-direct/range {v26 .. v26}, Ljava/lang/String;-><init>()V

    .line 459
    .restart local v26       #passwordHistory:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v27

    .line 460
    .local v27, passwordHistoryLength:I
    if-nez v27, :cond_7

    .line 461
    const-string v26, ""

    .line 471
    :goto_3
    const-string v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p3

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 481
    .end local v3           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v23           #computedQuality:I
    .end local v26           #passwordHistory:Ljava/lang/String;
    .end local v27           #passwordHistoryLength:I
    :goto_4
    return-void

    .line 448
    .restart local v3       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v23       #computedQuality:I
    :cond_6
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v21, p3

    invoke-virtual/range {v12 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 477
    .end local v3           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v23           #computedQuality:I
    :catch_0
    move-exception v28

    .line 479
    .local v28, re:Landroid/os/RemoteException;
    const-string v4, "LockPatternUtilsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to save lock password "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 463
    .end local v28           #re:Landroid/os/RemoteException;
    .restart local v3       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v23       #computedQuality:I
    .restart local v26       #passwordHistory:Ljava/lang/String;
    .restart local v27       #passwordHistoryLength:I
    :cond_7
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v24

    .line 464
    .local v24, hash:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 467
    const/4 v4, 0x0

    move-object/from16 v0, v24

    array-length v5, v0

    mul-int v5, v5, v27

    add-int v5, v5, v27

    add-int/lit8 v5, v5, -0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    goto :goto_3

    .line 473
    .end local v23           #computedQuality:I
    .end local v24           #hash:[B
    .end local v26           #passwordHistory:Ljava/lang/String;
    .end local v27           #passwordHistoryLength:I
    :cond_8
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v21, p3

    invoke-virtual/range {v12 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public saveLockPasswordKidsMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "password"
    .parameter "key"

    .prologue
    .line 372
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/widget/ILockSettingsEx;->setLockPasswordKidsMode(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtilsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockPatternKidsMode(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveLockPatternKidsMode(Ljava/util/List;Z)V

    .line 353
    return-void
.end method

.method public saveLockPatternKidsMode(Ljava/util/List;Z)V
    .locals 4
    .parameter
    .parameter "isFallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettingsEx;->setLockPatternKidsMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtilsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t save lock pattern kids mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveMyFolderKnockCode(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveMyFolderKnockCode(Ljava/lang/String;I)V

    .line 933
    if-eqz p1, :cond_0

    .line 934
    const-string v0, "lockscreen.knockoneverchosen"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 936
    :cond_0
    return-void
.end method

.method public saveMyFolderKnockCode(Ljava/lang/String;I)V
    .locals 4
    .parameter "password"
    .parameter "userHandle"

    .prologue
    .line 940
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettingsEx;->setMyFolderKnockCode(Ljava/lang/String;I)V

    .line 941
    const-string v3, "lockscreen.myfolder_knockon_length"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    :goto_0
    invoke-virtual {p0, v3, v1, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 942
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtilsEx;->setMyFolderLockType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :goto_1
    return-void

    .line 941
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 943
    :catch_0
    move-exception v0

    .line 945
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtilsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save My Folder Pin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public saveMyFolderPattern(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1034
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettingsEx;->setMyFolderPattern(Ljava/lang/String;I)V

    .line 1036
    if-eqz p1, :cond_0

    .line 1037
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtilsEx;->setMyFolderPatternEnabled(Z)V

    .line 1039
    :cond_0
    if-eqz p1, :cond_1

    .line 1040
    const-string v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1042
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtilsEx;->setMyFolderLockType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtilsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t save lock pattern kids mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveMyFolderPin(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveMyFolderPin(Ljava/lang/String;I)V

    .line 993
    return-void
.end method

.method public saveMyFolderPin(Ljava/lang/String;I)V
    .locals 4
    .parameter "password"
    .parameter "userHandle"

    .prologue
    .line 997
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettingsEx;->setMyFolderPassword(Ljava/lang/String;I)V

    .line 998
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtilsEx;->setMyFolderLockType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :goto_0
    return-void

    .line 999
    :catch_0
    move-exception v0

    .line 1001
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtilsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save My Folder Pin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savedBackupPinExists()Z
    .locals 3

    .prologue
    .line 290
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettingsEx;->haveBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 292
    :goto_0
    return v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedKidsModeFileExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 281
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/widget/ILockSettingsEx;->havePasswordKidsMode(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 283
    :goto_0
    return v1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedMyFolderKnockCodeExists()Z
    .locals 3

    .prologue
    .line 921
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettingsEx;->haveMyFolderKnockCode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 923
    :goto_0
    return v1

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedMyFolderPatternExists()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1026
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->isMyFolderPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/widget/ILockSettingsEx;->haveMyFolderPattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1028
    :cond_0
    :goto_0
    return v1

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public savedMyFolderPinExists()Z
    .locals 3

    .prologue
    .line 981
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettingsEx;->haveMyFolderPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 983
    :goto_0
    return v1

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected savedPasswordExists(I)Z
    .locals 3
    .parameter "userId"

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, exists:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 617
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-eqz v2, :cond_0

    .line 618
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v0           #exists:Z
    :cond_0
    :goto_0
    return v0

    .line 621
    .restart local v0       #exists:Z
    :catch_0
    move-exception v1

    .line 622
    .local v1, re:Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public savedPatternExists(I)Z
    .locals 3
    .parameter "userId"

    .prologue
    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, exists:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 573
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-eqz v2, :cond_0

    .line 574
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 578
    .end local v0           #exists:Z
    :cond_0
    :goto_0
    return v0

    .line 577
    .restart local v0       #exists:Z
    :catch_0
    move-exception v1

    .line 578
    .local v1, re:Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public savedPatternKidsModeExists()Z
    .locals 3

    .prologue
    .line 267
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettingsEx;->havePatternKidsMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 269
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackupPinforKnockOnEverChosen(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->setBackupPinforKnockOnEverChosen(ZI)V

    .line 907
    return-void
.end method

.method public setBackupPinforKnockOnEverChosen(ZI)V
    .locals 1
    .parameter "enabled"
    .parameter "userId"

    .prologue
    .line 910
    const-string v0, "lockscreen.backuppinknockoneverchosen"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 911
    return-void
.end method

.method public setBackupPinforPatternOnEverChosen(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->setBackupPinforPatternOnEverChosen(ZI)V

    .line 884
    return-void
.end method

.method public setBackupPinforPatternOnEverChosen(ZI)V
    .locals 1
    .parameter "enabled"
    .parameter "userId"

    .prologue
    .line 887
    const-string v0, "lockscreen.backuppinpatterneverchosen"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 888
    return-void
.end method

.method public setDupulicatedKnockCode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 863
    const-string v0, "lockscreen.knockcode_dupulicated"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 864
    return-void
.end method

.method public setDupulicatedKnockCode(ZI)V
    .locals 1
    .parameter "enabled"
    .parameter "userId"

    .prologue
    .line 853
    const-string v0, "lockscreen.knockcode_dupulicated"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 854
    return-void
.end method

.method public setHiddenPatternDisabled(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mHiddenPatternDisabled:Z

    .line 344
    return-void
.end method

.method public setOMADMPolicy()V
    .locals 3

    .prologue
    .line 739
    const-string v0, "LockPatternUtilsEx"

    const-string v1, "OMADM setOMADMPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lg_omadm_lwmo_lock_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 743
    return-void
.end method

.method public setPolicy()V
    .locals 3

    .prologue
    .line 765
    const-string v0, "LockPatternUtilsEx"

    const-string v1, "OMADM setPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const-string v0, "lockscreen.password_type"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 767
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 132
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;ZII)V
    .locals 2
    .parameter "button"
    .parameter "shown"
    .parameter "textId"
    .parameter "iconId"

    .prologue
    const/4 v1, 0x0

    .line 692
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 693
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    invoke-virtual {p1, p4, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 700
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 701
    :goto_0
    return-void

    .line 695
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected usingBiometricWeak(I)Z
    .locals 4
    .parameter "userId"

    .prologue
    .line 546
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1

    long-to-int v0, v1

    .line 548
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
