.class public Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LightNotificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$1;,
        Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAllPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashNotification:Landroid/preference/SwitchPreference;

.field private mScreenNotification:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private enableMotion()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->isMotionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LightNotification"

    const-string/jumbo v1, "Motion is not enabled because not supported by this binary."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_overturn"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "master_motion"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "LightNotification"

    const-string/jumbo v1, "Motion is enabled for light notification."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->isMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0401

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0b01ef

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return v5
.end method

.method private findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;-><init>(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;Ljava/lang/String;Landroid/preference/Preference;)V

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private isMotionEnabled()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "master_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "motion_overturn"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "master_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    const/4 v1, 0x1

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    :goto_3
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3
.end method

.method private isMotionSupport()Z
    .locals 9

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string/jumbo v7, "merged_mute_or_pause_switch"

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v6

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;->updatePreference()Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10025b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->addPreferencesFromResource(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "light_notification_flash"

    const-string/jumbo v1, "flash_notification"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/preference/SwitchPreference;

    :goto_0
    const-string/jumbo v0, "light_notification_screen"

    const-string/jumbo v1, "screen_notification"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/preference/SwitchPreference;

    return-void

    :cond_0
    const-string/jumbo v0, "light_notification_flash"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const v7, 0x7f10025c

    const/16 v4, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "flash_notification"

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->isMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->enableMotion()Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_notification"

    if-eqz v0, :cond_5

    move v1, v2

    :goto_2
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v4, v3

    goto :goto_3

    :cond_7
    return v3
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->updateAllPreferences()V

    return-void
.end method
