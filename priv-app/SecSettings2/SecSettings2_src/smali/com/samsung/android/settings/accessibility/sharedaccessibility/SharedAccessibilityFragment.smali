.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SharedAccessibilityFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;
    }
.end annotation


# instance fields
.field private importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

.field private isPreferenceOpen:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

.field private sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildShareViewDropDown()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildStateDropDown()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    new-instance v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private buildShareViewDropDown()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "shared_accessibility_share"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->clearItems()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isExternalMemoryAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->getClickLister()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b0266

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b0267

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    new-instance v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setCallback(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;)V

    goto :goto_0
.end method

.method private buildStateDropDown()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "shared_accessibility_export_import"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->clearItems()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b0268

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b026a

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isExternalMemoryAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b0269

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b026b

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    new-instance v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setCallback(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "SharedAccessibilityFragment"

    const-string/jumbo v1, "SharedAccessibilityFragment Loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "shared_accessibility_menus"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "shared_accessibility_export_import"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const-string/jumbo v0, "shared_accessibility_share"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildShareViewDropDown()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildStateDropDown()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Item"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.accessibility.sharedaccessibility.ShareAccessibilityShareVia"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    return v4

    :cond_1
    return v2
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
