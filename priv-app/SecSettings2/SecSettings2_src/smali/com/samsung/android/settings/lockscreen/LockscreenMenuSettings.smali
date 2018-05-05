.class public Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;
    }
.end annotation


# static fields
.field private static ALWAYS_ON_DISPLAY:I

.field private static ALWAYS_ON_DISPLAY_SWITCH:I

.field private static FACE_LOCK:I

.field private static FACE_LOCK_SWITCH:I

.field private static IRIS_SETTINGS:I

.field private static LOCKSCREEN_AND_SECURITY:I

.field private static final MY_USER_ID:I

.field private static NOTIFICATIONS_MASTER:I

.field private static SAMSUNG_PASS:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SECURE_FOLDER:I

.field private static SETTINGS_SECURITY_UNKNOWNSOURCE:I

.field private static SMART_LOCK:I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static WORK_PROFILE_FINGERPRINTS:I

.field private static WORK_PROFILE_NOTIFICATIONS:I

.field public static mContext:Landroid/content/Context;

.field private static mSmartLockSummary:Ljava/lang/String;

.field private static sPowerManager:Landroid/os/PowerManager;


# instance fields
.field private isKioskContainer:Z

.field private mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mAppOpsSettings:Landroid/preference/Preference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFindMyMobile:Landroid/preference/Preference;

.field private mFingerSanner:Landroid/preference/Preference;

.field private mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromCoverSetting:Z

.field private mFromPackageInstaller:Z

.field private mIrisSettings:Landroid/preference/Preference;

.field private mIsAdmin:Z

.field private mLockAppShortcut:Landroid/preference/PreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockType:Landroid/preference/Preference;

.field private mLockscreenNotification:Landroid/preference/PreferenceScreen;

.field private mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

.field private mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

.field private mLockscreenSelectedValueProfile:I

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mPrivateMode:Landroid/preference/PreferenceScreen;

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field private mProfileChallengeUserId:I

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSamsungPass:Landroid/preference/Preference;

.field private mSdcardEncryption:Landroid/preference/PreferenceScreen;

.field private mSecure:Z

.field private mSecureFolder:Landroid/preference/PreferenceScreen;

.field private mSecureProfile:Z

.field private mSecuredLockSettings:Landroid/preference/PreferenceScreen;

.field private mShowInfomation:Landroid/preference/PreferenceScreen;

.field private mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Landroid/preference/SwitchPreference;

.field private mVisiblePatternProfile:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;

