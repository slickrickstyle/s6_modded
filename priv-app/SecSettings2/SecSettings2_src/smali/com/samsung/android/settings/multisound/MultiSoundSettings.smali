.class public Lcom/samsung/android/settings/multisound/MultiSoundSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "MultiSoundSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceType:Landroid/preference/PreferenceScreen;

.field private mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

.field private mSetApplication:Landroid/preference/PreferenceScreen;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method public moveSelectApp(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->showNetworkDialog(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->showNetworkDialog(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0a60

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "set_application"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSetApplication:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "device_type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mDeviceType:Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSetApplication:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->moveSelectApp(Z)V

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 8

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "multisound_app"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "multisound_devicetype"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSetApplication:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mDeviceType:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0b0a6c

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_1
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_2
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mDeviceType:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0b0a6d

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 11

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "multisound_devicetype"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "multisound_app"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eq v2, v8, :cond_0

    if-nez v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    if-eqz p2, :cond_3

    if-eqz v4, :cond_3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0a65

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0a5e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f0b0a67

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const v7, 0x7f0b0a6a

    invoke-virtual {v1, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/multisound/MultiSoundSettings$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$3;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v1, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, p2}, Landroid/media/AudioManager;->setMultiSoundOn(Z)V

    if-eqz p2, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v6

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v2, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/media/AudioManager;->setAppDevice(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_4
    if-ne v2, v9, :cond_2

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Landroid/media/AudioManager;->setAppDevice(II)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public showNetworkDialog(I)V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b14dd

    const v0, 0x7f0b14de

    if-nez p1, :cond_0

    const v3, 0x7f0b1343

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b0a68

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/multisound/MultiSoundSettings$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$4;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const v4, 0x7f0b147e

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b0340

    :goto_0
    new-instance v3, Lcom/samsung/android/settings/multisound/MultiSoundSettings$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$6;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v3, 0x7f0b0a66

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b0a69

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/multisound/MultiSoundSettings$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$5;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const v4, 0x7f0b14dd

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
