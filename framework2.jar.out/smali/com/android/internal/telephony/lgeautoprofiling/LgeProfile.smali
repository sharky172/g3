.class public Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;
.super Ljava/lang/Object;
.source "LgeProfile.java"

# interfaces
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;


# static fields
.field private static final DBG:Z = true

.field private static final EDBG:Z = true

.field private static final VDBG:Z = true

.field private static instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastSimState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mLastSimState:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method private getEccListSimLock(I)Ljava/lang/String;
    .locals 4
    .parameter "subId"

    .prologue
    .line 290
    const-string v2, "sim_lock_ecclist"

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, eccListSimLock:Ljava/lang/String;
    const-string v2, "persist.sys.iccid-mcc"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 295
    .local v1, mcc:I
    const/16 v2, 0xea

    if-eq v1, v2, :cond_0

    const/16 v2, 0x110

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1c6

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1c7

    if-eq v1, v2, :cond_0

    const/16 v2, 0xde

    if-ne v1, v2, :cond_2

    const-string v2, "H3G"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    :cond_0
    const-string v0, "999"

    .line 309
    :cond_1
    :goto_0
    return-object v0

    .line 302
    :cond_2
    const/16 v2, 0x1d2

    if-ne v1, v2, :cond_3

    .line 303
    const-string v0, "110,119"

    goto :goto_0

    .line 305
    :cond_3
    const/16 v2, 0x1cc

    if-ne v1, v2, :cond_1

    .line 306
    const-string v0, "110,119,120,122"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    .line 64
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    return-object v0

    .line 61
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private loadProfileFromPreferences(IZ)Z
    .locals 8
    .parameter "subId"
    .parameter "defaultProfile"

    .prologue
    const/4 v4, 0x0

    .line 97
    const-string v5, "TelephonyAutoProfiling"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[loadProfileFromPreferences] *** start profile loading from preferences - defaultProfile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, prefName:Ljava/lang/String;
    const-string v5, "ro.build.date"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, currentSWBuildDate:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 103
    const-string v1, "defaultProfile"

    .line 108
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 110
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v5, "build_date"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 111
    const-string v5, "TelephonyAutoProfiling"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[loadProfileFromPreferences] preferences do not exist or BUILD_DATE is different - subId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_1
    return v4

    .line 105
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profile_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 118
    .restart local v2       #preferences:Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 120
    .local v3, profile:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "build_date"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v4, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[loadProfileFromPreferences] *** profile loading from preferences complete - defaultProfile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private loadProfileFromXml(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V
    .locals 6
    .parameter "simInfo"
    .parameter "subId"

    .prologue
    .line 130
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadProfileFromXml] *** start profile loading from xml - subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;

    invoke-direct {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;-><init>()V

    .line 134
    .local v0, parser:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->getMatchedProfile(ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .line 136
    .local v1, profileFromXml:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    if-nez v1, :cond_0

    .line 137
    const-string v3, "TelephonyAutoProfiling"

    const-string v4, "[profileFromXml] load profile from xml failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->profileToMap(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v2

    .line 144
    .local v2, profileMapFromXml:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 145
    const-string v3, "TelephonyAutoProfiling"

    const-string v4, "[loadDataFromXml] load profile Map from xml failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    const-string v3, "TelephonyAutoProfiling"

    const-string v4, "[loadProfileFromXml] save SimInfo to preferences"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v3, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->writeToPreference(Landroid/content/Context;Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V

    .line 157
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v3

    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->saveProfileToPreferences(Ljava/util/HashMap;IZ)V

    .line 160
    :cond_3
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadProfileFromXml] *** end profile loading from xml - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveProfileToPreferences(Ljava/util/HashMap;IZ)V
    .locals 8
    .parameter
    .parameter "subId"
    .parameter "simInfoIsNull"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 166
    .local v3, prefName:Ljava/lang/String;
    const-string v5, "ro.build.date"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, swBuildDate:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 169
    const-string v3, "defaultProfile"

    .line 178
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "TelephonyAutoProfiling"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[saveProfileToPreferences] save to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 184
    const-string v5, "build_date"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 170
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    if-nez p3, :cond_2

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profile_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 173
    :cond_2
    const-string v5, "TelephonyAutoProfiling"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[saveProfileToPreferences] simInfo is null, do not save to preferences, subId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_2
    return-void

    .line 191
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public getLastSimState(I)Ljava/lang/String;
    .locals 3
    .parameter "subId"

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mLastSimState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    .local v0, lastSimState:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0           #lastSimState:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "subId"

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 315
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 317
    .local v0, profile:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfile(I)V

    .line 319
    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #profile:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 322
    .restart local v0       #profile:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 327
    .end local v0           #profile:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #value:Ljava/lang/String;
    :cond_1
    const-string v2, "TelephonyAutoProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getValue] PROFILE key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-nez v1, :cond_2

    const-string v1, ""

    .end local v1           #value:Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public loadProfile(I)V
    .locals 5
    .parameter "subId"

    .prologue
    .line 74
    invoke-static {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getSimInfo(I)Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    move-result-object v1

    .line 75
    .local v1, simInfo:Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;
    const/4 v0, 0x0

    .line 77
    .local v0, loadSuccessFromPreferences:Z
    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromPreferences(IZ)Z

    move-result v0

    .line 85
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 86
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromXml(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V

    .line 89
    :cond_1
    const-string v2, "1"

    const-string v3, "persist.sys.cupss.changed"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    const-string v2, "TelephonyAutoProfiling"

    const-string v3, "[LGE][SBP] Operator is changed. Need to reload!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromXml(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V

    .line 94
    :cond_2
    return-void

    .line 80
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->createFromPreference(Landroid/content/Context;I)Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->equals(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromPreferences(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setEccList(Ljava/lang/String;I)V
    .locals 7
    .parameter "simState"
    .parameter "subId"

    .prologue
    const/16 v6, 0x10

    .line 255
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v1

    .line 256
    .local v1, defaultSubId:I
    const/4 v2, 0x0

    .line 257
    .local v2, eccList:Ljava/lang/String;
    const/4 v0, 0x0

    .line 259
    .local v0, changed:Z
    if-ne p2, v1, :cond_1

    .line 260
    const-string v3, "ABSENT"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    const-string v3, "no_sim_ecclist"

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 262
    const/4 v0, 0x1

    .line 265
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setEccList] subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", KEY_NO_SIM_ECCLIST : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 284
    const-string v3, "ril.ecclist.autoprofile"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_1
    return-void

    .line 267
    :cond_2
    const-string v3, "LOCKED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "1"

    const-string v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "NOT_READY"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getEccListSimLock(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    const/4 v0, 0x1

    .line 272
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setEccList] subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", KEY_SIM_LOCK_ECCLIST : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_4
    const-string v3, "LOADED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const-string v3, "ECC_list"

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 276
    const/4 v0, 0x1

    .line 279
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setEccList] subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", KEY_ECC_LIST : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setLastSimState(ILjava/lang/String;)V
    .locals 2
    .parameter "subId"
    .parameter "simState"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mLastSimState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method public updateProfile(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 195
    iget-object v4, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 196
    const-string v4, "TelephonyAutoProfiling"

    const-string v5, "[updateProfile] context is null, return"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v3

    .line 206
    .local v3, subId:I
    sget-boolean v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->MULTI_SIM_ENABLED:Z

    if-eqz v4, :cond_2

    .line 207
    const-string v4, "subscription"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 210
    :cond_2
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 211
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, simState:Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LOCKED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "NOT_READY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LOADED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    :cond_3
    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateProfile] ACTION_SIM_STATE_CHANGED - simState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getLastSimState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    const-string v4, "TelephonyAutoProfiling"

    const-string v5, "[updateProfile] repeated SIM_STATE, ignore"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_4
    const-string v4, "TelephonyAutoProfiling"

    const-string v5, "[updateProfile] new SIM_STATE, continue process"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->setLastSimState(ILjava/lang/String;)V

    .line 227
    const-string v4, "TelephonyAutoProfiling"

    const-string v5, "[updateProfile] loadProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfile(I)V

    .line 231
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->setEccList(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 233
    .end local v2           #simState:Ljava/lang/String;
    :cond_5
    const-string v4, "qualcomm.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    const-string v4, "ECC_list"

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, eccList:Ljava/lang/String;
    const-string v4, "ril.ecclist.autoprofile"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateProfile] ACTION_DEFAULT_SUBSCRIPTION_CHANGED - subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", setEccList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v1, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