.field private otherSecurityPreferece:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_FINGERPRINTS:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSdcardEncryption:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settingslib/RestrictedPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_NOTIFICATIONS:I

    return v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get21()Landroid/os/PowerManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_FINGERPRINTS:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_NOTIFICATIONS:I

    return p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->privateModeSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->resetAccessabilityFeature()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyUncompliantLocks()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateAlwaysOnScreenSummary()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateUnificationPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private InitValue(I)V
    .locals 21

    const-string/jumbo v17, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->checkUCMKeyguardStatus()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    if-eqz v16, :cond_3

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string/jumbo v17, "none"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_0
    if-nez v17, :cond_5

    const-string/jumbo v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    add-int/lit8 v17, v11, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->isEnforcedCredentialStorageExist()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v5

    const-string/jumbo v17, "sec_device_security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_6

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    new-instance v17, Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    const-string/jumbo v18, "trust_agent"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v0, v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/samsung/android/settingslib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockTypeSummary(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v17, "secured_lock_settigns"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b08dd

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->getOrder()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    :cond_a
    const-string/jumbo v17, "show_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const-string/jumbo v17, "lock_screen_menu_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    const-string/jumbo v17, "lock_screen_menu_sec_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "lock_screen_show_notifications"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_1d

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v8, :cond_1e

    const v17, 0x7f0b1979

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v17, "lock_app_shortcut"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-eqz v17, :cond_1f

    const/4 v14, 0x1

    :goto_5
    const-string/jumbo v17, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "com.samsung.android.app.aodservice"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    if-eqz v14, :cond_20

    :cond_c
    const-string/jumbo v17, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removePreference(Ljava/lang/String;)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "aod_mode"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v6

    const/16 v17, 0x8

    move/from16 v0, v17

    if-eq v6, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const v18, 0x7f0b08d8

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_e
    :goto_7
    const-string/jumbo v17, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0897

    invoke-virtual/range {v17 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "no_install_unknown_sources"

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static/range {v17 .. v19}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "no_install_apps"

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static/range {v17 .. v19}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    const-string/jumbo v18, "no_install_unknown_sources"

    invoke-virtual/range {v17 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    const-string/jumbo v18, "no_install_apps"

    invoke-virtual/range {v17 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_12
    const-string/jumbo v17, "find_my_mobile"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-nez v17, :cond_13

    const/4 v15, 0x1

    :cond_13
    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v9

    if-eqz v15, :cond_14

    if-eqz v9, :cond_23

    :cond_14
    :goto_8
    const-string/jumbo v17, "finger_scanner"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    const-string/jumbo v17, "iris_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    const-string/jumbo v17, "silent_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const-string/jumbo v17, "samsung_pass"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/preference/Preference;

    const-string/jumbo v17, "app_ops_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v20, 0x100

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_24

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    if-nez v13, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    if-nez v17, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isEnrolledFaceInfo()Z

    move-result v17

    if-eqz v17, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    if-eqz v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1b
    const-string/jumbo v17, "key_private_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1c
    const-string/jumbo v17, "secure_folder"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureFolder:Landroid/preference/PreferenceScreen;

    return-void

    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_1e
    const v17, 0x7f0b0909

    goto/16 :goto_4

    :cond_1f
    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_20
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v17

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_6

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_6

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const v18, 0x7f0b08d7

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_7

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0796

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_8

    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_9
.end method

.method private RemoveMenu()V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v11

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v18

    if-eqz v18, :cond_1a

    const-string/jumbo v18, "sec_device_security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    const-string/jumbo v18, "sec_lock_and_always_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_0

    if-nez v12, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    if-nez v11, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_5

    if-nez v11, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_8

    if-nez v11, :cond_8

    if-eqz v6, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_b

    if-nez v11, :cond_b

    if-eqz v6, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    if-eqz v10, :cond_15

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v18

    if-eqz v18, :cond_16

    :cond_e
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v18

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    :goto_1
    if-eqz v7, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_18

    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v18

    if-eqz v18, :cond_18

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_14
    :goto_3
    const-string/jumbo v18, "sec_security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    if-nez v16, :cond_28

    return-void

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_19
    const/16 v18, 0x1

    goto :goto_2

    :cond_1a
    const-string/jumbo v18, "sec_lockscreen_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    if-nez v13, :cond_1b

    return-void

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1d

    if-nez v11, :cond_1c

    if-eqz v6, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1e

    if-eqz v10, :cond_24

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v18

    if-eqz v18, :cond_25

    :cond_1f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_20

    if-eqz v7, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_20
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v18

    if-eqz v18, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_21
    :goto_5
    if-eqz v7, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_23
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_27

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v18

    if-eqz v18, :cond_14

    if-eqz v13, :cond_14

    const v18, 0x7f04004e

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    goto/16 :goto_3

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_27
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_6

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v18

    if-eqz v18, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b0897

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummaryOff(I)V

    :goto_7
    if-eqz v17, :cond_2a

    const-string/jumbo v18, "no_install_unknown_sources"

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_29

    const-string/jumbo v18, "no_install_apps"

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_44

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    const-string/jumbo v18, "LockscreenMenuSettings"

    const-string/jumbo v19, "mToggleAppInstallation disable at UserManager"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2d

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_2d

    if-nez v11, :cond_2d

    if-nez v6, :cond_2d

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v18

    if-eqz v18, :cond_2e

    :cond_2d
    const-string/jumbo v18, "finger_scanner"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v18

    if-eqz v18, :cond_30

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_30

    if-nez v11, :cond_30

    if-nez v6, :cond_30

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_30

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v18

    if-eqz v18, :cond_31

    :cond_30
    const-string/jumbo v18, "iris_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_32

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v18

    if-eqz v18, :cond_33

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_33

    if-nez v11, :cond_33

    if-nez v6, :cond_33

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v18

    if-eqz v18, :cond_34

    :cond_33
    const-string/jumbo v18, "silent_lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_35

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-eqz v18, :cond_36

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_37

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_37
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v18

    if-nez v18, :cond_38

    if-eqz v16, :cond_38

    const-string/jumbo v18, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    :cond_3d
    if-eqz v16, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v18

    if-eqz v18, :cond_3f

    if-eqz v16, :cond_3f

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_40

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_41

    if-nez v11, :cond_41

    if-nez v6, :cond_41

    :cond_40
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-eqz v18, :cond_49

    :cond_41
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_42
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v18, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v15}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_4a

    const/4 v9, 0x1

    :goto_a
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v19, "persona"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v18

    if-eqz v18, :cond_4b

    if-eqz v9, :cond_4b

    :goto_b
    return-void

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b039c

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummaryOff(I)V

    goto/16 :goto_7

    :cond_44
    const-string/jumbo v18, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedInstallationPackage(Landroid/content/ComponentName;)Z

    move-result v18

    if-eqz v18, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v18

    if-eqz v18, :cond_46

    const/4 v3, 0x0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v20, "isNonMarketAppAllowed"

    invoke-static/range {v18 .. v20}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v3, :cond_45

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->semGetAllowThirdPartyAppList(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_45
    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x10406b9

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummaryOff(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    const-string/jumbo v18, "LockscreenMenuSettings"

    const-string/jumbo v19, "mToggleAppInstallation disable at DevicePolicyManager"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_8

    :cond_46
    const/4 v3, 0x1

    goto :goto_c

    :cond_47
    if-nez v3, :cond_2a

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v19, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_48

    const/16 v18, 0x1

    :goto_d
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_2a

    const-string/jumbo v18, "LockscreenMenuSettings"

    const-string/jumbo v19, "mToggleAppInstallation disable at getEnterprisePolicyEnabled"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_48
    const/16 v18, 0x0

    goto :goto_d

    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_41

    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v18

    if-nez v18, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_42

    goto/16 :goto_9

    :cond_4a
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureFolder:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b
.end method

.method private checkUCMKeyguardStatus()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    const/4 v1, 0x0

    if-nez v2, :cond_0

    return-object v5

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    return-object v5
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecure:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v17, v0

    const/16 v18, -0x2710

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    if-nez v17, :cond_9

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecure:Z

    move/from16 v17, v0

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    const v17, 0x7f0800f5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v19, v0

    sget v20, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static/range {v17 .. v20}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v11

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v17

    if-eqz v17, :cond_1

    const v11, 0x7f0800dd

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v17, "unlock_set_or_change"

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v17, v0

    const/16 v18, -0x2710

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v17

    if-eqz v17, :cond_2

    const v17, 0x7f08010d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    const v17, 0x7f080113

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;I)V

    const v17, 0x7f0800d9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->initLockscreenNotificationsForProfile()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v17

    if-nez v17, :cond_c

    const-string/jumbo v17, "unlock_set_or_change_profile"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0b1496

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v17, "unlock_set_or_change"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    :cond_2
    :goto_2
    const-string/jumbo v17, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/samsung/android/settings/SecGearPreference;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    check-cast v16, Lcom/samsung/android/settings/SecGearPreference;

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/settings/SecGearPreference;->setVisibleWigetLayout(I)V

    :cond_3
    const/4 v9, 0x0

    const-string/jumbo v17, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v18

    const-string/jumbo v19, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "is_secured_lock"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v20, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v17

    if-eqz v17, :cond_e

    const v9, 0x7f0b112f

    :goto_4
    const v17, 0x7f080096

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->InitValue(I)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->RemoveMenu()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIsAdmin:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIsAdmin:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_10

    :cond_5
    :goto_5
    const-string/jumbo v17, "visiblepattern_profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    const-string/jumbo v17, "unification"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateUnificationPreference()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_18

    :cond_7
    :goto_6
    return-object v12

    :cond_8
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v17, "unlock_set_or_change_profile"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_e
    const v9, 0x7f0b1130

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const v9, 0x7f0b027d

    goto/16 :goto_4

    :sswitch_1
    const v9, 0x7f0b08a5

    goto/16 :goto_4

    :sswitch_2
    const v9, 0x7f0b1123

    goto/16 :goto_4

    :sswitch_3
    const v9, 0x7f0b1125

    goto/16 :goto_4

    :sswitch_4
    const v9, 0x7f0b1127

    goto/16 :goto_4

    :sswitch_5
    const v9, 0x7f0b0898

    goto/16 :goto_4

    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v17

    if-nez v17, :cond_11

    const v17, 0x7f0800fc

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    :cond_11
    :goto_7
    new-instance v4, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v8}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v14

    invoke-virtual {v8}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_13

    const v17, 0x7f080102

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    :goto_8
    const-string/jumbo v17, "sdEncpref"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSdcardEncryption:Landroid/preference/PreferenceScreen;

    goto/16 :goto_5

    :cond_12
    const v17, 0x7f080112

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v17

    if-eqz v17, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "device_policy"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    if-nez v14, :cond_14

    invoke-virtual {v8}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionAppliedSDCard()Z

    move-result v17

    if-eqz v17, :cond_14

    if-eqz v3, :cond_16

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v17

    if-eqz v17, :cond_16

    const v17, 0x7f080110

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_8

    :cond_14
    if-eqz v3, :cond_15

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v17

    if-eqz v17, :cond_15

    const v17, 0x7f08010f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_8

    :cond_15
    const v17, 0x7f08010e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_8

    :cond_16
    const v17, 0x7f08010e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_8

    :cond_17
    const v17, 0x7f08010f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_8

    :cond_18
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v17

    if-nez v17, :cond_7

    new-instance v17, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const-string/jumbo v18, "other_security_settings"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const v18, 0x7f0b08b3

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const v18, 0x7f0b08b4

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const-string/jumbo v18, "com.samsung.android.settings.OtherSecuritySettings"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private disableIfPasswordQualityManaged(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    const/high16 v2, 0x80000

    if-ne v1, v2, :cond_0

    :cond_0
    return-void
.end method

.method private getAODclocksummary()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x21c

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_start_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_end_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const v3, 0x7f0b08bf

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eq v2, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v5, v2, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v12, 0x80

    invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    sget v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {p1, v11}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x10

    invoke-static {p0, v12, v11}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v6, v5}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v5, v6}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v10

    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v11, :cond_2

    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz v0, :cond_4

    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p2, v12, v11}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_4

    iput-object v0, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :cond_4
    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    if-nez v11, :cond_5

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v11, Landroid/content/pm/ServiceInfo;->labelRes:I

    const/4 v8, 0x0

    :try_start_0
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_2
    invoke-static {v8, v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v8, :cond_5

    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    if-eqz v11, :cond_5

    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    iput-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    :cond_5
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v11, "LockscreenMenuSettings"

    const-string/jumbo v12, "getResourcesForApplication NameNotFoundException!"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private getBiometricsSummary(ZZ)Ljava/lang/String;
    .locals 8

    const-string/jumbo v3, ", "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ar"

    const-string/jumbo v2, "ja"

    const-string/jumbo v0, "zh"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v3, "\u060c "

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f0b0697

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f0b07b8

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v3, "\u3001"

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v3, "\uff0c"

    goto :goto_0

    :sswitch_0
    const v6, 0x7f0b027d

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const v6, 0x7f0b08a5

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const v6, 0x7f0b1123

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const v6, 0x7f0b1125

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const v6, 0x7f0b1127

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const v6, 0x7f0b0898

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private getLockTypeSummary(I)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0b112f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const v3, 0x7f0b1130

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getBiometricsSummary(ZZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getLockscreenAllowPrivateNotifications(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I
    .locals 3

    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    if-ne p3, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_1

    const v1, 0x7f080100

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f0800e2

    goto :goto_1

    :cond_2
    const v1, 0x7f0800e0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const v1, 0x7f0800e2

    goto :goto_1

    :sswitch_1
    if-eqz v0, :cond_4

    const v1, 0x7f0800e5

    goto :goto_1

    :cond_4
    const v1, 0x7f080107

    goto :goto_1

    :sswitch_2
    if-eqz v0, :cond_5

    const v1, 0x7f0800e7

    goto :goto_1

    :cond_5
    const v1, 0x7f08010b

    goto :goto_1

    :sswitch_3
    if-eqz v0, :cond_6

    const v1, 0x7f0800e4

    goto :goto_1

    :cond_6
    const v1, 0x7f080104

    goto :goto_1

    :sswitch_4
    if-eqz v0, :cond_7

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->getResIdForLockUnlockScreen(Z)I

    move-result v1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_3
        0x60000 -> :sswitch_3
        0x70000 -> :sswitch_3
        0x80000 -> :sswitch_4
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private initLockscreenNotificationsForProfile()V
    .locals 11

    const v10, 0x7f0b1906

    const v9, 0x7f0b1905

    const v8, 0x7f0b1904

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_notifications_profile"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-nez v6, :cond_0

    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications_profile"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->clearRestrictedItems()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xc

    invoke-direct {p0, v3, v4, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    invoke-direct {p0, v1, v2, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    new-instance v7, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setOnPreClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateLockscreenNotificationsForProfile()V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    new-instance v7, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static isAODDisabledInPSM(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "psm_always_on_display_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v0, v1, v3

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private isEnrolledFaceInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, v0, v4, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v3

    const-string/jumbo v5, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "Smart Lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "isSmartLockSupported : true"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    :cond_2
    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "isSmartLockSupported : false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6
.end method

.method private launchConfirmDeviceLockForUnification()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b111a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmProfileLockForUnification()V

    :cond_0
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b111b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyLocks()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    :cond_0
    return-void
.end method

.method private mUseCalendar(II)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    :goto_0
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v2, 0xa

    goto :goto_0
.end method

.method private makeAccessiblityDisablePopup()V
    .locals 13

    const/4 v1, 0x0

    const-string/jumbo v2, "\u2011"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "accessibility_display_magnification_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "finger_magnifier"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "FmMagnifier"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v4, 0x1

    :goto_2
    const-string/jumbo v9, ""

    const-string/jumbo v6, ""

    const v10, 0x7f0b08c4

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v1, 0x1

    sget-object v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    const v10, 0x7f0b15a1

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0b15a1

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    const v10, 0x7f0b0234

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0b0234

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    const v10, 0x7f0b08c5

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0b08c5

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v10, 0x1

    if-ne v1, v10, :cond_7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b08c1

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0409

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const v11, 0x7f0b08c2

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$9;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$9;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const v12, 0x7f0b0441

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const/high16 v12, 0x1040000

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$11;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$11;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v10, 0x2

    if-lt v1, v10, :cond_8

    const v10, 0x7f0b08c3

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_8
    return-void
.end method

.method private maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;I)V
    .locals 3

    move v1, p2

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0698

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    const-string/jumbo v2, "fingerPref"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$13;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$13;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;I)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private needShowSmartLockDialog(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "lock_screen_menu_settings"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "smart_lock_show_dialog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isCHNSimInserted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v3
.end method

.method private privateModeSummaryUpdate()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1979

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b197a

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private static removeFindMyMobile(Landroid/content/Context;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v4

    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSupportLMM : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasFMMDMClient : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasMobileTracker : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "com.sec.android.app.mt"

    invoke-static {p0, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSmsCapable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    const/4 v6, 0x1

    :cond_2
    :goto_0
    return v6

    :cond_3
    if-nez v5, :cond_2

    if-nez v0, :cond_2

    const/4 v6, 0x1

    goto :goto_0
.end method

.method private resetAccessabilityFeature()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_magnifier"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "FmMagnifier"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    :goto_2
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_magnifier"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "FmMagnifier"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private setLinkedDataView()V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v8

    if-lez v8, :cond_0

    return-void

    :cond_0
    new-instance v8, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "menu"

    const-string/jumbo v9, "backup"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v1, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v8, 0x7f0b0b1d

    iput v8, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.sm.ACTION_SECURITY"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v2, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v8, 0x7f0b0896

    iput v8, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_1
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v0, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v8, 0x7f0b10d4

    iput v8, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v8, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v8, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    :cond_4
    return-void

    :cond_5
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v8, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 5

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-eqz v3, :cond_0

    new-instance v1, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->addRestrictedItem(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;)V

    :cond_0
    return-void
.end method

.method private showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    move-object v2, p2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040323

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f110712

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v4, 0x7f11018c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b0fb6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;

    invoke-direct {v5, p0, v0, p2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    const v6, 0x7f0b0441

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$7;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const v6, 0x7f0b0438

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startFaceSettings(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "startFaceSettings isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b072b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.face.FaceEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "from_switch"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startFingerprintScanner()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b072b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startIrisSettings()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b072b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private unifyLocks()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private unifyUncompliantLocks()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0b1114

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private ununifyLocks()V
    .locals 6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isAfw"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0b1115

    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateAlwaysOnScreenSummary()V
    .locals 10

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "aod_mode"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :goto_0
    sget-object v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "high_contrast"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getAODclocksummary()Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_0

    sget-object v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    if-ne v5, v7, :cond_6

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v6, 0x7f0b040c

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v6, 0x7f0b08c0

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_6
    if-nez v1, :cond_1

    sget-object v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v6, 0x7f0b08c6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_3

    :cond_8
    const v5, 0x7f0b040b

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const v7, 0x7f0b0409

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0b040d

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_3
.end method

.method private updateLockscreenNotificationsForProfile()V
    .locals 4

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    :goto_0
    if-nez v1, :cond_3

    const v2, 0x7f0b1906

    :goto_1
    iput v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setSummary(I)V

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0b1904

    goto :goto_1

    :cond_4
    const v2, 0x7f0b1905

    goto :goto_1
.end method

.method private updateUnificationPreference()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f0b14a0

    const v1, 0x104000a

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f0b14a1

    const v1, 0x7f0b082d

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b149c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    return-void
.end method

.method private warnAppInstallationFromPackageInstaller()V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v6}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v6, 0x7f04002c

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f11013a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f11013b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "one_time_operate"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_2

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v4, 0x104000a

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0b14a1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0b082d

    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b149c

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_samsung_android_settings_lockscreen_LockscreenMenuSettings_lambda$1(Landroid/preference/Preference;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->LOCKSCREEN_AND_SECURITY:I

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->LOCKSCREEN_AND_SECURITY:I

    return v0
.end method

.method protected isGuestUser()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method

.method public moveFindMyMobile()V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b078e

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    if-ne p2, v7, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b078e

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_0
    const/16 v0, 0x80

    if-ne p1, v0, :cond_1

    if-ne p2, v7, :cond_1

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmProfileLockForUnification()V

    return-void

    :cond_1
    const/16 v0, 0x81

    if-ne p1, v0, :cond_2

    if-ne p2, v7, :cond_2

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyLocks()V

    return-void

    :cond_2
    const/16 v0, 0x82

    if-ne p1, v0, :cond_3

    if-ne p2, v7, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ununifyLocks()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static {v1, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    sput-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "coversetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    :cond_0
    const v1, 0x7f0b08dc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method public onGearClick(Lcom/samsung/android/settings/SecGearPreference;)V
    .locals 2

    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {p1}, Lcom/samsung/android/settings/SecGearPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "LockscreenAndSecurity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 22

    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v13

    const-string/jumbo v18, "toggle_install_applications"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v18, p2

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->warnAppInstallationFromPackageInstaller()V

    const/16 v16, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f1001f3

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SETTINGS_SECURITY_UNKNOWNSOURCE:I

    sget-object v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getMetricsCategory()I

    move-result v20

    sget v21, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SETTINGS_SECURITY_UNKNOWNSOURCE:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x3e8

    :goto_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_0
    :goto_2
    return v16

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->warnAppInstallation()V

    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v18, "lock_screen_menu_sec_notifications"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v19, v0

    if-eqz v9, :cond_5

    const v18, 0x7f0b1979

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "lock_screen_show_notifications"

    if-eqz v9, :cond_6

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f1001c9

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->NOTIFICATIONS_MASTER:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    sget v20, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->NOTIFICATIONS_MASTER:I

    if-eqz v9, :cond_7

    const/16 v18, 0x3e8

    :goto_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    const v18, 0x7f0b0909

    goto :goto_3

    :cond_6
    const/16 v18, 0x0

    goto :goto_4

    :cond_7
    const/16 v18, 0x0

    goto :goto_5

    :cond_8
    const-string/jumbo v18, "always_on_screen"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v18

    const-string/jumbo v19, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v0, v6, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0564

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0409

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    const/16 v18, 0x0

    return v18

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "accessibility_display_magnification_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_b

    const/4 v10, 0x1

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "finger_magnifier"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "FmMagnifier"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_d

    const/4 v11, 0x1

    :goto_7
    if-eqz v14, :cond_e

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_a

    if-nez v10, :cond_a

    if-eqz v11, :cond_e

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->makeAccessiblityDisablePopup()V

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f1001d7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY_SWITCH:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY_SWITCH:I

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_b
    const/4 v10, 0x0

    goto :goto_6

    :cond_c
    const/4 v11, 0x1

    goto :goto_7

    :cond_d
    const/4 v11, 0x0

    goto :goto_7

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "aod_mode"

    if-eqz v14, :cond_f

    const/16 v18, 0x1

    :goto_9
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_f
    const/16 v18, 0x0

    goto :goto_9

    :cond_10
    const-string/jumbo v18, "visiblepattern_profile"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    return v18

    :cond_11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v18, "unification"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v18, 0x0

    return v18

    :cond_13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v18

    const/high16 v19, 0x10000

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v5

    :goto_a
    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->newIntance(Z)Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v18

    const-string/jumbo v19, "unification_dialog"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    const/4 v5, 0x0

    goto :goto_a

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f0b111a

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v8, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v8, v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v19, 0x82

    const/16 v20, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ununifyLocks()V

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v18, "silent_lock"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFaceSettings(Z)V

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f1001e1

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->FACE_LOCK_SWITCH:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->FACE_LOCK_SWITCH:I

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_17
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    sget v20, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v21, 0x100

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_b
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v12

    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b072c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "fromScreenLock"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0b111a

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    const-string/jumbo v0, "unlock_set_or_change_profile"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isAfw"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "fromScreenLock"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0b1115

    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "find_my_mobile"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->moveFindMyMobile()V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "finger_scanner"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFingerprintScanner()V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "iris_settings"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->IRIS_SETTINGS:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->IRIS_SETTINGS:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startIrisSettings()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "trust_agent"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SMART_LOCK:I

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SMART_LOCK:I

    invoke-static {v8, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->needShowSmartLockDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_b
    const-string/jumbo v0, "samsung_pass"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SAMSUNG_PASS:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SAMSUNG_PASS:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.samsungpass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "always_on_screen"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v0, v7, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0564

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    invoke-static {v13, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    return v0

    :cond_d
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v0, "LockscreenMenuSettings"

    const-string/jumbo v1, "ActivityNotFoundException in AlwaysOnDisplay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_e
    const-string/jumbo v0, "silent_lock"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFaceSettings(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->FACE_LOCK:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->FACE_LOCK:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "secure_folder"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SECURE_FOLDER:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SECURE_FOLDER:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "skip_popup"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_10
    :try_start_2
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_11
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.android.packageinstaller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.samsung.android.packageinstaller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.google.android.packageinstaller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->privateModeSummaryUpdate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "personal_mode_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->buildPreferenceForCOM()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setLinkedDataView()V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateLockscreenNotificationsForProfile()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateAlwaysOnScreenSummary()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v3

    const/16 v4, 0xc

    invoke-static {v2, v4, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "LockscreenAndSecurity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    goto :goto_0
.end method
