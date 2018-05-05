.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NavigationBarSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

.field private mContext:Landroid/content/Context;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mOrderPref:Lcom/android/settings/SecDropDownPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "NavigationBarSettings"

    const-string/jumbo v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "order_option"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    const-string/jumbo v0, "color"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    new-array v1, v5, [Ljava/lang/CharSequence;

    const v2, 0x7f0b0593

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0b0594

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NavigationBar"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    if-ne p1, v2, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigationbar_key_order"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v4

    :cond_0
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_key_order"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
