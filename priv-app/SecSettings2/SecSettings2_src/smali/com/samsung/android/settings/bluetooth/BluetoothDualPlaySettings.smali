.class public final Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;
.super Landroid/preference/PreferenceFragment;
.source "BluetoothDualPlaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private setDualPlayContent()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1100e1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    const-string/jumbo v4, "BluetoothDualPlaySettings"

    const-string/jumbo v5, "startAnimation :: start dual play animation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b03ee

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0b03ef

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f110191

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string/jumbo v4, "BluetoothDualPlaySettings"

    const-string/jumbo v5, "startAnimation :: anim is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setupSwitchBar()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setDualPlayContent()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040056

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setDualPlayContent()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "onCreate :: Can\'t get Local Bluetooth Manager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040056

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->teardownSwitchBar()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->resume()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "BluetoothDualPlaySettings"

    const-string/jumbo v3, "onResume :: a2dpProfile is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "BluetoothDualPlaySettings"

    const-string/jumbo v3, "onResume :: mLocalProfileManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    goto :goto_0
.end method

.method public onSwitchStateChange(Z)V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "BluetoothDualPlaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchChange :: isChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setDualPlayMode(Z)Z

    move-result v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "BluetoothDualPlaySettings"

    const-string/jumbo v3, "onSwitchChange :: mLocalProfileManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "BluetoothDualPlaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchChange :: failed set dual play mode to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    goto :goto_1
.end method
