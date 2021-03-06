.class public Lcom/android/settings/wifi/SmartNetworkSwitchSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SmartNetworkSwitchSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;,
        Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;,
        Lcom/android/settings/wifi/SmartNetworkSwitchSettings$3;,
        Lcom/android/settings/wifi/SmartNetworkSwitchSettings$WifiSnsExcludedAPInfo;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private excludedApCount:I

.field private mAggressiveEnabled:Z

.field private final mBixbyCurrentStateId:Ljava/lang/String;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnabled:Z

.field private mExcludedGroup:Landroid/preference/PreferenceGroup;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsSupportAggMode:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNoDevicesPreference:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private snsAggressiveSwitching:Landroid/preference/SwitchPreference;

.field private snsSettingPref:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->finishSnsSettings()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setExcludedDevicesLayout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setSkipInternetCheck(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, " SmartNetworkSwitchSettings"

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "SmartNetworkSwitch"

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mBixbyCurrentStateId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    iput v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->excludedApCount:I

    new-instance v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;-><init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;-><init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$3;-><init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private buildExcludedApExplainPref(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2

    new-instance v0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0402b5

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setLayoutResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setSelectable(Z)V

    return-object v0
.end method

.method private buildExcludedApPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 5

    move-object v0, p1

    move-object v1, p2

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v3, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;

    invoke-direct {v3, p1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;

    invoke-direct {v4, p0, p2, p1, v2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;-><init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-object v3
.end method

.method private finishSnsSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->finish()V

    goto :goto_1
.end method

.method private setExcludedDevicesLayout()V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->buildExcludedApExplainPref(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    if-lt v5, v8, :cond_0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->buildExcludedApPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v5, " SmartNetworkSwitchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error calling configuredNetworks "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    const-string/jumbo v5, " SmartNetworkSwitchSettings"

    const-string/jumbo v6, "No Item"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-nez v5, :cond_2

    new-instance v5, Lcom/android/settings/wifi/WifiSNSNoItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/settings/wifi/WifiSNSNoItemPreference;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const v6, 0x7f040382

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b126c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method private setPreferenceVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private setSkipInternetCheck(IZ)V
    .locals 5

    const-string/jumbo v2, " SmartNetworkSwitchSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSkipInternetCheck(), networkId :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x12d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "excluded_networkId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, " SmartNetworkSwitchSettings"

    const-string/jumbo v3, "WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRadioButtonStatus()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    new-instance v1, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreference;)V

    iput-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setPreferenceVisible(Z)V

    const-string/jumbo v1, "sns_excluded_device"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setExcludedDevicesLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f08011d

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v3, 0x7f0b0d29

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSnsAggMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    const-string/jumbo v3, " SmartNetworkSwitchSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Smart Network Switch Aggressive Mode Enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "sns_help"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string/jumbo v3, "sns_help_include_autowifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v3, "sns_aggressive_switching"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    iget-boolean v4, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0d19

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void

    :cond_2
    move v3, v5

    goto/16 :goto_0

    :cond_3
    move v4, v5

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SmartNetworkSwitch"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->radioButtonClicked(Z)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->resume()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setPreferenceVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SmartNetworkSwitch"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public radioButtonClicked(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "AGG"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->sendGSIMdata(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->updateRadioButtonStatus()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "ON"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "SNSU"

    const-string/jumbo v1, "extra"

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_2
    return-void
.end method
